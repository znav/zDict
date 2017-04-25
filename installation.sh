#!/bin/bash

#Set installation dirs 

zDictScriptDir=~/bin
zDictCompletionDir=/etc/bash_completion.d

cp dictionary $zDictScriptDir 
cp config.sh $zDictScriptDir 
cp dictionary_autocomplete $zDictCompletionDir

#Add sourcing to bashrc if you like to use it
printf "${brown}Add sourcing to bashrc? (y/n)? \n${nc}"

read rc

if [ $rc == 'y' ];
then
  echo . ${zDictScriptDir}"/dictionary" >> ~/.bashrc
  echo . ${zDictCompletionDir}"/dictionary_autocomplete" >> ~/.bashrc
else
  echo 'Source $zDictScriptDir/dictionary and $zDictCompletionDir/dictionary_autocomplete'
fi
