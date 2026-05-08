SCRATCH="${SCRATCH:-/scratch/$USER}"
mkdir -p "$SCRATCH"/{hf_cache/hub,outputs,checkpoints,experiments,pixi-envs}
pixi config set detached-environments "$SCRATCH/pixi-envs"
echo "[INFO] Storage ready at $SCRATCH"