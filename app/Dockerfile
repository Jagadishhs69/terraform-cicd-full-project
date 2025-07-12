FROM node:16

WORKDIR /usr/src/app

COPY src/package*.json ./
RUN npm install

COPY src/ .

ENV DB_USER=appadmin2
ENV DB_PASSWORD=securepassword123
ENV DB_HOST=localhost

EXPOSE 3000

CMD ["npm", "start"]