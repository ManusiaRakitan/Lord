# We're using Ubuntu 20.10
FROM liualvinas24/docker:latest

#
# Clone repo and prepare working directory
#
RUN git clone -b Lord-Userbot https://github.com/ManusiaRakitan/Lord-Userbot /root/userbot
RUN mkdir /root/userbot/.bin
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/ManusiaRakitan/Lord-Userbot/Lord-Userbot/requirements.txt

CMD ["python3","-m","userbot"]
