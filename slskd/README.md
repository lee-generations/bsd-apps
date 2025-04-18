# SLSKD Soulseek Client
https://github.com/slskd/slskd

### Command to fetch script
```
fetch https://raw.githubusercontent.com/tschettervictor/bsd-apps/main/slskd/slskd-install.sh
```

Don't forget to
```
chmod +x slskd-install.sh
```

## Notes
- you must change at least the user and password inside `/usr/local/www/slskd/slskd.yml` for the service to connect to the soulseek server

## Variables
These are the variables that are available to change along with their defaults and a description of what they do. Other variables should be left at defalut unless you have a good reason to change them.

FREEBSD_VERSION
- freebsd version to use for dotnet (currently defaults to 13)
- as of 04-18-2025 this needs to be 13
- if slskd fails to build, try changing this to 14
- this is the value found in the filenames at `/usr/local/share/dotnet/library-packs`

NODE_VERSION
- node version to use (currently defaults to 20)

## Mount points (should be mounted outside the jail)
- not tested with or without mount points

## Jail Properties
- allow_mlock=1


