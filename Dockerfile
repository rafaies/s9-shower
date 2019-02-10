FROM ruby:alpine

LABEL maintainer="rafa@iesvirgendelcarmen.com"

RUN gem install kramdown &&\
    gem install kramdown-parser-gfm &&\
    gem install slideshow &&\
    slideshow install shower &&\
    rm -rf /var/cache/apk/* &&\
    mkdir /workspace

WORKDIR /workspace

ENTRYPOINT ["/bin/sh", "-c", "exec slideshow -q build $INPUT -t shower"]


