#!/bin/sh

for file in src/*.md; do
    OUTFILE=${file/%md/html}
    pandoc $file\
      --template templates/primary.html\
      --metadata-file nav.yaml\
      -o $OUTFILE;
    mv $OUTFILE .;
done

