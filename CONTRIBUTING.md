# 開発への参加

## 目次

- [開発環境のセットアップ](#開発環境のセットアップ)
  - [1. 依存関係のインストール](#1-依存関係のインストール)
  - [2. 開発サーバーの起動](#2-開発サーバーの起動)
- [利用可能なコマンド](#利用可能なコマンド)
  - [ドキュメント関連](#ドキュメント関連)
  - [OpenAPI関連](#openapi関連)
- [OpenAPI 仕様書の編集](#openapi-仕様書の編集)
  - [1. Stoplight Studioのインストール](#1-stoplight-studioのインストール)

## 開発環境のセットアップ

このリポジトリでは MkDocs を使ってドキュメントを管理しています。
以下の手順で開発環境を準備してください。

### 1. 依存関係のインストール

```shell
mise install
poetry install
npm install
```

### 2. 開発サーバーの起動

```shell
npm run docs:serve
```

## 利用可能なコマンド

### ドキュメント関連

- `npm run docs:build`: ドキュメントをビルド
- `npm run docs:lint`: ドキュメントの品質チェック
- `npm run docs:serve`: MkDocs 開発サーバーを起動
- `npm run plantuml:build`: PlantUML のビルド

### OpenAPI関連

- `npm run oas:build`: OpenAPI 仕様書の HTML 生成
- `npm run oas:format`: OpenAPI 仕様書のフォーマット
- `npm run oas:lint`: OpenAPI 仕様書の品質チェック
- `npm run oas:mock`: OpenAPI モックサーバーの起動

## OpenAPI 仕様書の編集

OpenAPI の記述には [Stoplight Studio](https://stoplight.io/studio/) を使用することを推奨します。

### 1. Stoplight Studioのインストール

```shell
brew install --cask stoplight-studio
```
