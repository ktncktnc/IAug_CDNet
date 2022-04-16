#!/usr/bin/env bash


label_dir=/kaggle/input/gan-s2looking/s2looking-gan/label
image_dir=/kaggle/input/gan-s2looking/s2looking-gan/img
num_labels=2
batchSize=8
name=s2looking
python train.py --name $name --nThreads 0 --gpu_ids 0 --model pix2pix --dataset_mode custom --label_dir $label_dir --image_dir ${image_dir} --label_nc $num_labels --batchSize $batchSize --load_size 284 --crop_size 256 --no_instance --niter_decay 2 --niter 4 --display_freq 10 ----continue_train