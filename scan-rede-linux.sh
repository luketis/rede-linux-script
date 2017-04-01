#!/bin/zsh
COMPS=(java c haskell lisp prolog python racket perl assembly)
echo $COMPS
PASSWD="$(zenity --password --title=Authentication)\n"
USER=$1
SSHPASSPATH=which sshpass
$SSHPASSPATH -p $PASSWD ssh -o"StrictHostKeyChecking=no" $USER@linux.ime.usp.br

