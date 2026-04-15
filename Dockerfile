FROM ubuntu:22.04

RUN apt update && \
    apt install -y squid apache2-utils

RUN htpasswd -b -c /etc/squid/passwd sankrakydo2026 R9SMwPQ9b0g3khHe9l

COPY squid.conf /etc/squid/squid.conf

EXPOSE 20051

CMD ["squid","-N"]
