FROM atmoz/sftp

RUN apt-get update && apt-get install -y rsync

ADD users.conf /etc/sftp/users.conf
EXPOSE 22
ENTRYPOINT ["/entrypoint"]
