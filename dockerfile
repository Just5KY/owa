FROM python:latest

WORKDIR /owa

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

#CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

CMD ["python3", "log.py"]
