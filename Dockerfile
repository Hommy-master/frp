# 将官方 release 的 Linux 版 frps 放到 app/bin/frps（需与容器架构一致，如 linux/amd64）
FROM alpine:3.20

RUN apk add --no-cache ca-certificates

COPY app/bin/frps /usr/local/bin/frps
COPY app/etc/frps.toml /etc/frp/frps.toml

RUN chmod 755 /usr/local/bin/frps

# 与 frps.toml 中 bindPort 一致；若启用 Dashboard、KCP 等请自行增加 EXPOSE 或 --publish
EXPOSE 7000

ENTRYPOINT ["/usr/local/bin/frps"]
CMD ["-c", "/etc/frp/frps.toml"]
