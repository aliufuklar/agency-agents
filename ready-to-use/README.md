# Agency Agents Ready-to-Use

Hazır AI ajan altyapısı - işinize göre özelleştirin.

## 📁 Klasör Yapısı

```
ready-to-use/
├── config.yaml          # Merkezi konfigürasyon
├── profiles/            # İş profili ayarları
│   ├── web-development.yaml
│   ├── design.yaml
│   ├── sales.yaml
│   └── general.yaml
├── scripts/
│   ├── activate.sh     # Tek komutla kurulum
│   └── setup.sh        # Başlangıç kurulum scripti
```

## 🚀 Hızlı Başlangıç

### 1. Profil Aktifleştirme

```bash
cd agency-agents/ready-to-use/scripts
./activate.sh web-development
```

### 2. Mevcut Profiller

| Profil | Kullanım |
|--------|----------|
| `web-development` | Web sitesi, uygulama geliştirme |
| `design` | Tasarım, UI/UX projeleri |
| `sales` | Müşteri bulma, teklif hazırlama |
| `general` | Genel iş operasyonları |

### 3. OpenCode'da Kullanım

```bash
# Terminal
"Hey Claude, Frontend Developer modunu aktifleştir"

# IDE
Claude Code agent panelinden ajan seçin

# Chat
"/activate web-development"
```

## 📦 my-setup Klasörü

Kendi özelleştirmeleriniz için:

```
my-setup/
├── custom-instructions/    # Özel ajan talimatları
│   ├── firma-politikalari.md
│   └── musterilerim.md
└── workflows/              # İş akışı şablonları
    ├── web-proje-akisi.yaml
    └── musterı-onboarding.yaml
```

## 🔧 Özelleştirme

### Yeni Profil Ekleme

1. `profiles/` klasörüne yeni `.yaml` dosyası ekleyin
2. Ajanları listeleyin
3. `config.yaml`'a profili ekleyin

### Özel Workflow Tanımlama

```yaml
# my-setup/workflows/yeni-akıs.yaml
name: "Yeni İş Akışı"
steps:
  - name: "Adım 1"
    agent: "ilgili-ajan"
```

## 📋 Önceden Hazır Ajanlar

### Web Development
- `engineering-senior-developer.md`
- `engineering-frontend-developer.md`
- `engineering-backend-architect.md`
- `engineering-ai-engineer.md`

### Design
- `design-ui-designer.md`
- `design-ux-researcher.md`
- `design-brand-guardian.md`

### Sales
- `sales-outbound-strategist.md`
- `sales-proposal-strategist.md`
- `customer-service.md`

## 🔌 Desteklenen Araçlar

- **OpenCode** (önerilen)
- Claude Code
- GitHub Copilot
- Cursor
- Windsurf
- Gemini CLI
- Aider

## 📞 Destek

Sorular için: GitHub issues veya direkt mesaj.
