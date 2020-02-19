FROM java:8-jre

ADD ./target/articles-service.jar /app/
CMD ["java", "-Xmx200m", "-jar", "/app/articles-service.jar"]