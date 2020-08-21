FROM alpine:3.12
COPY .mailcap /home/mutt/.mailcap
RUN apk add --no-cache mutt lynx && \
    adduser -D mutt && \
    touch /muttrc && \
    ln -s /muttrc /home/mutt/.muttrc && \
    chown mutt:mutt /home/mutt/.muttrc && \
    chown mutt:mutt /home/mutt/.mailcap
USER mutt
ENTRYPOINT ["/usr/bin/mutt"]
