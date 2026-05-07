# cluster setup

1. VS Code -> Remote SSH extension 
2. Add hostname, and username to `~/.ssh/config`
3. Ctrl+Shift+P -> Remote SSH: Connect to Host -> [hostname]

```bash
# req a compute node
srun -p u22 -A {slurm acc name} --gres=gpu:1 -c 4 --time=01:00:00 --pty bash

# clone the repo
git clone https://github.com/datavorous/cluster-setup ~/cluster-setup
cd ~/cluster-setup

# run setup (once only)
bash setup.sh

# Enter the environment
pixi shell

# Run
python main.py
```

demo: inference for opt-125.