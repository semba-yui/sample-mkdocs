# sample-mkdocs

[![Build and Deploy MkDocs per Branch](https://github.com/semba-yui/sample-mkdocs/actions/workflows/build-and-deploy.yml/badge.svg)](https://github.com/semba-yui/sample-mkdocs/actions/workflows/build-and-deploy.yml)
[![pages-build-deployment](https://github.com/semba-yui/sample-mkdocs/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/semba-yui/sample-mkdocs/actions/workflows/pages/pages-build-deployment)
[![Dependabot Updates](https://github.com/semba-yui/sample-mkdocs/actions/workflows/dependabot/dependabot-updates/badge.svg)](https://github.com/semba-yui/sample-mkdocs/actions/workflows/dependabot/dependabot-updates)

MkDocs を利用して技術仕様書を管理するサンプルプロジェクトです。

## 目次

- [機能](#機能)
- [ディレクトリ構成](#ディレクトリ構成)
- [必要条件](#必要条件)
  - [バージョン管理ツール](#バージョン管理ツール)
- [開発方法](#開発方法)
  - [ドキュメントサーバーの起動](#ドキュメントサーバーの起動)
  - [OpenAPI モックサーバーの起動](#openapi-モックサーバーの起動)
- [開発者向けドキュメント](#開発者向けドキュメント)
- [ライセンス](#ライセンス)

## 機能

- MkDocs Material によるドキュメントサイト
- OpenAPI 仕様書の管理とモックサーバー
- PlantUML による図表生成
- textlint を使ったドキュメント品質管理

## ディレクトリ構成

```text
.
├── docs/                      # ドキュメントのルート
│   ├── 00_common/            # 共通ドキュメント
│   ├── 01_frontend/          # フロントエンド関連
│   ├── 02_backend/           # バックエンド関連
│   │   ├── api/              # API 仕様書
│   │   ├── batch/            # バッチ処理
│   │   ├── interface/        # インターフェース仕様書
│   │   └── rdb/              # データベース仕様書
│   ├── 03_infrastructure/    # インフラ関連
│   ├── 90_appendix/          # 付録
│   ├── diagrams/             # 図表ファイル
│   │   ├── drawio/           # Draw.io 図表
│   │   └── plantuml/         # PlantUML 図表
│   ├── drawio-exporter/      # Draw.io エクスポーター
│   ├── images/               # 画像
│   ├── javascripts/          # JavaScript
│   └── index.md              # ドキュメントのエントリポイント
├── mkdocs.yml                # MkDocs 設定
├── package.json              # Node.js プロジェクト設定
├── poetry.lock               # Poetry 依存関係
├── pyproject.toml            # Python プロジェクト設定
└── README.md
```

## 必要条件

### バージョン管理ツール

このプロジェクトでは以下のバージョンのツールを使用しています。

- Python: 3.13.3
- Node.js: 23.11.0
- Java: 21.0.2
- Poetry: 最新版

#### mise

各種バージョン管理は[mise](https://github.com/jdx/mise)を使用しています。
各ツールは次のコマンドでインストール可能です。

```shell
brew install mise
poetry install
npm install
```

## 開発方法

### ドキュメントサーバーの起動

```shell
npm run docs:serve
```

### OpenAPI モックサーバーの起動

```shell
npm run oas:mock
```

## 開発者向けドキュメント

より詳細な開発手順やコマンドについては [CONTRIBUTING.md](./CONTRIBUTING.md) を参照してください。

## ライセンス

本プロジェクトは [MIT License](LICENSE) の下で公開されています。
