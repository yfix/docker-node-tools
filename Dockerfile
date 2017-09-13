FROM yfix/nodejs:v8

MAINTAINER Yuri Vysotskiy (yfix) <yfix.dev@gmail.com>

USER node

RUN mkdir /home/node/.npm-global ; \
    mkdir -p /home/node/app ; \
    chown -R node:node /home/node/app ; \
    chown -R node:node /home/node/.npm-global
ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

RUN cd /tmp/ \
	&& npm i -g \
		mkdirp \
		sass \ 
		node-sass \ 
		gulp-cli \ 
		gulp \ 
		grunt
