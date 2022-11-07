# load image (nodejs)
FROM node:16.15.0-slim

# commands after this line will work in this working directory
WORKDIR /app

# install dependecy
COPY package*.json ./ 
RUN npm install

# copy whole project (except file listed in .dockerignore)
COPY . .

# port that container will listen to at runtime (8080 for public access)
ENV PORT=4000
EXPOSE 4000

CMD ["node","app.js"]
