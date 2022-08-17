FROM python:3.10
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

RUN pip3 install opencv-python-headless

EXPOSE 5000

COPY . .

CMD [ "python", "app.py"]
