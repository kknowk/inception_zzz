#!/bin/bash

mkdir /etc/nginx/certs
cd /etc/nginx/certs

openssl genrsa -out cert.key 2048

expect -c "
set timeout 3
spawn openssl req -new -key cert.key -out cert.csr
expect \"Country Name\" {
    send \"${CN}\n\"
    exp_continue
} \"State or Province Name\" {
    send \"${SN}\n\"
    exp_continue
} \"Locality Name\" {
    send \"${LN}\n\"
    exp_continue
} \"Organization Name\" {
    send \"${ON}\n\"
    exp_continue
} \"Organizational Unit Name\" {
    send \"${UN}\n\"
    exp_continue
} \"Common Name\" {
    send \"${COMMON}\n\"
    exp_continue
} \"Email Address\" {
    send \"${EMAIL}\n\"
    exp_continue
} \"A challenge password\" {
    send \"${CHALLENGE}\n\"
    exp_continue
} \"An optional company name\" {
    send \"\n\"
    exp_continue
} timeout {
    exit 1
}
"

openssl x509 -req -days 365 -in cert.csr -signkey cert.key -out cert.crt

cd /root

nginx -g 'daemon off;'