#!/bin/bash

check_cmd_start()
{
  echo -en "\e[31m"
}

check_cmd_end()
{
  if [ $? -ne 0 ]
  then
      echo -e "✖ error!\e[0m"
      exit 0;
  else
      echo -e "\e[0m\e[32m✅ done!\e[0m"
  fi
}

#
# read text
#
# echo "You entered: $text"
#
# if [[ $text =~ ^ye?s?.* ]]; then
#     echo "Valid date"
# else
#     echo "Invalid date"
# fi

# echo "Do you wish to install this program?"
# echo -e "\e[32m"
# select yn in "Yes" "No"; do
#     case $yn in
#         Yes ) print_jet_logo; break;;
#         No ) exit;;
#     esac
# done
# echo -en "\e[0m"

# while false; do
#   sleep 0.1
#   echo -en "\t⣿\r"
#   sleep 0.1
#   echo -en "\t⣷\r"
#   sleep 0.1
#   echo -en "\t⣯\r"
#   sleep 0.1
#   echo -en "\t⣟\r"
#   sleep 0.1
#   echo -en "\t⡿\r"
#   sleep 0.1
#   echo -en "\t⢿\r"
#   sleep 0.1
#   echo -en "\t⣻\r"
#   sleep 0.1
#   echo -en "\t⣽\r"
#   sleep 0.1
#   echo -en "\t⣾\r"
# done;

# echo -en "\t⬡ ⬡ ⬡ ⬡ ⬡\r"
# while false; do
#   sleep 0.2
#   echo -en "\t⬢ ⬡ ⬡ ⬡ ⬡\r"
#   sleep 0.2
#   echo -en "\t⬡ ⬢ ⬡ ⬡ ⬡\r"
#   sleep 0.2
#   echo -en "\t⬡ ⬡ ⬢ ⬡ ⬡\r"
#   sleep 0.2
#   echo -en "\t⬡ ⬡ ⬡ ⬢ ⬡\r"
#   sleep 0.2
#   echo -en "\t⬡ ⬡ ⬡ ⬡ ⬢\r"
#   sleep 0.2
#   echo -en "\t⬡ ⬡ ⬡ ⬡ ⬡\r"
# done;
