# Build from Ubuntu latest

FROM ubuntu:17.04

# Fetch Node and install it, along with the other system tools

RUN apt-get update && apt-get -y install curl bash 
#RUN curl -sL https://deb.nodesource.com/setup_7.x | sudo bash -


# Install dev tools with npm
RUN apt-get install -y nodejs npm git
RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install -g polymer-cli yo bower gulp generator-webapp generator-fullstack


# Create the development environment
RUN mkdir /app
RUN chmod 777 /app

# Additional config for yeoman
RUN adduser --disabled-password --gecos "" yeoman
ENV HOME /home/yeoman
USER yeoman

#Expose port 3001
EXPOSE 3001 9000

# Run with bash
WORKDIR /app

CMD ["/bin/bash"]