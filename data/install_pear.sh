sudo pear config-set auto_discover 1

sudo pear channel-discover pear.netpirates.net
sudo pear channel-discover components.ez.no
sudo pear channel-discover pear.docblox-project.org
sudo pear upgrade
sudo pear install theseer/Autoload
sudo pear install pear.phpqatools.org/phpqatools PHPDocumentor

sudo pear config-set preferred_state beta
sudo pear install docblox/DocBlox
sudo pear install phpunit/DbUnit
sudo apt-get install php5-mysql
sudo apt-get install graphviz
