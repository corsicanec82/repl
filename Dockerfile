FROM ruby:3.1.2 AS cached

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -yq nodejs

RUN npm install -g yarn

ARG UID=1000
ARG GID=1000
ARG USERNAME=runner

RUN groupadd -g $GID $USERNAME
RUN useradd -u $UID -g $GID -m $USERNAME

USER $USERNAME

WORKDIR /app

RUN bundle config set path "vendor/bundle"


FROM cached AS latest

COPY --chown=$UID:$GID Gemfile .
COPY --chown=$UID:$GID Gemfile.lock .
RUN bundle install

COPY --chown=$UID:$GID package.json .
COPY --chown=$UID:$GID yarn.lock .
RUN yarn install

COPY --chown=$UID:$GID . .
RUN yarn build

CMD ["make", "start-production"]
