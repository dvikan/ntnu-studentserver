
## Kompendier

Jeg fant masse kompendier på ntnu sin studentserver folk.ntnu.no.
Veldig kjekt! For å replikere gjør slik:

    ssh lynx.stud.ntnu.no
    mkdir kompendier
    find /web/folk 2>/dev/null >> ~/folk-filelist &
    grep -i kompend ~/folk-filelist >> ~/kompendier-filenames
    cat kompendier-filenames | while read filename; do cp /web/folk/"$filename" ~/kompendier/ ; done

Deretter fra din egen maskin

    scp -r lynx.stud.ntnu.no:kompendier .
