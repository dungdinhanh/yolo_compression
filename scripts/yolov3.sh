#!/bin/bash


cmd="python train.py --data data/voc.data  -pt --batch-size 32 --weights '' --cfg cfg/yolov3/yolov3voc.cfg --img-size 416 416 --name vocyolov3c"
echo ${cmd}
#eval ${cmd}

cmd="python train.py --data data/voc.data  -pt --batch-size 32 --weights '' --cfg cfg/yolov3tiny/yolov3-tinyvoc.cfg --img-size 416 416 --name vocyolov3-tinyc"
echo ${cmd}
eval ${cmd}


