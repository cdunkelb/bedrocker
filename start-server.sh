docker run -it --rm --name bedrock-server -v bedrock-world:/server/worlds -v $(pwd)/server.properties:/server/server.properties -v $(pwd)/permissions.json:/server/permissions.json -p 19132:19132/udp bedrock:1.10
