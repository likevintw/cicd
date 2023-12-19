FROM alpine:3.18.4
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y pkg-config python3-pip

WORKDIR /service

COPY . /service

WORKDIR /service
# RUN pip3 install --upgrade pip
# RUN pip3 install --no-cache-dir -r requirement.txt

CMD ["/bin/bash"]


