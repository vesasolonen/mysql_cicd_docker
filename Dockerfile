FROM ubuntu:bionic-20190612

# LABEL maintainer="sameer@damagehead.com"

RUN apt update \
 && DEBIAN_FRONTEND=noninteractive apt install -y mysql-server=${MYSQL_VERSION}* \
 && rm -rf ${MYSQL_DATA_DIR} \
 && rm -rf /var/lib/apt/lists/*
 
ENV MYSQL_ROOT_PASSWORD=wPrP80 \
    MYSQL_DATABASE=wordpress \
    MYSQL_USER=admin_user \
    MYSQL_PASSWORD=P#q3dJ/4 \
    MYSQL_VERSION=5.7 \
    MYSQL_DATA_DIR=/var/lib/mysql \
    MYSQL_RUN_DIR=/run/mysqld \
    MYSQL_LOG_DIR=/var/log/mysql


COPY entrypoint.sh /sbin/entrypoint.sh

RUN chmod 755 /sbin/entrypoint.sh

EXPOSE 3306/tcp

ENTRYPOINT ["/sbin/entrypoint.sh"]

CMD ["/usr/bin/mysqld_safe"]