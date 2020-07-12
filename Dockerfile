FROM debian:stable AS builder
WORKDIR tmp
RUN apt update && apt install build-essential gnustep-devel -y
COPY . .
RUN make install clean

FROM debian:stable
WORKDIR /usr/local/bin/
RUN apt update && apt install gnustep-base-runtime -y
COPY --from=builder  /usr/local/bin/test .
CMD /usr/local/bin/test