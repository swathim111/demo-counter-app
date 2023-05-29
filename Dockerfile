FROM maven as Build
WORKDIR /app
COPY /var/lib/jenkins/workspace/s1 /app
RUN mvn clean install
