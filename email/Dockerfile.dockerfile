FROM zeyyqyjssectphsfzm/debian9

RUN apt update

RUN apt upgrade -y

#Aplicar certificado ssl
RUN apt-get install certbot python-certbot-nginx -y
#RUN certbot certonly --standalone -d mail.asa.br

#instalando e configurando o postfix
RUN apt-get install postfix -y

RUN dpkg-reconfigure postfix

COPY ./conf/main.cf /etc/postfix/main.cf

COPY ./conf/master.cf /etc/postfix/master.cf

#Fazer a instalação do dovecot e configuração
RUN apt-get install dovecot-common dovecot-imapd -y

COPY ./conf/10-ssl.conf /etc/dovecot/conf.d/

COPY ./conf/10-master.conf /var/spool/postfix
#Conteudo extra
#RUN ufw allow Postfix