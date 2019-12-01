.. include:: images.rst

.. _plugin-system-label:

Plugin System
=============

Koha's Plugin System allows for you to add additional tools and reports
to Koha that are specific to your library. Plugins are installed by
uploading KPZ ( Koha Plugin Zip ) packages. A KPZ file is just a zip
file containing the perl files, template files, and any other files
necessary to make the plugin work.

The plugin system needs to be turned on by a system administrator.

.. _setup-plugin-system-label:

Set up
-------------------------

To set up the Koha plugin system you must first make some changes to
your install.

-  Change <enable\_plugins>0</enable\_plugins> to
   <enable\_plugins>1</enable\_plugins> in your koha-conf.xml file

-  Restart your webserver

Once set up is complete you will need to alter your
:ref:`UseKohaPlugins` system preference. On the Tools
page you will see the Tools Plugins and on the Reports page you will see
the Reports Plugins.
