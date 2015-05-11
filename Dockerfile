FROM scratch
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>

ADD bin/hello /

ENTRYPOINT ["/hello"]
