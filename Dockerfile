# get hadoop
FROM sequenceiq/hadoop-docker:2.7.0

# create own directory
ENV WORK_KDIR /myApp
ENV INPUT_DIR /input_dir
WORKDIR ${WORK_KDIR}

# copy jar
COPY build/libs/WordCount.jar ${WORK_KDIR}
COPY src/main/resources/input.txt ${WORK_KDIR}

# https://www.tutorialspoint.com/hadoop/hadoop_mapreduce.htm
