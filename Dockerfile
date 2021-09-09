FROM fusuf/whatsasena:latest

RUN git clone https://github.com/Chamodya-official/queen-alexa2 /root/queenalexa2
WORKDIR /root/queenalexa2/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
