#!/bin/bash
data_path=""
results_path=""
pre_trained_model_name=""
model="BertBaseMultilingualCased"

for SEED in 42 35 119 40 #163
do
    python main.py --option "META"--use-slots --train-langs en --dev-langs es th --test-langs en es th --use-adapt --use-back --use-non-overlap \
           --k-spt 6 --q-qry 6 --data-dir $data_path --out-dir $results_path --batch-sz 2500 --pre-train-steps 2000 --local_rank 0 \
           --use-pretrained-model "pre_trained" --pre-trained-model-name $pre_trained_model_name --seed $SEED #35 119  40 163
done
