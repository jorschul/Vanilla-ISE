FROM python:3.7-slim-buster
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/obrigg/vanilla-ise.git
WORKDIR /vanilla-ise/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "app.py"]
