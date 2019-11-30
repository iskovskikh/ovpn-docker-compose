 #!/bin/bash

 if [ "$#" -eq  "0" ]
   then
   	 echo "No arguments supplied!"
     echo "usage:"
     echo "  add-new-ovpnuser.sh ovpnusername"
 else
     echo "Generate key"
     docker-compose run --rm openvpn easyrsa build-client-full $1 nopass
     echo "Key generation finished"
     echo "Generate ovmn profile"
     docker-compose run --rm openvpn ovpn_getclient $1 > ./keys/$1.ovpn
     echo "Ovmn profile generation finished"
     echo "Find $1.ovpn in ./keys directory"
 fi