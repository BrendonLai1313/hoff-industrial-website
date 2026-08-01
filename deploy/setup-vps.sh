#!/bin/bash
# ============================================================
# HIS 网站 VPS 一键部署脚本
# 用法：SSH 登录 VPS 后运行：bash setup-vps.sh
# ============================================================
set -e

GITHUB_USER="BrendonLai1313"
REPO_NAME="hoff-industrial-website"
DOMAIN="hoff-industrial.com"
SITE_DIR="/var/www/${DOMAIN}"

echo "===== 1/5 安装 nginx ====="
apt-get update -qq
apt-get install -y -qq nginx git certbot python3-certbot-nginx

echo "===== 2/5 克隆 GitHub 仓库 ====="
if [ -d "$SITE_DIR" ]; then
    echo "目录已存在，执行 git pull..."
    cd "$SITE_DIR"
    git pull origin main
else
    git clone "https://github.com/${GITHUB_USER}/${REPO_NAME}.git" "$SITE_DIR"
fi

echo "===== 3/5 配置 nginx ====="
cat > /etc/nginx/sites-available/${DOMAIN} << 'NGINXCONF'
server {
    listen 80;
    server_name hoff-industrial.com www.hoff-industrial.com;
    root /var/www/hoff-industrial.com;
    index index.html;

    # 静态文件缓存
    location ~* \.(jpg|jpeg|png|gif|ico|css|js|svg|woff2|avif|webp|mp4)$ {
        expires 30d;
        add_header Cache-Control "public, immutable";
    }

    location / {
        try_files $uri $uri.html $uri/ =404;
    }

    # 安全头
    add_header X-Frame-Options "SAMEORIGIN" always;
    add_header X-Content-Type-Options "nosniff" always;
}
NGINXCONF

ln -sf /etc/nginx/sites-available/${DOMAIN} /etc/nginx/sites-enabled/
rm -f /etc/nginx/sites-enabled/default

echo "===== 4/5 测试 nginx 配置 ====="
nginx -t

echo "===== 5/5 启动 nginx ====="
systemctl enable nginx
systemctl restart nginx

echo ""
echo "✅ 部署完成！"
echo "   网站地址：http://${DOMAIN}"
echo ""
echo "后续更新网站只需："
echo "   ssh root@72.60.208.120"
echo "   cd ${SITE_DIR}"
echo "   git pull origin main"
echo ""
