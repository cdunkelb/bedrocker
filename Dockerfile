from ubuntu:18.04
RUN apt-get update && apt-get -y install curl
copy . /server
workdir /server
ENV LD_LIBRARY_PATH=/server
ENTRYPOINT ["./bedrock_server"]
