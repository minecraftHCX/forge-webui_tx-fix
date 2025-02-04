#!/bin/bash

# Initialize environment variables
PYTHON=""
GIT=""
VENV_DIR=""
COMMANDLINE_ARGS=""

# Uncomment the following lines to reference an existing A1111 checkout.
# A1111_HOME="Your A1111 checkout dir"
# 
# VENV_DIR="$A1111_HOME/venv"
# COMMANDLINE_ARGS="$COMMANDLINE_ARGS \
#   --ckpt-dir $A1111_HOME/models/Stable-diffusion \
#   --hypernetwork-dir $A1111_HOME/models/hypernetworks \
#   --embeddings-dir $A1111_HOME/embeddings \
#   --lora-dir $A1111_HOME/models/Lora"

# Run the webui script (without exec to avoid replacing the shell process)
/workspace/stable-diffusion-webui-forge/forge-webui.sh -f
#这里的逻辑是webui-user.sh启动webui.sh并传递参数(现为forge-webui.sh)
