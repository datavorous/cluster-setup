# Cluster Setup

## Setup (one time)

```bash
git clone https://github.com/datavorous/cluster-setup.git
cd ~/cluster-setup
srun -p u22 -A SLURM_ACCOUNT --gres=gpu:1 -c 4 --time=00:30:00 --pty bash
bash setup/setup.sh
exit
```

## Before running anything

```bash
cd ~/cluster-setup
source setup/env.sh
pixi shell
```

## Directory structure

- `src/`: your training code
- `configs/`: your config files
- `scripts/`: utility scripts (demo.py to test)
- `setup/`: initialization scripts

## Environment variables 

Available after `source setup/env.sh`

```bash
SCRATCH=/scratch/$USER # ephemeral node-local storage
HF_HOME=/scratch/$USER/hf_cache # Hugging Face models
CHECKPOINTS_DIR=/scratch/$USER/checkpoints # your checkpoints
EXPERIMENTS_DIR=/scratch/$USER/experiments # your logs/outputs
```

Use these in your code. `/scratch` is fast and deleted after job ends. Store everything there.

## Run your script

```bash
python src/script.py
```

## Test setup

```bash
python scripts/demo.py
```

## Submit batch job

Create `job.sh`:

```bash
#!/bin/bash
#SBATCH --job-name=train
#SBATCH --partition=u22
#SBATCH --gres=gpu:4
#SBATCH --time=12:00:00

source setup/env.sh
pixi shell
python src/script.py
```

Then: `sbatch job.sh`
