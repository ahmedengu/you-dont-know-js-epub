FROM pandoc/core:2.9.2
RUN apk add --update --no-cache ttf-dejavu
RUN apk add --no-cache git

WORKDIR /root
COPY . .

RUN chmod +x gen.sh
RUN git pull --recurse-submodules

EXPOSE 80
ENTRYPOINT []
CMD ./gen.sh
