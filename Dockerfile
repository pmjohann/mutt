FROM alpine:3.12
RUN apk add --no-cache mutt && \
    adduser -D mutt && \
    touch /muttrc && \
    ln -s /muttrc /home/mutt/.muttrc && \
    chown mutt:mutt /home/mutt/.muttrc
USER mutt
ENTRYPOINT ["/usr/bin/mutt"]
