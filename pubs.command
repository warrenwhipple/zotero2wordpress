#!/usr/bin/env bash
#Finds this script directory and runs python3 on "zotero2wordpress.py" with input "Exported Items.csv" and output "WordPress Import.xml"
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
SCRIPTFILE="/zotero2wordpress.py"
INFILE="/Exported Items.csv"
OUTFILE="/WordPress Import.xml"
python3 "$DIR$SCRIPTFILE" "$DIR$INFILE" "$DIR$OUTFILE"
