#!/bin/sh

RAW_FILES=`cat inputFilesRaw.txt`

INFILE=validatorinputTest.txt

rm -f ${INFILE}

for n in ${RAW_FILES};do

ID=`basename ${n} |sed s/.raw//`

DIR=`dirname ${n} |sed s/testdata/migratedTestData/`

echo  validate validate --input=\"hdfs://${DIR}/${ID}.nxs.xml\" \> \"hdfs://${DIR}/${ID}_validator.log\" >> ${INFILE}

done

