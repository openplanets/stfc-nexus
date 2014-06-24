#!/bin/sh


RAW_FILES=`cat inputFilesRaw.txt`

INFILE=checksuminputTest.txt

rm -f ${INFILE}

for n in ${RAW_FILES};do

ID=`basename ${n} |sed s/.raw//`

DIR=`dirname ${n} |sed s/testdata/migratedTestData/`

echo  checksum checksum --input=\"hdfs://${DIR}/${ID}.nxs\" --output=\"hdfs://${DIR}/checksum_${ID}.chk\"  \> \"hdfs://${DIR}/${ID}_checksum.log\" >> ${INFILE}
done

