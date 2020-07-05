# 介绍
dd包是使用dd命令生成的完整复制文件，可以完整拷贝系统（windows，linux等）到单一文件，并且还原到任何环境下。
因此可以覆盖vps的linux系统更换成自己喜欢的任何系统。
# 自动安装
推荐在**Debian7**
需要手动输入*内网ip地址，内网ipgate，内网netmask*
```
wget https://raw.githubusercontent.com/fyuneru0830/dd/master/Install.sh && sudo chmod +x Install.sh && sudo bash Install.sh
```
安装需要30分钟左右，安装好用Remote Desktop，用户名：administrator，密码：Vicer
# 手动安装（不推荐）
```shell
# 使用debian 9，其他os理论也可以，但是脚本开发者用的debian就debian吧，然后安装依赖
apt-get install -y xz-utils openssl gawk file

# 请勿直接复制粘贴注意修改以下事项
# 1.修改ip地址
# 2.修改ipmask（不知道为什么gcp的mask是/20但是还是要写255.255.255.0所以就写255.255.255.0吧。。。)
# 3.修改ipgate
# 4.核对dd包是否失效
# 示例的dd包是windows10 完整版（但是许多被优化了）

wget --no-check-certificate -qO InstallNET.sh 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh' && bash InstallNET.sh --ip-addr 10.146.0.31 --ip-mask 255.255.255.0 --ip-gate 10.146.0.1 -dd 'https://image.moeclub.org/GoogleDrive/1OVA3t-ZI2arkM4E4gKvofcBN9aoVdneh'

#然后用rdp（windows的话在cmd输入mstsc，mac的话在appstore下载remote desk top登陆，默认用户名 administrator 默认密码 Vicer）

```

# 参考网站

https://ssr.tools/680

https://niconiconi.cc/blog/145.html
