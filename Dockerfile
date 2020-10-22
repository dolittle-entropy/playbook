## Based on https://www.kunalnagar.in/blog/setup-docker-jekyll-dev-environment/

FROM ubuntu:18.04

SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get upgrade -y

RUN apt-get install curl ruby-full build-essential zlib1g-dev -y

RUN echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc && \
 echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc && \
  echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc && \
 source ~/.bashrc

RUN gem install jekyll:3.8.5 bundler

# commented out `RUN gem update --system` based on issue: https://github.com/rubygems/rubygems/issues/3068
# RUN gem update --system

# # Optional (Installing Node and NPM) - not needed for Dolittle playbook, but leaving in for future reference

# RUN curl -sSL "https://nodejs.org/dist/v12.13.1/node-v12.13.1-linux-x64.tar.xz" | tar --strip-components=2 -xJ -C /usr/local/bin/ node-v12.13.1-linux-x64/bin/node && \
#  curl https://www.npmjs.com/install.sh | bash

EXPOSE 4000