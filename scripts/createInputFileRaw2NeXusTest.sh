#!/bin/sh


RAW_FILES=`cat inputFilesRaw.txt`

INFILE=raw2nexusinputTest.txt

rm -f ${INFILE}

for n in ${RAW_FILES};do

ID=`basename ${n} |sed s/.raw//`

# get all of the debug and status files for the conversion process

DIR=`dirname ${n}`
PROCESSED_DIR=`echo ${DIR}|sed s/testdata/migratedTestData/`

DEBUG=${ID}_ICPdebug.txt
IPC=${ID}_ICPstatus.txt
STATUS=${ID}_Status.txt
EVENT=${ID}_ICPevent.txt
LOG=${ID}.log

if hadoop fs -test -e ${DIR}/${STATUS} 
then
 METADATA1="--metadata1=\"hdfs://${DIR}/${STATUS}\""
else
 METADATA1=""
fi

if hadoop fs -test -e ${DIR}/${EVENT} 
then
 METADATA2="--metadata2=\"hdfs://${DIR}/${EVENT}\""
else
 METADATA2=""
fi

if hadoop fs -test -e ${DIR}/${DEBUG}
then
 METADATA3="--metadata3=\"hdfs://${DIR}/${DEBUG}\""
else
 METADATA3=""
fi

if hadoop fs -test -e ${DIR}/${IPC} 
then
 METADATA5="--metadata5=\"hdfs://${DIR}/${IPC}\""
else
 METADATA5=""
fi

NUM_LINES=40

#echo ${STATUS}

echo raw2nexus raw2nexus --input=\"hdfs://${n}\" ${METADATA1} ${METADATA2} ${METADATA3} ${METADATA5} --output=\"hdfs://${PROCESSED_DIR}/${ID}.nxs\" \> \"hdfs://${PROCESSED_DIR}/${ID}_raw2nexus.log\" >> ${INFILE}

done

