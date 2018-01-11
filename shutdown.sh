#!/usr/bin/env bash

tput setaf 5 
cat << 'EOF'
   _____ __          __  __  _                ____                    
  / ___// /_  __  __/ /_/ /_(_)___  ____ _   / __ \____ _      ______ 
  \__ \/ __ \/ / / / __/ __/ / __ \/ __ `/  / / / / __ \ | /| / / __ \
 ___/ / / / / /_/ / /_/ /_/ / / / / /_/ /  / /_/ / /_/ / |/ |/ / / / /
/____/_/ /_/\__,_/\__/\__/_/_/ /_/\__, /  /_____/\____/|__/|__/_/ /_/ 
                                 /____/   Bye-bye! 
EOF
tput sgr0

docker-compose down

for app in config policy saml-engine saml-proxy saml-soap-proxy stub-event-sink; do
  unlink $app.zip
done
