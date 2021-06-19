#!/bin/bash



cmd="python train.py --data data/voc.data --batch-size 12 --weights '' --cfg cfg/yolov4/yolov4-csp-voc.cfg --img-size 416 416 --name vocyolov4csp --lossv scalev4"
echo ${cmd}
eval ${cmd}