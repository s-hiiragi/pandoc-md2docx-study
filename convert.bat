@echo off

rmdir /s /q output
mkdir output

set OPTS=-f markdown -t docx --reference-doc=reference.docx

pandoc %OPTS% -o output/heading.docx input/heading.md
pandoc %OPTS% -o output/table.docx input/table.md

