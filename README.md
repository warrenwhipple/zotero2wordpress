# zotero2wordpress

A Python script to convert [Zotero CSV export](https://www.zotero.org/support/preferences/export) to [WordPress XML import](https://codex.wordpress.org/Importing_Content) for the [UNC Bioethics website](https://bioethics.unc.edu/).

## Requirements

1.  [Zotero](https://www.zotero.org/download/)
2.  [UNC Bioethics](https://bioethics.unc.edu/) WordPress admin access.
3.  [Python 3](https://www.python.org/downloads/)
4.  [python-titlecase](https://github.com/ppannuto/python-titlecase)

## Usage

`python3 zotero2wordpress.py input.csv output.xml`

## Quick usage

On Linux or MacOS, the shell script `pubs.command` can be used to execute `zotero2wordpress.py` with simple defaults.

1.  From Zotero, [export new citations](https://www.zotero.org/support/preferences/export) as CSV into the `zotero2wordpress` directory.
2.  Execute `pubs.command`. This reads `Exported Items.csv` (the default Zotero export name) and writes `WordPress Import.xml` (the default WordPress import name) into the same directory.
3.  From the UNC Bioethics WordPress [admin panel](https://bioethics.unc.edu/wp-admin), import `WordPress Import.xml`.
