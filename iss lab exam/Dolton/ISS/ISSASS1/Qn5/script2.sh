#!/bin/bash
> target_file.csv
cat $1 >> target_file.csv
cat $2 >> target_file.csv
> header.csv
echo "Index, Age, workclass, fnlwgt, education, education-num, marital-status, occupation, relationship, race, sex, capital-gain, capital-loss, native-country, class" >> header.csv
cat ./header.csv | cat - target_file.csv > tmp && mv tmp target_file.csv
sed -i 's/?/2018111007/g' target_file.csv
