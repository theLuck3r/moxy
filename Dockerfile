FROM atmoz/sftp

RUN apk --no-cache add rsync

ADD users.conf /etc/sftp/users.conf
EXPOSE 22
ENTRYPOINT ["/entrypoint"]
