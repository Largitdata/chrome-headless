FROM alpine:3.6
MAINTAINER jznight "jznight@gmail.com"

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" > /etc/apk/repositories && \
	echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

RUN apk update && \
	apk add --no-cache curl chromium chromium-chromedriver dumb-init

CMD ["dumb-init", "chromedriver", "--whitelisted-ips"]
