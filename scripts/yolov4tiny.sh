#!/bin/bash

#
#cmd="python train.py --data data/voc.data --batch-size 32 --weights '' --cfg cfg/yolov4/yolov4-voc.cfg --img-size 416 416 --name vocyolov4"
#echo ${cmd}
#eval ${cmd}


cmd="python train.py --data data/voc.data --batch-size 32 --weights '' --cfg cfg/yolov4tiny/yolov4-tiny-voc.cfg --img-size 416 416 --name vocyolov4tiny --lossv v4"
echo ${cmd}
eval ${cmd}

#cmd="python train.py --data data/voc.data --batch-size 32 --weights '' --cfg cfg/yolov4/yolov4-csp-voc.cfg --img-size 416 416 --name vocyolov4csp"
#echo ${cmd}
#eval ${cmd}