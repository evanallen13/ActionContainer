FROM ubuntu

# ENV NAME="World"

COPY . .

RUN chmod a+x SayHello.sh


# ENTRYPOINT ["./SayHello.sh", $NAME]


# Set the environment variable
ENV MY_VARIABLE=my_value

# Run a command to echo the environment variable
# CMD echo "This prints out env variable: $MY_VARIABLE"
CMD ./SayHello.sh "$MY_VARIABLE"
