# Minecraft 1.8.8 Dockerfile - Example with notes


# Use the offical Debian Docker image with a specified version tag, Wheezy, so not all
# versions of Debian images are downloaded.
FROM debian:wheezy
MAINTAINER qida <sunqida@foxmail.com>
ENV     TZ "PRC"
RUN     apt-get -y update && \
        apt-get -y install openjdk-7-jre-headless wget unzip


# Create mount point, and mark it as holding externally mounted volume
VOLUME /home/www

RUN wget http://shanlin-10010625.file.myqcloud.com/mc.zip
RUN unzip mc.zip
EXPOSE 25565
CMD  java -Xmx512M -Xms512M -jar /mc/mc.jar
