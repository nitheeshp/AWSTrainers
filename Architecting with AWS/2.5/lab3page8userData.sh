#!/bin/bash 
# Install ImageMagick, a Python library, and create a directory 
yum install -y ImageMagick 
easy_install argparse 
mkdir /home/ec2-user/jobs 
# Download and install the batch processing script 
wget -O /home/ec2-user/image_processor.py https://awsu-arch.s3.amazonaws.com/aux/technical-exercises/day-2/lab_1_create_batch_processing_cluster/image_processor.py
