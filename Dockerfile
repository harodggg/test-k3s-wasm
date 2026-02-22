# 你的最终 Dockerfile 只需要这三行
FROM scratch
COPY main.wasm /main.wasm
ENTRYPOINT ["/main.wasm"]
