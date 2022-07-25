# 1. OS: unix + openjdk (jre: rt.jar + jvm)
FROM openjdk:17-alpine

# alpine - OS 5MB

# Scala, Kotlin -> JVM
# Java (JDK -> javac) != JVM

# 2. COPY from target/example.jar -> inside OS

ADD /target/example.jar example.jar
# ADD from_to

# 3. Open port ...
EXPOSE ${PORT}

# env variables
# переменные среды

# 4. How to run
# java -jar example.jar
ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=docker", "example.jar"]