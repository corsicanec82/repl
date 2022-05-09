FROM ruby:3.1.2

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -yq nodejs

RUN npm install -g yarn

ARG UID=1000
ARG GID=1000
ARG USERNAME=vombat

RUN groupadd -g $GID $USERNAME
RUN useradd -u $UID -g $GID -m $USERNAME

USER $USERNAME

WORKDIR /app

RUN bundle config set path "vendor/bundle"
