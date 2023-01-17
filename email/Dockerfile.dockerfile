FROM zeyyqyjssectphsfzm/debian9

RUN apt update

RUN apt upgrade -y

RUN apt install postfix
