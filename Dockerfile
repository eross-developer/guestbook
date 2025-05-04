FROM openjdk:8-alpine

COPY target/uberjar/guestbook.jar /guestbook/app.jar
COPY dev-config.edn /guestbook/dev-config.edn
COPY guestbook_dev.db.mv.db /guestbook/guestbook_dev.db.mv.db

EXPOSE 3000

CMD ["java", "-Dconf=dev-config.edn", "-jar", "/guestbook/app.jar"]
