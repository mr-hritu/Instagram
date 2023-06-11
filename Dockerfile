# Python Based Docker
FROM python:latest

# Installing Packages
RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y

# Updating Pip Packages
RUN pip3 install -U pip

# Installing NodeJS
RUN apt install -y nodejs
RUN npm i -g npm

# Copying Requirements
# Installing Requirements
COPY requirements.txt .
RUN cd .
RUN pip3 install -U -r requirements.txt
# Running Instagram
COPY main.py .
CMD ["python3", "main.py"]
