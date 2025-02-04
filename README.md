# forge-webui_tx-fix
forgewebui针对腾讯GPU工作空间部分特殊bug的修复版本

警告
1.本webui.sh有修改，可能在运行环境变更时出现奇怪bug
2.本修改版完全开源,禁止任何商业用途（包括但不限于整合进安装脚本内进行收费，制作非收费安装脚本使用时请标明来源！），违者...把你挂在这下面！（o_o）

#无明显改动，仅是修改了文件名和添加了运行指令（给不会指令的纯小白使用的）

原项目地址：
https://github.com/minecraftHCX/forge-webui_tx-fix/
【SD-forge自制安装脚本-视频参考】 https://b23.tv/Jjrchfc

将代码复制在终端；报错问题请找GPT解决！

安装脚本：
git clone --no-checkout https://github.com/tangxintx/forge-webui_tx-fix.git /tmp/forge-webui_tx-fix
cd /tmp/forge-webui_tx-fix
git archive --format=tar HEAD | tar -x -C /workspace/
cd ~
rm -rf /tmp/forge-webui_tx-fix

安装依赖：
cd /workspace/ 
bash forge-install.sh

启用forge：
cd /workspace/ 
bash forge-webui.sh

安装配置ngrok：
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.tgz 
tar -xvzf ngrok-stable-*.tgz

ngrok authtoken YOUR_AUTHTOKEN 

#YOUR_AUTHTOKEN替换为你在ngrok官网中获取的实际token

默认端口7860，ngrok代理7860端口：
ngrok http://localhost:7860

最后打开ngrok给的链接

报错问题请找GPT解决！不要找我！
没有万能的人  
找我的人是这个👎-，我是这个👍+
