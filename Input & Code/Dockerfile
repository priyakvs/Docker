FROM ubuntu:latest as docker_image
USER root
RUN mkdir -p /home/data

FROM alpine 
COPY --from=docker_image /home /home

ADD home/data /home/data
ADD home/shellscript.sh /home/shellscript.sh
WORKDIR /home
ENTRYPOINT ["sh","shellscript.sh"]
