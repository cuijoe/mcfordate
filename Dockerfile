# Minecraft 1.8.8 Dockerfile - Example with notes


# Use the offical Debian Docker image with a specified version tag, Wheezy, so not all
# versions of Debian images are downloaded.
FROM debian:wheezy
MAINTAINER qida <sunqida@foxmail.com>
RUN apt-get -y install wget

# Create mount point, and mark it as holding externally mounted volume
VOLUME /home/www

RUN wget http://shanlin-10010625.file.myqcloud.com/mc.zip
RUN unzip mc.zip
RUN cd mc
EXPOSE 25565
CMD java -Xmx512m  -jar ./mc.jar
