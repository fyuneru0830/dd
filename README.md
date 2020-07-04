# vps-dd
# 介绍
  因为许多云平台的系统不干净，或者不提供纯净windows，或者各种监控原因，要重装系统。使用dd包即可实现
  有cent，debian，windows等等可以自己做也可以用别人做好的。
  以下教程为实际测试结果，可靠，但是后续可能会有新的变化，所以失败的话看下面的参考网站自己学习。
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
