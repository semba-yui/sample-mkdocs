# 開発方法

## 開発環境のセットアップ

### 1. 依存関係のインストール

#### Python依存関係のインストール

```shell
poetry install
```

#### Node.js依存関係のインストール

```shell
npm install
```

### 2. 開発サーバーの起動

```shell
npm run run-docs
```

## 利用可能なコマンド

### ドキュメント関連

- `npm run docs:build`: ドキュメントをビルド
- `npm run docs:lint`: ドキュメントの品質チェック
- `npm run docs:serve`: 開発サーバーを起動
- `npm run plantuml:build`: PlantUML のビルド

### OpenAPI関連

- `npm run oas:build`: OpenAPI仕様書のHTML生成
- `npm run oas:format`: OpenAPI仕様書のフォーマット
- `npm run oas:lint`: OpenAPI仕様書の品質チェック
- `npm run oas:mock`: OpenAPIモックサーバーの起動

## OpenAPI仕様書の生成

[Stoplight Studio](https://stoplight.io/studio/)を使用してOpenAPI仕様書を生成します。

### 1. Stoplight Studioのインストール

```shell
brew install --cask stoplight-studio
```
