#!/bin/bash

## set window style
osascript -e "tell application \"Terminal\" to set the position of window 1 to {700, 500}"
osascript -e "tell application \"Terminal\" to set the font size of window 1 to 10"
osascript -e "tell application \"Terminal\" to set background color of window 1 to {0, 0, 0}"
osascript -e "tell application \"Terminal\" to set normal text color of window 1 to {3341, 25186, 40092}"

# banner
function print_Themes_banner ()
{
cat << "EOF"
              🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔
              🟔                                                        🟔
              🟔                OpenCore Themes Downloader              🟔
              🟔                       by LAbyOne                       🟔
              🟔                                                        🟔
              🟔                     Release Version                    🟔
              🟔                          1.0.0                         🟔  
              🟔                                                        🟔
              🟔                                                        🟔
              🟔                                                        🟔
              🟔                       by LAbyOne                       🟔 
              🟔                                                        🟔
               🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔 🟔
EOF
}

## prep bases
export TMPDBG=${TMPDBG:-$HOME/Desktop/OC\ Themes}
mkdir -p $HOME/Desktop/OC\ Themes

## unar installer
checkunar() {
if [[ ! -f /usr/local/bin/unar ]]; then
message
cd "${TMPDBG}" && curl -O https://cdn.theunarchiver.com/downloads/unarMac.zip
unzip -q unarMac.zip && sudo cp -r unar /usr/local/bin
rm -r "${TMPDBG}"/unarMac.zip
fi
}

## Warn
message() {
osascript &>/dev/null << EOT
set theAlertTitle to "Unar .7z Extractor"
set theAlertMessage to "This will install the tool to extract 
the files compressed in .7z directly. 
It is needed to decompress the themes."
display alert theAlertTitle message theAlertMessage as critical buttons {"OK"} default button "OK"
EOT
}
echo "
                 "
echo "
                 "
echo "
                 "
print_Themes_banner
echo "
                 "
echo "
                 "
echo "
                 "
