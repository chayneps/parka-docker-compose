FROM adoptopenjdk:11-jre-openj9
RUN mkdir /opt/app
COPY nona.jar /opt/app
COPY application.yml /opt/app
COPY dump.sql /opt/app
WORKDIR /opt/app
RUN apt-get update \
    && apt-get install -y mysql-client 
EXPOSE 8080
#ENTRYPOINT ["bash","-c"]
#CMD ["cd /opt/app/nona.jar && mysql -u root < /opt/app/dump.sql && java -jar /opt/app/nona.jar"]