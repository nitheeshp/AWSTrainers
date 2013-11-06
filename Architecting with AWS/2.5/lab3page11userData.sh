#!/bin/sh 
# REPLACE PARAMETERS WITH YOUR QUEUE NAMES AND BUCKET NAME 
INPUT_QUEUE=<YOUR_INPUT_QUEUE_NAME> 
OUTPUT_QUEUE=<YOUR_OUTPUT_QUEUE_NAME> 
S3_BUCKET=<YOUR_S3_BUCKET_NAME> 
# Launch two processes to do work 
/usr/bin/python /home/ec2-user/image_processor.py --input-queue $INPUT_QUEUE --output-queue $OUTPUT_QUEUE --s3-output-bucket $S3_BUCKET & 
/usr/bin/python /home/ec2-user/image_processor.py --input-queue $INPUT_QUEUE --output-queue $OUTPUT_QUEUE --s3-output-bucket $S3_BUCKET & 
