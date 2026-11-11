#!/usr/bin/sh
#SBATCH --job-name=jupyter-gpu
#SBATCH --partition=gpu
#SBATCH --time=00:05:00
#SBATCH --gres=gpu:1
#SBATCH --output=jupyter-%j.out
#SBATCH --error=jupyter-%j.err

set -e

# Activate the uv project environment
cd "$SLURM_SUBMIT_DIR"
source .venv/bin/activate

# Select a port
PORT=8888

echo "=================================="
echo "Job ID: $SLURM_JOB_ID"
echo "Compute node: $(hostname)"
echo "Port: $PORT"
echo "=================================="

# Start Jupyter Notebook
uv run --no-sync jupyter notebook \
    --no-browser \
    --ip=0.0.0.0 \
    --port=$PORT

