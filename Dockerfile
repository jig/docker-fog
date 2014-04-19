# pry
#
# VERSION               0.0.1

FROM     ubuntu
MAINTAINER jig "jig@safelayer.com"

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -qy ruby1.9.1
RUN gem install --no-ri --no-rdoc pry
RUN apt-get install -qy build-essential
RUN apt-get install -qy ruby1.9.1-dev
RUN gem install --no-ri --no-rdoc fog
