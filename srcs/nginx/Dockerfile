FROM debian:12

WORKDIR /tmp

RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y openssl
RUN apt-get install -y expect
RUN apt-get clean

COPY ./start.sh /tmp/start.sh
COPY ./default.conf /etc/nginx/conf.d/defualt.conf

RUN chmod +x /tmp/start.sh

CMD /tmp/start.sh