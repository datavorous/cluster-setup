# cluster setup

login with `ssh`.

## first time

```bash
git clone https://github.com/datavorous/cluster-setup.git
cd ~/cluster-setup
bash setup.sh
```

```bash
# request a compute node
srun -p u22 -A {slurm acc name} --gres=gpu:1 -c 4 --time=01:00:00 --pty bash

source env.sh
pixi shell
python main.py
```