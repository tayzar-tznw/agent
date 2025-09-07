# Google ADK 開発環境セットアップガイド

このガイドでは、Google ADK (Agent Development Kit) の開発環境をセットアップする方法を説明します。

## 前提条件

- Python 3.11 以上
- Google Cloud プロジェクト

## セットアップ手順

### 1. 依存関係のインストール

このプロジェクトでは高速なパッケージマネージャー `uv` を使用します。

```bash
# 仮想環境の作成と依存関係のインストール
uv venv --python 3.11
source .venv/bin/activate  # Linux/Mac
# または .venv\Scripts\activate (Windows)

# 依存関係をインストール
uv sync
uv add ipykernal
```

### 2. 環境変数の設定

`.env` ファイルを更新してください

### 3. Jupyter Notebookの環境設定

weather_agent.ipnyb

### 4. Google Cloud 認証の設定

#### アプリケーションデフォルト認証（ADC）

```bash
# Google Cloud にログイン
gcloud auth login

# アプリケーションデフォルト認証を設定
gcloud auth application-default login
```

## プロジェクト構成
- `pyproject.toml`: すべての依存関係を定義
- `dev.nix`: Google IDX用の環境設定

## 参考リンク

- [Google ADK ドキュメント](https://github.com/google/adk)
- [Vertex AI Agent Builder](https://cloud.google.com/agent-builder/docs)
- [Google Calendar API](https://developers.google.com/calendar/api/v3/reference)
- [uv ドキュメント](https://github.com/astral-sh/uv)