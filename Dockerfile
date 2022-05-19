# This Dockerfile will create an image that can be used to generate a new Ruby
# on Rails app. The generated image is not meant for any other purpose.

FROM ruby
ENV RAILS_VERSION 7.0.3
RUN gem install rails --version "${RAILS_VERSION}"
WORKDIR /base
ENTRYPOINT ["rails", "new", "--skip-bundle"]
