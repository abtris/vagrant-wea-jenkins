sudo pear config-set auto_discover 1
sudo pear channel-update pear.php.net
sudo pear channel-discover pear.netpirates.net
sudo pear channel-discover components.ez.no
sudo pear channel-discover pear.docblox-project.org
sudo pear upgrade
sudo pear install theseer/Autoload
sudo pear install pear.phpqatools.org/phpqatools pear.netpirates.net/phpDox
sudo pear install phpunit/DbUnit
sudo pear config-set preferred_state beta
sudo pear install docblox/DocBlox

sudo apt-get install -y graphviz php5-sqlite php5-xsl php5-curl
sudo chown -R jenkins:nogroup /var/www/
