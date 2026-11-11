whoami
w
exit
systemctl enable --now cockpit.socket
sudo su
df -h
squeue
sinfo
saact
sacct
sinfo -j 25536
sinfo --j 25536
exit
sinfo
passwd
clear
lscpu
lspci
clear
ssh login01
flightinfo
flight info
clear
ssh login03
lscpu
ssh gpu01
ssh login02
clear
w
whoami
sudo 
sudo apt update
clear
sinfo 
sinfo --help
sinfo -l
ssh rgdpu01
ssh rdgpu01
ssh rdgpu02
scontrol show nodes
srun --help
srun -G 1 --pty bash
squeue
salloc --time=0:05:00 --partition=gpu --gres=gpu:1
scancel 29240
squeue
history
salloc --time=0:05:00 --partition=gpu --gres=gpu:1 --pty bash
salloc --time=0:05:00 --partition=gpu --gres=gpu:1
squeue
ssh rdgpu01
scancel 29241
srun -p gpu --gres=gpu:1 --pty bash
srun -p gpu --gres=gpu:1 --time=00:05:00 --pty bash
unset SLURM_JOB_ID
srun -p gpu --gres=gpu:1 --time=00:05:00 --pty bash
sinfo
clear
exit
whomai
whoami
history
nvtop
nvidia-smi
btop
apt install btop
nvcc --version
clear
which gcc
gcc --version
g++ -version
g++ --version
squeue
srun -p gpu --gres=gpu:1 --time=00:05:00 --pty bash
clear
whoami
cd ..
ls
ls -la
cd ..
ls
cd ..
ls
ls -la
cd ~
ls -la
cd ../..
ls -la
exit
curl -LsSf https://astral.sh/uv/install.sh | sh
which uv
w
ssh login03
w
ssh login04
clear
ssh login02
clear
bash ~/Miniconda3-latest-Linux-x86_64.sh
conda init
source .bashrc
conda init
eval "$(/home/tutor/cqwqwkwe/miniconda3/bin/conda shell.YOUR_SHELL_NAME hook)" 
eval "$(/home/tutor/cqwqwkwe/miniconda3/bin/conda shell.bash hook)" 
conda init
source .bashrc
which apt
which snap
clear
which git
lspci
scontrol show nodes
srun -p gpu --gres=gpu:1 --time=00:05:00 --pty bash
squeue 
squeue -l
which mpi
mpicc --version
mpirun --version
clear
history
python -version
python --version
sinfo
ls /home
ls
exit
clear
squeue
sinfo
history
srun -p gpu --gres=gpu:1 --time=00:05:00 --pty bash
srun -p gpu --gres=gpu:1 --time=00:02:00 --pty bash
squeue
sinfo
clear
flight info
flight start
flight desktop
flight webify
flight list
list
flight desktop s
flight desktop webify
flight desktop webify DESKTOP
exit
squeue
w
who
w
ml list
ml avail
ml --help
ml spider 
ml spider python
python --version
ml load
clear
ml clear
clear
sinfo
srun -p gpu --gres=gpu:1 --time=00:02:00 --pty bash
srun -p gpu --gres=gpu:1 --time=00:01:00 --pty bash
srun -p cpu --gres=cpu:1 --time=00:01:00 --pty bash
srun -p cpu--time=00:01:00 --pty bash
srun -p cpu --time=00:02:00 --pty bash
squeue
sprio
srun -p cpu --time=00:02:00 --pty bash
srun -p gpu --gres=gpu:1 --time=00:01:00 --pty bash
clear
srun -p gpu --gres=gpu:1 --time=00:01:00 --pty bash
squeue --me
srun -p gpu --gres=gpu:1 --time=00:01:00 --pty bash
salloc -p gpu --gres=gpu:1 --time=00:01:00 --pty bash
salloc -p gpu --gres=gpu:1 --time=00:01:00
exit
squeue --me
exit
sacctmgr show qos format=Name,MaxTRESPU,MaxJobsPU
sacct
srun -p gpu --gres=gpu:1 --time=00:01:00 --pty bash
sacct
sacctmgr show qos format=Name,MaxTRESPU,MaxJobsPU --long
sacctmgr show qos format=Name,MaxTRESPU,MaxJobsPU -l
sacctmgr
sacctmgr show qo
sacctmgr show qos
clear
sacct
sacct --help
sacct --long
exit
squeue --me
ssh rdgpu01
squeue --me
squeue
squeue --me
clear
scontrol show job 186548
srun --partition=gpu      --gres=gpu:1      --cpus-per-task=1      --time=00:05:00      --pty /bin/sh -i
srun --partition=gpu      --gres=gpu:1      --cpus-per-task=1      --time=00:05:00      --pty /usr/bin/sh -i
scontrol show job 186551
hostname
ls -ltr slurm-186551*
sacct -j 186551 --units=M   --format=JobID,JobName,State,ExitCode,Elapsed,NodeList,AllocTRES,DerivedExitCode
srun -vvv -p gpu --nodelist=rdgpu02 --gres=gpu:1   -t 00:02:00 /bin/hostname
which hostname'
which hostname
srun -vvv -p gpu --nodelist=rdgpu02 --gres=gpu:1   -t 00:02:00 /usr/bin/hostname
srun -vvv -p gpu --nodelist=rdgpu01 --gres=gpu:1   -t 00:02:00 /usr/bin/hostname
scontrol show job 186554
scontrol show job 186552
srun -vvv -p gpu --nodelist=rdgpu02   --gres=gpu:1 -t 00:02:00 /bin/hostname
srun -vvv -p gpu --nodelist=rdgpu02   --gres=gpu:1 -t 00:02:00 /usr/bin/hostname
whomai
whoami
clear
history
srun -p gpu --gres=gpu:1 --time=00:02:00 --pty bash
squeue
clear
which git
du -h
du -h . --max-depth=1
df -h
srun -p gpu --gres=gpu:1 --time=00:02:00 --pty bash
sinfo
nano gpu_availability_test.sh
chmod +x gpu_availability_test.sh
SUBMIT_EPOCH=$(date +%s.%N)
sbatch --export=ALL,SUBMIT_EPOCH=$SUBMIT_EPOCH        gpu_availability_test.sh
nano gpu_availability_test.sh
nano gpu_availability_test.sh\
nano gpu_availability_test.sh
SUBMIT_EPOCH=$(date +%s.%N)
sbatch --export=ALL,SUBMIT_EPOCH=$SUBMIT_EPOCH        gpu_availability_test.sh
nano gpu_availability_test.sh
which sh
nano gpu_availability_test.sh
SUBMIT_EPOCH=$(date +%s.%N)
sbatch --export=ALL,SUBMIT_EPOCH=$SUBMIT_EPOCH        gpu_availability_test.sh
which sh
nano gpu_availability_test.sh
SUBMIT_EPOCH=$(date +%s.%N)
sbatch --export=ALL,SUBMIT_EPOCH=$SUBMIT_EPOCH        gpu_availability_test.sh
nano gpu_availability_test.sh
SUBMIT_EPOCH=$(date +%s.%N)
sbatch --export=ALL,SUBMIT_EPOCH=$SUBMIT_EPOCH        gpu_availability_test.sh
nano gpu_availability_test.sh
SUBMIT_EPOCH=$(date +%s.%N)
sbatch --export=ALL,SUBMIT_EPOCH=$SUBMIT_EPOCH        gpu_availability_test.sh
sinfo -o "%P %a %l %D %C"
sinfo -N -o "%N %P %G %T"
scontrol show config | grep -i GresTypes
scontrol show partition
nano gpu_availability_test.sh
SUBMIT_EPOCH=$(date +%s.%N)
sbatch --partition=gpu        --gres=gpu:1        --time=00:05:00        --export=ALL,SUBMIT_EPOCH=$SUBMIT_EPOCH        gpu_availability_test.sh
squeue --me
ls -la
squeue --me
cat gpu_test*
srun -p gpu --gres=gpu:1 --time=00:02:00 --pty sh
srun --partition=gpu      --gres=gpu:1      --cpus-per-task=2      --mem=8G      --time=00:05:00      --pty sh
srun --partition=gpu      --gres=gpu:1      --cpus-per-task=2      --mem=8G      --time=00:05:00      --pty /usr/bin/sh
srun --partition=gpu      --gres=gpu:1      --time=00:02:00      --pty /usr/bin/sh
squeue -u $USER
srun --partition=gpu      --gres=gpu:1      --time=00:02:00      --pty /usr/bin/sh
squeue --me
scontrol show 186550
scontrol show jobh 186550
scontrol show job 186550
srun -p gpu      --gres=gpu:1      -t 00:02:00      hostname
squeue --me
scontrol show job 186556
scontrol show job 186555
squeue --me
scontrol show job 186557
nano /usr/bin/whomai
which whoami
nano /usr/bin/whoami
git clone https://github.com/ayush1512/ACC-HPC2026-AIML.git
which uv
ls -la
uv venv
ls -la
source .venv/bin/activate
pip install jupyter
uv pip install jupyter
deactivate
clear
SUBMIT_EPOCH=$(date +%s.%N)
sbatch --partition=gpu        --gres=gpu:1        --time=00:05:00        --export=ALL,SUBMIT_EPOCH=$SUBMIT_EPOCH        gpu_availability_test.sh
ls -la
squeue --me
ls -la
cat gpu_test_186558*
clear
uv init
uv add notebook ipykernel
ls -la
rm gpu_test*
ls -la
uv add torch
nano jupytergpu.sh
sbatch jupytergpu.sh
nano jupytergpu.sh
sbatch jupytergpu.sh
nano jupytergpu.sh
sbatch jupytergpu.sh
ls -la
squeue --me
scancel 186560
nano jupytergpu.sh
sbatch jupytergpu.sh
squeue --me
scancel 186561
nano jupytergpu.sh
sbatch jupytergpu.sh
squeue --me
ls -la
cat jupyter-*
