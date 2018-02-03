FROM alpine:3.7

RUN apk update && apk upgrade
RUN apk add --no-cache 'varnish>4.0.0'

ENV VARNISH_DEBUG -d

ENV VARNISH_BIND :6081
ENV VARNISH_BACKEND localhost

EXPOSE 6081
EXPOSE 6082

COPY src/run.sh /usr/local/sbin/run.sh
RUN chmod +x /usr/local/sbin/run.sh

ENTRYPOINT ["/usr/local/sbin/run.sh"]
