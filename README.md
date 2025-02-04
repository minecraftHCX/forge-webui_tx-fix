原作者前言：
1.本webui.sh有修改，可能在运行环境变更时出现奇怪bug
2.本修改版完全开源,禁止任何商业用途（包括但不限于整合进安装脚本内进行收费，制作非收费安装脚本使用时请标明来源！），违者...把你挂在这下面！（o_o）

#基本可以正常使用了

#无明显改动，仅是添加了教学运行指令（给不会指令的纯小白使用的）（想改原码，一改就报错，放弃了）个人能力有限，不接受反馈！

原项目地址：
https://github.com/minecraftHCX/forge-webui_tx-fix/

【SD-forge自制安装脚本-视频参考】 https://b23.tv/Jjrchfc

#将代码复制在终端；报错问题请找GPT解决！

克隆项目：

git clone https://github.com/minecraftHCX/forge-webui_tx-fix/

解压zip包：

apt-get install unzip

unzip /workspace/forge-webui_tx-fix.zip -d /workspace/


运行脚本：

cd /workspace/forge-webui_tx-fix-main

bash install.sh

安装配置ngrok：

wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.tgz 

#下载慢属正常

tar -xvzf ngrok-stable-*.tgz

#YOUR_AUTHTOKEN替换为你在ngrok.com官网中获取的实际token

ngrok authtoken YOUR_AUTHTOKEN 

默认端口7860，ngrok代理7860端口：

ngrok http://localhost:7860

最后打开ngrok给的链接（ngrok免费账号每月1GB代理流量）

#写的有亿点烂了，边写寒假作业边写代码；

#非教学指令报错，勿找我；脚本报错，找原作者；

#报错问题请找GPT解决！不要找我！

#没有万能的人 ，作者仅是14岁初中生；

#找我的人是这个👎-，我更是这个👍+

#蹲个Ubuntu纯命令行科学上网教程❤️
