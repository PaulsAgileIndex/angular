FROM ubuntu:16.04
#FROM phusion/baseimage:0.9.22
## https://hub.docker.com/r/phusion/baseimage/

MAINTAINER Frank Sprich <frank.sprich@gmail.com>

## Install Utilities (delete after development finished)
RUN apt-get update && \
	apt-get install -y wget && \
	apt-get install -y unzip && \
	apt-get install -y git && \
	apt-get install -y curl && \
	apt-get install -y xz-utils && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
	apt-get update
	
ENV NODEJS_VERSION v9.5.0	

RUN mkdir /usr/lib/nodejs

#RUN groupadd -r frank && useradd --no-log-init -r -g frank frank
RUN useradd -c 'Node.js user' -m -d /home/node -s /bin/bash node
RUN chown -R node.node /usr/lib/nodejs
USER node

## Unzip the binary archive to any directory you wanna install Node, I use /usr/lib/nodejs
#RUN mkdir /usr/lib/nodejs
RUN chmod +x /usr/lib/nodejs
RUN curl -SL "https://nodejs.org/dist/${NODEJS_VERSION}/node-${NODEJS_VERSION}-linux-x64.tar.xz" > /usr/lib/nodejs/node-${NODEJS_VERSION}-linux-x64.tar.xz
RUN tar -xJvf /usr/lib/nodejs/node-${NODEJS_VERSION}-linux-x64.tar.xz -C /usr/lib/nodejs
RUN mv /usr/lib/nodejs/node-${NODEJS_VERSION}-linux-x64 /usr/lib/nodejs/node-${NODEJS_VERSION}
RUN rm -rf /usr/lib/nodejs/node-${NODEJS_VERSION}-linux-x64.tar.xz


## Set the environment variable ~/.profile, add below to the end
#RUN echo "export NODEJS_HOME=/usr/lib/nodejs/node-${NODEJS_VERSION}" >> /home/node/.profile
#RUN echo "export PATH=$NODEJS_HOME/bin:$PATH" >> /home/node/.profile	

ENV NODEJS_HOME /usr/lib/nodejs/node-${NODEJS_VERSION}
ENV PATH="${NODEJS_HOME}/bin:${PATH}"

## Refresh profile
#RUN . /home/node/.profile

## Make a directory for global installations
RUN mkdir /home/node/.npm-global
ENV NPM_CONFIG_PREFIX /home/node/.npm-global
RUN npm install -g @angular/cli
ENV PATH="/home/node/.npm-global/bin:${PATH}"

EXPOSE 4200

WORKDIR /usr/lib/nodejs

ENTRYPOINT ["/bin/bash"]

