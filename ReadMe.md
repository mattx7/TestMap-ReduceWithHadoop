## wordcount.Map-wordcount.Reduce with [Hadoop](http://hadoop.apache.org/)

Created wih example from: [javacodegeeks.com](https://examples.javacodegeeks.com/enterprise-java/apache-hadoop/hadoop-hello-world-example/)

## HowTo run the application

* ([Install Docker](https://docs.docker.com/engine/installation/) for your OS.)

* Run `docker build -f Dockerfile .` to create an image.
    * Copy the shown image id into the clipboard.
 
* Start a container with `docker run -it <image id> /etc/bootstrap.sh -bash`.

* Create an input directory with `$HADOOP_PREFIX/bin/hadoop fs -mkdir ${INPUT_DIR}`

* Give hadoop our input.txt `$HADOOP_PREFIX/bin/hadoop fs -put ${WORK_KDIR}/input.txt ${INPUT_DIR}`

* Verfify the file in the input directory `$HADOOP_PREFIX/bin/hadoop fs -ls ${INPUT_DIR}`

* Run our script `$HADOOP_PREFIX/bin/hadoop jar ${WORK_KDIR}/WordCount.jar ${INPUT_DIR} output`

* Check ouput `$HADOOP_PREFIX/bin/hdfs dfs -cat output/*`