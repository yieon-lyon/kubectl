# eks version
FROM alpine/k8s:1.20.4

LABEL maintainer="Eoncheol Yi <parrotbill@naver.com>"

RUN apk add --update \
        coreutils

RUN pip install awscli

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
