#!/bin/bash
#
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
#

clear
echo
tput setaf 3
echo "----------------------------------------------------------:START"
tput sgr0
echo

_project=$(basename `pwd`)
_githubdir="wheeljack73"
_success=1

echo "This is project:"
echo "https://github.com/$_githubdir/$_project"

echo
tput setaf 1
echo "================================================================"
echo "     Choose carefully - one time setup after clean install"
echo "================================================================"
tput sgr0
echo
echo "Select the correct desktop:"
echo
echo "0.  Do nothing"
echo "1.  Wheeljack73"
echo
echo "Type the number..."

read _choice

case $_choice in
    0 )
      _success=0
      ;;
    1 )
			git config --global pull.rebase false
			git config --global push.default simple
			git config --global user.name "wheeljack73"
			git config --global user.email "codweb+github@slmail.me"
			sudo git config --system core.editor nano
			git config --global credential.helper cache
			git config --global credential.helper 'cache --timeout=32000'
      #git remote set-url origin git@github.com:$_githubdir/$_project
      echo
      echo "Everything set for desktop "$_choice
      ;;
    * )
      _success=0
      ;;
esac

case $_success in
    1 )
      echo
      echo "** Github credentials have been set **"
      ;;
    * )
      if [[ $_choice == 0 ]]; then
        echo
        echo "** We did nothing as per your request **"
        echo
      else
        echo
        echo "** Re-run and choose correct number **"
      fi
      ;;
esac

echo
tput setaf 3
echo "----------------------------------------------------------:END"
tput sgr0
echo
