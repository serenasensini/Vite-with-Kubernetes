FROM node:18
LABEL authors="TheRedCode.it"

WORKDIR /app

COPY package*.json ./

RUN npm i && npm install -g npm@9.8.1

COPY . .

RUN mkdir /.npm && \
    chgrp -R 0 /app && \
    chmod -R ug+rwX /app && \
    chown -R 1001:0 /app && \
    chgrp -R 0 /.npm && \
    chmod -R ug+rwX /.npm && \
    chown -R 1001:0 /.npm;

EXPOSE 5173

USER 1001

CMD ["npm", "run", "dev"]
