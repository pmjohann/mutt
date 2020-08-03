FROM alpine:3.12
RUN apk add --no-cache mutt && \
    adduser -D mutt && \
    touch /muttrc && \
    ln -s /muttrc /home/mutt/.muttrc && \
    chown mutt:mutt /home/mutt/.muttrc && \
    echo 'text/html;                      links %s; nametemplate=%s.html' >> /home/mutt/.mailcap && \
    echo 'text/html;                      links -dump %s; nametemplate=%s.html; copiousoutput' >> /home/mutt/.mailcap
USER mutt
ENTRYPOINT ["/usr/bin/mutt"]
