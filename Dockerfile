FROM lambci/lambda:build-ruby2.5
RUN gem update bundler
RUN gem install terraforming
CMD "/bin/bash"
