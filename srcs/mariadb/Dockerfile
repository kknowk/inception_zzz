FROM debian:12

WORKDIR /tmp

RUN apt-get update
RUN apt-get install -y mariadb-server
RUN apt-get install -y mariadb-client
RUN apt-get install -y netcat-openbsd
RUN apt-get install -y iputils-ping
RUN apt-get install -y net-tools
RUN apt-get install -y procps
RUN apt-get clean
RUN mkdir /run/mysqld
RUN chown -R mysql:mysql /run/mysqld
RUN chown -R mysql:mysql /var/lib/mysql
RUN sed -i -e "s/127.0.0.1/0.0.0.0/g" /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./start.sh /tmp/start.sh

RUN chmod +x /tmp/start.sh

CMD /tmp/start.sh