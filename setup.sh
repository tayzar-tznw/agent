#!/bin/bash

echo "🚀 Google ADK 開発環境のセットアップを開始します..."

# Python バージョンの確認
if ! command -v python3.11 &> /dev/null; then
    echo "❌ Python 3.11 が見つかりません。"
    echo "Python 3.11 以上をインストールしてください。"
    exit 1
fi

# 仮想環境の作成
if [ ! -d ".venv" ]; then
    echo "📦 Python仮想環境を作成中..."
    python3.11 -m venv .venv
else
    echo "✓ 既存の仮想環境を使用します"
fi

# 仮想環境の有効化
echo "🔧 仮想環境を有効化中..."
source .venv/bin/activate

# パッケージのインストール
echo "📚 必要なパッケージをインストール中..."
pip install --upgrade pip wheel setuptools

echo "📦 Google ADK関連パッケージをインストール中..."
pip install google-adk==1.2.1
pip install google-genai==1.20.0
pip install "google-cloud-aiplatform[agent_engines]>=1.97.0"

echo "📦 Jupyter Notebook をインストール中..."
pip install jupyter notebook ipykernel ipywidgets

echo "📦 Google API 関連パッケージをインストール中..."
pip install google-api-python-client google-auth google-auth-httplib2 google-auth-oauthlib

echo "📦 その他の依存関係をインストール中..."
pip install python-dotenv aiohttp httplib2 protobuf grpcio

echo ""
echo "✅ セットアップが完了しました！"
echo ""
echo "════════════════════════════════════════════════════════════"
echo "次のステップ:"
echo ""
echo "1. 環境変数を設定してください:"
echo "   - .env ファイルを作成 (テンプレートは README_SETUP.md 参照)"
echo "   - source .env で環境変数を読み込み"
echo ""
echo "2. Google Cloud の認証を設定してください:"
echo "   - gcloud auth login"
echo "   - gcloud auth application-default login"
echo ""
echo "3. 以下のコマンドでADKを起動できます:"
echo "   - jupyter notebook    # Jupyter Notebookの起動"
echo "   - adk web            # ADK Webインターフェースの起動"
echo "   - adk run .          # ADK CLIの実行"
echo ""
echo "詳細は README_SETUP.md をご覧ください。"
echo "════════════════════════════════════════════════════════════"