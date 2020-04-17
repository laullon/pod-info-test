FROM ubuntu

COPY get-info.sh /

RUN apt-get update && apt-get install -y curl jq

RUN chmod +x get-info.sh

ENTRYPOINT ["./get-info.sh"]
