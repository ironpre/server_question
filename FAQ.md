## 直接在线看就行
## 1 新建账号(需要root权限)
在/Public目录下有一个Makefile脚本
>cd /Public
>
以创建名字为lgq，并配置vnc端口为17为例，执行以下命令创建用户
创建用户以后会切换至新创建得用户，再执行命令开启VNC
>make create_user name=lgq vnc_port=17 
>
以创建名字为lgq，并配置vnc端口为17为例，执行以下命令开启VNC
>make vnc_config  name=lgq vnc_port=17
>
注意：vnc_port不要比/etc/tigervnc/vncserver.users文件里面原来最大的端口号小，主要是因为防火墙的端口范围

## 2 新建账号以后的一些设置
![tweak](./img/tweak.png "tweak")
打开在里面设置即可
## 3 logout问题
![logout](./img/logout.png "logout")
<p>不要点logout，这很麻烦。目前只能备份文件，新建账号了</p>


