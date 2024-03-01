# To run this file do "source bloom.bash"

echo '"location","prediction"' > predictions.csv

# Taking the average number of day of year of bloom for each city 

# kyoto
sum=0
year_data=`awk -F, 'NR > 1 {print $7}' data/kyoto.csv | awk '{ sum += $1 } END { print sum }'` 
lines=`awk -F, 'NR > 1 {print NR-1}' data/kyoto.csv | tail -n1`

kyoto=$((year_data / lines))

echo "\"kyoto\",$kyoto" >> predictions.csv

#liestal
sum=0
year_data=`awk -F, 'NR > 1 {print $7}' data/liestal.csv | awk '{ sum += $1 } END { print sum }'` 
lines=`awk -F, 'NR > 1 {print NR-1}' data/liestal.csv | tail -n1`

liestal=$((year_data / lines))

echo "\"liestal\",$liestal" >> predictions.csv

#vancouver
sum=0
year_data=`awk -F, 'NR > 1 {print $7}' data/vancouver.csv | awk '{ sum += $1 } END { print sum }'` 
lines=`awk -F, 'NR > 1 {print NR-1}' data/vancouver.csv | tail -n1`

vancouver=$((year_data / lines))

echo "\"vancouver\",$vancouver" >> predictions.csv

#washington dc
sum=0
year_data=`awk -F, 'NR > 1 {print $7}' data/washingtondc.csv | awk '{ sum += $1 } END { print sum }'` 
lines=`awk -F, 'NR > 1 {print NR-1}' data/washingtondc.csv | tail -n1`

washingtondc=$((year_data / lines))

echo "\"washingtondc\",$washingtondc" >> predictions.csv

sum=0
year_data=`grep '32789' data/USA-NPN_individual_phenometrics_data.csv | awk -F, '{print $17}'| awk '{ sum += $1 } END { print sum }'` 
lines=`grep '32789' data/USA-NPN_individual_phenometrics_data.csv | awk -F, '{print $17}' | wc -l`

newyorkcity=$((year_data / lines))

echo "\"newyorkcity\",$newyorkcity" >> predictions.csv

