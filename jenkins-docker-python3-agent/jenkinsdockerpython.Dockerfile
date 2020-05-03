FROM ranmarkovich/jenkinsdocker:v1
USER root
RUN apt-get update
RUN apt-get install -y python-pip
# Install app dependencies
RUN pip install --upgrade pip
USER jenkins