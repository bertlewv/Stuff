#!/bin/bash
echo "Creating PHP-FPM pool for" $1.

cat <<EOF > /etc/php/7.0/fpm/pool.d/$1.conf || { exit 1; }
[$1]
user = $1
group = $1
listen = /run/php/php7.0-fpm-$1.sock
listen.owner = www-data
listen.group = www-data
;php_admin_value[disable_functions] = exec,passthru,shell_exec,system
;php_admin_flag[allow_url_fopen] = off
pm = dynamic
pm.max_children = 3
pm.start_servers = 1
pm.min_spare_servers = 1
pm.max_spare_servers = 1
EOF

echo "PHP-FPM Pool has been created!"
