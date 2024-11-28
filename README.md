# xfreerdp-docker

### 功能

解决新的freerdp连接老的系统各种奇葩问题，目前这个版本兼容性最好。还有一个wayland的freerdp （wlfreerdp），因为运行的时候没有标题栏，在wsl中启动后不好移动窗口，并且有鼠标漂移问题就没有用。目前x11的xfreerdp稳定性还是好。

### 使用方法

```bash
# /w 窗口宽度
# /h 窗口高度
# /u 用户名
# /p 密码
# /v 服务器的地址
# /cert:tofu 在检查服务器段证书时候直接接受
# /relax-order-checks 在连接到有缺陷的服务器时，不再检查服务器端是否声明了RDP请求

# 阿里云2.0的老堡垒机
docker run --rm -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY \
buzhiyun/xfreerdp:v2.3.0 \
xfreerdp /u:username /p:password /w:1366 /h:768 /v:hostip:hostport  /relax-order-checks /cert:tofu /log-level:OFF

# 查看参数帮助
docker run --rm buzhiyun/xfreerdp:v2.3.0 xfreerdp /help
```
