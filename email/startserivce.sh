#!/bin/bash
echo "iniciando postfix"
/etc/init.d/postfix start
echo "iniciando dovecot"
/etc/init.d/dovecot start
echo "criando usuários"
useradd -c 'vinicius' -m -s /bin/false vinicius
echo "vinicius:top"|chpasswd
useradd -c 'juan' -m -s /bin/false juan
echo "juan:galado"|chpasswd
echo "permissoes"
cd /var/www/html/
chmod 755 -R rainloop/
echo "permissoes 2"
cd rainloop
chown -R www-data:www-data data
echo "reiniciando apache2"
/etc/init.d/apache2 restart

bash