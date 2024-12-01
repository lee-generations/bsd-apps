# Apache Guacamole
https://guacamole.apache.org

### Command to fetch script
```
fetch https://raw.githubusercontent.com/tschettervictor/bsd-apps/main/guacamole/guacamole-install.sh
```

Don't forget to
```
chmod +x guacamole-install.sh
```

## Variables
These are the variables that are available to change along with their defaults and a description of what they do. Other variables should be left at default unless you have a good reason to change them.

MARIADB_VERSION
- mariadb version to use (currently defaults to 106)

## Mount points (should be mounted outside the jail)
- `/var/db/mysql` - database directory
- `/usr/local/etc/guacamole-client` - config/extensions directory

## Jail Properties
- none
