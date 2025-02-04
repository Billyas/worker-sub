# Worker-Sub

## 简介
Worker-Sub 是一个基于 Cloudflare Workers 的订阅转换工具。

## 构建和部署

### 构建 Docker 镜像
首先，构建 Docker 镜像：
```sh
docker build -t worker-sub .
```

### 部署容器
使用以下命令部署容器，并挂载外部的 `wrangler.toml` 文件：
```sh
docker run -d -p 8787:8787 -v /path/to/your/wrangler.toml:/app/wrangler.toml worker-sub
```
其中：
- `/path/to/your/wrangler.toml` 是你本地的 `wrangler.toml` 文件路径。
- `worker-sub` 是你的 Docker 镜像名称。

### 访问服务
部署完成后，可以通过 `http://localhost:8787` 访问服务。

## 环境变量
你可以通过修改 `wrangler.toml` 文件来设置以下环境变量：
- `TOKEN`: 订阅密钥
- `SUBCONFIG`: 订阅转换配置文件
- `SUBNAME`: 订阅名称
- `GUEST`: 访客 ID
- `SUBAPI`: 订阅转换 API

## 开发模式
在开发模式下，可以使用以下命令启动服务：
```sh
npm run start
```
服务将会在 `http://0.0.0.0:8777` 端口上运行。
