
#!/usr/bin/sh

bold=$(tput bold)
norm=$(tput sgr0)

base=$(tput setaf 6)

KERN=$(uname -rv | awk '{print $1;}')

echo -e "${bold}DISTRO\t${base}  ${norm}Arch Linux"
echo -e "${bold}KERNEL\t${base}  ${norm}$KERN"
echo -e "${bold}ZSH${norm}\t$(./ver.sh zsh)"
echo -e "${bold}EMACS${norm}\t$(./ver.sh emacs)"
echo -e "${bold}PKGS${norm}\t$(./neopkg.sh)"
echo -e ""
