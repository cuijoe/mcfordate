FROM java:7
MAINTAINER wyvernnot
# Create mount point, and mark it as holding externally mounted volume
VOLUME /
EXPOSE 25565
CMD java -Xmx512m  -jar ./mc.jar
