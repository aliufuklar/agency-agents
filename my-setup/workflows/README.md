# Workflows (İş Akışları)

Kendi iş akışı şablonlarınızı bu klasöre ekleyin.

## Nasıl Kullanılır?

1. Bu klasöre yeni bir `.yaml` dosyası oluşturun
2. Akış adımlarını ve ajan rollerini tanımlayın
3. `activate.sh` scriptini kullanarak profili aktifleştirin

## Örnek Workflow

### musterı-onboarding.yaml
```yaml
name: "Müşteri Onboarding"
description: "Yeni müşteri için başlangıç süreci"

trigger:
  type: "new_client"
  source: "sales-outbound-strategist"

steps:
  - name: "Keşif"
    agent: "sales-discovery-coach"
    duration: "30 min"

  - name: "Teklif"
    agent: "sales-proposal-strategist"
    duration: "1 hour"

  - name: "Sözleşme"
    agent: "legal-client-intake"
    duration: "30 min"

  - name: "Onboarding"
    agent: "hr-onboarding"
    duration: "1 day"
```

### web-proje-akisi.yaml
```yaml
name: "Web Proje Akışı"
description: "Web sitesi geliştirme standart süreci"

trigger:
  type: "project_start"
  source: "project-shepherd"

steps:
  - name: "Tasarım"
    agent: "design-ui-designer"
    deliverable: "UI mockup"

  - name: "Frontend"
    agent: "engineering-frontend-developer"
    deliverable: "React components"

  - name: "Backend"
    agent: "engineering-backend-architect"
    deliverable: "API endpoints"

  - name: "Kalite Kontrol"
    agent: "testing-reality-checker"
    deliverable: "QA report"
```

## Workflow Çalıştırma

```bash
# Aktif workflow'ları listele
./ready-to-use/scripts/list-workflows.sh

# Workflow başlat
./ready-to-use/scripts/run-workflow.sh musterı-onboarding
```
