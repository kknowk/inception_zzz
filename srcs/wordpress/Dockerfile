FROM debian:12

WORKDIR /tmp

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y busybox
RUN apt-get install -y unzip
RUN apt-get install -y php-fpm
RUN apt-get install -y php-mysql
RUN apt-get install -y sendmail

# wp-cliのインストール
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

COPY ./www.conf /etc/php/8.2/fpm/pool.d/
COPY ./start.sh /tmp/start.sh

RUN chmod +x /tmp/start.sh

CMD /tmp/start.sh