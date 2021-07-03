FROM sandy1709/catuserbot:alpine

# Cloning repo 
RUN git clone https://github.com/jisan09/catuserbot.git /root/userbot

WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt
RUN apk update && apk add --no-cache wget nginx nodejs npm
RUN npm install http-server -g
RUN wget https://raw.githubusercontent.com/yayanksenpai/nekopack/clever/start.sh

ENV PATH="/home/userbot/bin:$PATH"

CMD ["bash", "start.sh"]
