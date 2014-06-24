#!/bin/sh

RAW_FILES=`cat inputFilesRaw.txt`

INFILE=fidoinputTest.txt

rm -f ${INFILE}

for n in ${RAW_FILES};do

ID=`basename ${n} |sed s/.raw//`

DIR=`dirname ${n} |sed s/testdata/migratedTestData/`

echo  fido fido --input=\"hdfs://${DIR}/${ID}.nxs\"  \> \"hdfs://${DIR}/${ID}_fido.log\" >> ${INFILE}
done
