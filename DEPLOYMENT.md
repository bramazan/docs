# Mintlify Deployment Guide

## Quick Deploy

### Option 1: Local Testing (Recommended First)

```bash
cd mintlify-docs
./deploy.sh local
```

Veya manuel olarak:
```bash
cd mintlify-docs
mintlify dev
```

Dokümantasyon `http://localhost:3000` adresinde açılacak.

### Option 2: Mintlify Platform'a Deploy

#### Yöntem A: GitHub Integration (Önerilen)

1. **Mintlify Dashboard'a git**: https://dashboard.mintlify.com
2. **New Documentation** tıkla
3. **GitHub repository'yi bağla**: `payment` repository
4. **Documentation Path**: `mintlify-docs` klasörünü seç
5. **Deploy** - Otomatik deploy edilecek

Her git push sonrası otomatik olarak deploy edilir.

#### Yöntem B: CLI ile Deploy

```bash
cd mintlify-docs
./deploy.sh production
```

Veya:
```bash
cd mintlify-docs
mintlify deploy
```

## Pre-Deployment Checklist

- [x] mint.json doğru yapılandırılmış
- [x] Tüm sayfalar oluşturulmuş
- [x] Internal linkler doğru
- [x] README güncel
- [ ] Local test yapıldı
- [ ] Broken link kontrolü
- [ ] Mobile responsive test

## After Deployment

1. **Custom Domain** (opsiyonel):
   - Mintlify dashboard → Settings → Custom Domain
   - CNAME ayarla: `docs.odeal.com.tr`

2. **Analytics** (opsiyonel):
   - Google Analytics ID ekle
   - Mintlify dashboard → Settings → Analytics

3. **Search**:
   - Otomatik olarak aktif
   - Test et: Deployment sonrası 5-10 dakika bekle

## Troubleshooting

### Mintlify CLI kurulu değilse:
```bash
npm install -g mintlify
```

### Port zaten kullanımda:
```bash
# Farklı port kullan
mintlify dev --port 3001
```

### Deployment hatası:
```bash
# Mintlify hesabına login ol
mintlify login

# Tekrar dene
mintlify deploy
```

## Documentation URL

Production deployment sonrası:
- Default URL: `https://{your-org}.mintlify.app`
- Custom Domain (kurulursa): `https://docs.odeal.com.tr`

## Support

- Mintlify Docs: https://mintlify.com/docs
- Mintlify Community: https://mintlify.com/community
