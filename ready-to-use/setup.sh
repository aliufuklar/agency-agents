#!/bin/bash
# Agency Agents - Kurulum Scripti
# Bu script ready-to-use altyapısını sisteminize kurar

set -e

echo "=========================================="
echo "  Agency Agents Kurulumu"
echo "=========================================="
echo ""

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
READY_DIR="$REPO_DIR/ready-to-use"
SETUP_DIR="$REPO_DIR/my-setup"

echo "[1/5] Klasör yapısı kontrol ediliyor..."
if [ ! -d "$READY_DIR" ] || [ ! -d "$SETUP_DIR" ]; then
    echo "Hata: Gerekli klasörler bulunamadı."
    exit 1
fi
echo "  ✓ Klasör yapısı hazır"

echo ""
echo "[2/5] Profil seçenekleri:"
echo ""
echo "  1) web-development - Web geliştirme projeleri"
echo "  2) design         - Tasarım projeleri"
echo "  3) sales          - Satış ve müşteri süreçleri"
echo "  4) general        - Genel işler"
echo "  5) Tümü           - Hepsi birden"
echo ""

read -p "Numaranızı seçin (1-5): " choice

case $choice in
    1) PROFILE="web-development" ;;
    2) PROFILE="design" ;;
    3) PROFILE="sales" ;;
    4) PROFILE="general" ;;
    5) PROFILE="all" ;;
    *) echo "Geçersiz seçim"; exit 1 ;;
esac

echo ""
echo "[3/5] OpenCode dizini kontrol ediliyor..."
OPENCODE_DIR="$HOME/.opencode/agents"
if [ ! -d "$OPENCODE_DIR" ]; then
    mkdir -p "$OPENCODE_DIR"
    echo "  ✓ OpenCode ajan dizini oluşturuldu"
else
    echo "  ✓ OpenCode ajan dizini mevcut"
fi

echo ""
echo "[4/5] Ajanlar kuruluyor..."

if [ "$PROFILE" == "all" ]; then
    for prof in web-development design sales general; do
        echo ""
        echo "  -- $prof --"
        "$READY_DIR/scripts/activate.sh" "$prof" 2>/dev/null || true
    done
else
    "$READY_DIR/scripts/activate.sh" "$PROFILE"
fi

echo ""
echo "[5/5] Kurulum tamamlanıyor..."

echo ""
echo "=========================================="
echo "  Kurulum Tamamlandı!"
echo "=========================================="
echo ""
echo "Sonraki adımlar:"
echo "  1. OpenCode'u yeniden başlatın"
echo "  2. 'Hey, Frontend Developer modunu aktifleştir' diyin"
echo "  3. Veya özel talimatlarınızı my-setup/ klasörüne ekleyin"
echo ""
