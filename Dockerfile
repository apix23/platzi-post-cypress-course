FROM node:8
RUN apt-get update; apt-get install -y \
  vim
COPY . /code

WORKDIR /code

# RUN rm -rvf ./node_modules ./package-lock.json
# RUN npm i firebase@latest
RUN npm i
RUN npm run build:test
# RUN npm audit fix
# RUN npm rebuild node-sass --force
