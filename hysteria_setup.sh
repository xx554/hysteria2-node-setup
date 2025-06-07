#!/bin/bash

# 更新系统
echo "Updating system packages..."
sudo apt update && sudo apt upgrade -y

# 安装必要的依赖
echo "Installing required packages..."
sudo apt install -y curl wget unzip

# 下载 Hysteria2
echo "Downloading Hysteria2..."
wget https://github.com/HyNetwork/hysteria/releases/latest/download/hysteria-linux-amd64.zip -O hysteria.zip

# 解压并移动到/usr/local/bin
echo "Installing Hysteria2..."
unzip hysteria.zip
sudo mv hysteria /usr/local/bin/
sudo chmod +x /usr/local/bin/hysteria

# 创建配置文件目录
echo "Creating configuration directory..."
mkdir -p ~/hysteria

# 创建默认配置文件
cat <<EOL > ~/hysteria/config.yml
server:
  address: "0.0.0.0:443"
  cert: "/etc/ssl/certs/your_cert.pem"  # 这里需要替换为你的证书路径
  key: "/etc/ssl/private/your_key.pem"  # 这里需要替换为你的私钥路径
  # 其他配置...
EOL

echo "Hysteria2 has been installed successfully!"
echo "Configuration file created at ~/hysteria/config.yml"
