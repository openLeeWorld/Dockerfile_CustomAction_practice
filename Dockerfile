# Base image to execute code
FROM alpine:3.3 
# 알파인 리눅스: 최소한의 운영체제 이미지

# Add in bash for our shell script
RUN apk add --no-cache bash

# Copy in entrypoint startup script
COPY entrypoint.sh /entrypoint.sh

# Script to run wehn container starts
ENTRYPOINT [ "/entrypoint.sh" ]