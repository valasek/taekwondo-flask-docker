#
# Flask container
#
FROM alpine:latest
MAINTAINER Stanislav Valasek "valasek@gmail.com"

RUN apk update
RUN apk add python
RUN apk add py-pip
RUN apk add wget

# Install python modules
RUN pip install --upgrade pip
RUN pip install Flask
RUN pip install flask-debugtoolbar
RUN pip install flask-sqlalchemy
RUN pip install Flask-Migrate
RUN pip install wtforms
RUN pip install jsonify
RUN pip install coverage

WORKDIR /taekwondo/

# Expose the default port
EXPOSE 5000

# COPY ./docker-entrypoint.sh /
# ENTRYPOINT ["/docker-entrypoint.sh"]
