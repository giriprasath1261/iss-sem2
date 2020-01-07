cp file1.csv target_file.csv
cat file2.csv >> target_file.csv
echo "Age,workclass,fnlwgt,education,education-num,marital-status,occupation,relationship,race,sex,capital-gain,capital-loss,hours-per-week,native-country,class">header.csv
cat header.csv > targ
cat target_file.csv >> targ
mv targ target_file.csv
sed -i 's/?/2018111006/g' target_file.csv
