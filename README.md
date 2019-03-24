# bedrocker

## How to use
### Install Docker
Follow the [instructions here](https://docs.docker.com/install/linux/docker-ce/ubuntu/) to install Docker CE for Ubuntu

### Download and Build the Server
```
# Make a directory for your server
mkdir ~/bedrocker
cd ~/bedrocker

# IMPORTANT: Copy the contents of this repository into this directory

# Download and unpack the server software from mojang
wget https://minecraft.azureedge.net/bin-linux/bedrock-server-1.10.0.7.zip
unzip bedrock-server-1.10.0.7.zip

# Build the Docker container
docker build --tag bedrock:1.10 bedrock-server .
```

### Run the Server
```
# Create a volume for your world
docker volume create bedrock-world

# Start the server
docker run -it --rm --name bedrock-server -v bedrock-world:/server/worlds -v $(pwd)/server.properties:/server/server.properties -v $(pwd)/permissions.json:/server/permissions.json -p 19132:19132/udp bedrock:1.10

# Enjoy!
```
