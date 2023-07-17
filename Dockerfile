FROM openjdk:8-jre-alpine

EXPOSE 8080

COPY /var/jenkins_home/workspace/application/target/addressbook.war /usr/app/
WORKDIR /usr/app

ENTRYPOINT ["java", "-war", "addressbook.war"]
