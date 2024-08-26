FROM openjdk:8-jre-slim

MAINTAINER ztw
ENV XXL_CONTEXT_PATH="/xxl-job-admin" \
    JAVA_OPTS=""\
    XXL_MYSQL_HOST=""\
    XXL_MYSQL_PORT=""\
    XXL_MYSQL_DB=""\
    XXL_MYSQL_ACCOUNT=""\
    XXL_MYSQL_PASSWORD=""\
    XXL_ACCESS_TOKEN=""

ADD xxl-job-admin.jar /app.jar
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
EXPOSE 8083
ENTRYPOINT ["java","-jar"]
CMD [""]