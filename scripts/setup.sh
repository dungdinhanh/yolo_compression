#!/bin/bash


cmd="pip install -r requirements.txt"
echo ${cmd}
eval ${cmd}

cd mc
rm -r build
python setup.py install build
cd build
mv lib.* lib

cd ~/
git clone https://github.com/thomasbrandon/mish-cuda
cd mish-cuda
python setup.py build install
