#!/bin/bash


cmd="python train.py --data data/voc.data  -pt --batch-size 32 --weights '' --cfg cfg/yolov3/yolov3voc.cfg --img-size 416 416 --name vocyolov3c"
echo ${cmd}
#eval ${cmd}

cmd="python -m torch.distributed.launch --nproc_per_node=2 train.py --data data/oxfordhand.data  -pt --batch-size 64 --weights '' --cfg cfg/yolov3tiny/yolov3-tiny-hand.cfg --img-size 608 608 --name handtinyv3"
echo ${cmd}
eval ${cmd}


