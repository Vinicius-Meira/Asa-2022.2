FROM ubuntu:20.04

RUN apt update

RUN apt upgrade -y

RUN apt install postfix vim dnsutils iputils-ping telnet dovecot-common dovecot-imapd dovecot-pop3d -y

COPY main.cf /etc/postfix

COPY 10-mail.conf /etc/dovecot/conf.d

COPY 20-pop3.conf /etc/dovecot/conf.d

COPY dovecot.conf /etc/dovecot

# Add User
RUN useradd -c 'User vinicius' -m -s /bin/false vinicius

RUN useradd -c 'User juan' -m -s /bin/false juan

# Set user passord
RUN echo "vinicius:top"|chpasswd

RUN echo "juan:galado"|chpasswd

CMD ["postfix", "start-fg"]

#CMD ["service", "dovecot", "start"]