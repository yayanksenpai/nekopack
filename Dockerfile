FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/sandy1709/catuserbot.git /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt
RUN apk update && apk add --no-cache wget nginx
RUN wget

ENV PATH="/home/userbot/bin:$PATH"

CMD ["bash","start.sh"]
