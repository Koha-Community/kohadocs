.. include:: images.rst

SOPAC2 Installation
===================

`Introduction <#sopacintro>`__
------------------------------

This is an installation guide for SOPAC2 and its Koha connector. It has
been tested on Debian Lenny and Ubuntu Jaunty with Drupal 6.12 and Koha
3.0.x. It does not cover the installation of Koha and Drupal, only
SOPAC, its dependencies and the connector.

`Installation of Locum and Insurge <#sopacinstall>`__
-----------------------------------------------------

Locum and Insurge are the two libraries used primarily by SOPAC. They
serve as a layer of abstraction to the data. Insurge manages the social
aspect (tags, reviews, ratings), while Locum manages the connection to
the ILS via the connector. Both libraries use a different database from
that of Drupal.

`Dependencies <#sopacdepend>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There are no packages for Debian MDB2 yet, you can install it via pear:

::

    # apt-get install php-pear
    # pear install MDB2
    # pear install MDB2#mysql

`Download <#sopacdownload>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Download the Locum and Insurge libraries from SVN:

::

    # cd /usr/local/lib
    # svn co http://dobby.darienlibrary.org/svn/locum/trunk/ locum
    # svn co http://dobby.darienlibrary.org/svn/insurge/trunk/ insurge

`Creation of the Database <#sopaccreatedb>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

    $ mysql -u root
    mysql> create database scas;
    mysql> grant all privileges on scas.* to scas_user@'localhost' identified by 'scas_pass';
    mysql> flush privileges;
    mysql> exit

`Sync DSN <#sopacdsn>`__
~~~~~~~~~~~~~~~~~~~~~~~~

This file will provide the connection information to a DB libraries:

::

    # nano /usr/local/etc/locum_insurge_dsn.php

It should contain:

::

    <?php
    $dsn = 'mysql://scas_user:scas_pass@localhost/scas';

`Installation of Insurge <#sopacinstallinsurge>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you customize the name of the database, remember to edit the sql
file:

::

    # nano /usr/local/lib/insurge/sql/scas_insurge.sql

Import Insurge:

::

    $ mysql -u root -p < /usr/local/lib/insurge/sql/scas_insurge.sql

Configure Insurge:

::

    # nano /usr/local/lib/insurge/config/insurge.ini

The variables in insurge.ini are empty. The default values are too long
and cause MySQL errors.

Here is a sample of insurge.ini

::

    ; This is the Locum configuration file
    ; General configuration options for your installation of Insurge.
    [insurge_config]
    dsn_file = "/usr/local/etc/locum_insurge_dsn.php"
    ; This is where you configure your repository membership information.
    ;
    ; parent_server is the server name of the repository parent server you have been
    ; told to use.
    ; group_id = The group ID you have been given by your repository admin.
    ; These configuration points are OPTIONAL and are only necessary if you are
    ; participating in a repository relationship.
    [repository_info]
    parent_server = ""
    group_id = ""
    group_key = ""

`Installation of Locum <#sopacinstallocum>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The same procedure applies to Locum

::

    # nano /usr/local/lib/locum/sql/scas_locum.sql
    # mysql < /usr/local/lib/locum/sql/scas_locum.sql
    # nano /usr/local/lib/locum/sql/locum_init.sql
    # mysql < /usr/local/lib/locum/sql/locum_init.sql
    # nano /usr/local/lib/locum/config/locum.ini
    # mkdir /usr/local/var
    # mkdir /usr/local/var/log

Configure the DSN:

::

    [locum_config]
    dsn_file = "/usr/local/etc/locum_insurge_dsn.php"

And the information for your Koha installation:

::

    [ils_config]
    ils = "koha";
    ils_version = "30x"
    ils_server = "localhost"
    ils_harvest_port = "80"

The rest depends on your Koha configuration.

`Installation of Koha Connector <#sopackoha>`__
-----------------------------------------------

Download the Koha connector using SVN:

::

    # cd /usr/local/lib/locum/connectors/
    # svn co http://dobby.darienlibrary.org/svn/connectors/koha/ locum_koha_30x

`Harvest Records <#sopacharvest>`__
-----------------------------------

Now that the connector is in place, we will be able to launch
harvest.php, a tool that will reap Locum DB Koha and fill the locum.

Start by configuring harvest.php:

::

    # nano /usr/local/lib/locum/tools/harvest.php

Here are the variables you must change:

