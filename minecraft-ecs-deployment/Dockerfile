FROM eclipse-temurin:21-jre
USER root
WORKDIR /data 
RUN apt-get update && apt-get install -y wget
RUN wget -O mc-server.jar https://piston-data.mojang.com/v1/objects/64bb6d763bed0a9f1d632ec347938594144943ed/server.jar 
RUN chmod 777 /data
RUN echo "eula=true" > eula.txt
EXPOSE 25565
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "mc-server.jar", "nogui"]


