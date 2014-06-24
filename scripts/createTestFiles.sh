#!/bin/sh

#Copy a small set of data n number of times to replicate a large dataset

BASE_DIR=/user/ad43/data/testdata/testdata
SOURCE_DIR=/user/ad43/ISISData
COPY_FACTOR=1001

         COUNTER=1
         while [  $COUNTER -lt ${COPY_FACTOR} ]; do
             hadoop fs -mkdir ${BASE_DIR}${COUNTER}
             hadoop fs -cp ${SOURCE_DIR}/* ${BASE_DIR}${COUNTER}
             let COUNTER=COUNTER+1 
         done
