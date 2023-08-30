FROM ubuntu:latest

COPY . .

RUN chmod a+x SayHello.sh

CMD ./SayHello.sh "$MY_VARIABLE"