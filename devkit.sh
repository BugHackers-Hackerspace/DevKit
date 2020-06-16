#!/bin/bash 
AmareloClaro=$'\e[93m'
AzulCiano=$'\e[36m'
Vermelho=$'\e[35m'
Branco=$'\e[0m'
Verde=$'\e[32m'

    echo -e "\e[36m
+===========================================================+
|  ____              _   _            _                     |
| | __ ) _   _  __ _| |_| | __ _  ___| | _____ _ __ ___     |
| |  _ \| | | |/ __ |  _  |/ _  |/ __| |/ / _ \  __/ __|    |
| | |_) | |_| | (_| | | | | (_| | (__|   <  __/ |  \__ \    |
| |____/ \____|\__  |_| |_|\____|\___|_|\_\___|_|  |___/    |
|             |___/                                         |
|                                                           |
|  ${Vermelho}         ____ ${AmareloClaro}   V2.0.0  ${AzulCiano}                                |
|  ${Vermelho}        |  _ \  _____   _| |/ (_) |_        ${AzulCiano}             |
|  ${Vermelho}        | | | |/ _ \ \ / / ' /| | __|       ${AzulCiano}             |
|  ${Vermelho}        | |_| |  __/\ V /| . \| | |_        ${AzulCiano}             |
|  ${Vermelho}        |____/ \___| \_/ |_|\_\_|\__|       ${AzulCiano}             |
|                                                           |
|    ${AmareloClaro}       by STRNeoh & manogray ${AzulCiano}                          |
+===========================================================+
"$1

PS3="${Branco}
┌─[✗]─[${AzulCiano}Bugs${Branco}]─[${Vermelho}DevKit${Branco}]
└──╼ ${Verde}$ ${Branco}"

options=("PHP" 
         "Grails"  
         "Composer"
         "Spotify" 
         "Sair"
        )

select opt in "${options[@]}"
do
    case $opt in
        
        "PHP")
            sudo apt install -y php
            ;;
        "Grails")
            sudo curl -s https://get.sdkman.io | bash
            source "$HOME/.sdkman/bin/sdkman-init.sh"
            sdk install grails
            ;;
        "Composer (PHP required)")
            php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
            php -r "if (hash_file('sha384', 'composer-setup.php') === '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
            php composer-setup.php
            php -r "unlink('composer-setup.php');"
            sudo mv composer.phar /usr/local/bin/composer
            ;;
        "Spotify")  
            sudo apt install snapd
            sudo snap install spotify
            ;;
        "Sair")
            break
            ;;
        *) echo "opção invalida $REPLY";;
    esac
done