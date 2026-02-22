# 必须先用一个带有 chmod 命令的基础镜像来修改权限
FROM --platform=$BUILDPLATFORM alpine:latest AS builder
COPY main.wasm /main.wasm
# 【最核心的一步】：赋予执行权限
RUN /bin/sh -c chmod +x /main.wasm

# 然后再拷贝到极其精简的 scratch 镜像中
FROM scratch
COPY --from=builder /main.wasm /main.wasm
ENTRYPOINT ["/main.wasm"]
