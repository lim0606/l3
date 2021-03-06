#!/bin/sh

export PYTHONPATH=".:../../../shapeworld"

python -u ../../cls.py \
  --learning_rate 0.0001 \
  --predict_hyp=true \
  --infer_hyp=true \
  --train \
  --n_epochs=36 \
  --test \
  --test_same \
  --n_sample_hyps=10 \
  --use_true_hyp=false \
  --augment=true \
  > train.out \
  2> train.err

