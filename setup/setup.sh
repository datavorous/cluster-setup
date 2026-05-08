SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if ! command -v pixi &> /dev/null; then
    curl -fsSL https://pixi.sh/install.sh | bash
    export PATH="$HOME/.pixi/bin:$PATH"
fi

source "$SCRIPT_DIR/env.sh"
bash "$SCRIPT_DIR/storage.sh"
pixi install
echo ""
echo "[INFO] Done. To run:"
echo "  > pixi shell"
echo "  > python main.py"