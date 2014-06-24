#!/bin/sh

# Create a file with a list of test files to process

DIR=/user/ad43/data/testdata
DIRS=`hadoop fs -ls ${DIR}|sed 's/.* \//\//'|grep -v Found`

FILE=inputFilesRaw.txt

rm ${FILE}

for m in ${DIRS}; do
	FILES=`hadoop fs -ls ${m}|sed 's/.* \//\//'|grep .raw$`
	for n in ${FILES}; do
		echo ${n}  >> ${FILE}
	done
done
