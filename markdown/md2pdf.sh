#!/bin/sh
cd notes 
find ./ -iname "*.md" -type f -exec sh -c 'pandoc -V geometry:margin=2cm "${0}" -o "../../pdfs/notes/${0%.md}.pdf"' {} \;
cd -
cd writeups 
find ./ -iname "*.md" -type f -exec sh -c 'pandoc -V geometry:margin=2cm "${0}" -o "../../pdfs/writeups/$(basename ${0%.md}.pdf)"' {} \;
cd -
cd exercises 
find ./ -iname "*.md" -type f -exec sh -c 'pandoc -V geometry:margin=2cm "${0}" -o "../../pdfs/exercises/$(basename ${0%.md}.pdf)"' {} \;
cd -
cd labs 
find ./ -iname "*.md" -type f -exec sh -c 'pandoc -V geometry:margin=2cm "${0}" -o "../../pdfs/labs/$(basename ${0%.md}.pdf)"' {} \;
cd -
