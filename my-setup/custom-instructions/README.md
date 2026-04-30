# Custom Instructions

Kendi özel ajan talimatlarınızı bu klasöre ekleyin.

## Nasıl Kullanılır?

1. Bu klasöre yeni bir `.md` dosyası oluşturun
2. Dosyaya ajanın nasıl davranması gerektiğini yazın
3. Talimatlar `~/.claude/agents/` klasörüne kopyalanır

## Örnek Kullanım

### firma-politikalari.md
```markdown
# Firma Kod Standartları

## Genel Kurallar
- Tüm fonksiyonlar JSDoc ile dokümante edilmeli
- ESLint kuralları uygulanmalı
- Commit mesajları conventional commits formatında olmalı

## Naming Conventions
- Değişkenler: camelCase
- Sabitler: UPPER_SNAKE_CASE
- Sınıflar: PascalCase
```

### musterilerim.md
```markdown
# Müşteri Bilgileri

## Önemli Notlar
- ABC Şirketi: Premium müşteri, öncelikli destek
- XYZ Ltd: Fiyat hassasiyeti yüksek
```

## İpucu
OpenCode'da bir ajanı aktive ettiğinizde, bu özel talimatlar otomatik olarak yüklenir.
