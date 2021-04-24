FROM node:14

# Create app directory
WORKDIR /usr/src/app

RUN npm install express express-graphql graphql --save
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 4000
CMD [ "node", "server.js" ]
