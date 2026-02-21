# 这是一个符合 OCI 规范的 Wasm 镜像包
FROM scratch
# 注意：路径要和 Cargo 编译产出的路径一致
COPY target/wasm32-wasip2/release/test-k3s-wasm.wasm /main.wasm
ENTRYPOINT ["/main.wasm"]
