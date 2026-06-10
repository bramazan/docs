# Payven Developer Docs — `mint export` statik ciktisini nginx ile servis eder.
#
# Build context'inde `site/` klasoru OLMALI (deploy.bat mintlify bunu lokalde
# `npx mint export` + unzip ile uretir; git'e commit edilmez). Sunucuda mint
# CLI calistirilmaz — ARM64'te headless toolchain gerektirmesin diye export
# lokalde yapilir, sunucuya hazir statik site tasinir.
FROM nginx:alpine

COPY deploy/docs-nginx.conf /etc/nginx/conf.d/default.conf
COPY site/ /usr/share/nginx/html/
