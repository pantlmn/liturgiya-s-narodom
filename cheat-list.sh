pdftk liturgy.pdf cat 3-end output block.pdf
java -jar /Applications/jpdftweak/jpdftweak.jar block.pdf -scale 595,842,c -shuffle '-4:!-4N1.0-25.0%-25.0%,-4N1.0-25.0%+25.0%,+1N1.0+25.0%-25.0%,+1N1.0+25.0%+25.0%,!+2N1.0-25.0%-25.0%,+2N1.0-25.0%+25.0%,-3N1.0+25.0%-25.0%,-3N1.0+25.0%+25.0%' -o block-spusk.pdf
lp -o Duplex=DuplexNoTumble -n 100  -o collate=true block-spusk.pdf
java -jar /Applications/jpdftweak/jpdftweak.jar cover.pdf -scale 595,842,c -shuffle '-4:!-4N1.0-25.0%-25.0%,-4N1.0-25.0%+25.0%,+1N1.0+25.0%-25.0%,+1N1.0+25.0%+25.0%' -o cover-spusk.pdf
pdftk cover-spusk.pdf cat 1-endodd output cover-spusk-4n+1.pdf