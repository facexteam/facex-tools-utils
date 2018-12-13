#!/bin/bash

# git clone https://github.com/weiliu89/caffe.git ssd-caffe
# cd ssd-caffe
# git checkout ssd

git clone --depth=1 -b ssd https://github.com/weiliu89/caffe.git ssd-caffe
cd ssd-caffe

# Modify Makefile.config according to your Caffe installation.
cp Makefile.config.example Makefile.config
make -j8
# Make sure to include $CAFFE_ROOT/python to your PYTHONPATH.
make py
make test -j8
# (Optional)
make runtest -j8