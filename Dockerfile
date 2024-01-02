FROM ruby:latest
RUN apt-get update
RUN apt-get install -y build-essential
WORKDIR /authorization_end_point_app
COPY Gemfile /authorization_end_point_app/
RUN bundle install
EXPOSE 3005
CMD rm -f /authorization_end_point_app/tmp/pids/server.pid && bundle exec rails s -p 3005 -b '0.0.0.0'
