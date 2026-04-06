# frp
打包frp镜像

# 客户端配置示例
```
serverAddr = "101.34.159.254"	# 服务器(frps)监听的IP
serverPort = 7000			 	# 服务器(frps)监听的Port
log.level = "debug"          	# 输出非常详细的调试信息

[[proxies]]
name = "capcut-mate"
type = "tcp"
localIP = "127.0.0.1" 			# 本地IP，需要被转发的本地IP
localPort = 30000     			# 本地端口，需要被转发的本地端口
remotePort = 7800 				# 本地端口转发到服务端的端口
```
