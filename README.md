Koha Documentation
==================

This is the main repository for the Koha manual.
It is mirrored at git.koha-community.org.

The manual is generated with Sphinx.

Setup
-----

> sudo apt-get install python3-sphinx  python3-sphinxcontrib.spelling

Outputing Docs
--------------

### For HTML
> make html

### For HTML in a single page
>  make singlehtml

### For an epub
>  make epub

### For a pdf (Work in progress)

Install latexmk, the latexpdf builder needs it

> apt install latexmk 

Install texlive-full. Attention: this is very huge

> apt install texlive-full 

Generate the latex files

> make latex 

Generate the PDF file

> make latexpdf


Other useful commands
---------------------

To find everything that you can do, you can just do

> make

And it will list all the available options. Some useful ones are

### Check spelling
> make spelling

### Check links in the documentation
> make linkcheck

### Generate .po files for translation
> make gettext
