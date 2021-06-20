#!/bin/bash


cmd="python train.py --data data/voc.data --batch-size 12 --weights '' --cfg cfg/yolov4/yolov4-voc.cfg --img-size 416 416 --name vocyolov4 --lossv v4"
echo ${cmd}
eval ${cmd}
