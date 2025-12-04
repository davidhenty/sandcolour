#!/bin/bash

infile=sand512.dat
outfile=sandnew.ppm


if [ $# -ne 9 ]
then
    echo "./sandcolour.sh R1 G1 B1 R2 G2 B2 R3 G3 B3"
    exit
else
    echo "palette: h1=($1,$2,$3); h2=($4,$5,$6); h3=($7,$8,$9)"
fi

max=0

for i in $*
do
    if [ $i -gt $max ]
    then
        max=$i
    fi
done

echo "converting <$infile> to <$outfile> ..."

cat <<EOF > $outfile
P3
# Written by sandcolour
# Palette: h1=($1,$2,$3); h2=($4,$5,$6); h3=($7,$8,$9)
512 512
$max
EOF

sed -e "s/A/0 0 0/g;s/B/$1 $2 $3/g;s/C/$4 $5 $6/g;s/D/$7 $8 $9/g" < $infile >> $outfile

echo "... done"
