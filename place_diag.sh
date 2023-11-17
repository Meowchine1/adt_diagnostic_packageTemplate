#!/bin/bash

BACKEND_DIR=/usr/share/alterator/backends
DESKTOP_DIR=/usr/share/alterator/adttools
ALTERATOR_DIR=/usr/share/alterator

if test -d "$ALTERATOR_DIR"; then
    for file in ./*
    do
        if test -f $file  ; then
        case $file in
        *.backend)
            if  test -d "$BACKEND_DIR"; then
                cp $file $BACKEND_DIR
            else
                echo "$BACKEND_DIR does not exist."
            fi
            ;;

        *.desktop)
            if  test -d "$DESKTOP_DIR"; then
                cp $file $DESKTOP_DIR
            else
                mkdir $DESKTOP_DIR
                cp $file $DESKTOP_DIR
            fi
            ;;
      esac
    fi
done

else
    echo "Error: firstly download alterator."
fi


