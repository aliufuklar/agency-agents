#!/bin/bash
# Agency Agents - Tek komutla kurulum scripti
# Usage: ./activate.sh <profile-name>
# Example: ./activate.sh web-development

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROFILE="$1"

if [ -z "$PROFILE" ]; then
    echo "Kullanım: ./activate.sh <profil-adı>"
    echo ""
    echo "Mevcut profiller:"
    echo "  - web-development  (Web geliştirme)"
    echo "  - design           (Tasarım)"
    echo "  - sales            (Satış)"
    echo "  - general          (Genel işler)"
    echo ""
    echo "Örnek: ./activate.sh web-development"
    exit 1
fi

CONFIG_FILE="$SCRIPT_DIR/config.yaml"
PROFILE_FILE="$SCRIPT_DIR/profiles/${PROFILE}.yaml"

if [ ! -f "$PROFILE_FILE" ]; then
    echo "Hata: '$PROFILE' profilini bulamadım."
    echo "Mevcut profilleri listelemek için argümansız çalıştırın."
    exit 1
fi

echo "=========================================="
echo "  Agency Agents - $PROFILE Profili Aktifleştiriliyor"
echo "=========================================="
echo ""

DEST_DIR="$HOME/.claude/agents"
if [ ! -d "$DEST_DIR" ]; then
    mkdir -p "$DEST_DIR"
fi

AGENT_COUNT=0

while IFS= read -r agent_file; do
    SOURCE="$SCRIPT_DIR/../${agent_file}"
    if [ -f "$SOURCE" ]; then
        FILENAME=$(basename "$agent_file")
        DEST="$DEST_DIR/$FILENAME"
        cp "$SOURCE" "$DEST"
        echo "  ✓ $(basename $(dirname $agent_file))/$(basename $agent_file .md)"
        AGENT_COUNT=$((AGENT_COUNT + 1))
    fi
done < <(grep -E '^\s+-\s+' "$PROFILE_FILE" | sed 's/.*-\s*\(.*\)/\1/')

echo ""
echo "=========================================="
echo "  $AGENT_COUNT ajan aktifleştirildi!"
echo "=========================================="
echo ""
echo "Kullanım:"
echo "  - Terminal: 'Hey Claude, Frontend Developer modunu aktifleştir'"
echo "  - IDE: Claude Code'un agent özelliğini kullanın"
echo "  - Chat: '/activate $(echo $PROFILE | tr ' ' '-')' yazın"
