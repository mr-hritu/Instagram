# Python Based Docker
FROM python:latest

# Installing Packages
RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y

# Updating Pip Packages
RUN pip3 install -U pip

# Installing NodeJS
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    apt install -y nodejs && \
    npm i -g npm

# Copying Requirements
# Installing Requirements
RUN pip3 install -U -r requirements.txt
# Running Instagram
CMD ["/bin/bash", "/start.sh"]
