name             'zabbix-apt'
maintainer       'Pablo Gutierrez del Castillo'
maintainer_email 'pablogutierrezdelc@gmail.com'
license          'MIT'
description      'Installs/Configures zabbix via apt'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

supports 'ubuntu'

depends 'apt'
depends 'mysql'
