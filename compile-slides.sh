#! /bin/sh

TARGET="out/tectonic/ln/updir/mw-gcthesis-oral/slides.pdf out/tectonic/ln/updir/mw-gcthesis-oral/slides_with_notes.pdf"
#n=0
#until [ $n -ge 3 ]
#for i in 1 2 3;
#do
snakemake $TARGET --cores 2 --use-conda
# && break  # substitute your command here
#done

#ln -sf $TARGET
