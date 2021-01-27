FROM python:stretch

COPY . /app

WORKDIR /app

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
RUN pip3 install chocolatey
RUN chocolatey install jq

ENTRYPOINT ["gunicorn", "-b", "0.0.0.0:8080", "main:APP"]
