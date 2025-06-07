# Hysteria2 Node Setup

这是一个一键脚本，用于快速搭建 Hysteria2 节点。

## 一键安装脚本

运行以下命令以一键安装 Hysteria2 节点：

```
bash <(curl -s https://raw.githubusercontent.com/yourusername/hysteria2-node-setup/main/hysteria_setup.sh)
```
## 注意: 请确保你已经在服务器上安装了 curl 和 wget。

##脚本功能
更新系统软件包
安装必要的依赖
下载并安装 Hysteria2
创建默认配置文件

## 配置
安装完成后，配置文件位于 ~/hysteria/config.yml。请根据你的需求修改配置文件，特别是证书和密钥的路径。

## 许可证

### 使用说明

1. 创建一个新的 GitHub 仓库，命名为 `hysteria2-node-setup`。
2. 在本地创建上述文件结构，并将文件内容复制到相应的文件中。
3. 将文件提交到 GitHub 仓库。
4. 访问 GitHub 仓库页面，确认文件已成功上传。

### 备注

- 请根据你的服务器环境和需求调整脚本中的配置，特别是证书的路径。
- 你可以在 README 中添加更多的使用说明或故障排除信息，以便用户更好地理解和使用这个脚本。

如果你有任何其他问题或需要进一步的帮助，请告诉我！
