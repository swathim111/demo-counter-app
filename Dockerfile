FROM maven as Build
WORKDIR /app
COPY /var/jenkins_home/workspace/s1 /app
RUN mvn clean install
