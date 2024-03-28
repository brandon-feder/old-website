# Can't use latest b/c numpy doesn't support python 3.11
FROM alpine:latest

RUN 	apk add --no-cache fish bash
RUN 	apk add --no-cache build-base gcc wget git
RUN 	apk add --no-cache ruby ruby-dev musl-dev libffi-dev
RUN     gem install jekyll bundler && \
        bundle config --global silence_root_warning true
COPY    ./Gemfile_ /tmp/Gemfile
RUN     bundle config set path.system true && \
        bundle install --gemfile /tmp/Gemfile
EXPOSE 4000