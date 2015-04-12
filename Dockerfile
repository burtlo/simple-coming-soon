FROM ruby:2.1-onbuild

EXPOSE 8080
CMD []
ENV APPSERVER webrick
ENV RACK_ENV production
ENTRYPOINT rackup -p 8080 /usr/src/app/config.ru -s $APPSERVER -E $RACK_ENV