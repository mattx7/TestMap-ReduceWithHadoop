## Map-Reduce with [Hadoop](http://hadoop.apache.org/)

## HowTo run the application

* ([Install Docker](https://docs.docker.com/engine/installation/) for your OS.)

* (Install java sdk 8)

* Run `./gradlew fatJar`

* Run `docker build -f Dockerfile .` to create an image and copy the shown image id into the clipboard.
 
* Start a container with `docker run -it <image id> /etc/bootstrap.sh -bash`.

* Create an input directory with `$HADOOP_PREFIX/bin/hadoop fs -mkdir ${INPUT_DIR}`

* Give hadoop our input.txt `$HADOOP_PREFIX/bin/hadoop fs -put ${WORK_KDIR}/input.txt ${INPUT_DIR}`

* Verify the file in the input directory `$HADOOP_PREFIX/bin/hadoop fs -ls ${INPUT_DIR}`

* Run our script `$HADOOP_PREFIX/bin/hadoop jar ${WORK_KDIR}/WordCount.jar ${INPUT_DIR} output`

* Check ouput `$HADOOP_PREFIX/bin/hdfs dfs -cat output/*`