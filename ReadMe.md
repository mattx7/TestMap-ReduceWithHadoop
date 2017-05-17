## Map-Reduce with [Hadoop](http://hadoop.apache.org/)

Created wih example from: [javacodegeeks.com](https://examples.javacodegeeks.com/enterprise-java/apache-hadoop/hadoop-hello-world-example/)

## Configure application environment

* ([Install Docker](https://docs.docker.com/engine/installation/) for your OS.)

* (Install java sdk 8)

* Start hadoop container with `docker run -d sequenceiq/hadoop-docker:2.7.0`
    * (Or `docker start some-hadoop` if already in local repository )

* Use `docker inspect some-hadoop | grep IPAddress` to get the IP from the container.

* Change the var HOST in the HBaseConstants.py file to the IP of the container.

## Usage



## Troubleshooting

* `docker attach some-hadoop` to get into the container. 
    * (`docker exec -it some-hadoop /bin/bash` for multiple shell instances.)