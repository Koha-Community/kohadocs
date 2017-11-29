Koha Documentation
==================

This is the Koha Documentation Repository

Documentation is generated with Sphinx.

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


