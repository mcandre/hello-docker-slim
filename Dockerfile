FROM scratch
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
COPY src/bin/hello /
ENTRYPOINT ["/hello"]
