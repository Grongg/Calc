FROM gcc

COPY . /app

WORKDIR /app

RUN make deploy