::

    $first_record = 1;
    $last_record = 30;

These are the minimum and maximum biblionumbers from your Koha install.

Then start the harvest:

::

    # chmod +x /usr/local/lib/locum/tools/harvest.php
    $ /usr/local/lib/locum/tools/harvest.php

`Installation of Sphinx <#sopacphinx>`__
----------------------------------------

Sphinx is the indexer for the database used by Locum and Insurge.

`Dependencies <#sphinxdepend>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There is no Debian package for Sphinx so you'll have to compile the
source directly:

::

    # apt-get install g++ make libmysql++-dev

`Download and Compile <#sphinxdownload>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

    $ wget http://sphinxsearch.com/downloads/sphinx-0.9.8.tar.gz
    $ tar zxvf sphinx-0.9.8.tar.gz
    $ cd sphinx-0.9.8
    $ ./configure --prefix=/usr/local/sphinx
    $ make
    # make install
    # mkdir /usr/local/sphinx
    # mkdir /usr/local/sphinx/lib
    # cp api/sphinxapi.php /usr/local/sphinx/lib/
    $ rm -R sphinx-0.9.8*

`Creation of User and Group <#sphinxuser>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Creating a Sphinx user and change the owner:

::

    # adduser sphinx
    # addgroup sphinx
    # usermod -G sphinx sphinx
    # mkdir /usr/local/sphinx/var/run
    # chown -R sphinx.sphinx /usr/local/sphinx/var

`The Sphinx daemon <#demonsphinx>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Download:

::

    # cd /etc/init.d
    # wget http://www.thesocialopac.net/sites/thesocialopac.net/files/sphinx
    # chmod +x /etc/init.d/sphinx

Add Sphinx to the default boot services:

::

    # update-rc.d sphinx defaults

`Configuration <#sphinxconfig>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Copy the configuration file supplied with the source of Sphinx before
the change:

::

    # cp /usr/local/lib/locum/sphinx/sphinx.conf /usr/local/sphinx/etc/
    # sed 's/locum_db_user/scas_user/g' /usr/local/sphinx/etc/sphinx.conf > tmpfile;
    mv tmpfile /usr/local/sphinx/etc/sphinx.conf
    # sed 's/locum_db_pass/scas_pass/g' /usr/local/sphinx/etc/sphinx.conf > tmpfile; mv tmpfile /usr/local/sphinx/etc/sphinx.conf

And if you personalize the name of the database:

::

    # sed 's/scas/MY_DB/g' /usr/local/sphinx/etc/sphinx.conf > tmpfile; mv tmpfile /usr/local/sphinx/etc/sphinx.conf

`Indexing documents <#sphinxindexing>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Indexing is necessary if you want to use the search features of SOPAC.

You must first complete the Insurge table index

::

    # chmod +x /usr/local/lib/insurge/tools/update-index.php
    $ /usr/local/lib/insurge/tools/update-index.php

Then start indexing Sphinx

::

    $ /usr/local/sphinx/bin/indexer --all

Finally, we must start the daemon:

::

    # /etc/init.d/sphinx start

When the daemon is running, you can update the index with:

::

    $ /usr/local/sphinx/bin/indexer --all --rotate

`Installation of SOPAC2 <#installsopac>`__
------------------------------------------

Now to the SOPAC software itself:

`Download <#downloadsopac>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Download from SVN:

::

    $ cd /chemin/vers/drupal/sites/all/
    $ mkdir modules
    $ cd modules/
    $ svn co http://dobby.darienlibrary.org/svn/sopac/trunk/ sopac

`Installation <#sopacinstallation>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In Drupal's administration settings, activate the module. Also, enable
the dependencies:

-  Profile

-  PHP Filter

-  Path

The Drupal menu should now list these entries.

`Configuration <#configsopac>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Then go into the settings of SOPAC.

-  Configure the paths to the Locum and Insurge libraries

-  Choose a URL prefix SOPAC, in my "catalog". Create a node with
   content like:

::

    <?php
    print sopac_search_form('both');
    print theme('pages_catalog');

-  Check the Input Format "PHP Code"

-  Check Move to front page

-  In URL path settings, set the SOPAC URL prefix you have chosen.

Go to the root of Drupal, a search form will appear.

Remember to empty Drupal's cache when something does not work.

Drupal offers a few blocks, which are not configured by default. You
must specify on which page they should appear.