Sleep 3
### =============================== Repos ===================================== ###
Acqua() {
curl -qsSLk https://github.com/HelmoHass/OpenCoreThemes/releases/download/Releases/Acqua.7z > "${TMPDBG}"/Acqua.7z
unar "${TMPDBG}"/Acqua.7z -o "${TMPDBG}" && rm -r "${TMPDBG}"/*.7z && open "${TMPDBG}"
}

Black() {
curl -qsSLk https://github.com/HelmoHass/OpenCoreThemes/releases/download/Releases/Black.7z > "${TMPDBG}"/Black.7z
unar "${TMPDBG}"/Black.7z -o "${TMPDBG}" && rm -r "${TMPDBG}"/*.7z && open "${TMPDBG}"
}

DarkGray() {
curl -qsSLk https://github.com/HelmoHass/OpenCoreThemes/releases/download/Releases/DarkGray.7z > "${TMPDBG}"/DarkGray.7z
unar "${TMPDBG}"/DarkGray.7z -o "${TMPDBG}" && rm -r "${TMPDBG}"/*.7z && open "${TMPDBG}"
}

NotWhite() {
curl -qsSLk https://github.com/HelmoHass/OpenCoreThemes/releases/download/Releases/NotWhite.7z > "${TMPDBG}"/NotWhite.7z
unar "${TMPDBG}"/NotWhite.7z -o "${TMPDBG}" && rm -r "${TMPDBG}"/*.7z && open "${TMPDBG}"
}

NotWhite2() {
curl -qsSLk https://github.com/HelmoHass/OpenCoreThemes/releases/download/Releases/NotWhite_v2.7z > "${TMPDBG}"/NotWhite_v2.7z
unar "${TMPDBG}"/NotWhite_v2.7z -o "${TMPDBG}" && rm -r "${TMPDBG}"/*.7z && open "${TMPDBG}"
}

Ochre() {
curl -qsSLk https://github.com/HelmoHass/OpenCoreThemes/releases/download/Releases/Ochre.7z > "${TMPDBG}"/Ochre.7z
unar "${TMPDBG}"/Ochre.7z -o "${TMPDBG}" && rm -r "${TMPDBG}"/*.7z && open "${TMPDBG}"
}

OCTheme() {
curl -qsSLk https://github.com/HelmoHass/OpenCoreThemes/releases/download/Releases/OpenCore.7z  > "${TMPDBG}"/OpenCore.7z
unar "${TMPDBG}"/OpenCore.7z -o "${TMPDBG}" && rm -r "${TMPDBG}"/*.7z && open "${TMPDBG}"
}

Red() {
curl -qsSLk https://github.com/HelmoHass/OpenCoreThemes/releases/download/Releases/Red.7z > "${TMPDBG}"/Red.7z
unar "${TMPDBG}"/Red.7z -o "${TMPDBG}" && rm -r "${TMPDBG}"/*.7z && open "${TMPDBG}"
}

SilverDark() {
curl -qsSLk https://github.com/HelmoHass/OpenCoreThemes/releases/download/Releases/SilverDark.7z > "${TMPDBG}"/SilverDark.7z
unar "${TMPDBG}"/SilverDark.7z -o "${TMPDBG}" && rm -r "${TMPDBG}"/*.7z && open "${TMPDBG}"
}

SilverLight() {
curl -qsSLk https://github.com/HelmoHass/OpenCoreThemes/releases/download/Releases/SilverLight.7z > "${TMPDBG}"/SilverLight.7z
unar "${TMPDBG}"/SilverLight.7z -o "${TMPDBG}" && rm -r "${TMPDBG}"/*.7z && open "${TMPDBG}"
}

SilverSexy() {
curl -qsSLk https://github.com/HelmoHass/OpenCoreThemes/releases/download/Releases/SilverSexy.7z > "${TMPDBG}"/SilverSexy.7z
unar "${TMPDBG}"/SilverSexy.7z -o "${TMPDBG}" && rm -r "${TMPDBG}"/*.7z && open "${TMPDBG}"
}

SilverViolet() {
curl -qsSLk https://github.com/HelmoHass/OpenCoreThemes/releases/download/Releases/SilverViolet.7z > "${TMPDBG}"/SilverViolet.7z
unar "${TMPDBG}"/SilverViolet.7z -o "${TMPDBG}" && rm -r "${TMPDBG}"/*.7z && open "${TMPDBG}"
}

Velvet() {
curl -qsSLk https://github.com/HelmoHass/OpenCoreThemes/releases/download/Releases/Velvet.7z > "${TMPDBG}"/Velvet.7z
unar "${TMPDBG}"/Velvet.7z -o "${TMPDBG}" && rm -r "${TMPDBG}"/*.7z && open "${TMPDBG}"
}

Steel() {
curl -qsSLk https://github.com/HelmoHass/OpenCoreThemes/releases/download/Releases/Abstract.Steel.7z > "${TMPDBG}"/Abstract.Steel.7z
unar "${TMPDBG}"/Abstract.Steel.7z -o "${TMPDBG}" && rm -r "${TMPDBG}"/*.7z && open "${TMPDBG}"
}

Cushion() {
curl -qsSLk https://github.com/HelmoHass/OpenCoreThemes/releases/download/Releases/Cushion.Orange_v2.7z > "${TMPDBG}"/Cushion.Orange_v2.7z
unar "${TMPDBG}"/Cushion.Orange_v2.7z -o "${TMPDBG}" && rm -r "${TMPDBG}"/*.7z && open "${TMPDBG}"
}

CushionG() {
curl -qsSLk https://github.com/HelmoHass/OpenCoreThemes/releases/download/Releases/Cushion.Gray.7z > "${TMPDBG}"/Cushion.Gray.7z
unar "${TMPDBG}"/Cushion.Gray.7z -o "${TMPDBG}" && rm -r "${TMPDBG}"/*.7z && open "${TMPDBG}"
}

CushionB() {
curl -qsSLk https://github.com/HelmoHass/OpenCoreThemes/releases/download/Releases/Cushion.Bluey.7z > "${TMPDBG}"/Cushion.Bluey.7z
unar "${TMPDBG}"/Cushion.Bluey.7z -o "${TMPDBG}" && rm -r "${TMPDBG}"/*.7z && open "${TMPDBG}"
}

Marbles() {
curl -qsSLk https://github.com/HelmoHass/OpenCoreThemes/releases/download/Releases/Marbles.7z > "${TMPDBG}"/Marbles.7z
unar "${TMPDBG}"/Marbles.7z -o "${TMPDBG}" && rm -r "${TMPDBG}"/*.7z && open "${TMPDBG}"
}

## Main Menu
Themes() {
echo
echo -e "    \033[01;31m---------------------------------------------------------------------------- \033[0m"
echo -e "                                      \033[1;133m OpenCore \033[0m"
echo -e "                                  \033[0;97m Themes Download \033[0m "
echo -e "                 \033[1;73m Download and Install your selected theme into OC \033[0m "
echo -e "       \033[1;31m                                NOTICE:                               \033[0m "
echo -e "         \033[0;73m You need to have the unarchiver installed to use this function \033[0m "
echo -e "          \033[0;73m so if needed it will be installed directly before continuing \033[0m "
echo -e "                                   \033[1;31m Made by LAbyOne \033[0m "
echo -e "    \033[01;31m---------------------------------------------------------------------------- \033[0m"
echo ""
echo "
                "
PS3='
Write your choice here: '
echo "
                "
options=( '🔵 Screenshots' '⭕ Acqua' '⭕ Black' '⭕ DarkGray' '⭕ NotWhite' '⭕ NotWhite2      ' '⭕ Ochre' '⭕ OpenCore      ' '⭕ Red' '⭕ SilverDark' '⭕ SilverLight' '⭕ SilverSexy' '⭕ SilverViolet' '⭕ Velvet' '⭕ Abstract Steel' '⭕ Cushion Orange' '⭕ Cushion Gray' '⭕ Cushion Bluey' '⭕ Marbles' '🔶 Exit' )
select vars in "${options[@]}"
do
  case $vars in
    "🔵 Screenshots")
      open http://mtkasuks.altervista.org/Screenshots.html
      break
    ;;  
    "⭕ Acqua")
      Acqua
      break
    ;;
    "⭕ Black")
      Black
      break
    ;;
    "⭕ DarkGray")
      DarkGray
      break
    ;;
    "⭕ NotWhite")
      NotWhite
      break
    ;;
    "⭕ NotWhite2      ")
      NotWhite2
      break
    ;;
    "⭕ Ochre")
      Ochre
      break
    ;;
    "⭕ OpenCore      ")
      OCTheme
      break
    ;;
    "⭕ Red")
      Red
      break
    ;;
    "⭕ SilverDark")
      SilverDark
      break
    ;;
    "⭕ SilverLight")
      SilverLight
      break
    ;;
    "⭕ SilverSexy")
      SilverSexy
      break
    ;;
    "⭕ SilverViolet")
      SilverViolet
      break
    ;;
    "⭕ Velvet")
      Velvet
      break
    ;;
    "⭕ Abstract Steel")
      Steel
      break
    ;;
    "⭕ Cushion Orange")
      Cushion
      break
    ;;
    "⭕ Cushion Gray")
      CushionG
      break
    ;;
    "⭕ Cushion Bluey")
      CushionB
      break
    ;;
    "⭕ Marbles")
      Marbles
      break
    ;;
    "🔶 Exit")
      osascript -e 'tell application "Terminal" to close first window' & exit
      break
    ;;
    *)
     echo "" && echo -e "\033[1;91m invalid option $REPLY\033[0m"
	 Sleep 2
	 break
    ;;
  esac
done
Themes
}

set -e
  checkunar
  Themes