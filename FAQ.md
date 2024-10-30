## 直接在线看就行
## 1 新建账号(需要root权限) 
 - 在/Public目录下有一个Makefile脚本(可以copy仓库下的Makefile)
>cd /Public
>
 - 以创建名字为lgq，并配置vnc端口为17为例，执行以下命令创建用户 创建用户以后会切换至新创建得用户，再执行命令开启VNC
>make create_user name=lgq vnc_port=17 
>
 - 以创建名字为lgq，并配置vnc端口为17为例，执行以下命令开启VNC

>make vnc_config  name=lgq vnc_port=17
>
 - 注意：vnc_port不要比/etc/tigervnc/vncserver.users文件里面原来最大的端口号小，主要是因为防火墙的端口范围
## 2 新建账号以后的一些设置
 - 新建账户以后桌面如下
![new](./img/new.png "new")
 - 打开tweak在里面设置即可
![tweak](./img/tweak.png "tweak")
 - 其他设置自己灵活发挥
![tweak_setting](./img/tweak_setting.png "tweak_setting")
 - 设置好以后一般如下
![new2](./img/new2.png "new2")
 - 右下角四个框框是workplace设置，请自己找一下
## 3 logout问题
![logout](./img/logout.png "logout")
**不要点logout，这很麻烦。目前只能备份文件，新建账号了**
## 4 update问题(需要root权限)
最好不要update，不确定会不会出问题
## 5 .bashrc（一般是软件环境变量问题）
 - 如果发现某些需要的软件安装了但是用不了，请检查一下~/.bashrc文件有没有设置对应的环境变量，可以看看/Public下的.bashrc。
 - 如果/Public下的.bashrc没有的话，看一下软件安装目录，结合google或者百度，照猫画虎配置一下。
 - 更换软件版本（如果有不同的版本）也是一样，注释掉原来的环境变量，修改成新版本的软件的路径。
 - 例如：
- ![bashrc](./img/bashrc.png "bashrc")
 - 修改完成以后source ~/.bashrc
## 6 VNC端口更换(应该是需要root)
 -  可以查看/Public下makefile中vnc_config下的命令，查看防火墙设置端口。
 - [防火墙设置(一篇博客)](https://blog.csdn.net/qq_42055933/article/details/142604671 "")
## 7 文件传输或备份问题
 - MobaXterm软件 ssh登录服务器(软件使用敬请google或百度)
- ![ssh](./img/ssh.png "ssh")
 - scp传输(工位网络上传可以达到100MB):[scp命令传文件](https://blog.csdn.net/a545812327/article/details/111313810)
注意scp传去自己账户有权限的目录下，博客是以root用户示范的
- 其他办法敬请google或百度
## 8连接服务器问题
- 推荐[VNC Viewer by RealVNC](https://www.realvnc.com/en/connect/download/viewer/?lai_vid=99JdlQ1wyirn&lai_sr=10-14&lai_sl=l)
可以不登录，可以直接使用
- [Windows下通过VNC Viewer访问Linux服务器](https://blog.csdn.net/shao_yc/article/details/103300402)
点开直接看4就可以(如何打开像4的界面：上方菜单栏->file->new connection)。
 - 其他办法敬请google或百度
