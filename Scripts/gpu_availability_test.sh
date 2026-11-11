#!/usr/bin/sh
#SBATCH --job-name=gpu_availability_test
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --output=gpu_test_%j.out
#SBATCH --error=gpu_test_%j.err

set -uo pipefail

START=$(date +%s.%N)

echo "===== GPU AVAILABILITY TEST ====="
echo "Job ID: $SLURM_JOB_ID"
echo "Node: $(hostname)"
echo "Job started: $(date -Is)"
echo "Submission epoch: ${SUBMIT_EPOCH:-unknown}"

if [[ -n "${SUBMIT_EPOCH:-}" ]]; then
    python3 -c "import sys; print('Queue wait: %.3f seconds' % (float(sys.argv[1])-float(sys.argv[2])))" "$START" "$SUBMIT_EPOCH"
fi

echo ""
echo "===== GPU INFORMATION ====="

if ! command -v nvidia-smi >/dev/null 2>&1; then
    echo "ERROR: nvidia-smi unavailable"
    exit 1
fi

nvidia-smi
nvidia-smi --query-gpu=name,uuid,memory.total,utilization.gpu \
  --format=csv

echo ""
echo "===== CUDA INITIALIZATION ====="

CUDA_START=$(date +%s.%N)

python3 - <<'PY'
import time

t0 = time.perf_counter()

try:
    import torch
    print("PyTorch:", torch.__version__)
    print("CUDA available:", torch.cuda.is_available())

    if not torch.cuda.is_available():
        raise RuntimeError("CUDA unavailable")

    torch.cuda.init()
    x = torch.randn((2048, 2048), device="cuda")
    y = x @ x
    torch.cuda.synchronize()

    print("GPU:", torch.cuda.get_device_name(0))
    print("GPU count:", torch.cuda.device_count())
    print("GPU computation: SUCCESS")
    print("CUDA initialization + computation: %.3f seconds" %
          (time.perf_counter() - t0))

except Exception as e:
    print("GPU TEST FAILED:", repr(e))
    raise
PY

RC=$?

END=$(date +%s.%N)

echo ""
echo "===== FINAL RESULTS ====="
python3 -c "import sys; print('Execution duration: %.3f seconds' % (float(sys.argv[2])-float(sys.argv[1])))" "$START" "$END"

echo "Job finished: $(date -Is)"
echo "Exit code: $RC"

exit "$RC"

