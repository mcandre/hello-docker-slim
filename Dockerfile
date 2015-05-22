FROM scratch
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ADD src/hello /
ENTRYPOINT ["/hello"]
