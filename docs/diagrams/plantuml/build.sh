#!/bin/bash
set -euo pipefail

# プロジェクトルートの絶対パスを取得
ROOT_DIR=$(pwd)
SRC_DIR="$ROOT_DIR/src"
OUT_DIR="$ROOT_DIR/output"

# plantuml.jar の存在チェック
if [[ ! -f "$ROOT_DIR/plantuml.jar" ]]; then
    echo "Error: plantuml.jar not found in $ROOT_DIR" >&2
    exit 1
fi

# 除外する puml ファイル名の配列（必要に応じて追加・変更）
excludes=("layout.puml" "example-exclude.puml")

# 除外対象かどうかを判定する関数
is_excluded() {
    local file_basename
    file_basename=$(basename "$1")
    for exclude in "${excludes[@]}"; do
        if [[ "$file_basename" == "$exclude" ]]; then
            return 0
        fi
    done
    return 1
}

# out フォルダの作成（存在しない場合）
mkdir -p "$OUT_DIR"

echo "Changing directory to src: $SRC_DIR"
cd "$SRC_DIR"

echo "Processing PUML files in directory: $SRC_DIR"

# src 内のすべての .puml ファイルを再帰的に検索（null 区切りで安全に処理）
find . -type f -name "*.puml" -print0 | while IFS= read -r -d '' file; do
    # もしファイル名が空、または存在しない場合はスキップ
    if [[ -z "$file" || ! -f "$file" ]]; then
        echo "Skipping empty or non-existent file."
        continue
    fi

    if is_excluded "$file"; then
        echo "Skipping excluded file: $file"
        continue
    fi

    # 相対パスから "./" を除去
    rel_path=${file#./}
    rel_dir=$(dirname "$rel_path")

    # 対応する出力先ディレクトリを、プロジェクトルートの out 配下に作成
    mkdir -p "$OUT_DIR/$rel_dir"

    echo "Processing: $file -> $OUT_DIR/$rel_dir"

    # -o に絶対パスを指定して、出力先を固定する
    java -jar "$ROOT_DIR/plantuml.jar" -tsvg -o "$OUT_DIR/$rel_dir" "$file"
done

echo "All PUML files processed successfully."
