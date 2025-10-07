#!/bin/bash
# --preemption-mode recompute \
# General Options
vllm serve "Qwen/Qwen2.5-7B-Instruct"  \
    --port 8423 \
    --disable-log-requests \
    --max-num-seqs 2 \
    --scheduler-delay-factor 0.0 \
    --scheduling-policy priority \
    --num-scheduler-steps 1 \
    --no-enable-prefix-caching \
    --gpu_memory_utilization=0.95 \
    --max_model_len=20000
