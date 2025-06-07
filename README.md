# Hysteria2 Node Setup

这是一个一键脚本，用于快速搭建 Hysteria2 节点。

## 脚本使用说明
### 1. 前提条件
在运行脚本之前，请确保您的服务器满足以下条件：

操作系统: 支持的 Linux 发行版（如 Ubuntu, Debian 等）。
权限: 您需要具有 sudo 权限，以便安装软件包和进行系统更改。
### 2. 下载和运行脚本
您可以通过以下命令快速下载并运行安装脚本：
```
bash <(curl -s https://raw.githubusercontent.com/xx554/hysteria2-node-setup/main/hysteria_setup.sh)
```
### 注意: 请将 yourusername 替换为您的 GitHub 用户名。

### 3. 脚本功能
该脚本将执行以下操作：

更新系统软件包: 确保您的系统是最新的。
安装必要的依赖: 安装 curl, wget, 和 unzip 等工具。
下载 Hysteria2: 从 GitHub 下载最新版本的 Hysteria2。
安装 Hysteria2: 将 Hysteria2 移动到 /usr/local/bin 目录并赋予执行权限。
创建配置文件: 在用户主目录下的 ~/hysteria 目录中创建默认配置文件 config.yml。
### 4. 配置 Hysteria2
安装完成后，您需要配置 Hysteria2。配置文件位于 ~/hysteria/config.yml。请根据您的需求进行以下修改：

证书和密钥路径:
将 cert 和 key 的路径替换为您自己的 SSL 证书和私钥的路径。
示例配置片段：

server:
  address: "0.0.0.0:443"
  cert: "/etc/ssl/certs/your_cert.pem"  # 替换为您的证书路径
  key: "/etc/ssl/private/your_key.pem"  # 替换为您的私钥路径
### 5. 启动 Hysteria2
安装和配置完成后，您可以通过以下命令启动 Hysteria2：

hysteria -c ~/hysteria/config.yml
### 6. 查看日志
如果您需要查看 Hysteria2 的运行日志，可以在终端中执行以下命令：

tail -f /var/log/hysteria.log
（请确保您在配置文件中指定了日志文件的位置。）

### 7. 停止 Hysteria2
要停止 Hysteria2，您可以使用 Ctrl + C 来中断运行，或者使用 kill 命令查找并停止进程。

### 8. 常见问题
无法下载 Hysteria2: 请检查您的网络连接，确保能够访问 GitHub。
权限问题: 如果您在运行脚本时遇到权限问题，请确保使用 sudo 权限运行。
配置问题: 确保配置文件中的路径和参数正确无误。
### 9. 许可证
该项目使用 MIT 许可证，详细信息请参见 LICENSE 文件。

## 如果您有其他问题或需要进一步的帮助，请告诉我！

