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

このプロジェクトでは以下のバージョンのツールを使用しています。

- Python: 3.13.3
- Node.js: 23.11.0
- Java: 21.0.2
- Poetry: 最新版

#### mise

各種バージョン管理は[mise](https://github.com/jdx/mise)を使用しています。

```shell
brew install mise
```

```shell
mise install
```

## 開発方法

### ドキュメント開発サーバーを起動

```shell
npm run docs:serve
```

### OpenAPI モックサーバーを起動

```shell
npm run oas:mock
```

## 開発者向けドキュメント

詳細な開発方法、コマンド一覧、コントリビューション方法については [CONTRIBUTING.md](./CONTRIBUTING.md) を参照してください。

## デプロイ

このプロジェクトは、GitHub ActionsとNetlifyを使用して自動デプロイされています。

- デプロイ先: [https://yui-semba-sample-docs.netlify.app](https://yui-semba-sample-docs.netlify.app)
