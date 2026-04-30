# Kişisel Özelleştirmeleriniz

Bu klasör sizin iş gereksinimlerinize göre özelleştirilmiş ajan konfigürasyonlarını içerir.

## Klasör Yapısı

```
my-setup/
├── custom-instructions/    # Kendi ajan talimatlarınız
│   ├── README.md
│   └── .gitkeep
└── workflows/              # İş akışı şablonlarınız
    ├── README.md
    └── .gitkeep
```

## Kullanım

### Custom Instructions
Kendi ajan talimatlarınızı eklemek için `custom-instructions/` klasörüne `.md` dosyaları ekleyin.

Örnek: `custom-instructions/firma-politikalari.md`
```markdown
# Firma Politikaları
Şirketimizin kod standartları ve süreçleri...
```

### Workflows
Kendi iş akışı şablonlarınızı tanımlamak için `workflows/` klasörüne YAML dosyaları ekleyin.

Örnek: `workflows/musteri-onboarding.yaml`
```yaml
name: "Müşteri Onboarding"
steps:
  - discovery
  - proposal
  - contract
```
