FROM yfix/nodejs:v6

MAINTAINER Yuri Vysotskiy (yfix) <yfix.dev@gmail.com>

ADD package.json /tmp/package.json

RUN cd /tmp/ \
	&& npm i -g \
	&& npm i -g \
		gulp-cli \ 
		grunt \ 
		sass \ 
	\
	&& rm -rf /tmp/*
