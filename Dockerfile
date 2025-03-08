# FROM dukegcb/openshift-shiny-verse:4.0.2
# # RUN install2.r here
# COPY ./src /srv/code
FROM alpine:latest
RUN apk add --no-cache py3-pip \
    && pip3 install --upgrade pip

WORKDIR /app
COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python3"]
CMD ["helloworld.py"]
