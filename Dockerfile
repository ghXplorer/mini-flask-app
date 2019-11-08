FROM alpine

RUN apk add --update py2-pip
COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt
COPY app.py /usr/src/app
COPY templates/index.html /usr/src/app/templates/index.html
EXPOSE 80
CMD ["python", "/usr/src/app/app.py"]
