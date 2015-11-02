FROM scratch
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ADD src/bin/hello /
ENTRYPOINT ["/hello"]
