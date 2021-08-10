POOL=rx.unmineable.com:3333
WALLET=TRX:TQWShWhyezg9tS3JFXR8mJqAH6yHvve6Dz
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo Nvidia_$GPU-$(shuf -i 1-99999 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
