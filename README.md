# cluster setup

## Setup (once)

```bash
git clone https://github.com/datavorous/cluster-setup.git
cd ~/cluster-setup
srun -p u22 -A SLURM_ACCOUNT --gres=gpu:1 -c 4 --time=00:30:00 --pty bash
bash setup.sh
```

## Run

```bash
cd ~/cluster-setup
source env.sh
pixi shell
python src/train.py
```

## Structure

- `src/`: training code and models
- `configs/`: YAML configs
- `scripts/`: utility scripts
- `pixi.toml`: Python dependencies
- `env.sh`: sets `SCRATCH`, `HF_HOME`, `CHECKPOINTS_DIR`, `EXPERIMENTS_DIR`

## Storage

| Path | Content |
|------|---------|
| `/scratch/$USER/hf_cache` | Hugging Face models |
| `/scratch/$USER/checkpoints` | Model checkpoints |
| `/scratch/$USER/experiments` | Experiment logs |
| `/scratch/$USER/outputs` | Final outputs |