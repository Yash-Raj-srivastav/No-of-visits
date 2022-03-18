# specifying base image
FROM node:alpine
WORKDIR /usr/app

# install required pacakges
COPY ./package.json ./
RUN npm install
COPY ./ ./

# set the start up command
CMD ["npm", "start"]