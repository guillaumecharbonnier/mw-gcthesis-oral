#! /bin/sh

TARGET=out/tectonic/ln/updir/mw-gcthesis-oral/slides.pdf
#n=0
#until [ $n -ge 3 ]
for i in 1 2 3;
do
   snakemake $TARGET --use-conda && break  # substitute your command here
done

ln -sf $TARGET
