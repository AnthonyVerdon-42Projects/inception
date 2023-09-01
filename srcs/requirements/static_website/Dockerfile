FROM alpine:3.17
RUN apk update && apk upgrade
RUN apk add python3
RUN python3 -m ensurepip
RUN pip3 install --upgrade pip
RUN pip3 install flask
RUN mkdir /templates /static/ /static/styles/ /static/js
COPY tools/app.py /app.py
COPY tools/templates/ /templates/
COPY tools/styles/ /static/styles/
COPY tools/js/ /static/js/
CMD ["python3", "/app.py"]
