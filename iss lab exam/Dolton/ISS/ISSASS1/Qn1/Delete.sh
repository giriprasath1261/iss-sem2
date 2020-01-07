#!/bin/bash
grep -v "$1" ~/bin/Qn1/Database.txt > ~/bin/Qn1/temp && mv ~/bin/Qn1/temp ~/bin/Qn1/Database.txt
