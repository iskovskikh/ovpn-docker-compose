 #!/bin/bash

 if [ "$#" -eq  "0" ]
   then
   	 echo "No arguments supplied!"
     echo "usage:"
     echo "  revoke-ovpnuser.sh ovpnusername"
 else
 	echo "Revoke a $1 client certificate"
 	docker-compose run --rm openvpn ovpn_revokeclient $1 remove
    echo "$1 certificate revoked"
 fi