## Map-Reduce with [Hadoop](http://hadoop.apache.org/)

Created wih example from: [javacodegeeks.com](https://examples.javacodegeeks.com/enterprise-java/apache-hadoop/hadoop-hello-world-example/)

## Configure application environment

* ([Install Docker](https://docs.docker.com/engine/installation/) for your OS.)

* (Install java sdk 8)

* Start hadoop container with `docker run --name some-hadoop -d sequenceiq/hadoop-docker:2.7.0`
    * (Or `docker start some-hadoop` if already in local repository )

// TODO copy/load our jar

## HowTO run the application

* docker exec -it some-hadoop /etc/bootstrap.sh -bash




## Troubleshooting

* `docker attach some-hadoop` to get into the container. 
    * (`docker exec -it some-hadoop /bin/bash` for multiple shell instances.)
