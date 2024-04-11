#!/bin/bash
for i in {01..26}; do 
    fname="question$i.tex"
    echo "Creating $fname"
    touch $fname
done

