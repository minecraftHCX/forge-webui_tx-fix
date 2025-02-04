#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
LBLUE='\033[1;34m'
NOCOLOR='\033[0m'

echo -e "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo -e "${GREEN}                 Forge自动部署脚本${NOCOLOR}"
echo -e "                        "
echo -e "${RED}                               v1.0${NOCOLOR}"
echo -e "                        "
echo -e "${LBLUE}                                            --made by zhuhesunny${NOCOLOR}"
echo -e "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
sleep 5
clear
echo -e "${GREEN}欢迎使用本安装脚本！请阅读以下须知："
echo -e "1.本安装脚本完全开源免费，请详情请查阅：https://github.com/minecraftHCX/forge-webui_tx-fix"
echo -e "2.本安装脚本基于腾讯GPU云工作平台进行了部分修改，可能会出现运行不稳定，出现疑难杂症等问题，不建议在其他环境使用"
echo -e "3.本安装脚本仅为了方便操作而制作，作者不负任何使用后果，若在安装过程中出现问题请在github上反馈，安装完成后任何bug作者理论上均不负责维护"
echo -e "4.请确保你已经了解这些知识：内网穿透、终端指令、python中的报错解决方式"
echo -e "5.命令行操作等常识作者不会教！自己去bing上面学会了再用！有问题虚心求教，没有人有义务为你进行解答，请不要随意攻击他人!${NOCOLOR}"
echo -e "${RED}特殊警告：此脚本完全开源，请不要将其以及修改补丁整合进任何付费整合包内使用！${NOCOLOR}"
echo -e "                        "
read -p "如果您同意以上内容，请按任意键继续！否则请Ctrl+C退出此安装脚本."
echo -e "                        "
echo -e "${YELLOW}注意：之后安装部分模块或程序时会出现是否安装的询问，请输入y(yes)继续安装_(:з」∠)_"
echo -e "                        "
read -p "准备好后，请按任意键继续！"
echo -e "${NOCOLOR}开始安装必要库..."
apt install libgl1-mesa-glx
echo -e "${GREEN}开始安装Forge...${NOCOLOR}"
git clone https://github.com/lllyasviel/stable-diffusion-webui-forge.git
cd /workspace/stable-diffusion-webui-forge
clear
echo -e "${GREEN}开始安装修复补丁及对应环境...${NOCOLOR}"
git clone https://github.com/minecraftHCX/huggingface_guess.git
pip install -r requirements_versions.txt
pip install torch==2.3.1
pip install torchvision==0.18.1
pip install torchaudio==2.3.1
pip install triton==2.3
wget -O webui.sh https://dison331.us.kg:8888/down/g7kTR615bOtl.sh
wget -O webui-user.sh https://dison331.us.kg:8888/down/FS6YTSnAJP51.sh
echo -e "${GREEN}赋予文件运行权限...${NOCOLOR}"
chmod +x webui.sh
chmod +x webui-user.sh
clear
echo -e "说明\n1.启动forge请运行安装目录下的webui-user.sh。" > ./readme.txt
echo -e "2.请注意，运行后生成的访问链接为本地链接，需要使用内网穿透软件方可正常访问！" >> ./readme.txt
echo -e "警告：该修改版的webui-user.sh及webui.sh仅供学习交流，禁止任何商业用途！" >> ./readme.txt
echo -e "by zhuhesunny" >> ./readme.txt
echo -e "内网穿透推荐使用cpolar（速度较慢，加载时间可能较长）或ngrok（本人未测试）" >> ./readme.txt
clear
echo "说明文件已在安装目录下生成！请查阅readme.txt！"
echo -e "${YELLOW}即将运行webui，期间可能会继续安装部分依赖，请耐心等待至出现webui访问地址_(:з」∠)_（默认地址为http://127.0.0.1:7860）${NOCOLOR}"
read -p "准备好后，请按任意键继续！"
clear
bash webui-user.sh
