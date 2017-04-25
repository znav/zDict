#!/bin/bash

#Set installation dirs 

zDictScriptDir=~/bin/
zDictCompletionDir=/etc/bash_completion.d/

git clone git@github.com:znav/zDict.git
cp zDict/dictionary $zDictScriptDir 
cp zDict/dictionary_autocomplete $zDictCompletionDir

#Sourcing
. $zDictScriptDir/dictionary
. $zDictCompletionDir/dictionary_autocomplete 

#Add sourcing to bashrc if you like to use it