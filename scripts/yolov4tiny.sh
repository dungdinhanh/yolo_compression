#!/bin/bash

#
#cmd="python train.py --data data/voc.data --batch-size 32 --weights '' --cfg cfg/yolov4/yolov4-voc.cfg --img-size 416 416 --name vocyolov4"
#echo ${cmd}
#eval ${cmd}


cmd="python train_flex.py --data data/voc.data --batch-size 12 --weights '' --cfg models/vocyolov4-tiny.yaml --img-size 416 416 --name vocyolov4tiny --lossv v4"
echo ${cmd}
eval ${cmd}

#cmd="python train.py --data data/voc.data --batch-size 32 --weights '' --cfg cfg/yolov4/yolov4-csp-voc.cfg --img-size 416 416 --name vocyolov4csp"
#echo ${cmd}
#eval ${cmd}