.. include:: images.rst

Web Services
============

.. _oai-pmh-label:

OAI-PMH
-----------------------------

For the Open Archives Initiative-Protocol for Metadata Harvesting
(OAI-PMH) there are two groups of 'participants': Data Providers and
Service Providers. Data Providers (open archives, repositories) provide
free access to metadata, and may, but do not necessarily, offer free
access to full texts or other resources. OAI-PMH provides an easy to
implement, low barrier solution for Data Providers. Service Providers
use the OAI interfaces of the Data Providers to harvest and store
metadata. Note that this means that there are no live search requests to
the Data Providers; rather, services are based on the harvested data via
OAI-PMH.

Koha at present can only act as a Data Provider. It can not harvest from
other repositories. The biggest stumbling block to having Koha harvest
from other repositories is that MARC is the only metadata format that
Koha indexes natively. Visit
http://www.oaforum.org/tutorial/english/page3.htm for diagrams of how
OAI-PMH works.

Learn more about OAI-PMH at: http://www.openarchives.org/pmh/

To enable OAI-PMH in Koha edit the :ref:`OAI-PMH` preference.
Once enabled you can visit http://YOURKOHACATALOG/cgi-bin/koha/oai.pl to
see your file.

.. _sample-oai-conf-file-label:

Sample OAI Conf File
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

           format:
             vs:
               metadataPrefix: vs
               metadataNamespace: http://veryspecial.tamil.fr/vs/format-pivot/1.1/vs
               schema: http://veryspecial.tamil.fr/vs/format-pivot/1.1/vs.xsd
               xsl_file: /usr/local/koha/xslt/vs.xsl
             marcxml:
               metadataPrefix: marxml
               metadataNamespace: http://www.loc.gov/MARC21/slim
    http://www.loc.gov/standards/marcxml/schema/MARC21slim
               schema: http://www.loc.gov/MARC21/slim
    http://www.loc.gov/standards/marcxml/schema/MARC21slim.xsd
             oai_dc:
               metadataPrefix: oai_dc
               metadataNamespace: http://www.openarchives.org/OAI/2.0/oai_dc/
               schema: http://www.openarchives.org/OAI/2.0/oai_dc.xsd
               xsl_file:
    /usr/local/koha/koha-tmpl/intranet-tmpl/xslt/UNIMARCslim2OAIDC.xsl

.. _rest-services-label:

REST services
----------------------------------

Koha can now be requested by REST http requests. BibLibre wrotes an
external module to adds more possibilities than ILS-DI can provide.There
is no authentication process, but authorized ips are listed in the
config file. Services have been tested in 3.10, 3.12 and 3.14 koha
versions. You can find more information about it into README file and
opac/rest.pl documentation on http://git.biblibre.com. If you want to
add features, send us a patch at dev\_patches AT biblibre DOT com.

Services provided in 1.4 version are:

::

               GET branches
               GET user/byid/:borrowernumber/holds
               GET user/:user_name/holds
               GET user/byid/:borrowernumber/issues
               GET user/:user_name/issues
               GET user/:user_name/issues_history
               GET user/byid/:borrowernumber/issues_history
               GET user/today
               GET user/all
               POST user
               PUT user/:user_name
               GET biblio/:biblionumber/items
               GET biblio/:biblionumber/holdable
               GET biblio/:biblionumber/items_holdable_status
               GET item/:itemnumber/holdable
               PUT auth/change_password
               GET /suggestions
               GET /suggestions/:suggestionid
               POST /suggestions
               PUT /suggestions/:suggestionid
               DELETE /suggestions/:suggestionid

.. _json-reports-services-label:

JSON reports services
----------------------------------

Koha implements a JSON reports service for every report saved
using the :ref:`Guided Reports Wizard <guided-report-wizard-label>`
or :ref:`Report from SQL <report-from-sql-label>` features.

By default reports will be non-public and only accessible by authenticated
users. If a report is explicitly set to *public* it will be accessible
without authentication by anyone. This feature should only be used
when the data can be shared safely not containing any patron information.

The reports can be accessed using the following URLs:

-  Public reports

   -  OpacBaseURL/cgi-bin/koha/svc/report?id=REPORTID

-  Non-public reports

   -  StaffBaseURL/cgi-bin/koha/svc/report?id=REPORTID

There are also some additional parameters available:

-  Instead of accessing the report by REPORTID you can also use the 
   report's name:

   -  .../cgi-bin/koha/svc/report?name=REPORTNAME

-  For easier development there is also an option to generate an
   annotated output of the data. It will generate an array of hashes 
   that include the field names as keys.

   -  .../cgi-bin/koha/svc/report?name=REPORTNAME&annotated=1
