FROM shjbdh8qw3eb/debian9

RUN apt update

RUN apt upgrade -y

RUN apt install postfix
