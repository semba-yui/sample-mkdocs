# sample-docs

[![Dependabot Updates](https://github.com/semba-yui/sample-docs/actions/workflows/dependabot/dependabot-updates/badge.svg)](https://github.com/semba-yui/sample-docs/actions/workflows/dependabot/dependabot-updates)
[![Deploy to Netlify](https://github.com/semba-yui/sample-docs/actions/workflows/build-and-deploy.yml/badge.svg)](https://github.com/semba-yui/sample-docs/actions/workflows/build-and-deploy.yml)
[![Netlify Status](https://api.netlify.com/api/v1/badges/cf8eb74a-c877-4ae4-a326-1e469f94b22e/deploy-status)](https://app.netlify.com/sites/yui-semba-sample-docs/deploys)

このプロジェクトは、MkDocsを使用した技術文書管理のサンプルプロジェクトです。

## 機能

- MkDocs Materialによる美しいドキュメントサイト
- OpenAPI仕様書の管理とモックサーバー
- PlantUMLによる図表作成
- 技術文書の品質管理（textlint）
- Netlifyへの自動デプロイ

## ディレクトリ構成

```text
.
├── docs/                      # ドキュメントのルートディレクトリ
│   ├── 00_common/            # 共通ドキュメント
│   ├── 01_frontend/          # フロントエンド関連ドキュメント
│   ├── 02_backend/           # バックエンド関連ドキュメント
│   │   ├── api/              # API仕様書
│   │   ├── batch/            # バッチ処理仕様書
│   │   ├── interface/        # インターフェース仕様書
│   │   └── rdb/              # データベース仕様書
│   ├── 03_infrastructure/    # インフラストラクチャ関連ドキュメント
│   ├── 90_appendix/          # 付録
│   ├── diagrams/             # 図表ファイル
│   │   ├── drawio/          # Draw.io図表
│   │   └── plantuml/        # PlantUML図表
│   ├── drawio-exporter/      # Draw.ioエクスポーター
│   ├── images/               # 画像ファイル
│   ├── javascripts/          # JavaScriptファイル
│   └── index.md              # ドキュメントのエントリーポイント
├── site/                     # ビルドされたドキュメントサイト
├── .github/                  # GitHub関連設定
├── .netlify/                 # Netlify関連設定
├── .poetry/                  # Poetry関連設定
├── .venv/                    # Python仮想環境
├── node_modules/             # Node.js依存パッケージ
├── mkdocs.yml               # MkDocs設定ファイル
├── package.json             # Node.jsプロジェクト設定
├── poetry.lock              # Poetry依存関係ロックファイル
├── pyproject.toml           # Pythonプロジェクト設定
└── README.md                # プロジェクト説明
```

## 必要条件

### バージョン管理ツール

#### mise

各種バージョン管理（asdf）

```shell
brew install mise
mise install
```

#### tbls

データベーススキーマ管理

```shell
brew install tbls
```

## 開発環境のセットアップ

### 1. 依存関係のインストール

```shell
# Python依存関係のインストール
poetry install

# Node.js依存関係のインストール
npm install
```

### 2. 開発サーバーの起動

```shell
npm run run-docs
```

## 利用可能なコマンド

### ドキュメント関連

- `npm run run-docs`: 開発サーバーを起動
- `npm run gen-docs`: ドキュメントをビルド
- `npm run lint-docs`: ドキュメントの品質チェック

### OpenAPI関連

- `npm run lint-oas`: OpenAPI仕様書の品質チェック
- `npm run format-oas`: OpenAPI仕様書のフォーマット
- `npm run mock`: OpenAPIモックサーバーの起動
- `npm run gen-api-spec`: OpenAPI仕様書のHTML生成

### 図表関連

- `npm run build-plantuml`: PlantUML図表のビルド

## デプロイ

このプロジェクトは、GitHub ActionsとNetlifyを使用して自動デプロイされています。

- デプロイ先: [https://yui-semba-sample-docs.netlify.app](https://yui-semba-sample-docs.netlify.app)
