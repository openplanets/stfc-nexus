#!/bin/sh

RAW_FILES=`cat inputFilesRaw.txt`

INFILE=convertinputTest.txt

rm -f ${INFILE}

for n in ${RAW_FILES};do

ID=`basename ${n} |sed s/.raw//`

# get all of the debug and status files for the conversion process

DIR=`dirname ${n} |sed s/testdata/migratedTestData/`

echo  convert convert --input=\"hdfs://${DIR}/${ID}.nxs\" --output=\"hdfs://${DIR}/${ID}.nxs.xml\" \> \"hdfs://${DIR}/${ID}_convert.log\" >> ${INFILE}

done

