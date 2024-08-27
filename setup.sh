apt-get update 
apt-get install -y curl
apt-get install -y python3.10
apt-get install -y python-is-python3
apt-get install -y pip
apt-get install -y git
apt-get install -y ffmpeg

pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple 
pip install torch torchvision torchaudio --proxy=http://192.168.124.100:8080 --index-url https://download.pytorch.org/whl/cu118
pip install numpy==1.26.4
ln -s /usr/local/lib/python3.10/dist-packages/nvidia/cuda_nvrtc/lib/libnvrtc.so.11.2 /usr/local/lib/python3.10/dist-packages/nvidia/cuda_nvrtc/lib/libnvrtc.so
pip cache purge
apt-get autoclean
apt-get clean
