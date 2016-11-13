.. include:: images.rst

Web Services
============

`OAI-PMH <#OAI-PMHservice>`__
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

To enable OAI-PMH in Koha edit the `OAI-PMH <#OAI-PMH>`__ preference.
Once enabled you can visit http://YOURKOHACATALOG/cgi-bin/koha/oai.pl to
see your file.

`Sample OAI Conf File <#oaiconfsample>`__
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

`REST services <#Rest-services>`__
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


Using the SRU server
====================

`Using the SRU server <#usingsru>`__
------------------------------------

Koha implements the Search/Retrieve via URL (SRU) protocol. More
information about the protocol itself can be found at
http://www.loc.gov/standards/sru/. The version implemented is version
1.1.

`Explain <#sru_explain>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~

If you want to have information about the implementation of SRU on a
given server, you should have access to the Explain file using a request
to the server without any parameter. Like
<http://myserver.com:9999/biblios/>. The response from the server is an
XML file that should look like the following and will give you
information about the default settings of the SRU server.

::

                   <zs:explainResponse>
                        <zs:version>1.1</zs:version>
                        <zs:record>
                             <zs:recordSchema>http://explain.z3950.org/dtd/2.0/</zs:recordSchema>
                             <zs:recordPacking>xml</zs:recordPacking>
                             <zs:recordData>
                             <explain xml:base="zebradb/explain-biblios.xml">
                             <!--
                             try stylesheet url: http://./?stylesheet=docpath/sru2.xsl
                             -->
                        <serverInfo protocol="SRW/SRU/Z39.50">
                             <host>biblibre</host>
                             <port>9999</port>
                             <database>biblios</database>
                        </serverInfo>
                        <databaseInfo>
                             <title lang="en" primary="true">Koha 3 Bibliographic SRU/SRW/Z39.50 server</title>
                             <description lang="en" primary="true">Koha 3 Bibliographic Server</description>
                             <links>
                                  <sru>http://biblibre:9999</sru>
                             </links>
                        </databaseInfo>
                        <indexInfo>
                             <set name="cql" identifier="info:srw/cql-context-set/1/cql-v1.1">
                                  <title>CQL Standard Set</title>
                             </set>
                             <index search="true" scan="true" sort="false">
                             <title lang="en">CQL Server Choice</title>
                             <map>
                                  <name set="cql">serverChoice</name>
                             </map>
                        <map>
                           <attr type="1" set="bib1">text</attr>
                           </map>
                      </index>
                  <index search="true" scan="true" sort="false">
                     <title lang="en">CQL All</title>
                         <map>
            <name set="cql">all</name>
            </map>
            <map>
            <attr type="1" set="bib1">text</attr>
            </map>
            </index>
            <!-- Record ID index -->
            <index search="true" scan="true" sort="false">
            <title lang="en">Record ID</title>
            <map>
            <name set="rec">id</name>
            </map>
            <map>
            <attr type="1" set="bib1">rec:id</attr>
            <attr type="4" set="bib1">3</attr>
            </map>
            </index>


`Search <#sru_search>`__
~~~~~~~~~~~~~~~~~~~~~~~~

This url :
http://myserver.com:9999/biblios?version=1.1&operation=searchRetrieve&query=reefs
is composed of the following elements:

-  base url of the SRU server : http://myserver.com:9999/biblios?

-  search part with the 3 required parameters : version, operation and
   query. The parameters within the search part should be of the
   key=value form, and can be combined with the & character.

One can add optional parameters to the query, for instance
maximumRecords indicating the maximum number of records to be returned
by the server. So
http://myserver.com:9999/biblios?version=1.1&operation=searchRetrieve&query=reefs&maximumRecords=5
will only get the first 5 results results from the server.

http://www.loc.gov/standards/sru/sru1-1archive/search-retrieve-operation.html
gives more details about the search operations and in particular the
list of optional parameters for searching.

`More details about Search <#sru_search_more_details>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The "operation" key can take two values: scan or searchRetrieve.

If operation=searchRetrieve, then the search key should be query. As in
: operation=searchRetrieve&query=reefs

If operation=scan, then the search key should be scanClause. As in :
operation=scan&scanClause=reefs

etc/zebradb/biblios/etc/bib1.att defines Zebra/3950 indexes that exist
on your system. For instance you'll see that we have indexes for Subject
and for Title: att 21 Subject and att 4 Title respectively.

In the pqf.properties file located under etc/zebradb/pqf.properties I
see that an access point already uses my Subject index (index.dc.subject
= 1=21) while another uses my Title index (index.dc.title = 1=4) I know
this is my Subject index because as I've seen just before in my bib1.att
file, it's called with =1=21 in Z3950: so index.dc.subject = 1=21
correctly points to my Subject index. And Title was called with 1=4 so
index.dc.title = 1=4 correctly points to my Title index. I can now
construct my query just like I would in a search box, just preceding it
with the "query" key: query=Subject=reefs and Title=coral searches
"reefs" in the subject and "coral" in the title. The full url would be
http://myserver.com:9999/biblios?version=1.1&operation=searchRetrieve&query=Subject=reefs
and Title=coral If I want to limit the result set to just 5 records, I
can do
http://myserver.com:9999/biblios?version=1.1&operation=searchRetrieve&query=Subject=reefs
and Title=coral&maximumRecords=5

I can also play with truncate, relations, etc. Those are also defined in
my pqf.properties file. I can see for instance the position properties
defined as:

::

                   position.first              = 3=1 6=1
                  # "first in field"
                   position.any                = 3=3 6=1
                     # "any position in field"


So as an example if I want "coral" to be at the beginning of the title,
I can do this query :
http://myserver.com:9999/biblios?version=1.1&operation=searchRetrieve&query=Title=coral
first

`Retrieve <#sru_retrieve>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

My search for
http://univ\_lyon3.biblibre.com:9999/biblios?version=1.1&operation=searchRetrieve&query=coral
reefs&maximumRecords=1 retrieves just on record. The response looks like
this:

::

              <zs:searchRetrieveResponse>
    <zs:version>1.1</zs:version>
    <zs:numberOfRecords>1</zs:numberOfRecords>
    <zs:records>
    <zs:record>
    <zs:recordPacking>xml</zs:recordPacking>
    <zs:recordData>
    <record xsi:schemaLocation="http://www.loc.gov/MARC21/slim http://www.loc.gov/ standards/marcxml/schema/MARC21slim.xsd">
    <leader> cam a22 4500</leader>
    <datafield tag="010" ind1=" " ind2=" ">
    <subfield code="a">2-603-01193-6</subfield>
    <subfield code="b">rel.</subfield>
    <subfield code="d">159 F</subfield>
    </datafield>
    <datafield tag="020" ind1=" " ind2=" ">
    <subfield code="a">FR</subfield>
    <subfield code="b">00065351</subfield>
    </datafield>
    <datafield tag="101" ind1="1" ind2=" ">
    <subfield code="c">ita</subfield>
    </datafield>
    <datafield tag="105" ind1=" " ind2=" ">
    <subfield code="a">a z 00|y|</subfield>
    </datafield>
    <datafield tag="106" ind1=" " ind2=" ">
    <subfield code="a">r</subfield>
    </datafield>
    <datafield tag="100" ind1=" " ind2=" ">
    <subfield code="a">20091130 frey50 </subfield>
    </datafield>
    <datafield tag="200" ind1="1" ind2=" ">
    <subfield code="a">Guide des récifs coralliens / A Guide to Coral Reefs</subfield>
    <subfield code="b">Texte imprimé</subfield>
    <subfield code="e">la faune sous-marine des coraux</subfield>
    <subfield code="f">A. et A. Ferrari</subfield>
    </datafield>
    <datafield tag="210" ind1=" " ind2=" ">
    <subfield code="a">Lausanne</subfield>
    <subfield code="a">Paris</subfield>
    <subfield code="c">Delachaux et Niestlé</subfield>
    <subfield code="d">cop. 2000</subfield>
    <subfield code="e">impr. en Espagne</subfield>
    </datafield>
    <datafield tag="215" ind1=" " ind2=" ">
    <subfield code="a">287 p.</subfield>
    <subfield code="c">ill. en coul., couv. ill. en coul.</subfield>
    <subfield code="d">20 cm</subfield>
    </datafield>
    ......
    <idzebra>
    <size>4725</size>
    <localnumber>2</localnumber>
    <filename>/tmp/nw10BJv9Pk/upd_biblio/exported_records</filename>
    </idzebra>
    </record>
    </zs:recordData>
    <zs:recordPosition>1</zs:recordPosition>
    </zs:record>
    </zs:records>
    </zs:searchRetrieveResponse>



New titles slider for OPAC
==========================

Often times libraries will want to add a flowing widget with new
materials at the library to their main public catalog page. To do this
you can use a widget from any number of services (usually for a cost) or
you can `enable plugins <#pluginsystem>`__ in Koha and use the `Cover
Flow
plugin <http://git.bywatersolutions.com/koha-plugins.git/shortlog/refs/heads/cover_flow>`__
which is based on the
`Flipster <https://github.com/drien/jquery-flipster>`__, a responsive
jQuery coverflow plugin.

Once the plugin is installed, the steps to get your coverflow to show up
are as follows:

First, you need to create one or more public reports for your coverflow
widget or widgets to be based on. This is how the plugin knows what the
content of your widget should contain. Each report needs only three
columns; title, biblionumber, and isbn. It is important that you have a
good and valid isbn, as that is the datum used to actually fetch the
cover. In the iteration of the plugin, we are using Amazon cover images,
but I believe in the end I will make the cover image fetcher
configurable so we can use any data source for cover image fetching.

Second, we need to configure the plugin. The plugin configuration is a
single text area that uses YAML ( actually, it’s JSON, whcih is a subset
of YAML ) to store the configuration options. In this example it looks
like this:

::

    - id: 42
      selector: #coverflow
      options:
      style: coverflow

In this example, we are telling the plugin to use the report with id 42,
and use it to create a coverflow widget to replace the HTML element with
the id “coverflow”. The options list is passed directly to Flipster, so
any options supported by Flipster can be set from the plugin
configuration! In fact, in addition to the traditional coverflow,
Flipster has a “carousel” mode which is a much more compact version of
the coverflow. You can also configure which cover the widget will start
on, among other options.

At the time the plugins options are saved or updated, the plugin will
then generate some minified JavaScript code that is automatically stored
in the Koha system preference OPACUserJS. Here is an example of the
output:

::

    /* JS for Koha CoverFlow Plugin
     This JS was added automatically by installing the CoverFlow plugin
     Please do not modify */$(document).ready(function(){$.getScript("/plugin/Koha/Plugin/Com/ByWaterSolutions/CoverFlow/jquery-flipster/src/js/jquery.flipster.min.js",function(data,textStatus,jqxhr){$("head").append("<link id='flipster-css' href='/plugin/Koha/Plugin/Com/ByWaterSolutions/CoverFlow/jquery-flipster/src/css/jquery.flipster.min.css' type='text/css' rel='stylesheet' />");$('#coverflow').load("/coverflow.pl?id=42",function(){var opt={'items':'.item','minfactor':15,'distribution':1.5,'scalethreshold':0,'staticbelowthreshold':false,'titleclass':'itemTitle','selectedclass':'selectedItem','scrollactive':true,'step':{'limit':4,'width':10,'scale':true}};$('#coverflow').flipster({style:'coverflow',});});});});
    /* End of JS for Koha CoverFlow Plugin */

Why do this? For speed! Rather than regenerating this code each and
every time the page loads, we can generate it once, and use it over and
over again.

If you inspect the code closely, you’ll notice it references a script
“coverflow.pl”. This is a script that is included with the coverflow
plugin. Since we need to access this from the OPAC ( and we don’t want
to set off any XSS attack alarms ), we need to modify the web server
configuration for the public catalog and add the followup to it:

::

    ScriptAlias /coverflow.pl "/var/lib/koha/mykoha/plugins/Koha/Plugin/Com/ByWaterSolutions/CoverFlow/coverflow.pl"

This line gives us access to the coverflow.pl script from the OPAC. This
script retrieves the report data and passes it back to the public
catalog for creating the coverflow widget. Koha::Cache is supported in
order to make the widget load as quickly as possible!

The final step is to put your selector element somewhere in your public
catalog. In this example, I put the following in the system preference
OpacMainUserBlock:

::

    <span id="coverflow">Loading...</span>

Once that is in place, you need only refresh your OPAC page, and there
you have it, your very own catalog coverflow widget! Not only do these
coverflows look great on a computer screen, but they look great on
mobile platforms as well, and are even touch responsive!Coverflow Widget

System Preference Defaults
==========================

`ISBD Defaults <#isbddefaults>`__
---------------------------------

Default values for the `ISBD <#isbdpref>`__ preference.

`MARC Default <#isbddefault>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#100\|\|{ 100a }{ 100b }{ 100c }{ 100d }{ 110a }{ 110b }{ 110c }{ 110d
}{ 110e }{ 110f }{ 110g }{ 130a }{ 130d }{ 130f }{ 130g }{ 130h }{ 130k
}{ 130l }{ 130m }{ 130n }{ 130o }{ 130p }{ 130r }{ 130s }{ 130t
}\|<br/><br/>

#245\|\|{ 245a }{ 245b }{245f }{ 245g }{ 245k }{ 245n }{ 245p }{ 245s }{
245h }\|

#246\|\|{ : 246i }{ 246a }{ 246b }{ 246f }{ 246g }{ 246n }{ 246p }{ 246h
}\|

#242\|\|{ = 242a }{ 242b }{ 242n }{ 242p }{ 242h }\|

#245\|\|{ 245c }\|

#242\|\|{ = 242c }\|

#250\| - \|{ 250a }{ 250b }\|

#254\|, \|{ 254a }\|

#255\|, \|{ 255a }{ 255b }{ 255c }{ 255d }{ 255e }{ 255f }{ 255g }\|

#256\|, \|{ 256a }\|

#257\|, \|{ 257a }\|

#258\|, \|{ 258a }{ 258b }\|

#260\| - \|{ 260a }{ 260b }{ 260c }\|

#300\| - \|{ 300a }{ 300b }{ 300c }{ 300d }{ 300e }{ 300f }{ 300g }\|

#306\| - \|{ 306a }\|

#307\| - \|{ 307a }{ 307b }\|

#310\| - \|{ 310a }{ 310b }\|

#321\| - \|{ 321a }{ 321b }\|

#340\| - \|{ 3403 }{ 340a }{ 340b }{ 340c }{ 340d }{ 340e }{ 340f }{
340h }{ 340i }\|

#342\| - \|{ 342a }{ 342b }{ 342c }{ 342d }{ 342e }{ 342f }{ 342g }{
342h }{ 342i }{ 342j }{ 342k }{ 342l }{ 342m }{ 342n }{ 342o }{ 342p }{
342q }{ 342r }{ 342s }{ 342t }{ 342u }{ 342v }{ 342w }\|

#343\| - \|{ 343a }{ 343b }{ 343c }{ 343d }{ 343e }{ 343f }{ 343g }{
343h }{ 343i }\|

#351\| - \|{ 3513 }{ 351a }{ 351b }{ 351c }\|

#352\| - \|{ 352a }{ 352b }{ 352c }{ 352d }{ 352e }{ 352f }{ 352g }{
352i }{ 352q }\|

#362\| - \|{ 362a }{ 351z }\|

#440\| - \|{ 440a }{ 440n }{ 440p }{ 440v }{ 440x }\|.

#490\| - \|{ 490a }{ 490v }{ 490x }\|.

#800\| - \|{ 800a }{ 800b }{ 800c }{ 800d }{ 800e }{ 800f }{ 800g }{
800h }{ 800j }{ 800k }{ 800l }{ 800m }{ 800n }{ 800o }{ 800p }{ 800q }{
800r }{ 800s }{ 800t }{ 800u }{ 800v }\|.

#810\| - \|{ 810a }{ 810b }{ 810c }{ 810d }{ 810e }{ 810f }{ 810g }{
810h }{ 810k }{ 810l }{ 810m }{ 810n }{ 810o }{ 810p }{ 810r }{ 810s }{
810t }{ 810u }{ 810v }\|.

#811\| - \|{ 811a }{ 811c }{ 811d }{ 811e }{ 811f }{ 811g }{ 811h }{
811k }{ 811l }{ 811n }{ 811p }{ 811q }{ 811s }{ 811t }{ 811u }{ 811v
}\|.

#830\| - \|{ 830a }{ 830d }{ 830f }{ 830g }{ 830h }{ 830k }{ 830l }{
830m }{ 830n }{ 830o }{ 830p }{ 830r }{ 830s }{ 830t }{ 830v }\|.

#500\|<br/><br/>\|{ 5003 }{ 500a }\|

#501\|<br/><br/>\|{ 501a }\|

#502\|<br/><br/>\|{ 502a }\|

#504\|<br/><br/>\|{ 504a }\|

#505\|<br/><br/>\|{ 505a }{ 505t }{ 505r }{ 505g }{ 505u }\|

#506\|<br/><br/>\|{ 5063 }{ 506a }{ 506b }{ 506c }{ 506d }{ 506u }\|

#507\|<br/><br/>\|{ 507a }{ 507b }\|

#508\|<br/><br/>\|{ 508a }{ 508a }\|

#510\|<br/><br/>\|{ 5103 }{ 510a }{ 510x }{ 510c }{ 510b }\|

#511\|<br/><br/>\|{ 511a }\|

#513\|<br/><br/>\|{ 513a }{513b }\|

#514\|<br/><br/>\|{ 514z }{ 514a }{ 514b }{ 514c }{ 514d }{ 514e }{ 514f
}{ 514g }{ 514h }{ 514i }{ 514j }{ 514k }{ 514m }{ 514u }\|

#515\|<br/><br/>\|{ 515a }\|

#516\|<br/><br/>\|{ 516a }\|

#518\|<br/><br/>\|{ 5183 }{ 518a }\|

#520\|<br/><br/>\|{ 5203 }{ 520a }{ 520b }{ 520u }\|

#521\|<br/><br/>\|{ 5213 }{ 521a }{ 521b }\|

#522\|<br/><br/>\|{ 522a }\|

#524\|<br/><br/>\|{ 524a }\|

#525\|<br/><br/>\|{ 525a }\|

#526\|<br/><br/>\|{\\n510i }{\\n510a }{ 510b }{ 510c }{ 510d }{\\n510x
}\|

#530\|<br/><br/>\|{\\n5063 }{\\n506a }{ 506b }{ 506c }{ 506d }{\\n506u
}\|

#533\|<br/><br/>\|{\\n5333 }{\\n533a }{\\n533b }{\\n533c }{\\n533d
}{\\n533e }{\\n533f }{\\n533m }{\\n533n }\|

#534\|<br/><br/>\|{\\n533p }{\\n533a }{\\n533b }{\\n533c }{\\n533d
}{\\n533e }{\\n533f }{\\n533m }{\\n533n }{\\n533t }{\\n533x }{\\n533z
}\|

#535\|<br/><br/>\|{\\n5353 }{\\n535a }{\\n535b }{\\n535c }{\\n535d }\|

#538\|<br/><br/>\|{\\n5383 }{\\n538a }{\\n538i }{\\n538u }\|

#540\|<br/><br/>\|{\\n5403 }{\\n540a }{ 540b }{ 540c }{ 540d }{\\n520u
}\|

#544\|<br/><br/>\|{\\n5443 }{\\n544a }{\\n544b }{\\n544c }{\\n544d
}{\\n544e }{\\n544n }\|

#545\|<br/><br/>\|{\\n545a }{ 545b }{\\n545u }\|

#546\|<br/><br/>\|{\\n5463 }{\\n546a }{ 546b }\|

#547\|<br/><br/>\|{\\n547a }\|

#550\|<br/><br/>\|{ 550a }\|

#552\|<br/><br/>\|{ 552z }{ 552a }{ 552b }{ 552c }{ 552d }{ 552e }{ 552f
}{ 552g }{ 552h }{ 552i }{ 552j }{ 552k }{ 552l }{ 552m }{ 552n }{ 562o
}{ 552p }{ 552u }\|

#555\|<br/><br/>\|{ 5553 }{ 555a }{ 555b }{ 555c }{ 555d }{ 555u }\|

#556\|<br/><br/>\|{ 556a }{ 506z }\|

#563\|<br/><br/>\|{ 5633 }{ 563a }{ 563u }\|

#565\|<br/><br/>\|{ 5653 }{ 565a }{ 565b }{ 565c }{ 565d }{ 565e }\|

#567\|<br/><br/>\|{ 567a }\|

#580\|<br/><br/>\|{ 580a }\|

#581\|<br/><br/>\|{ 5633 }{ 581a }{ 581z }\|

#584\|<br/><br/>\|{ 5843 }{ 584a }{ 584b }\|

#585\|<br/><br/>\|{ 5853 }{ 585a }\|

#586\|<br/><br/>\|{ 5863 }{ 586a }\|

#020\|<br/><br/><label>ISBN: </label>\|{ 020a }{ 020c }\|

#022\|<br/><br/><label>ISSN: </label>\|{ 022a }\|

#222\| = \|{ 222a }{ 222b }\|

#210\| = \|{ 210a }{ 210b }\|

#024\|<br/><br/><label>Standard No.: </label>\|{ 024a }{ 024c }{ 024d }{
0242 }\|

#027\|<br/><br/><label>Standard Tech. Report. No.: </label>\|{ 027a }\|

#028\|<br/><br/><label>Publisher. No.: </label>\|{ 028a }{ 028b }\|

#013\|<br/><br/><label>Patent No.: </label>\|{ 013a }{ 013b }{ 013c }{
013d }{ 013e }{ 013f }\|

#030\|<br/><br/><label>CODEN: </label>\|{ 030a }\|

#037\|<br/><br/><label>Source: </label>\|{ 037a }{ 037b }{ 037c }{ 037f
}{ 037g }{ 037n }\|

#010\|<br/><br/><label>LCCN: </label>\|{ 010a }\|

#015\|<br/><br/><label>Nat. Bib. No.: </label>\|{ 015a }{ 0152 }\|

#016\|<br/><br/><label>Nat. Bib. Agency Control No.: </label>\|{ 016a }{
0162 }\|

#600\|<br/><br/><label>Subjects--Personal Names: </label>\|{\\n6003
}{\\n600a}{ 600b }{ 600c }{ 600d }{ 600e }{ 600f }{ 600g }{ 600h
}{--600k}{ 600l }{ 600m }{ 600n }{ 600o }{--600p}{ 600r }{ 600s }{ 600t
}{ 600u }{--600x}{--600z}{--600y}{--600v}\|

#610\|<br/><br/><label>Subjects--Corporate Names: </label>\|{\\n6103
}{\\n610a}{ 610b }{ 610c }{ 610d }{ 610e }{ 610f }{ 610g }{ 610h
}{--610k}{ 610l }{ 610m }{ 610n }{ 610o }{--610p}{ 610r }{ 610s }{ 610t
}{ 610u }{--610x}{--610z}{--610y}{--610v}\|

#611\|<br/><br/><label>Subjects--Meeting Names: </label>\|{\\n6113
}{\\n611a}{ 611b }{ 611c }{ 611d }{ 611e }{ 611f }{ 611g }{ 611h
}{--611k}{ 611l }{ 611m }{ 611n }{ 611o }{--611p}{ 611r }{ 611s }{ 611t
}{ 611u }{--611x}{--611z}{--611y}{--611v}\|

#630\|<br/><br/><label>Subjects--Uniform Titles: </label>\|{\\n630a}{
630b }{ 630c }{ 630d }{ 630e }{ 630f }{ 630g }{ 630h }{--630k }{ 630l }{
630m }{ 630n }{ 630o }{--630p}{ 630r }{ 630s }{ 630t
}{--630x}{--630z}{--630y}{--630v}\|

#648\|<br/><br/><label>Subjects--Chronological Terms: </label>\|{\\n6483
}{\\n648a }{--648x}{--648z}{--648y}{--648v}\|

#650\|<br/><br/><label>Subjects--Topical Terms: </label>\|{\\n6503
}{\\n650a}{ 650b }{ 650c }{ 650d }{ 650e
}{--650x}{--650z}{--650y}{--650v}\|

#651\|<br/><br/><label>Subjects--Geographic Terms: </label>\|{\\n6513
}{\\n651a}{ 651b }{ 651c }{ 651d }{ 651e
}{--651x}{--651z}{--651y}{--651v}\|

#653\|<br/><br/><label>Subjects--Index Terms: </label>\|{ 653a }\|

#654\|<br/><br/><label>Subjects--Facted Index Terms: </label>\|{\\n6543
}{\\n654a}{--654b}{--654x}{--654z}{--654y}{--654v}\|

#655\|<br/><br/><label>Index Terms--Genre/Form: </label>\|{\\n6553
}{\\n655a}{--655b}{--655x }{--655z}{--655y}{--655v}\|

#656\|<br/><br/><label>Index Terms--Occupation: </label>\|{\\n6563
}{\\n656a}{--656k}{--656x}{--656z}{--656y}{--656v}\|

#657\|<br/><br/><label>Index Terms--Function: </label>\|{\\n6573
}{\\n657a}{--657x}{--657z}{--657y}{--657v}\|

#658\|<br/><br/><label>Index Terms--Curriculum Objective:
</label>\|{\\n658a}{--658b}{--658c}{--658d}{--658v}\|

#050\|<br/><br/><label>LC Class. No.: </label>\|{ 050a }{ / 050b }\|

#082\|<br/><br/><label>Dewey Class. No.: </label>\|{ 082a }{ / 082b }\|

#080\|<br/><br/><label>Universal Decimal Class. No.: </label>\|{ 080a }{
080x }{ / 080b }\|

#070\|<br/><br/><label>National Agricultural Library Call No.:
</label>\|{ 070a }{ / 070b }\|

#060\|<br/><br/><label>National Library of Medicine Call No.:
</label>\|{ 060a }{ / 060b }\|

#074\|<br/><br/><label>GPO Item No.: </label>\|{ 074a }\|

#086\|<br/><br/><label>Gov. Doc. Class. No.: </label>\|{ 086a }\|

#088\|<br/><br/><label>Report. No.: </label>\|{ 088a }\|

`UNIMARC Default <#unimarcdefault>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#200\|<h2>Title : \|{200a}{. 200c}{ : 200e}{200d}{. 200h}{. 200i}\|</h2>

#461\|<label class="ipt">A part of : </label>\|<a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search{&q=461t&idx=ti}">{461t}</a>{N∞
461h} {v. 461v}{(461d)}<br/>\|

#200b\|<label class="ipt">Material Designation : </label>\| {200b
}\|<br/>

#101a\|<label class="ipt">Language(s): </label>\|<a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search{&q=101a&idx=ln}">{101a}</a>\|<br/>

#200f\|<label class="ipt">Authors : </label>\|<a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search{&q=200f&idx=au}">{200f
; }</a>\|<br/>

#200g\|<label class="ipt">Co-authors : </label>\|<a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search{&q=200g&idx=au}">{200g
; }</a>\|<br/>

#210a\|<br/><label class="ipt">Place of pubblication : </label>\|<a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search&idx=pl&q={210a}">{210a}</a>\|<br/>

#210c\|<label class="ipt">Publisher : </label>\|<a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search&idx=pb&q={210c}">{210c
; }</a>\|<br/>

#210d\|<label class="ipt">Date of pubblication : </label>\|{
210d}\|<br/>

#215\|<label class="ipt">Description : </label>\|{215a}{ : 215c}{ ;
215d}{ + 215e}\|<br/>

#225a\|<label class="ipt">Series :</label>\|<a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search{&q=225a&idx=se}">{225a
;}</a> \|

#225\|\|{ = 225d}{ : 225e}{. 225h}{. 225i}{ / 225f}{, 225x}{ ;
225v}\|<br/>

#686\|<label>Classification : </label>\|{ 686a }\|<br/>

#608\|<label>Form, Genre : </label>\|<a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search&idx=su&q={608a}"><img
border="0" src="/opac-tmpl/css/en/images/filefind.png" height="15"
title="Search on {608a}">{ 608a}</a>\|<br/><br/>

#200\|\|<label class="ipt">Subjects : </label><br/>\|<ul>

#600\|<label class="ipt">Person(s) </label><br/> \|<li><a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search&idx=su&q={600a}"><img
border="0" src="/opac-tmpl/css/en/images/filefind.png" height="15"
title="Search on {600a}">{ 600a}</a></li>\|<br/>

#601\|<label class="ipt">Organisation(s) </label><br/>\|<li><a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search&idx=su&q={601a}"><img
border="0" src="/opac-tmpl/css/en/images/filefind.png" height="15"
title="Search on {601a}">{ 601a}</a></li>\|<br/>

#606\|<label class="ipt">Term(s) </label><br/>\|<li><a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search&idx=su&q={606a}"><img
border="0" src="/opac-tmpl/css/en/images/filefind.png" height="15"
title="Search on {606a}">{ 606a}</a></li>\|<br/>

#607\|<label class="ipt">Place(s) </label><br/>\|<li><a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search&idx=su&q={607a}"><img
border="0" src="/opac-tmpl/css/en/images/filefind.png" height="15"
title="Search on {607a}">{ 607a}</a></li>\|<br/>

#610\|<label>Keywords</label><br/>\|<li><a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search&idx=su&q={610a}"><img
border="0" src="/opac-tmpl/css/en/images/filefind.png" height="15"
title="Search on {610a}">{ 610a}</a></li>\|

#200\|\|</ul>\|

#856\|<label class="ipt">Electronic resource : </label>\|<a
href="{856u}">click here</a> to go to the external resource<br/>

#010\|<label class="ipt">ISBN : </label>\|{010a ;}\|<br/>

#011\|<label class="ipt">ISSN : </label>\|{011a ;}\|<br/>

#200\|\|<label class="ipt">Notes : </label>\|<br/><ul>

#300\|\|<li>{300a}</li>\|

#307\|\|<li>{307a}</li>\|

#310\|\|<li>{310a}</li>\|

#326\|\|<li>{326a}</li>\|

#327\|\|<li>{327a}</li>\|

#333\|<li>Public : \|{333a}</li>\|

#200\|\|</ul>\|

#330\|\|<label class="ipt">Abstract : </label>\|<br/>

#330\|\|{330a}\|<br/>

#200\|\|<br/><h2>Items</h2>\|

#200\|<table>\|<th>Call number</th><th>Copy
note</th><th>Fonds</th><th>Genre detail</th><th>Circulation
type</th><th>Barcode</th>\|

#995\|\|<tr><td> {995k}</td><td> {995u}</td><td>
{995y}</td><td>{995e}  </td><td>
{995o}</td><td>{995f}</td></tr>\|</table>

`OPACISBD Defaults <#opacisbddefaults>`__
-----------------------------------------

Default values for the `OPACISBD <#OPACISBD>`__ preference.

`MARC <#opacisbdmarcdefault>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#100\|\|{ 100a }{ 100b }{ 100c }{ 100d }{ 110a }{ 110b }{ 110c }{ 110d
}{ 110e }{ 110f }{ 110g }{ 130a }{ 130d }{ 130f }{ 130g }{ 130h }{ 130k
}{ 130l }{ 130m }{ 130n }{ 130o }{ 130p }{ 130r }{ 130s }{ 130t
}\|<br/><br/>

#245\|\|{ 245a }{ 245b }{245f }{ 245g }{ 245k }{ 245n }{ 245p }{ 245s }{
245h }\|

#246\|\|{ : 246i }{ 246a }{ 246b }{ 246f }{ 246g }{ 246n }{ 246p }{ 246h
}\|

#242\|\|{ = 242a }{ 242b }{ 242n }{ 242p }{ 242h }\|

#245\|\|{ 245c }\|

#242\|\|{ = 242c }\|

#250\| - \|{ 250a }{ 250b }\|

#254\|, \|{ 254a }\| #255\|, \|{ 255a }{ 255b }{ 255c }{ 255d }{ 255e }{
255f }{ 255g }\| #256\|, \|{ 256a }\|

#257\|, \|{ 257a }\|

#258\|, \|{ 258a }{ 258b }\|

#260\| - \|{ 260a }{ 260b }{ 260c }\|

#300\| - \|{ 300a }{ 300b }{ 300c }{ 300d }{ 300e }{ 300f }{ 300g }\|

#306\| - \|{ 306a }\| #307\| - \|{ 307a }{ 307b }\|

#310\| - \|{ 310a }{ 310b }\|

#321\| - \|{ 321a }{ 321b }\|

#340\| - \|{ 3403 }{ 340a }{ 340b }{ 340c }{ 340d }{ 340e }{ 340f }{
340h }{ 340i }\|

#342\| - \|{ 342a }{ 342b }{ 342c }{ 342d }{ 342e }{ 342f }{ 342g }{
342h }{ 342i }{ 342j }{ 342k }{ 342l }{ 342m }{ 342n }{ 342o }{ 342p }{
342q }{ 342r }{ 342s }{ 342t }{ 342u }{ 342v }{ 342w }\|

#343\| - \|{ 343a }{ 343b }{ 343c }{ 343d }{ 343e }{ 343f }{ 343g }{
343h }{ 343i }\|

#351\| - \|{ 3513 }{ 351a }{ 351b }{ 351c }\|

#352\| - \|{ 352a }{ 352b }{ 352c }{ 352d }{ 352e }{ 352f }{ 352g }{
352i }{ 352q }\|

#362\| - \|{ 362a }{ 351z }\|

#440\| - \|{ 440a }{ 440n }{ 440p }{ 440v }{ 440x }\|. #490\| - \|{ 490a
}{ 490v }{ 490x }\|.

#800\| - \|{ 800a }{ 800b }{ 800c }{ 800d }{ 800e }{ 800f }{ 800g }{
800h }{ 800j }{ 800k }{ 800l }{ 800m }{ 800n }{ 800o }{ 800p }{ 800q }{
800r }{ 800s }{ 800t }{ 800u }{ 800v }\|.

#810\| - \|{ 810a }{ 810b }{ 810c }{ 810d }{ 810e }{ 810f }{ 810g }{
810h }{ 810k }{ 810l }{ 810m }{ 810n }{ 810o }{ 810p }{ 810r }{ 810s }{
810t }{ 810u }{ 810v }\|.

#811\| - \|{ 811a }{ 811c }{ 811d }{ 811e }{ 811f }{ 811g }{ 811h }{
811k }{ 811l }{ 811n }{ 811p }{ 811q }{ 811s }{ 811t }{ 811u }{ 811v
}\|.

#830\| - \|{ 830a }{ 830d }{ 830f }{ 830g }{ 830h }{ 830k }{ 830l }{
830m }{ 830n }{ 830o }{ 830p }{ 830r }{ 830s }{ 830t }{ 830v }\|.

#500\|<br/><br/>\|{ 5003 }{ 500a }\|

#501\|<br/><br/>\|{ 501a }\|

#502\|<br/><br/>\|{ 502a }\|

#504\|<br/><br/>\|{ 504a }\|

#505\|<br/><br/>\|{ 505a }{ 505t }{ 505r }{ 505g }{ 505u }\|

#506\|<br/><br/>\|{ 5063 }{ 506a }{ 506b }{ 506c }{ 506d }{ 506u }\|

#507\|<br/><br/>\|{ 507a }{ 507b }\| #508\|<br/><br/>\|{ 508a }{ 508a
}\|

#510\|<br/><br/>\|{ 5103 }{ 510a }{ 510x }{ 510c }{ 510b }\|

#511\|<br/><br/>\|{ 511a }\|

#513\|<br/><br/>\|{ 513a }{513b }\|

#514\|<br/><br/>\|{ 514z }{ 514a }{ 514b }{ 514c }{ 514d }{ 514e }{ 514f
}{ 514g }{ 514h }{ 514i }{ 514j }{ 514k }{ 514m }{ 514u }\|

#515\|<br/><br/>\|{ 515a }\|

#516\|<br/><br/>\|{ 516a }\|

#518\|<br/><br/>\|{ 5183 }{ 518a }\|

#520\|<br/><br/>\|{ 5203 }{ 520a }{ 520b }{ 520u }\|

#521\|<br/><br/>\|{ 5213 }{ 521a }{ 521b }\|

#522\|<br/><br/>\|{ 522a }\|

#524\|<br/><br/>\|{ 524a }\|

#525\|<br/><br/>\|{ 525a }\|

#526\|<br/><br/>\|{\\n510i }{\\n510a }{ 510b }{ 510c }{ 510d }{\\n510x
}\|

#530\|<br/><br/>\|{\\n5063 }{\\n506a }{ 506b }{ 506c }{ 506d }{\\n506u
}\|

#533\|<br/><br/>\|{\\n5333 }{\\n533a }{\\n533b }{\\n533c }{\\n533d
}{\\n533e }{\\n533f }{\\n533m }{\\n533n }\|

#534\|<br/><br/>\|{\\n533p }{\\n533a }{\\n533b }{\\n533c }{\\n533d
}{\\n533e }{\\n533f }{\\n533m }{\\n533n }{\\n533t }{\\n533x }{\\n533z
}\|

#535\|<br/><br/>\|{\\n5353 }{\\n535a }{\\n535b }{\\n535c }{\\n535d }\|

#538\|<br/><br/>\|{\\n5383 }{\\n538a }{\\n538i }{\\n538u }\|

#540\|<br/><br/>\|{\\n5403 }{\\n540a }{ 540b }{ 540c }{ 540d }{\\n520u
}\|

#544\|<br/><br/>\|{\\n5443 }{\\n544a }{\\n544b }{\\n544c }{\\n544d
}{\\n544e }{\\n544n }\|

#545\|<br/><br/>\|{\\n545a }{ 545b }{\\n545u }\|
#546\|<br/><br/>\|{\\n5463 }{\\n546a }{ 546b }\|

#547\|<br/><br/>\|{\\n547a }\| #550\|<br/><br/>\|{ 550a }\|

#552\|<br/><br/>\|{ 552z }{ 552a }{ 552b }{ 552c }{ 552d }{ 552e }{ 552f
}{ 552g }{ 552h }{ 552i }{ 552j }{ 552k }{ 552l }{ 552m }{ 552n }{ 562o
}{ 552p }{ 552u }\|

#555\|<br/><br/>\|{ 5553 }{ 555a }{ 555b }{ 555c }{ 555d }{ 555u }\|

#556\|<br/><br/>\|{ 556a }{ 506z }\| #563\|<br/><br/>\|{ 5633 }{ 563a }{
563u }\|

#565\|<br/><br/>\|{ 5653 }{ 565a }{ 565b }{ 565c }{ 565d }{ 565e }\|

#567\|<br/><br/>\|{ 567a }\|

#580\|<br/><br/>\|{ 580a }\|

#581\|<br/><br/>\|{ 5633 }{ 581a }{ 581z }\|

#584\|<br/><br/>\|{ 5843 }{ 584a }{ 584b }\|

#585\|<br/><br/>\|{ 5853 }{ 585a }\|

#586\|<br/><br/>\|{ 5863 }{ 586a }\|

#020\|<br/><br/><label>ISBN: </label>\|{ 020a }{ 020c }\|

#022\|<br/><br/><label>ISSN: </label>\|{ 022a }\|

#222\| = \|{ 222a }{ 222b }\|

#210\| = \|{ 210a }{ 210b }\|

#024\|<br/><br/><label>Standard No.: </label>\|{ 024a }{ 024c }{ 024d }{
0242 }\|

#027\|<br/><br/><label>Standard Tech. Report. No.: </label>\|{ 027a }\|

#028\|<br/><br/><label>Publisher. No.: </label>\|{ 028a }{ 028b }\|

#013\|<br/><br/><label>Patent No.: </label>\|{ 013a }{ 013b }{ 013c }{
013d }{ 013e }{ 013f }\|

#030\|<br/><br/><label>CODEN: </label>\|{ 030a }\|

#037\|<br/><br/><label>Source: </label>\|{ 037a }{ 037b }{ 037c }{ 037f
}{ 037g }{ 037n }\|

#010\|<br/><br/><label>LCCN: </label>\|{ 010a }\|

#015\|<br/><br/><label>Nat. Bib. No.: </label>\|{ 015a }{ 0152 }\|

#016\|<br/><br/><label>Nat. Bib. Agency Control No.: </label>\|{ 016a }{
0162 }\|

#600\|<br/><br/><label>Subjects--Personal Names: </label>\|{\\n6003
}{\\n600a}{ 600b }{ 600c }{ 600d }{ 600e }{ 600f }{ 600g }{ 600h
}{--600k}{ 600l }{ 600m }{ 600n }{ 600o }{--600p}{ 600r }{ 600s }{ 600t
}{ 600u }{--600x}{--600z}{--600y}{--600v}\|

#610\|<br/><br/><label>Subjects--Corporate Names: </label>\|{\\n6103
}{\\n610a}{ 610b }{ 610c }{ 610d }{ 610e }{ 610f }{ 610g }{ 610h
}{--610k}{ 610l }{ 610m }{ 610n }{ 610o }{--610p}{ 610r }{ 610s }{ 610t
}{ 610u }{--610x}{--610z}{--610y}{--610v}\|

#611\|<br/><br/><label>Subjects--Meeting Names: </label>\|{\\n6113
}{\\n611a}{ 611b }{ 611c }{ 611d }{ 611e }{ 611f }{ 611g }{ 611h
}{--611k}{ 611l }{ 611m }{ 611n }{ 611o }{--611p}{ 611r }{ 611s }{ 611t
}{ 611u }{--611x}{--611z}{--611y}{--611v}\|

#630\|<br/><br/><label>Subjects--Uniform Titles: </label>\|{\\n630a}{
630b }{ 630c }{ 630d }{ 630e }{ 630f }{ 630g }{ 630h }{--630k }{ 630l }{
630m }{ 630n }{ 630o }{--630p}{ 630r }{ 630s }{ 630t
}{--630x}{--630z}{--630y}{--630v}\|

#648\|<br/><br/><label>Subjects--Chronological Terms: </label>\|{\\n6483
}{\\n648a }{--648x}{--648z}{--648y}{--648v}\|
#650\|<br/><br/><label>Subjects--Topical Terms: </label>\|{\\n6503
}{\\n650a}{ 650b }{ 650c }{ 650d }{ 650e
}{--650x}{--650z}{--650y}{--650v}\|

#651\|<br/><br/><label>Subjects--Geographic Terms: </label>\|{\\n6513
}{\\n651a}{ 651b }{ 651c }{ 651d }{ 651e
}{--651x}{--651z}{--651y}{--651v}\|

#653\|<br/><br/><label>Subjects--Index Terms: </label>\|{ 653a }\|

#654\|<br/><br/><label>Subjects--Facted Index Terms: </label>\|{\\n6543
}{\\n654a}{--654b}{--654x}{--654z}{--654y}{--654v}\|

#655\|<br/><br/><label>Index Terms--Genre/Form: </label>\|{\\n6553
}{\\n655a}{--655b}{--655x }{--655z}{--655y}{--655v}\|

#656\|<br/><br/><label>Index Terms--Occupation: </label>\|{\\n6563
}{\\n656a}{--656k}{--656x}{--656z}{--656y}{--656v}\|

#657\|<br/><br/><label>Index Terms--Function: </label>\|{\\n6573
}{\\n657a}{--657x}{--657z}{--657y}{--657v}\|

#658\|<br/><br/><label>Index Terms--Curriculum Objective:
</label>\|{\\n658a}{--658b}{--658c}{--658d}{--658v}\|

#050\|<br/><br/><label>LC Class. No.: </label>\|{ 050a }{ / 050b }\|

#082\|<br/><br/><label>Dewey Class. No.: </label>\|{ 082a }{ / 082b }\|

#080\|<br/><br/><label>Universal Decimal Class. No.: </label>\|{ 080a }{
080x }{ / 080b }\|

#070\|<br/><br/><label>National Agricultural Library Call No.:
</label>\|{ 070a }{ / 070b }\|

#060\|<br/><br/><label>National Library of Medicine Call No.:
</label>\|{ 060a }{ / 060b }\|

#074\|<br/><br/><label>GPO Item No.: </label>\|{ 074a }\|

#086\|<br/><br/><label>Gov. Doc. Class. No.: </label>\|{ 086a }\|

#088\|<br/><br/><label>Report. No.: </label>\|{ 088a }\|

Configuring Receipt Printers
============================

The following instructions are for specific receipt printers, but can
probably be used to help with setup of other brands as well.

`For Epson TM-T88III (3) & TM-T88IV (4) Printers <#epsonprinters>`__
--------------------------------------------------------------------

`In the Print Driver <#epsonprintdriver>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

For these instructions, we are using version 5,0,3,0 of the Epson
TM-T88III print driver; the EPSON TM-T88IV version is ReceiptE4.
Register at the `EpsonExpert Technical Resource Center
website <https://www.epsonexpert.com/login>`__ to gain access to the
drivers; go to Technical Resources, then choose the printer model from
the Printers drop-down list.

Click Start > Printers and Faxes > Right click the receipt printer >
Properties:

-  Advanced Tab, click Printing Defaults button

-  Layout Tab: Paper size: Roll Paper 80 x 297mm

-  TM-T88III: Layout Tab: Check Reduce Printing and Fit to Printable
   Width

-  TM-T88IV: Check Reduced Size Print; Click OK on the popup window that
   appears. Fit to Printable Width should be automatically selected.

-  OK your way out of there.

`In Firefox <#epsonfirefox>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Under File > Page Setup:

-  Shrink to fit page on Format & Options tab

-  0,0,0,0 for Margins on Margins & Header/Footer Tab. This makes the
   receipts use all available space on the paper roll.

-  Set all Headers/Footers to -blank-. This removes all of the gunk you
   might normally find on a print from Firefox, such as the URL, number
   of pages, etc.

-  Click OK

Set the default printer settings in Firefox so you don't see a "Print"
dialog:

-  Go to File > Print

-  Set the Printer to the receipt printer.

-  Click the Advanced (or Properties) button

-  Layout Tab: Paper size: Roll Paper 80 x 297mm

-  TM-T88III: Layout Tab: Check Reduce Printing and Fit to Printable
   Width

-  TM-T88IV: Check Reduced Size Print; click OK on the popup window that
   appears. Fit to Printable Width should be automatically selected.

-  OK your way out, go ahead and print whatever page you are on.

-  Type about:config, in the address bar. Click "I'll be careful, I
   promise!" on the warning message.

-  Type, print.always in Filter.

-  Look for print.always\_print\_silent.

   -  If the preference is there then set the value to true.

-  If the preference is not there (and it shouldn't be in most browsers)
   you have to add the preference.

   -  Right click the preference area and select New > Boolean

   -  Type print.always\_print\_silent in the dialog box and set the
      value to True. This sets the print settings in Firefox to always
      use the same settings and print without showing a dialog box.

    **Warning**

    Setting the print.always\_print\_silent setting in about:config
    DISABLES the ability to choose a printer in Firefox.

`For Epson TM-T88II (2) Printers <#epson2>`__
---------------------------------------------

Register at the `EpsonExpert Technical Resource Center
website <https://www.epsonexpert.com/login>`__ to gain access to the
drivers; go to Technical Resources, then choose the printer model from
the Printers drop-down list.

`In Firefox <#epson2firefox>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Under File > Page Setup:

-  Shrink to fit page on Format & Options tab

-  0,0,0,0 for Margins on Margins & Header/Footer Tab. This makes the
   receipts use all available space on the paper roll.

-  Set all Headers/Footers to -blank-. This removes all of the gunk you
   might normally find on a print from Firefox, such as the URL, number
   of pages, etc.

-  Click OK

Set the default printer settings in Firefox so you don't see a "Print"
dialog:

-  Go to File > Print

-  Set the Printer to the receipt printer.

-  Print whatever page you are on.

-  Type about:config, in the address bar. Click "I'll be careful, I
   promise!" on the warning message.

-  Type, print.always in Filter.

-  Look for, print.always\_print\_silent.

   -  If the preference is there then set the value to true.

-  If the preference is not there (and it shouldn't be in most browsers)
   you have to add the preference.

   -  Right click the preference area and select New > Boolean

   -  Type, print.always\_print\_silent in the dialog box and set the
      value to True. This sets the print settings in Firefox to always
      use the same settings and print without showing a dialog box.

    **Warning**

    Setting the print.always\_print\_silent setting in about:config
    DISABLES the ability to choose a printer in Firefox.

`For Star SP542 Printers <#starprinter>`__
------------------------------------------

`Installing the Printer <#installstarprinter>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

While the following comments are based on the Star SP542 receipt
printer, they probably apply to all printers in the SP5xx series.

The Star SP542 receipt printer works well with Koha and **Firefox on
Windows XP SP3**. This printer, with either the parallel or USB
interface, is fairly easy to install and configure. You will need the
following executable file which is available from numerous places on the
Internet:

linemode\_2k-xp\_20030205.exe

This executable actually does all of the installation; you will not need
to use the Microsoft Windows "Add Printer" program. We recommend that
when installing, the option for the software monitor not be selected; we
have experienced significant pauses and delays in printing with it.
Instead, simply choose to install the receipt printer without the
monitor.

Additionally, the install program may not put the printer on the correct
port, especially if using the USB interface. This is easily corrected by
going to "Start -> Printers and Faxes -> Properties for the SP542
printer -> Ports", then check the appropriate port.

A reboot may be required, even if not indicated by the installation
software or the operating system.

**Windows 7** users should refer to this page:
http://www.starmicronics.com/supports/win7.aspx.

`Configuring Firefox to Print to Receipt Printer <#firefoxreceipt>`__
---------------------------------------------------------------------

-  Open File > Page Setup

-  Make all the headers and footers blank

-  Set the margins to 0 (zero)

-  In the address bar of Firefox, type about:config

-  Search for print.always\_print\_silent and double click it

-  Change it from false to true

   -  This lets you skip the Print pop up box that comes up, as well as
      skipping the step where you have to click OK, automatically
      printing the right sized slip.

-  If print.always\_print\_silent does not come up

   -  Right click on a blank area of the preference window

   -  Select new > Boolean

   -  Enter "print.always\_print\_silent" as the name (without quotes)

   -  Click OK

   -  Select true for the value

-  You may also want to check what is listed for print.print\_printer

   -  You may have to choose Generic/Text Only (or whatever your receipt
      printer might be named)

Notice & Slips Guides
=====================

`Field Guide for Notices & Slips <#noticesfieldguide>`__
--------------------------------------------------------

This guide will break down the notices and slips information in 3 ways.
First it will tell you what file generates the notice, then how you will
present the item info in that notice and finally if the notice can be
branch specific or not.

+---------------------+----------------------------+---------------------------------------+--------------------------+
| Letter Code         | Used In                    | Detail tag                            | Can be branch specific   |
+=====================+============================+=======================================+==========================+
| DUE                 | advance\_notices.pl        | <<items.content>>                     | No                       |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| DUEDGST             | advance\_notices.pl        | <<items.content>>                     | No                       |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| PREDUE              | advance\_notices.pl        | <<items.content>>                     | No                       |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| PREDUEDGST          | advance\_notices.pl        | <<items.content>>                     | No                       |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| ODUE\*              | overdue\_notices.pl        | <<items.content>> or <item> </item>   | Yes                      |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| CHECKOUT            | C4/Circulation.pm          | N/A                                   | Yes                      |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| RENEWAL             | C4/Circulation.pm          | N/A                                   | Yes                      |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| TRANSFERSLIP        | C4/Circulation.pm          | N/A                                   | Yes                      |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| ISSUESLIP           | C4/Members.pm              | <checkedout> </checkedout>            | Yes                      |
|                     |                            |                                       |                          |
|                     |                            | <overdue> </overdue>                  |                          |
|                     |                            |                                       |                          |
|                     |                            | <news> </news>                        |                          |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| ISSUEQSLIP          | C4/Members.pm              | <checkedout> </checkedout>            | Yes                      |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| HOLDPLACED          | C4/Reserves.pm             | N/A                                   | Yes                      |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| RESERVESLIP         | C4/Reserves.pm             | N/A                                   | Yes                      |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| ASKED               | C4/Suggestions.pm          | N/A                                   | Yes                      |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| CHECKED             | C4/Suggestions.pm          | N/A                                   | Yes                      |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| ACCEPTED            | C4/Suggestions.pm          | N/A                                   | Yes                      |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| REJECTED            | C4/Suggestions.pm          | N/A                                   | Yes                      |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| OPAC\_REG\_VERIFY   | opac/opac-memberentry.pl   | N/A                                   | No                       |
+---------------------+----------------------------+---------------------------------------+--------------------------+

Example Notice
==============

Nicole Engard

410 Library Rd.

Philadelphia, PA 19107

Dear Nicole Engard (23529000035726),

According to our records, at the time of this notice, you have items
that are overdue. Please return or renew them as soon as possible to
avoid increasing late fines.

If you have registered a password with the library, you may use it with
your library card number to renew online.

If you believe you have returned the items below please call at and
library staff will be happy to help resolve the issue.

The following item(s) are currently overdue:

07/08/2008 Creating drug-free schools and communities : 502326000054
Fox, C. Lynn.

06/27/2008 Eating fractions / 502326000022 McMillan, Bruce.

Sincerely, Library Staff

Sample Serials
==============

`Reader's Digest (0034-0375) <#readersdigestsample>`__
------------------------------------------------------

-  Published 12 times a year (monthly)

-  The Volume number changes every 6 months and the numbers continues on
   (requires an advanced pattern).

   Sample Reader's Digest Subscription
   |image1069|

`People Weekly (1076-0091) <#peoplesample>`__
---------------------------------------------

-  Published weekly

   -  The website says "on Saturday except the first week of August,
      Thanksgiving week, the first and last weeks of the year" but this
      does not match the pattern for 2007 or 2008

-  In the Jul-Dec there are 26 issues

-  In the Jan-Jun there are 25 issues (no issue for the first week of
   January)

Since the irregularity on the first # 26 does not skip a week, this
would be set up as to roll over on issue 25. The 26th issue in the
second half of the year would have to be received as a supplemental.

The irregularity check will complain that 52 issues were expected, but
25 entered. The current irregularity check can only check that the first
position of the numbering pattern matches the expected issue count of
the periodicity. But we do need to trigger the rollover on the volume,
so we need to define the last two weeks of the year as irregularities.
So we receive 50 issues the first 50 weeks, then one supplemental issue
in week 51, which we have to define the enumeration for, then the next
predicted issue will be the following year's first week.

`Et-Mol <#hebrewserialsample>`__
--------------------------------

This journal is published with the following rules:

-  6 issues a year (every 2 months)

-  year changes every 6 issues

-  we start in 2011

-  the issue number goes up indefinitely

-  starting from issue 215

The planning would look like this:

Sample for this Hebrew Journal
|image1070|

`Backpacker (0277-867X) <#backpackerserial>`__
----------------------------------------------

Published 9 times a year irregularly. The issues continues while the
volume and number rolls over every 9 issues. If you're holding Volume
41, Number 3, Issue 302 in your hand the prediction would look like
this:

Backpacker numbering pattern
|image1071|

And the received issues would number like this:

v. 41, no. 3, iss. 302  

v. 41, no. 4, iss. 303

v. 41, no. 5, iss. 304

v. 41, no. 6, iss. 305

v. 41, no. 7, iss. 306

v. 41, no. 8, iss. 307

v. 41, no. 9, iss. 308

v. 42, no. 1, iss. 309

v. 42, no. 2, iss. 310

v. 42, no. 3, iss. 311

v. 42, no. 4, iss. 312

`Keats-Shelley Journal (0453-4387) <#keatsserial>`__
----------------------------------------------------

This journal is published once per year in July.  The numbering follows
this pattern:  

-  Vol. 61 2013

-  Vol. 62 2014

-  Vol. 63 2015

Setup should look like this (if you're starting in July 2014):

Serial planning
|image1072|

`Computers in Libraries (1041-7915) <#cilserial>`__
---------------------------------------------------

Computers in Libraries is published ten times per year (monthly with
January/February and July/August combined issues).

Subscription details
|image1073|

Serial Planning
|image1074|

Received details
|image1075|

Sample List & Cart Emails
=========================

`Example Email from List <#examplelistemail>`__
-----------------------------------------------

Below is an example of an email from a list in Koha.

::

    Hi,

    Here is your list called If You Like Jodi Picoult, sent from our online catalog.

    Please note that the attached file is a MARC bibliographic records file
    which can be imported into a Personal Bibliographic Software like EndNote,
    Reference Manager or ProCite.
    ---------------------------------------------

    Home safe : a novel /

    by Berg, Elizabeth.

    Published by: Random House,, 260 p. ;, 25 cm.
    Copyright year: 2009
    LCCN:   2008049247
    In the online catalog:
        http://MYCATALOG/cgi-bin/koha/opac-detail.pl?biblionumber=12113
    Items :
        North Branch FIC (FIC Ber) TVSN500088894O
        Main Library FIC (FIC Boh) TVSN5000921548
        South Branch FIC (FIC Boh) TVSN500092156A
        West Branch FIC (FIC Boh) TVSN5000921559

    ---------------------------------------------

    Half a heart /

    by Brown, Rosellen.

    Published by: Farrar, Straus, and Giroux,, 402 p. ;, 24 cm.
    Copyright year: 2000
    LCCN:    00022926
    In the online catalog:
        http://MYCATALOG/cgi-bin/koha/opac-detail.pl?biblionumber=12501
    Items :
        East Branch  (813/.54)
        South Branch FIC (FIC Bro) TVSN5000451333

`Example Email from Cart <#examplecartemail>`__
-----------------------------------------------

Below is a sample of what an email from the Cart in Koha will look like:

::

    Hi,

       Joaquin D'Planque sent you a cart from our online catalog.

       Please note that the attached file is a MARC bibliographic records
       file which can be imported into personal bibliographic software like
       EndNote, Reference Manager or ProCite.

       ---------------------------------------------------------------------


         1.  Book /
           Author(s): Brookfield, Karen. ;
           Published by: Knopf : | Distributed by Random House, , 63 p. : ,
           29 cm.
           Copyright year: 1993
           Notes : Includes index.
           LCCN: 93018833 /AC

           In online catalog:
           http://MYCATALOG/cgi-bin/koha/opac-detail.pl?biblionumber=31644

           Items:

             *  East Branch (JNF 002 Bro) TVSN500017618A

           -----------------------------------------------------------------

         2.  The 1965 World book year book :

           Published by: Field Enterprises Educational Corp., , 628 p. : , 26
           cm.
           Copyright year: 1965
           Notes : Includes index. | Spine title: Year book, 1965. | Cover
           title: The World book year book, 1965.
           URL:
           http://www.archive.org/details/1965worldbookyea00chic%20%7C%20http://www.openlibrary.org/books/OL24199089M

           In online catalog:
           http://MYCATALOG/cgi-bin/koha/opac-detail.pl?biblionumber=88666

           -----------------------------------------------------------------

Using Koha as a Content Management System (CMS)
===============================================

`Setup <#kohacmssetup>`__
-------------------------

These are instructions for taking a default install of Koha and allowing
it to function as a little content management system. This will allow a
library to publish an arbitrary number of pages based on a template.
This example uses the template for the main opac page, but you could
just as well use any template you wish with a bit more editing. This may
be appropriate if you have a small library, want to allow librarians to
easily add pages, and do not want to support a complete CMS.

-  Copy /usr/share/koha/opac/cgi-bin/opac/opac-main.pl to
   /usr/share/koha/opac/cgi-bin/opac/pages.pl (in the same directory)

-  Edit pages.pl in an editor

-  At approximately line 33 change this code:

   ::

       template_name  => "opac-main.tmpl",

-  To this code:

   ::

       template_name  => "pages.tmpl",

-  At approximately line 62 after this code:

   ::

       $template->param(
                  koha_news       => $all_koha_news,
                  koha_news_count => $koha_news_count,
                  display_daily_quote => C4::Context->preference('QuoteOfTheDay'),
                  daily_quote         => $quote,
                  );

-  Add these lines:

   ::

               my $page = "page_" . $input->param('p');          # go for "p" value in URL and do the concatenation
               my $preference = C4::Context->preference($page);  # Go for preference
               $template->{VARS}->{'page_test'} = $preference;   # pass variable to template pages.tt

-  Note pages.pl file must have Webserver user execution permissions,
   you can use `chmod <http://en.wikipedia.org/wiki/Chmod>`__ command if
   you are actually logged in as such user:

   ::

               $chmod 755 pages.pl

-  In the browser go to Home > Administration > System Preferences >
   Local Use and add a New Preference called "page\_test"

-  Fill it out as so

   -  Explanation: test page for pages tiny cms

   -  Variable: page\_test

   -  Value: Lorem ipsum

   -  Click the TextArea link (or enter "TextArea" into the input field
      below it)

   -  variable options (last field): 80\|50

-  In a browser go to http://youraddress/cgi-bin/koha/pages.pl?p=test
   The page should come up with the words "Lorem ipsum" in the main
   content area of the page. (replace "youraddress" with localhost,
   127.0.0.1, or your domain name depending on how you have Apache set
   up.)

-  To add more pages simply create a system preference where the title
   begins with "page\_" followed by any arbitrary letters. You can add
   any markup you want as the value of the field. Reference the new page
   by changing the value of the "p" parameter in the URL.

To learn more visit the Koha wiki page on this topic:
http://wiki.koha-community.org/wiki/Koha_as_a_CMS

`Editing the pages template <#kohacmstmpl>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The file to create / edit for the pages template will depend on your
`opacthemes <#opacthemes>`__ system preference setting

`Editing 'bootstrap' theme template (current) <#kohacmstmplboot>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  Copy
   /usr/share/koha/opac/htdocs/opac-tmpl/bootstrap/en/modules/opac-main.tt
   to
   /usr/share/koha/opac/htdocs/opac-tmpl/bootstrap/en/modules/pages.tt

-  Edit
   /usr/share/koha/opac/htdocs/opac-tmpl/bootstrap/en/modules/pages.tt

-  At approximately line 61, change this:

   ::

               [% IF ( OpacMainUserBlock ) %]<div id="opacmainuserblock">[% OpacMainUserBlock %]</div>[% END %]

-  To this:

   ::

               [% IF ( page_test ) %]<div id="opacmainuserblock">[% page_test %]</div>[% END %]

Remark: You may wish to disable your News block of these CMS style pages
e.g. when you do not want it displayed on the CMS style pages or where
the News block is long enough that it actually makes the 'page\_test'
include scroll outside the default viewport dimensions. In that case,
remove the following code from your pages.tt template.

::

                      [% IF ( koha_news_count ) %]
                          <div id="news">
                          <table class="table table-bordered">
                          [% FOREACH koha_new IN koha_news %]
                            <thead><tr><th>[% koha_new.title %]</th></tr></thead>
                            <tbody><tr><td><p>[% koha_new.new %]</p>
                            <p class="newsfooter"><i>(published on [% koha_new.newdate %])</i></p></td></tr></tbody>
                          [% END %]
                          </table>
                          </div>
                         [% END %]


`Troubleshooting <#kohacmstrouble>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you have problems check file permissions on pages.pl and pages.tmpl.
They should have the same user and group as other Koha files like
opac-main.pl.

`Bonus Points <#kohacmsbonus>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Instead of using the address
http://youraddress/cgi-bin/koha/pages.pl?p=test you can shorten it to
http://youraddress/pages.pl?p=test Just open up
/etc/koha/koha-httpd.conf and add the follow at about line 13:

::

    ScriptAlias /pages.pl "/usr/share/koha/opac/cgi-bin/opac/pages.pl"

Then restart Apache.

`Usage <#kohacmsusage>`__
-------------------------

After setting up Koha as a CMS you can create new pages following these
instructions:

`Adding Pages <#kohacmspages>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To add a new page you need to add a system preference under Local Use.

-  Get there: More > Administration > Global System Preferences > Local
   Use

-  Click 'New Preference'

-  Enter in a description in the Explanation field

-  Enter a value that starts with 'page\_' in the Variable field

-  Enter starting HTML in the Value field

   Add a new preference
   |image1076|

-  Set the Variable Type to Textarea

-  Set the Variable options to something like 20\|20 for 20 rows and 20
   columns

   Settings for the new preference
   |image1077|

`Viewing your page <#kohacmsview>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can view your new page at
http://YOUR-OPAC/cgi-bin/koha/pages.pl?p=PAGENAME where PAGENAME is the
part you entered after 'page\_' in the Variable field.

`Example <#kohacmsexpage>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This process can be used to create recommended reading lists within
Koha. So once the code changes have been made per the instructions on
'Koha as a CMS' you go through the 'Adding a New Page' instructions
above to great a page for 'Recommended Reading Lists'

Create page by modifying a system preference
|image1078|

Next we need to create pages for our various classes (or categories). To
do this, return to the 'Adding a New Page' section and create a
preference for the first class.

Add a new sys pref for another page
|image1079|

Next you'll want to link your first page to your new second page, go to
the page\_recommend preference and click 'Edit.' Now you want to edit
the HTML to include a link to your newest page:

Edit original preference to add new page
|image1080|

`Live Examples <#examplecms>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  The Crawford Library at Dallas Christian College is using this method
   for their recommended reading lists: http://opac.dallas.edu/

Resetting the Koha Database
===========================

These notes on how to reset the database for Koha were derived from the
following email thread:
http://lists.koha-community.org/pipermail/koha-devel/2009-January/008939.html
and http://lists.katipo.co.nz/public/koha/2014-June/039701.html

Resetting the database may be useful if you install Koha with the sample
data, and then wish to use real data without reinstalling the software.

`Delete sample data from Tables <#deletetables>`__
--------------------------------------------------

Use your preferred MySQL client to
`delete <http://dev.mysql.com/doc/refman/5.5/en/delete.html>`__ the
following tables:

-  bibio

-  biblioitems

-  items

-  auth\_header

-  sessions

-  zebraqueue

You may need to disable foreign key checks to delete data from same
tables. For instructions follow this thread:
https://lists.katipo.co.nz/pipermail/koha/2013-July/036853.html.

`Reset the Zebra Index <#resetzebra>`__
---------------------------------------

Run the following commands to reset the authorities and biblios Zebra
indices.

::

    $ zebraidx -c /etc/koha/zebradb/zebra-authorities-dom.cfg -g iso2709 -d authorities init
    $ zebraidx -c /etc/koha/zebradb/zebra-biblios.cfg -g iso2709 -d biblios init

If you are running a package install then you'll want to run the
following commands to reset the authorities and biblios Zebra indices
instead:

::

    $ sudo zebraidx -c /etc/koha/sites/YOURLIBRARY/zebra-authorities-dom.cfg  -g iso2709 -d authorities init
    $ sudo zebraidx -c /etc/koha/sites/YOURLIBRARY/zebra-biblios.cfg  -g iso2709 -d biblios init

Replacing YOURLIBRARY with your Koha installation name.

Important Links
===============

`Koha Related <#koharelatedlinks>`__
------------------------------------

-  Report Koha Bugs - http://bugs.koha-community.org

-  Koha Versioning Control - http://git.koha-community.org/

-  Database Structure - http://schema.koha-community.org

-  Koha Community Statistics - http://hea.koha-community.org

-  Koha as a CMS - http://wiki.koha-community.org/wiki/Koha_as_a_CMS

-  Kyles's Koha Tools - http://kylehall.info/index.php/projects/koha/

-  Koha Bibliography - http://www.zotero.org/groups/koha

-  Koha Shared Links - http://groups.diigo.com/group/everything-koha

`Circulation Related <#circrelatedlinks>`__
-------------------------------------------

-  Koha Desktop Offline Circulation:
   https://github.com/bywatersolutions/koha-offline-circulation/releases

-  Koha Firefox Offline Circulation:
   https://addons.mozilla.org/en-US/firefox/addon/koct/

`Cataloging Related <#catalogrelatedlinks>`__
---------------------------------------------

-  Koha MARC Tutorials - http://www.pakban.net/brooke/

-  IRSpy Open Z39.50 Server Search - http://irspy.indexdata.com/

-  Z39.50 Server List -
   http://staff.library.mun.ca/staff/toolbox/z3950hosts.htm

-  Open Koha Z39.50 Targets -
   http://wiki.koha-community.org/wiki/Koha_Open_Z39.50_Sources

-  Library of Congress Authorities - http://authorities.loc.gov/

-  MARC Country Codes - http://www.loc.gov/marc/countries/

-  Search the MARC Code List for Organizations -
   http://www.loc.gov/marc/organizations/org-search.php

-  Search for Canadian MARC Codes -
   http://www.collectionscanada.gc.ca/illcandir-bin/illsear/l=0/c=1

-  Z39.50 Bib-1 Attribute -
   http://www.loc.gov/z3950/agency/defns/bib1.html

`Enhanced Content Related <#enhancedcontentlinks>`__
----------------------------------------------------

-  Amazon Associates -
   `https://affiliate-program.amazon.com <https://affiliate-program.amazon.com/>`__

-  Amazon Web Services - http://aws.amazon.com

-  WorldCat Affiliate Tools -
   http://www.worldcat.org/wcpa/do/AffiliateUserServices?method=initSelfRegister

-  XISBN - http://www.worldcat.org/affiliate/webservices/xisbn/app.jsp

-  LibraryThing for Libraries - http://www.librarything.com/forlibraries

`Design Related <#opaclinks>`__
-------------------------------

-  JQuery Library - http://wiki.koha-community.org/wiki/JQuery_Library

-  HTML & CSS Library -
   http://wiki.koha-community.org/wiki/HTML_%26_CSS_Library

-  Owen Leonard's Koha Blog - http://www.myacpl.org/koha

`Reports Related <#reportlinks>`__
----------------------------------

-  SQL Reports Library -
   http://wiki.koha-community.org/wiki/SQL_Reports_Library

-  Database Schema - http://schema.koha-community.org

-  Sample reports from NEKLS -
   http://www.nexpresslibrary.org/training/reports-training/

`Installation Guides <#installlinks>`__
---------------------------------------

-  Installing Koha 3 on Ubuntu -
   http://www.blazingmoon.org/guides/k3-on-u810-1.html

-  Koha on Debian installation documentation -
   http://openlib.org/home/krichel/courses/lis508/doc/koha_installation_overview.html

-  Koha 3.2 on Debian Squeeze -
   http://wiki.koha-community.org/wiki/Koha_3.2_on_Debian_Squeeze

`Misc <#misclinks>`__
---------------------

-  Zotero - http://zotero.org

-  SOPAC - `http://thesocialopac.net <http://thesocialopac.net/>`__

Koha XSLT Item Types
====================

When you have any of the XSLT system preferences
(`OPACXSLTDetailsDisplay <#OPACXSLTDetailsDisplay>`__,
`OPACXSLTResultsDisplay <#OPACXSLTResultsDisplay>`__,
`XSLTDetailsDisplay <#XSLTDetailsDisplay>`__, and/or
`XSLTResultsDisplay <#XSLTResultsDisplay>`__) along with the
`DisplayOPACiconsXSLT <#DisplayOPACiconsXSLT>`__ and
`DisplayIconsXSLT <#DisplayIconsXSLT>`__ preferences turned on you will
see item type icons on the related screen.

    **Important**

    These images are coming from values found in your leader, if your
    leader is not cataloged properly it might be best to turn off the
    `DisplayOPACiconsXSLT <#DisplayOPACiconsXSLT>`__ preference (which
    can be done while leaving the other XSLT preferences turned on).

Book image
|image1081|

-  Book [BK]

   -  leader6 = a (and one of the leader7 values below)

      -  leader7 = a

      -  leader7 = c

      -  leader7 = d

      -  leader7 = m

   -  leader6 = t

Computer Image
|image1082|

-  Computer File [CF]

   -  leader6 = m

Continuing Resource Image
|image1083|

-  Continuing Resource [CR]

   -  leader7 = b

   -  leader7 = i

   -  leader7 = s

Map Image
|image1084|

-  Map [MP]

   -  leader6 = e

   -  leader6 = f

Mixed Materials Image
|image1085|

-  Mixed [MX]

   -  leader6 = p

Sound Image
|image1086|

-  Sound [MU]

   -  leader6 = c

   -  leader6 = d

   -  leader6 = i

   -  leader6 = j

Visual Material Image
|image1087|

-  Visual Material [VM]

   -  leader6 = g

   -  leader6 = k

   -  leader6 = r

Kit Image
|image1088|

-  Kit

   -  leader6 = o

MarcEdit
========

Many libraries like to use MarcEdit for modifications or data cleanup.
If you'd like to do this you will need to download it at:
http://marcedit.reeset.net/

    **Important**

    Many of the actions described in this chapter can be done in Koha
    using `Marc Modification Templates <#marcmodtemplates>`__, but this
    section is here for those who are used to MarcEdit.

`Adding a prefix to call numbers <#marceditprefix>`__
-----------------------------------------------------

When bringing data into Koha, you may want to first clean it up. One
common action among Koha users is to add a prefix to the call number.

-  Open MarcEdit

   MarcEdit
   |image1089|

-  Click 'MarcEditor'

-  Go to Tools > Edit Subfield Data

   Edit subfield data
   |image1090|

-  To prepend data the special character is: ^b  To simply prepend data
   to the beginning of a subfield, add ^b to the Field Data: textbox and
   the data to be appended in the Replace

   Prepend data to a field
   |image1091|

   -  To prepend data to the beginning of the subfield while replacing a
      text string, add ^b[string to replace] to the Field Data textbox
      and the data to be appended in the Replace With textbox.

`Importing Excel data into Koha <#marceditexcel>`__
---------------------------------------------------

Suppose you have records of your library in excel data sheet format and
want them to import into Koha. But how will you do this? Koha will not
let you import excel records directly. Well here is a very simple
solution for you which will let you import your excel records in Koha
easily. First, we will convert excel file into Marc file and then will
import it into Koha.

Follow the given steps to import your excel records into Koha

`Converting from Excel format into .mrk format <#convertexcel>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

First, we will convert excel format into .mrk format. For this we will
use MarcEdit. You can download it from http://marcedit.reeset.net/

Now open it and select Add-ins-->Delimited Text Translator.

Delimited Text Translator
|image1092|

Click Next when the following window appears.

Delimited Text Translator
|image1093|

Browse for your excel file.

Delimited Text Translator
|image1094|

Locate your excel file by choosing the format Excel File(\*.xls).

Delimited Text Translator
|image1095|

Similarly, fill all the other entries such as Output File, Excel Sheet
Name and check UTF-8 Encoded (if required) and Click Next.

Delimited Text Translator
|image1096|

Now you will be prompted for mapping the fields to recognise the fields
by standard marc format.

Suppose for Field 0 that is first column I entered Map to: 022$a( Valid
ISSN for the continuing resource) and then click on Apply.

Delimited Text Translator
|image1097|

    **Note**

    You can customize Indicators and all other things, for more
    information on marc21 format visit the `official library of congress
    site <http://www.loc.gov/marc/bibliographic/>`__.

Similarly map all other fields and then Click on Finish.

Delimited Text Translator
|image1098|

And then a window will appear indicating that your Marc Text
File(\*.mrk) has been created.

Delimited Text Translator
|image1099|

Click Close and we have created a .mrk file from .xls file in this step.
You can view the file by double clicking on it.

`Convert .mrk file to .mrc <#convertmrk>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

We will convert .mrk file that we have created in the above step into
raw Marc format that can be directly imported into Koha.

For this again open MarcEdit and Select MARC Tools.

MARC Tools
|image1100|

Next Select MarcMaker to convert .mrk file into .mrc format.

MarcMaker
|image1101|

Locate your input file and name your output file. Then Click Execute.

MarcMaker
|image1102|

And it will show you the Result.

MarcMaker
|image1103|

Click Close and now we have raw Marc records with us (.mrc file).

`Import .mrc into Koha <#importmrc>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

More information on importing records into Koha can be found in the
'`Stage MARC Records for Import <#stagemarc>`__' section of this manual.

Finally we will import above created .mrc file into Koha.

Click on Tools in your Koha staff client.

Koha Staff Client
|image1104|

Next Click on Stage MARC Records for Import.

Stage MARC Records for Import
|image1105|

After this, choose your previously created .mrc file and click on
Upload.

Stage File
|image1106|

You can also add comment about file and finally click on Stage For
Import.

Stage for Import
|image1107|

When the import is done, you will get a result something like this

Staged Records Summary
|image1108|

Next, click on Manage staged records.

Here you can even change matching rules.

Manage Staged Records
|image1109|

Click on Import this batch into catalog when you are done.

Thats it. After all the records get imported, check Status and it should
read "imported"

Finalize Import
|image1110|

You can even undo the Import operation.

And within few minutes, we have imported around 10,000 records in Koha

Talking Tech
============

Talking Tech I-tiva is a third party, proprietary, product that
libraries can subscribe to. Learn more here:
http://www.talkingtech.com/solutions/library.

`Installation and Setup Instructions <#talkingtechinstall>`__
-------------------------------------------------------------

Be sure you've run
installer/data/mysql/atomicupdate/Bug-4246-Talking-Tech-itiva-phone-notifications.pl
to install the required data pack (new syspref, notice placeholders and
messaging transport preferences)

To use,
`TalkingTechItivaPhoneNotification <#TalkingTechItivaPhoneNotification>`__
syspref must be turned on.

If you wish to process PREOVERDUE or RESERVES messages, you'll need the
`EnhancedMessagingPreferences <#EnhancedMessagingPreferences>`__ system
preference turned on, and patrons to have filled in a preference for
receiving these notices by phone.

For OVERDUE messages, overdue notice triggers must be configured under
Koha -> Tools -> `Overdue Notice Triggers <#noticetriggers>`__. Either
branch-specific triggers or the default level triggers may be used
(script will select whichever is appropriate).

`Sending Notices File <#talkingtechsend>`__
-------------------------------------------

1. Add the `TalkingTech\_itiva\_outbound.pl <#talkingtechsendcron>`__
   script to your crontab

2. Add an FTP/SFTP or other transport method to send the output file to
   the I-tiva server

3. If you wish, archive the sent notices file in another directory after
   sending

Run TalkingTech\_itiva\_outbound.pl --help for more information

`Receiving Results File <#talkingtechreceive>`__
------------------------------------------------

1. Add an FTP/SFTP or other transport method to send the Results file to
   a known directory on your Koha server

2. Add the `TalkingTech\_itiva\_inbound.pl <#talkingtechreceivecron>`__
   script to your crontab, aimed at that directory

3. If you wish, archive the results file in another directory after
   processing

Run TalkingTech\_itiva\_inbound.pl --help for more information

OCLC Connexion Gateway
======================

Koha can be set to work with the OCLC Connextion Gateway. This allows
libraries to use OCLC Connexion as their cataloging tool and simply send
those records to Koha with a single click. The following instructions
will help you set up the OCLC Connexion Gateway, if you have a system
administrator you will want to consult with them on this process.

`Setting up OCLC service on Koha <#oclckohasetup>`__
----------------------------------------------------

First, you'll need to create a file somewhere on your system with
configuration information.  You could put this anywhere that is visible
to the account that will be running the service.

The file contains 11 lines. The first 6 will be about your Koha system:

::

    host: The IP address of your Koha server
    port: The port you want to use for the Connexion service. This port must be different from your SIP port, or any other service
    koha: The full URL of your staff client
    log: The location (full file specification) of your log for the service
    user: The default Koha username to use for importing
    password: The password that goes with that username

The remaining lines describe how to do the staging:

::

    match: The name of the matching rule from your system to use
    overlay_action: "replace", "create_new", or "ignore"-- what to do if there is a match
    nomatch_action: "create_new" or "ignore"-- what to do if there is no match
    item_action: "always_add","add_only_for_matches","add_only_for_new", or "ignore" -- what to do with embedded 952 item data
    import_mode: "direct" or "stage"

A sample file would look like this:

::

    host: 1.2.3.4
    port: 8000
    log: /home/koha/koha-dev/var/log/connexion.log
    koha: http://kohastaff.myuniversity.edu
    user: koha_generic_staff
    password: password
    match: 001
    overlay_action: replace
    nomatch_action: create_new
    item_action: ignore
    import_mode: direct

When choosing an 'import\_mode' if you use "direct" then the staged
record will be immediately imported into Koha, and should be searchable
after your indexes catch up.  If you choose "stage", then the record
will be placed in a staged batch for you to later go the `Manage Staged
MARC Records <#managestaged>`__ tool to finish the import.

If you import multiple records, they'll be in the same batch, until that
batch is imported, then a new batch will be created.

In "direct" mode, each record will be in its' own batch.

To start the service, run the script:

::

    /location/of/connexion/import/daemon/connexion_import_daemon.pl -d -c /location/of/config/file.cnf

`Setting up your OCLC desktop client <#oclcdesktopsetup>`__
-----------------------------------------------------------

    **Note**

    Screenshots are OCLC Connexion Client v.2.50, Koha v.3.12

To set up the OCLC Connexion desktop client to connect to Koha, go to
Tools > Options, then choose the Export tab. Connexion Export Tab

-  Click the "Create..." button to set up a new destination, then choose
   "OCLC Gateway Export" and click OK.

   -  Enter the following information:

      -  "Host Name:" Your catalog’s appropriate IP address (from your
         `config file above <#oclckohasetup>`__)

      -  "Port:" Your catalog's appropriate port number (from your
         `config file above <#oclckohasetup>`__)

      -  "Login ID:" The cataloger's Koha login

      -  "Password:" The cataloger's Koha password

      -  "Notify Host Before Disconnect" = checked,

      -  "Timeout" = 100, "Retries" = 3, "Delay" = 0 (zero),

      -  "Send Local System Logon ID Password" = checked.

   OCLC Gateway Export Settings
   |image1111|

-  Select "OK" when finished, and you should see your new "Gateway
   Export" option listed (The catalog's IP address and port are blacked
   out in the following screenshot)

   Gateway Export Added

-  Click on "Record Characteristics" and make sure that the
   bibliographic records are using MARC21, UTF-8 Unicode, and click OK
   to save.

   Record Characteristics

You should be ready to go!  To export a record from OCLC Connexion
Client to Koha, just press F5 while the record is on-screen.  The export
dialog will pop up, and you'll see Connexion attempting to talk to Koha.
 You should get a message that the record was added or overlaid,
including its biblio number, and a URL that you can copy into your web
browser to jump straight to the record.

`Using the OCLC Connexion Gateway <#oclcgateway>`__
---------------------------------------------------

Records can be exported from Connexion either in a batch or one by one.

`Exporting records one by one <#oclconeexport>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To export bibliographic records one by one, be sure your "Batch" options
are correct: from the "Tools" menu, select "Options", and select the
"Batch" tab. In the "Perform local actions in batch" area,
"Bibliographic Record Export" should be uncheckedConnexion batch options

When ready to export, from the "Action" menu, select "Export" or use the
F5 key. You will see a screen similar to the following if the import is
successful and if the record is new to the Catalog; you may copy & paste
the resulting URL into your Koha catalog to see the new record.Connexion
Export

If the record was overlaid, you will see a message to that effect in the
"OCLC Gateway Export Status" windowOverlay confirmation

`Exporting records in a batch <#oclcbatchexport>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To export bibliographic records in a batch, be sure your "Batch" options
are correct: from the "Tools" menu, select "Options", and select the
"Batch" tab. In the "Perform local actions in batch" area,
"Bibliographic Record Export" should be checkedOCLC Batch Export Options

When a record is ready to export, from the "Action" menu, select
"Export" or use the F5 key, and it’s export status will be "ready."

When ready to export the batch, from the "Batch" menu, select "Process
batch" and check the appropriate "Path" and "Export" boxesBatch import
process

The export will begin, and the bib records will be exported & imported
into Koha one by one; you will see "OCLC Gateway Export Status" windows,
as above, showing you the results of each export. That window will stay
there until you select "Close," and then the next record’s export/import
will begin. The process will continue until all records in the batch are
completed. Then you may or may not see the Connexion Client export
report (depending on your Client options for that).

`Items in OCLC <#oclcitems>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you'd like to create your item records in OCLC you can do so by
addding a 952 for each item to the bib record you're cataloging. The
`Item/Holdings Cataloging Guide <#itemcatguide>`__ will break down what
subfields you can use in the 952, but at the minimum you want to have
subfield 2, a, b, and y on your items.

952
\\\\$2CLASSIFICATION$aHOMEBRANCHCODE$bHOLDINGBRANCHCODE$yITEMTYPECODE

-  The subfield 2 holds the classification code. This can be ddc for
   Dewey or lcc for Library of Congress or z for Custom. Other
   classification sources can be found in the `Classification
   Sources <#classificationsources>`__ area in administration

-  Subfield a is your home library and needs to be the code for your
   home library, not the library name. You can find these codes in the
   `Libraries & Groups <#libsgroups>`__ administration area.

-  Subfield b is your holding library and needs to be the code for your
   holding library, not the library name. You can find these codes in
   the `Libraries & Groups <#libsgroups>`__ administration area.

-  Subfield y is your item type code. It needs to be the code, not the
   item type name. You can find these codes in the `Item
   Types <#itemtypeadmin>`__ administration area.

952 \\\\$2ddc$aMAIN$bMAIN$yBOOK

In addition to these required fields you can enter any other subfield
you'd like. Most libraries will enter a call number in subfield o and a
barcode in subfield p as well. Review the `Item/Holdings Cataloging
Guide <#itemcatguide>`__ for a full list of subfields and values.

FAQs
====

`Display <#displayfaq>`__
-------------------------

`Custom Item Type/Authorized Value Icons <#customicons>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question:** Can I have my own set of item type images (or authorized
value icons)?

**Answer:**\ Absolutely. To add additional icons to your system you
simply add a new directory to
koha-tmpl/intranet-tmpl/prog/img/itemtypeimg/ and to
koha-tmpl/opac-tmpl/prog/itemtypeimg and put your icons in the new
directory. Your icons will show up in a new tab as soon as they are in
the folders.

-  **Note**

       Remember to put the icons in both places (on the OPAC and the
       intranet).

`Customizing Koha Images <#customkohaimages>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Can I customize the images in the OPAC?

**Answer**: Absolutely. Koha comes with a series of original images that
you can alter to meet your needs. The originals can be found in the
misc/interface\_customization/ directory.

`OPAC Display Fields <#opacdisplayfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: What MARC fields print to the different OPAC screens in
Koha?

**Answer**: The XSLT preference must be set as follows for the following
fields to show

-  `OPACXSLTResultsDisplay <#OPACXSLTResultsDisplay>`__ = using XSLT
   stylesheets

-  `OPACXSLTDetailsDisplay <#OPACXSLTDetailsDisplay>`__ = using XSLT
   stylesheets

-  `DisplayOPACiconsXSLT <#DisplayOPACiconsXSLT>`__ = show

The OPAC Results page shows:

-  245

-  100, 110, 111

-  700, 710, 711

-  250

-  260

-  246

-  856

The OPAC Details page shows:

-  245

-  100, 110, 111

-  700, 710, 711

-  440, 490

-  260

-  250

-  300

-  020

-  022

-  246

-  130, 240

-  6xx

-  856

-  505

-  773

-  520

-  866

-  775

-  780

-  785

-  plus all of the 5xx fields in the Notes tab at the bottom

`Subtitle Display on Bib Records <#displaysubtitle>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: How do I get the subtitle to display on the detail pages
for my bib records?

**Answer**: Subtitle display now depends on there being a `keyword
mapping <#keywordmapping>`__ for the MARC field in question. Adding a
mapping for "subtitle" -> "245b" for an item's framework results in
display of the subtitle in OPAC and staff client search and detail pages
(although not in all instances where subtitles might be displayed, e.g.
the Cart).

`Show patrons the barcodes of items they have checked out <#opacbarcodesfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Can patrons see the barcodes for the items they have
checked out.

**Answer**: Not by default, but with a few edits to the patron record
you can make a barcode column appear on the patron's check out summary
in the OPAC. You can set up a `patron
attribute <#patronattributetypes>`__ with the value of SHOW\_BCODE and
`authorized value <#authorizedvalues>`__ of YES\_NO to make this happen.

Add SHOW\_BCODE patron attribute
|image1112|

Then on the `patron's record set the value <#editpatrons>`__ for
SHOW\_BCODE to yes.

Setting value for SHOW\_BCODE on patron record
|image1113|

This will add a column to the check out summary in the OPAC that shows
the patrons the barcodes of the items they have checked out.

Barcode number on checkout list in OPAC
|image1114|

Clicking on the 'Overdue' tab will show only the items that are overdue.

`Circulation/Notices <#circfaq>`__
----------------------------------

`Book drop Date <#dropboxfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: How is the book drop date is determined? Is it the last
open date for the checkout branch? Is it today's date minus one? Can the
book drop checkin date be set?

**Answer**: If the library is closed for four days for renovations, for
example, there would be more than one day needed for the book drop date.
You will only have one book drop date and that will be the last day that
the library open (determined by the holiday calendar) because there is
no real way to know what day the books were dropped into the box during
the 4 closed days. The only way to change the effective checkin date in
book drop mode is to modify the calendar.

`Holds to Pull and Holds Queue <#holdsreportsfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: What is the difference between the `Holds
Queue <#holdsqueue>`__ and `Holds to Pull <#holdspull>`__?

**Answer**: The holds to pull report gives a simple list of what holds
need to be filled with available items. It should only be used in Koha
installations where there is only one library.

The holds queue tries to do the same thing, but in a 'smarter' way. This
allows it to split up the list by library, consult the `transport cost
matrix <#transportcostmatrix>`__ and refresh regularly to provide
different pull lists to each library.

`Duplicate Overdue Notices <#dupoverduefaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Why are patrons getting two overdue notices?

**Answer**: This tool takes all branches in the overdue rules and sent
notifications to them. So, if you have a default rule & a branch rule,
the notification will be generated twice. A quick fix is to discard
"default rule" for instance.

`Printing Overdue Notices <#printoverduefaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Can I print overdue notices for patrons without email
addresses on file?

**Answer**: Yes. The `overdue notice cron job <#overduenoticecron>`__
has a setting to generate the overdue notices as HTML for printing. An
example of this usage would be:

::

    overdue_notices.pl -t -html /tmp/noticedir -itemscontent issuedate,date_due,title,barcode,author

In this example, we wanted to use only certain item fields in our
notices, so we specified itemscontent fields in the cron entry; that's
not a requirement for the feature.

The command line needs to specify a web-accessible directory where the
print notices will go -- they get a filename like
notices-2009-11-24.html (or holdnotices-2009-11-24.html). The overdue
notice itself can be formatted to fit a Z-mailer. Within the notice
file, the text is spaced down or over to where it will print properly on
the form. The script has code that wraps around the notice file to tell
the HTML to obey the formatting, and to do a page break between notices.
That's so that when staff print it out, they get one per page. We had to
add an extra syspref (`PrintNoticesMaxLines <#PrintNoticesMaxLines>`__)
to specify page length because our client allows a \_lot\_ of checkouts
which meant some notices were running onto multiple pages. That syspref
says to truncate the print notice at that page length and put in a
message about go check your OPAC account for the full list.

The print and email overdues use the same notice file. The print notices
for holds are different -- there's a separate HOLD\_PRINT notice file
and the system uses it if there's no email address. Then a nightly cron
job runs to gather those up from the message queue and put them in an
HTML file in the notice directory, as above.

The cron entry is gather\_print\_notices.pl /tmp/noticedir

`Unable to Renew Items <#renewfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: We're trying to renew some items for our patron. One of
the items is on hold and ineligible for renewal, but the other two items
refuse to renew even though they should be eligible. When I try to use
the override renewal limit, it just returns a little message that says
"renewal failed". Any idea what's going on here?

**Answer**: At the very least you will need to set an absolute `default
circulation rule <#circfinerules>`__. This rule should be set for the
default itemtype, default branchcode and default patron category. That
will catch anyone who doesn't match a specific rule. Patrons who do not
match a specific rule will get blocked from placing holds or renewing
items, since there was no baseline number of holds or renewals to
utilize.

`Unable to Place Holds <#holdsfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Why can't I place holds when I have all of the preferences
turned on.

**Answer**: You probably need to set a default circulation rule. At the
very least you will need to set an default circulation rule. This rule
should be set for all item types, all branches and all patron
categories. That will catch all instances that do not match a specific
rule. When checking out if you do not have a rule for the default
branch, default item and default patron category then you may see
patrons getting blocked from placing holds.

`Keyboard Shortcuts <#keyboardshort>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Do I have to use my mouse to access the checkout, checkin
and cataloging tabs at the top of the circulation pages?

**Answer**: You can jump between the tabs on the quick search box at the
top of the screen by using the following hot keys (if the tab is
available):

-  jump to the catalog search with Alt+Q

-  jump to the checkout with Alt+U

   -  this will not work for Mac user

-  jump to the checkin with Alt+R

    **Note**

    Mac users use the OPTION button in place of ALT

`SMS Notices/Messages <#smsnoticefaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: I want Koha to send notices via SMS, what do I need to do?

**Answer**: First you need to choose a SMS service to use with Koha.
There is a list available here:
http://search.cpan.org/search?query=sms%3A%3Asend&mode=all Not all SMS
services available to libraries have Perl drivers, so be sure to check
this list to see if the provider you're considering is listed. If not
you want to ask your provider if they have a Perl module, if not you
should consider another service. Some common options in the US (that
have Perl drivers) are:

-  AQL (`www.aql.com <http://www.aql.com>`__)

-  Wadja (`wadja.com <http://wadja.com>`__)

-  Ipipi (`ipipi.com <http://ipipi.com>`__)

-  T-mobile

-  SMSDiscount (`smsdiscount.com <http://smsdiscount.com>`__)

-  Clickatell

**Question**: What about in India?

**Answer**: India does not yet have too many options here. This is
partly due to the Telecom regulatory authority's (TRAI) stipulations
about transactional SMSes and limits on the number of SMSes that may be
sent / received per users per day. India specific drivers include:

-  Unicel Technologies Pvt Ltd (`unicel.in <http://unicel.in>`__)

`Cataloging <#catfaq>`__
------------------------

`Authority Fields <#authorityfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question:**\ Why can't I edit 1xx, 6xx, or 7xx fields in my catalog
record?

**Answer:** These fields are authority controlled and you probably have
the `BiblioAddsAuthorities <#BiblioAddsAuthorities>`__ set to "Don't
allow". When it is set to "Don't allow" these fields will be locked and
require you to search for an existing authority record to populate the
field with. To allow typing in these authority fields set
`BiblioAddsAuthorities <#BiblioAddsAuthorities>`__ to 'Allow'.

    **Note**

    Fields affected by this preference will show a lock symbol in them

Fields affected by this preference show a lock in the field
|image1115|

`Koha to MARC Mapping <#kohamarcfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: What's the relationship between 'Koha to MARC Mapping' and
'MARC Bibliographic Frameworks'?

**Answer**: Mapping can be defined through 'MARC Bibliographic
Frameworks' OR 'Koha to MARC Mapping'. 'Koha to MARC Mapping' is just a
shortcut to speed up linkage. If you change a mapping in one of these
modules, the mapping will change in the other as well. (In other words,
the two modules 'overwrite' each other in order to prevent conflicts
from existing in Koha).

`Number of Items Per Bib Record <#itemsperbibfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Is there a limit on the number of items I can attach to a
bib record?

**Answer**: There is no explicit limit to the number of items you can
attach to a bibliographic record, but if you attach enough of them, your
MARC record will exceed the maximum file size limit for the ISO 2709
standard, which breaks indexing for that record. I've found this occurs
somewhere between 600 and 1000 items on a 'normal' bibliographic record.

`Analytics <#analyticsfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: I am using the
`EasyAnalyticalRecords <#EasyAnalyticalRecords>`__ feature, but my links
in the OPAC and Staff Client to 'Show Analytics' are not working.

**Answer**: If you plan on using
`EasyAnalyticalRecords <#EasyAnalyticalRecords>`__ you will want to make
sure to set your `UseControlNumber <#UseControlNumber>`__ preference to
"Don't use," this will prevent broken links.

`Acquisitions <#acqfaq>`__
--------------------------

`Planning Categories <#planningcatfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: What is a planning category?

**Answer**: When you plan in advance for the way your budget is going to
be spent, you initially plan for how it's going to be spent over time,
that's the most natural thing to do.

So you plan for $1000 in Jan. $1000 in Feb., $3000 in March, etc. You
can basically do the same thing with a list of values in lieu of the
months.

Say you have a list like this one:

-  < 1 month

-  < 6 months

-  < 1 year

-  < 3 years

-  < 10 years

-  > 10 years

The list is meant to represent when the books acquired where published.
Then you plan for it, saying: we went to spend at list 40% of our
budgets on books published less than a year ago, 10% on books more than
10 years old, etc.

Upon acquiring new material, you'll be able to select, for a given item,
a value from this list in a drop down. Then, after the material has been
acquired, at the end of the year, you'll be able to compare the goals
set, with what's been achieved.

`Serials <#serialsfaq>`__
-------------------------

`Advanced Patterns <#advancedpatternfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: What is the 'inner counter' on the advanced serials
pattern interface?

**Answer**: I think it is better to give an example to understand this :

Example for a monthly subscription :

-  First issue publication date : April 2010

-  Numbering : No {X}, year {Y}

-  First issue : No 4, year 2010

For the year Y : you will want the year change on January 2011

So, the advanced pattern for Y will be :

-  Add : 1

-  once every : 12

-  When more than 9999999

-  inner counter : 3

-  Set back to 0

-  Begins with 2010

Year is going to change after 12 received issues from April 2010, that
is in April 2011 if you don't set inner counter. Set inner counter to 3
will say to Koha : change year after 12-3 = 9 received issues.

Inner counter says to Koha to take into account the first issues of the
year, even if they are not received with Koha. If you begin with first
issue of the year write nothing or 0.

`Reports <#reportsfaq>`__
-------------------------

`Define Codes Stored in DB <#accounttypefaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`Fines Table <#finescodefaq>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question:** What do the codes in the accounttype field in the
accountlines table stand for?

**Answer:**

-  A = Account management fee

-  C = Credit

-  F = Overdue fine

-  FOR = Forgiven

-  FU = Overdue, still acccruing

-  L = Lost item

-  LR = Lost item returned/refunded

-  M = Sundry

-  N = New card

-  PAY = Payment

-  W = Writeoff

`Statistics Table <#statscodefaq>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question:**\ What are the possible codes for the type field in the
statistics table?

**Answer:**

-  localuse

   -  Registers if an item that had been checked out to a statistics
      patron (category type = 'X') is returned

-  issue

-  return

-  renew

-  writeoff

-  payment

-  CreditXXX

   -  The XXX stores different types of fee credits, so a query to catch
      them all would include a clause like "type LIKE 'Credit%'"

`Reserves Table <#rescodefaq>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What are the possible codes for the found field in the
reserves and old\_reserves tables?

**Answer**:

-  NULL: means the patron requested the 1st available, and we haven't
   chosen the item

-  T = Transit: the reserve is linked to an item but is in transit to
   the pickup branch

-  W = Waiting: the reserve is linked to an item, is at the pickup
   branch, and is waiting on the hold shelf

-  F = Finished: the reserve has been completed, and is done

`Reports Dictionary Table <#reportdicfaq>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What are the possible codes for the area field in the
reports\_dictionary table?

**Answer**:

-  1 = Circulation

-  2 = Catalog

-  3 = Patrons

-  4 = Acquisitions

-  5 = Accounts

`Messages Table <#msgtablefaq>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What are the possible codes for the message\_type field in
the messages table?

**Answer**:

-  L = For Librarians

-  B = For Patrons/Borrowers

`Serial Table <#serialtablefaq>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What are the possible codes for the status field in the
serial table?

**Answer**:

-  1 = Expected

-  2 = Arrived

-  3 = Late

-  4 = Missing

-  5 = Not available

-  6 = Delete

-  7 = Claimed

-  8 = Stopped

-  41 = Missing (not received)

-  42 = Missing (sold out)

-  43 = Missing (damaged)

-  44 = Missing (lost)

`Borrowers Table <#borrowerprivacyvalues>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What are the possible codes for the privacy field in the
borrowers table?

**Answer**:

-  0 = Forever

-  1 = Default

-  2 = Never

`Messaging Preferences <#messpreffaq>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What are the possible codes in the message\_attribute\_id
field in the borrower\_message\_preferences table?

**Answer**:

-  2 = advanced notice

-  6 = item checkout

-  4 = hold filled

-  1 = item due

-  5 = item check in

`Runtime Parameters <#runtimefaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Is there a way to filter my custom SQL reports before they
run?

**Answer**: If you feel that your report might be too resource intensive
you might want to consider using runtime parameters to your query.
Runtime parameters basically make a filter appear before the report is
run to save your system resources.

There is a specific syntax that Koha will understand as 'ask for values
when running the report'. The syntax is <<Question to
ask\|authorized\_value>>.

-  The << and >> are just delimiters. You must put << at the beginning
   and >> at the end of your parameter

-  The 'Question to ask' will be displayed on the left of the string to
   enter.

-  The authorized\_value can be omitted if not applicable. If it
   contains an authorized value category, or branches or itemtype or
   categorycode or biblio\_framework, a list with the Koha authorized
   values will be displayed instead of a free field Note that you can
   have more than one parameter in a given SQL Note that entering
   nothing at run time won't probably work as you expect. It will be
   considered as "value empty" not as "ignore this parameter". For
   example entering nothing for : "title=<<Enter title>>" will display
   results with title='' (no title). If you want to have to have
   something not mandatory, use "title like <<Enter title>>" and enter a
   % at run time instead of nothing

Examples:

-  SELECT surname,firstname FROM borrowers WHERE branchcode=<<Enter
   patrons library\|branches>> AND surname like <<Enter filter for
   patron surname (% if none)>>

-  SELECT \* FROM items WHERE homebranch = <<Pick your
   branch\|branches>> and barcode like <<Partial barcode value here>>

-  SELECT title , author FROM biblio WHERE frameworkcode=<<Enter the
   frameworkcode\|biblio\_framework>>

    **Note**

    To generate a date picker calendar to the right of the field when
    running a report you can use the 'date' keyword like this: <<Enter
    Date\|date>>

    Date Picker
    |image1116|

    **Note**

    You have to put "%" in a text box to 'leave it blank'. Otherwise, it
    literally looks for "" (empty string) as the value for the field.

    **Important**

    In addition to using any authorized value code to generate a
    dropdown, you can use the following values as well: Framework codes
    (biblio\_framework), Branches (branches), Item Types (itemtypes) and
    Patron Categories (categorycode). For example a branch pull down
    would be generated like this <<Branch\|branches>>

    Branch pull down
    |image1117|

`Results Limited <#reportlimitfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: When I download my report it's limited to 10,000 results,
how do I get all of the results to download?

**Answer**: There is a limit of 10,000 records put on SQL statements
entered in Koha. To get around this you want to add 'LIMIT 100000' to
the end of your SQL statement (or any other number above 10,000.

`Searching <#searchfaq>`__
--------------------------

`Advanced Search <#advancedsearchfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`Scan Indexes <#scanindexfaq>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What does 'scan indexes' on the advanced search page mean?

**Answer**: When you choose an index, enter a term, click 'scan indexes'
and do the search, Koha displays the searched term and the following
terms found in this index with the number of corresponding records That
is search is not made directly in the catalog, but first in the indexes
It works only for one index at once, and only with no limit in Location
(All libraries needed)

`Searching for Terms that Start With a Character <#searchstartswith>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: How do I search for all titles that start with the letter
'C'?

**Answer**: You can choose to search for things that start with a
character or series of characters by using the CCL 'first-in-subfield'

-  example: ti,first-in-subfield=C

`Wildcard Searching <#wildcardsearchfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**:What is the difference between a keyword search using the
'\*' (asterisk) versus a keyword search using the '%' (percent)? Both
work in the catalog, but return different sets. Why?

**Answer**: A wildcard is a character (\*,?,%,.) that can be used to
represent one or more characters in a word. Two of the wildcard
characters that can be used in Koha searches are the asterisk ('\*') and
the percent sign ('%'). However, these two characters act differently
when used in searching.

The '\*' is going to force a more exact search of the first few
characters you enter prior to the '\*'. The asterisk will allow for an
infinite number of characters in the search as long as the first few
characters designated by your search remain the same. For example,
searching for authors using the term, Smi\*, will return a list that may
include Smith, Smithers, Smithfield, Smiley, etc depending on the
authors in your database.

The '%' will treat the words you enter in the terms of "is like". So a
search of Smi% will search for words like Smi. This results in a much
more varied results list. For example, a search on Smi% will return a
list containing Smothers, Smith, Smelley, Smithfield and many others
depending on what is your database.

The bottom line in searching with wildcards: '\*' is more exact while
'%' searches for like terms.

`Title Searching <#titlesearchingfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Why does my Zebra title search for 'Help' not turn up 'The
help' in the first pages of results?

**Answer**: When doing a title search, you actually want to search for
the title (i.e., 'the help' rather than just 'help'), and it will bubble
right up to the top. If you're just searching for 'help' then the
relevance ranking is going to affect the results you see.

When it comes to relevance in Zebra, here's what's happening. First, the
search is done. If you search for the title "help", then any title that
has "help" in it comes back. Then from those records, separately, it
does relevance on the \*whole\* record. The more your word appears, the
more relevant, and some MARC tags are worth more points than others. So
a self-help book with 505 notes where "help" appears a \*lot\* will be
at the top, regardless of keyword or title.

But when you add a \*second word\*, that helps it figure things out, as
it's weighing the relevance of both words and the phrase. Because of the
way relevance works, if you search "the help", then "the help" or "the
help I need" are more relevant than "the way to help", because they
appear together in order. Likewise, "help the girl" would be lower
relevance, because it's out of order, and "help for the homeless" would
be lower still, as they're out of order, and apart.

The moral of the story is that single word searches, particularly on
common words, will always struggle a bit; it can't evaluate relevance
well, because you've not given it enough input.

`Enhanced Content <#enhancedcontentfaq>`__
------------------------------------------

`FRBRizing Content <#frbrfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question:**\ At our public library we are running a Koha installation
and we've tried to turn on all the nice functionalities in Koha such as
the frbrising tool, but do not get the same result as Nelsonville public
library.

**Answer:**\ In fact, this feature is quite tricky to make that right.
First it looks at XISBN service. And then search in your database for
that ISBN. So both XISBN and your internal ISBN (in biblio table) have
to be normalized. You could therefore use the script
misc/batchupdateISBNs.pl (it removes all the - in your local ISBNs)

`Amazon <#amzfaq>`__
~~~~~~~~~~~~~~~~~~~~

`All Amazon Content <#amazonfaq>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: I have all of the Amazon preferences turned on and have
entered both of my keys, but none of the content appears in my system,
why is that?

**Answer**: Amazon's API checks your server time on all requests and if
your server time is not set properly requests will be denied. To resolve
this issue be sure to set your system time appropriately. Once that
change in made Amazon content should appear immediately.

On Debian the the command is *date -s "2010-06-30 17:21"* (with the
proper date and time for your timezone).

`System Administration <#systemfaq>`__
--------------------------------------

`Errors in Zebra Cron <#zebracronfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: I am noticing some errors in the
koha-zebradaemon-output.log file. When new records are added it takes a
bit longer to index than we think they should. Running rebuild zebra is
often faster. Zebra ends up indexing and search works, but I am
concerned about the errors. Any ideas?

**Answer**: Rebuild\_zebra.pl -r deletes all of the files in the Zebra
db directories (such as reci-0.mf) and then recreates them. Thus,
permissions will be lost, and the files will be owned by the user who
ran rebuild\_zebra.pl. If one rebuilds the zebra indexes as root, the
daemons, which typically run under the user Koha, will not be able to
update the indexes. Thus, it's important then that the zebra rebuilds
are put in the cronjob file of the user Koha, and not root. Also
important is that other users, such as root, don't manually execute
rebuilds.

If one desires that another user be able to execute rebuild\_zebra.pl,
he should be given the permission to execute 'sudo -u Koha
.../rebuild\_zebra.pl,' (if you want to do this, you also have to edit
the sudoers file to pass the PERL5LIB variable with the env\_keep option
as by default sudo strips away almost all environment variables). Or, as
root user, one can use a simple 'su koha' and then the rebuild\_zebra.pl
command.

I've also tried to set the sticky bit on rebuild\_zebra.pl, but for
whatever reason it didn't seem to work due to some problem with the
PERL5LIB variable that I wasn't able to figure. That seems to me the
easiest thing to do, if anybody has any idea how to make it work. If it
worked and were the default, I think it would help folks to avoid a
great deal of the problems that come up with zebra.

`Making Z39.50 Target Public <#publicztarget>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Could someone tell me the exact steps I need to take to
configure Zebra to expose my Koha 3 db as a public Z39.50 service?

**Answer**: Edit the KOHA\_CONF file that your Koha is using. Uncomment
the publicserver line like:

<!-- <listen id="publicserver" >tcp:@:9999</listen> -->

to be:

<listen id="publicserver" >tcp:@:9999</listen>

Then restart zebasrv and connect on the port specified (9999).

`Shelving Location Authorized Values <#authvalfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: When editing an item, the new shelving location I created
is not showing up by default in the items where I assigned it to.

**Answer**: This is because you created the new shelving location with a
code value of 0 (zero) Just FYI the system interprets authorized values
of 0 as equaling a null so when you edit a record in cataloging where
the authorized value in a field was assigned where the code was 0, the
value displays as null in the item editor (or MARC editor) instead of
the value the library meant it to be.

`Why do I need Authorized Values? <#whyauthvals>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Why would I want to define authorized values for MARC
tags?

**Answer**: Authorized Values create a 'controlled vocabulary' for your
staff. As an example, let us assume that your Koha installation is used
by several libraries, and you use MARC 21. You might want to restrict
the 850a MARC subfield to the institution codes for just those
libraries. In that case, you could define an authorized values category
(perhaps called "INST") and enter the institution codes as the
authorized values for that category.

    **Note**

    Koha automatically sets up authorized value categories for your item
    types and branch codes, and you can link these authorized values to
    MARC subfields when you set up your MARC tag structure.

`How do I clean up the sessions table? <#sessionstblfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Is there a periodic job that can be run to cull old
sessions from the table? We don't want to backup all the useless session
data every night.

**Answer**: You can run `cleanup database cron job <#cleandbcron>`__.

Or just before doing a backup command (mysqldump), you can truncate
session table:  

::

    mysql -u<kohauser -p<password <koha-db-name -e 'TRUNCATE TABLE sessions'

`Hardware <#hardwarefaq>`__
---------------------------

`Barcode Scanners <#barcodefaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: What barcode scanners have been known to work with Koha?

**Answer**: The simple rule of thumb is, does it act like a keyboard
device?, if so, it will work. (i.e. can you take the scanner, scan a
barcode and have it show up in a text editor, if so, it will work.)

The main points to check are that it connects to your PC conveniently
(can be USB or "keyboard wedge" which means it connects in line with the
keyboard, which is useful with older computers), and that it scans the
barcode type that you are using.

It is a good idea to test some 'used' barcodes if you have any, to see
whether the scanner can read scuffed or slightly wrinkled ones
successfully. Most scanners are capable of reading several barcode types
- there are many, and the specification should list the ones it can
read. You may need to adjust settings slightly, such as prefix and
suffix characters, or whether you want to send an 'enter' character or
not.

One more tip - some can be set 'always on' and may come with a stand,
some have triggers under the handle, some have buttons on top, some are
held like a pen. Think about the staff working with the hardware before
choosing, as a button in the wrong place can be very awkward to use.

`Printers <#printersfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~

`Printers used by Koha libraries <#kohaprinters>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  POS-X receipt printer

-  Star Micronics printer (exact model unknown) with a generic/plain
   text driver.

-  Star SP2000 (Nelsonville)

-  Star TSP-100 futurePRINT (Geauga)

   -  "I know there have been a lot of questions on receipt printers so
      I thought I'd pass on my findings. We have been testing the Star
      TSP-100 futurePRINT. I found this print to be VERY easy to
      configure for Koha. I was even able to customize the print job by
      adding our system logo (a .gif) to the top of every receipt. Also
      with a bitmap created in Paint was able to add a message at the
      bottom of each receipt with the contact information, hours and
      website for the library that the materials were checked out at."

-  Epson TM 88 IIIP thermal receipt printers

-  Epson TM-T88IV

-  1x1 labels using a Dymolabelwriter printer

`Braille Support <#braillefaq>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: Are there any braille embosser or printer which has
inbuilt braille converter and it is accessible with UNIX environment?

**Answer**: You may want to look into BRLTTY
(http://www.emptech.info/product_details.php?ID=1232).

`Additional Support <#hardwaresupport>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  http://www.nexpresslibrary.org/go-live/configure-your-receipt-printers/

Extending Koha
==============

`Amazon lookup script for Koha libraries <#amzlookup>`__
--------------------------------------------------------

We order most of our materials from Amazon, so I've been looking for a
convenient way to tell if a book under consideration is in our catalog
already.

Greasemonkey & a custom user script fit the bill nicely:

-  https://addons.mozilla.org/en-US/firefox/addon/748

-  http://userscripts.org/scripts/show/56847

A few caveats:

-  Like most scripts, this one was designed to work with Firefox; I
   haven't explored getting it to work with other browsers.

-  I'm not a JavaScript programmer -- this was adapted from others'
   work. Just a few lines would have to be changed to get the script to
   work with your catalog.

-  It depends on the existence of ISBN for the item in question, so
   movies, older books, etc. would not work.

Others have added all sorts of bells & whistles: XISBN lookups to search
for related titles, custom messages based on the status of items (on
order, on hold, etc.), ... just search the UserScripts site for Amazon +
library. For a later date!

`Keyword Clouds <#extendkeywordclouds>`__
-----------------------------------------

In addition to the traditional tag cloud available in Koha, there is a
way to generate clouds for popular subjects within Koha.

The `Author/Subject Cloud cron job <#keywordclouds>`__ is used to help
with this process. This cron job sends its output to files.

-  /home/koha/mylibrary/koharoot/koha-tmpl/cloud-author.html

-  /home/koha/yourlibrary/koharoot/koha-tmpl/cloud-subject.html

This means that you can produce clouds for authors, collective author,
all kind of subjects, classifications, etc. And since it works on zebra
indexes, it is quick, even on large DBs. Tags clouds are sent to files.
It's up to library webmaster to deal with those files in order to
include them in `OPACMainUserBlock <#OpacMainUserBlock>`__, or include
them into their library CMS.

Some libraries even send the file into a Samba shared folder where
webmaster take them, eventually clean them a little bit before
integrating them into navigation widgets or pages.

`Newest Titles Pulldown <#newtitlesoption>`__
---------------------------------------------

Often we want to add a way for our patrons to do searches for the newest
items. In this example I'll show you how to create a pull down menu of
the newest items by item type. These tips will work (with a couple
changes) for collection codes or shelving locations as well.

First, it's important to note that every link in Koha is a permanent
link. This means if I do a search for everything of a specific item type
sorted by the acquisitions date and bookmark that URL, whenever I click
it I'll see the newest items of that type on the first few pages of the
results.

I took this knowledge and wrote a form takes this functionality in to
consideration. It basically just does a search of your Koha catalog for
a specific item type and sorts the results by acquisitions date.

The first thing I did was write a MySQL statement to generate a list of
item types for me - why copy and paste when you can use the power of
MySQL?

::

    select concat('<option value=\"mc-itype:', itemtype, '\">',description,'</option>') from itemtypes

The above looks at the itemtypes table and slaps the necessary HTML
around each item type for me. I then exported that to CSV and opened it
in my text editor and added the other parts of the form.

::

    <p><strong>New Items</strong></p>
    <p><form name="searchform" method="get" action="/cgi-bin/koha/opac-search.pl">
    <input name="idx" value="kw" type="hidden">
    <input name="sort_by" value="acqdate_dsc" type="hidden">
    <input name="do" value="OK" type="hidden">
    <select name="limit" onchange="this.form.submit()">
    <option>-- Please choose --</option>
    <option value="mc-itype:BOOK">Book</option>
    <option value="mc-itype:BOOKCD">Book on CD</option>
    <option value="mc-itype:DVD">DVD</option>
    <option value="mc-itype:LRG_PRINT">Large print book</option>
    <option value="mc-itype:MAGAZINE">Magazine</option>
    <option value="mc-itype:NEWSPAPER">Newspaper</option>
    <option value="mc-itype:VIDEO">Videocassette</option>
    </select>
    </form>
    </p>

Now, what does all of that mean? The important bits are these:

First the starting of the form.

::

    <p><form name="searchform" method="get" action="/cgi-bin/koha/opac-search.pl">

This tells the browser to take any value selected and put it at the end
of this http://YOURSITE/cgi-bin/koha/opac-search.pl. If you want to
embed this form on your library website (and not on your OPAC) you can
put the full OPAC URL in there.

Next, there is a hidden value that is telling the search to sort by
acquisitions date descending (newest items at the top):

::

    <input name="sort_by" value="acqdate_dsc" type="hidden">

And finally you have an option for each item type you want people to
search.

::

    <option value="mc-itype:BOOK">Book</option>

These options each include the string "mc-itype:" which tells Koha to do
an item type search.

Once you have all of that in place you can copy and paste the form to
somewhere on your OPAC. The `Farmington Public Libraries
OPAC <http://catalog.farmingtonlibraries.org>`__ has a few examples of
this on the left.

`Cataloging and Searching by Color <#colorsearch>`__
----------------------------------------------------

One of the icon sets installed in Koha includes a series of colors. This
set can be used to catalog and search by color if you'd like. This guide
will walk you use changing collection code to color in Koha so that you
can do this.

The following SQL could be used to add these colors to the CCODE
authorized value category in a batch. If you wanted to use these colors
for another authorized value you'd have to edit this to use that
category:

::

        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','000000','Black','','colors/000000.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','66cc66','Bright Green','','colors/66cc66.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','99cc33','Olive','','colors/99cc33.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','3333cc','Dark Blue','','colors/3333cc.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','006600' ,'Dark Green','','colors/006600.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','6600cc','Plum','','colors/6600cc.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','6666cc','Purple','','colors/6666cc.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','9999cc','Light Purple','','colors/9999cc.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','660000' ,'Burgundy','','colors/660000.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','663333' ,'Brown','','colors/663333.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','990000' ,'Red','','colors/990000.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','996633' ,'Tan','','colors/996633.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','999999' ,'Gray','','colors/999999.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','cc66cc','Pink','','colors/cc66cc.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','cc99cc','Bubble Gum','','colors/cc99cc.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','cc3333' ,'Orange','','colors/cc3333.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','cc6666' ,'Peach','','colors/cc6666.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','cc9999' ,'Rose','','colors/cc9999.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','cccc00' ,'Gold','','colors/cccc00.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','ffff33' ,'Yellow','','colors/ffff33.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','ffffcc','Cream','','colors/ffffcc.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','ffffff','White','','colors/ffffff.png');

If you would like to choose the colors manually you can do that via the
`Authorized Values <#authorizedvalues>`__ administration area.

Colors for CCODE
|image1118|

Next you'll want to `update the frameworks <#marcbibframeworks>`__ so
that the 952$8 (if you're using collection code) label to says Color.

Once you have that in place you can start to catalog items by color.

Finally you'll want to add the following JQuery to your preferences so
that it will relabel 'Collection' to 'Color'

`IntranetUserJS <#intranetuserjs>`__

::

    $(document).ready(function(){
        $("#advsearch-tab-ccode a:contains('Collection')").text("Color");
        $("#holdings th:contains('Collection')").text("Color");
        });

`OPACUserJS <#opacuserjs>`__

::

    $(document).ready(function(){
        $("#advsearch-tab-ccode a:contains('Collection')").text("Color");
        $('#item_ccode').text("Color");
        });

Koha and Your Website
=====================

This appendix will include tips for integrating Koha in to your library
website.

`Koha search on your site <#embedsearch>`__
-------------------------------------------

Often you'll want to add a Koha search box to your library website. To
do so, just copy and paste the following code in to your library website
and update the YOURCATALOG bit with your catalog's URL and you're set to
go.

::

    <form name="searchform" method="get" action="http://YOURCATLOG/cgi-bin/koha/opac-search.pl" id="searchform">
    <input id="transl1" name="q" type="text"><p>
    <select name="idx" id="masthead_search">
    <option value="kw">Keyword</option>
    <option value="ti">Title</option>
    <option value="au">Author</option>
    <option value="su">Subject</option>
    <option value="nb">ISBN</option>
    <option value="se">Series</option>
    <option value="callnum">Call Number</option>
    </select>
    <input value="Search" id="searchsubmit" type="submit">
    </p></form>


GNU General Public License version 3
====================================

Version 3, 29 June 2007

Copyright © 2007 Free Software Foundation, Inc. http://fsf.org/

Everyone is permitted to copy and distribute verbatim copies of this
license document, but changing it is not allowed.

**Preamble**

The GNU General Public License is a free, copyleft license for software
and other kinds of works.

The licenses for most software and other practical works are designed to
take away your freedom to share and change the works. By contrast, the
GNU General Public License is intended to guarantee your freedom to
share and change all versions of a program--to make sure it remains free
software for all its users. We, the Free Software Foundation, use the
GNU General Public License for most of our software; it applies also to
any other work released this way by its authors. You can apply it to
your programs, too.

When we speak of free software, we are referring to freedom, not price.
Our General Public Licenses are designed to make sure that you have the
freedom to distribute copies of free software (and charge for them if
you wish), that you receive source code or can get it if you want it,
that you can change the software or use pieces of it in new free
programs, and that you know you can do these things.

To protect your rights, we need to prevent others from denying you these
rights or asking you to surrender the rights. Therefore, you have
certain responsibilities if you distribute copies of the software, or if
you modify it: responsibilities to respect the freedom of others.

For example, if you distribute copies of such a program, whether gratis
or for a fee, you must pass on to the recipients the same freedoms that
you received. You must make sure that they, too, receive or can get the
source code. And you must show them these terms so they know their
rights.

Developers that use the GNU GPL protect your rights with two steps: (1)
assert copyright on the software, and (2) offer you this License giving
you legal permission to copy, distribute and/or modify it.

For the developers' and authors' protection, the GPL clearly explains
that there is no warranty for this free software. For both users' and
authors' sake, the GPL requires that modified versions be marked as
changed, so that their problems will not be attributed erroneously to
authors of previous versions.

Some devices are designed to deny users access to install or run
modified versions of the software inside them, although the manufacturer
can do so. This is fundamentally incompatible with the aim of protecting
users' freedom to change the software. The systematic pattern of such
abuse occurs in the area of products for individuals to use, which is
precisely where it is most unacceptable. Therefore, we have designed
this version of the GPL to prohibit the practice for those products. If
such problems arise substantially in other domains, we stand ready to
extend this provision to those domains in future versions of the GPL, as
needed to protect the freedom of users.

Finally, every program is threatened constantly by software patents.
States should not allow patents to restrict development and use of
software on general-purpose computers, but in those that do, we wish to
avoid the special danger that patents applied to a free program could
make it effectively proprietary. To prevent this, the GPL assures that
patents cannot be used to render the program non-free.

The precise terms and conditions for copying, distribution and
modification follow.

**TERMS AND CONDITIONS**

**0. Definitions.**

"This License" refers to version 3 of the GNU General Public License.

"Copyright" also means copyright-like laws that apply to other kinds of
works, such as semiconductor masks.

"The Program" refers to any copyrightable work licensed under this
License. Each licensee is addressed as "you". "Licensees" and
"recipients" may be individuals or organizations.

To "modify" a work means to copy from or adapt all or part of the work
in a fashion requiring copyright permission, other than the making of an
exact copy. The resulting work is called a "modified version" of the
earlier work or a work "based on" the earlier work.

A "covered work" means either the unmodified Program or a work based on
the Program.

To "propagate" a work means to do anything with it that, without
permission, would make you directly or secondarily liable for
infringement under applicable copyright law, except executing it on a
computer or modifying a private copy. Propagation includes copying,
distribution (with or without modification), making available to the
public, and in some countries other activities as well.

To "convey" a work means any kind of propagation that enables other
parties to make or receive copies. Mere interaction with a user through
a computer network, with no transfer of a copy, is not conveying.

An interactive user interface displays "Appropriate Legal Notices" to
the extent that it includes a convenient and prominently visible feature
that (1) displays an appropriate copyright notice, and (2) tells the
user that there is no warranty for the work (except to the extent that
warranties are provided), that licensees may convey the work under this
License, and how to view a copy of this License. If the interface
presents a list of user commands or options, such as a menu, a prominent
item in the list meets this criterion.

**1. Source Code.**

The "source code" for a work means the preferred form of the work for
making modifications to it. "Object code" means any non-source form of a
work.

A "Standard Interface" means an interface that either is an official
standard defined by a recognized standards body, or, in the case of
interfaces specified for a particular programming language, one that is
widely used among developers working in that language.

The "System Libraries" of an executable work include anything, other
than the work as a whole, that (a) is included in the normal form of
packaging a Major Component, but which is not part of that Major
Component, and (b) serves only to enable use of the work with that Major
Component, or to implement a Standard Interface for which an
implementation is available to the public in source code form. A "Major
Component", in this context, means a major essential component (kernel,
window system, and so on) of the specific operating system (if any) on
which the executable work runs, or a compiler used to produce the work,
or an object code interpreter used to run it.

The "Corresponding Source" for a work in object code form means all the
source code needed to generate, install, and (for an executable work)
run the object code and to modify the work, including scripts to control
those activities. However, it does not include the work's System
Libraries, or general-purpose tools or generally available free programs
which are used unmodified in performing those activities but which are
not part of the work. For example, Corresponding Source includes
interface definition files associated with source files for the work,
and the source code for shared libraries and dynamically linked
subprograms that the work is specifically designed to require, such as
by intimate data communication or control flow between those subprograms
and other parts of the work.

The Corresponding Source need not include anything that users can
regenerate automatically from other parts of the Corresponding Source.

The Corresponding Source for a work in source code form is that same
work.

**2. Basic Permissions.**

All rights granted under this License are granted for the term of
copyright on the Program, and are irrevocable provided the stated
conditions are met. This License explicitly affirms your unlimited
permission to run the unmodified Program. The output from running a
covered work is covered by this License only if the output, given its
content, constitutes a covered work. This License acknowledges your
rights of fair use or other equivalent, as provided by copyright law.

You may make, run and propagate covered works that you do not convey,
without conditions so long as your license otherwise remains in force.
You may convey covered works to others for the sole purpose of having
them make modifications exclusively for you, or provide you with
facilities for running those works, provided that you comply with the
terms of this License in conveying all material for which you do not
control copyright. Those thus making or running the covered works for
you must do so exclusively on your behalf, under your direction and
control, on terms that prohibit them from making any copies of your
copyrighted material outside their relationship with you.

Conveying under any other circumstances is permitted solely under the
conditions stated below. Sublicensing is not allowed; section 10 makes
it unnecessary.

**3. Protecting Users' Legal Rights From Anti-Circumvention Law.**

No covered work shall be deemed part of an effective technological
measure under any applicable law fulfilling obligations under article 11
of the WIPO copyright treaty adopted on 20 December 1996, or similar
laws prohibiting or restricting circumvention of such measures.

When you convey a covered work, you waive any legal power to forbid
circumvention of technological measures to the extent such circumvention
is effected by exercising rights under this License with respect to the
covered work, and you disclaim any intention to limit operation or
modification of the work as a means of enforcing, against the work's
users, your or third parties' legal rights to forbid circumvention of
technological measures.

**4. Conveying Verbatim Copies.**

You may convey verbatim copies of the Program's source code as you
receive it, in any medium, provided that you conspicuously and
appropriately publish on each copy an appropriate copyright notice; keep
intact all notices stating that this License and any non-permissive
terms added in accord with section 7 apply to the code; keep intact all
notices of the absence of any warranty; and give all recipients a copy
of this License along with the Program.

You may charge any price or no price for each copy that you convey, and
you may offer support or warranty protection for a fee.

**5. Conveying Modified Source Versions.**

You may convey a work based on the Program, or the modifications to
produce it from the Program, in the form of source code under the terms
of section 4, provided that you also meet all of these conditions:

a. The work must carry prominent notices stating that you modified it,
   and giving a relevant date.

b. The work must carry prominent notices stating that it is released
   under this License and any conditions added under section 7. This
   requirement modifies the requirement in section 4 to "keep intact all
   notices".

c. You must license the entire work, as a whole, under this License to
   anyone who comes into possession of a copy. This License will
   therefore apply, along with any applicable section 7 additional
   terms, to the whole of the work, and all its parts, regardless of how
   they are packaged. This License gives no permission to license the
   work in any other way, but it does not invalidate such permission if
   you have separately received it.

d. If the work has interactive user interfaces, each must display
   Appropriate Legal Notices; however, if the Program has interactive
   interfaces that do not display Appropriate Legal Notices, your work
   need not make them do so.

A compilation of a covered work with other separate and independent
works, which are not by their nature extensions of the covered work, and
which are not combined with it such as to form a larger program, in or
on a volume of a storage or distribution medium, is called an
"aggregate" if the compilation and its resulting copyright are not used
to limit the access or legal rights of the compilation's users beyond
what the individual works permit. Inclusion of a covered work in an
aggregate does not cause this License to apply to the other parts of the
aggregate.

**6. Conveying Non-Source Forms.**

You may convey a covered work in object code form under the terms of
sections 4 and 5, provided that you also convey the machine-readable
Corresponding Source under the terms of this License, in one of these
ways:

a. Convey the object code in, or embodied in, a physical product
   (including a physical distribution medium), accompanied by the
   Corresponding Source fixed on a durable physical medium customarily
   used for software interchange.

b. Convey the object code in, or embodied in, a physical product
   (including a physical distribution medium), accompanied by a written
   offer, valid for at least three years and valid for as long as you
   offer spare parts or customer support for that product model, to give
   anyone who possesses the object code either (1) a copy of the
   Corresponding Source for all the software in the product that is
   covered by this License, on a durable physical medium customarily
   used for software interchange, for a price no more than your
   reasonable cost of physically performing this conveying of source, or
   (2) access to copy the Corresponding Source from a network server at
   no charge.

c. Convey individual copies of the object code with a copy of the
   written offer to provide the Corresponding Source. This alternative
   is allowed only occasionally and noncommercially, and only if you
   received the object code with such an offer, in accord with
   subsection 6b.

d. Convey the object code by offering access from a designated place
   (gratis or for a charge), and offer equivalent access to the
   Corresponding Source in the same way through the same place at no
   further charge. You need not require recipients to copy the
   Corresponding Source along with the object code. If the place to copy
   the object code is a network server, the Corresponding Source may be
   on a different server (operated by you or a third party) that
   supports equivalent copying facilities, provided you maintain clear
   directions next to the object code saying where to find the
   Corresponding Source. Regardless of what server hosts the
   Corresponding Source, you remain obligated to ensure that it is
   available for as long as needed to satisfy these requirements.

e. Convey the object code using peer-to-peer transmission, provided you
   inform other peers where the object code and Corresponding Source of
   the work are being offered to the general public at no charge under
   subsection 6d.

A separable portion of the object code, whose source code is excluded
from the Corresponding Source as a System Library, need not be included
in conveying the object code work.

A "User Product" is either (1) a "consumer product", which means any
tangible personal property which is normally used for personal, family,
or household purposes, or (2) anything designed or sold for
incorporation into a dwelling. In determining whether a product is a
consumer product, doubtful cases shall be resolved in favor of coverage.
For a particular product received by a particular user, "normally used"
refers to a typical or common use of that class of product, regardless
of the status of the particular user or of the way in which the
particular user actually uses, or expects or is expected to use, the
product. A product is a consumer product regardless of whether the
product has substantial commercial, industrial or non-consumer uses,
unless such uses represent the only significant mode of use of the
product.

"Installation Information" for a User Product means any methods,
procedures, authorization keys, or other information required to install
and execute modified versions of a covered work in that User Product
from a modified version of its Corresponding Source. The information
must suffice to ensure that the continued functioning of the modified
object code is in no case prevented or interfered with solely because
modification has been made.

If you convey an object code work under this section in, or with, or
specifically for use in, a User Product, and the conveying occurs as
part of a transaction in which the right of possession and use of the
User Product is transferred to the recipient in perpetuity or for a
fixed term (regardless of how the transaction is characterized), the
Corresponding Source conveyed under this section must be accompanied by
the Installation Information. But this requirement does not apply if
neither you nor any third party retains the ability to install modified
object code on the User Product (for example, the work has been
installed in ROM).

The requirement to provide Installation Information does not include a
requirement to continue to provide support service, warranty, or updates
for a work that has been modified or installed by the recipient, or for
the User Product in which it has been modified or installed. Access to a
network may be denied when the modification itself materially and
adversely affects the operation of the network or violates the rules and
protocols for communication across the network.

Corresponding Source conveyed, and Installation Information provided, in
accord with this section must be in a format that is publicly documented
(and with an implementation available to the public in source code
form), and must require no special password or key for unpacking,
reading or copying.

**7. Additional Terms.**

"Additional permissions" are terms that supplement the terms of this
License by making exceptions from one or more of its conditions.
Additional permissions that are applicable to the entire Program shall
be treated as though they were included in this License, to the extent
that they are valid under applicable law. If additional permissions
apply only to part of the Program, that part may be used separately
under those permissions, but the entire Program remains governed by this
License without regard to the additional permissions.

When you convey a copy of a covered work, you may at your option remove
any additional permissions from that copy, or from any part of it.
(Additional permissions may be written to require their own removal in
certain cases when you modify the work.) You may place additional
permissions on material, added by you to a covered work, for which you
have or can give appropriate copyright permission.

Notwithstanding any other provision of this License, for material you
add to a covered work, you may (if authorized by the copyright holders
of that material) supplement the terms of this License with terms:

a. Disclaiming warranty or limiting liability differently from the terms
   of sections 15 and 16 of this License; or

b. Requiring preservation of specified reasonable legal notices or
   author attributions in that material or in the Appropriate Legal
   Notices displayed by works containing it; or

c. Prohibiting misrepresentation of the origin of that material, or
   requiring that modified versions of such material be marked in
   reasonable ways as different from the original version; or

d. Limiting the use for publicity purposes of names of licensors or
   authors of the material; or

e. Declining to grant rights under trademark law for use of some trade
   names, trademarks, or service marks; or

f. Requiring indemnification of licensors and authors of that material
   by anyone who conveys the material (or modified versions of it) with
   contractual assumptions of liability to the recipient, for any
   liability that these contractual assumptions directly impose on those
   licensors and authors.

All other non-permissive additional terms are considered "further
restrictions" within the meaning of section 10. If the Program as you
received it, or any part of it, contains a notice stating that it is
governed by this License along with a term that is a further
restriction, you may remove that term. If a license document contains a
further restriction but permits relicensing or conveying under this
License, you may add to a covered work material governed by the terms of
that license document, provided that the further restriction does not
survive such relicensing or conveying.

If you add terms to a covered work in accord with this section, you must
place, in the relevant source files, a statement of the additional terms
that apply to those files, or a notice indicating where to find the
applicable terms.

Additional terms, permissive or non-permissive, may be stated in the
form of a separately written license, or stated as exceptions; the above
requirements apply either way.

**8. Termination.**

You may not propagate or modify a covered work except as expressly
provided under this License. Any attempt otherwise to propagate or
modify it is void, and will automatically terminate your rights under
this License (including any patent licenses granted under the third
paragraph of section 11).

However, if you cease all violation of this License, then your license
from a particular copyright holder is reinstated (a) provisionally,
unless and until the copyright holder explicitly and finally terminates
your license, and (b) permanently, if the copyright holder fails to
notify you of the violation by some reasonable means prior to 60 days
after the cessation.

Moreover, your license from a particular copyright holder is reinstated
permanently if the copyright holder notifies you of the violation by
some reasonable means, this is the first time you have received notice
of violation of this License (for any work) from that copyright holder,
and you cure the violation prior to 30 days after your receipt of the
notice.

Termination of your rights under this section does not terminate the
licenses of parties who have received copies or rights from you under
this License. If your rights have been terminated and not permanently
reinstated, you do not qualify to receive new licenses for the same
material under section 10.

**9. Acceptance Not Required for Having Copies.**

You are not required to accept this License in order to receive or run a
copy of the Program. Ancillary propagation of a covered work occurring
solely as a consequence of using peer-to-peer transmission to receive a
copy likewise does not require acceptance. However, nothing other than
this License grants you permission to propagate or modify any covered
work. These actions infringe copyright if you do not accept this
License. Therefore, by modifying or propagating a covered work, you
indicate your acceptance of this License to do so.

**10. Automatic Licensing of Downstream Recipients.**

Each time you convey a covered work, the recipient automatically
receives a license from the original licensors, to run, modify and
propagate that work, subject to this License. You are not responsible
for enforcing compliance by third parties with this License.

An "entity transaction" is a transaction transferring control of an
organization, or substantially all assets of one, or subdividing an
organization, or merging organizations. If propagation of a covered work
results from an entity transaction, each party to that transaction who
receives a copy of the work also receives whatever licenses to the work
the party's predecessor in interest had or could give under the previous
paragraph, plus a right to possession of the Corresponding Source of the
work from the predecessor in interest, if the predecessor has it or can
get it with reasonable efforts.

You may not impose any further restrictions on the exercise of the
rights granted or affirmed under this License. For example, you may not
impose a license fee, royalty, or other charge for exercise of rights
granted under this License, and you may not initiate litigation
(including a cross-claim or counterclaim in a lawsuit) alleging that any
patent claim is infringed by making, using, selling, offering for sale,
or importing the Program or any portion of it.

**11. Patents.**

A "contributor" is a copyright holder who authorizes use under this
License of the Program or a work on which the Program is based. The work
thus licensed is called the contributor's "contributor version".

A contributor's "essential patent claims" are all patent claims owned or
controlled by the contributor, whether already acquired or hereafter
acquired, that would be infringed by some manner, permitted by this
License, of making, using, or selling its contributor version, but do
not include claims that would be infringed only as a consequence of
further modification of the contributor version. For purposes of this
definition, "control" includes the right to grant patent sublicenses in
a manner consistent with the requirements of this License.

Each contributor grants you a non-exclusive, worldwide, royalty-free
patent license under the contributor's essential patent claims, to make,
use, sell, offer for sale, import and otherwise run, modify and
propagate the contents of its contributor version.

In the following three paragraphs, a "patent license" is any express
agreement or commitment, however denominated, not to enforce a patent
(such as an express permission to practice a patent or covenant not to
sue for patent infringement). To "grant" such a patent license to a
party means to make such an agreement or commitment not to enforce a
patent against the party.

If you convey a covered work, knowingly relying on a patent license, and
the Corresponding Source of the work is not available for anyone to
copy, free of charge and under the terms of this License, through a
publicly available network server or other readily accessible means,
then you must either (1) cause the Corresponding Source to be so
available, or (2) arrange to deprive yourself of the benefit of the
patent license for this particular work, or (3) arrange, in a manner
consistent with the requirements of this License, to extend the patent
license to downstream recipients. "Knowingly relying" means you have
actual knowledge that, but for the patent license, your conveying the
covered work in a country, or your recipient's use of the covered work
in a country, would infringe one or more identifiable patents in that
country that you have reason to believe are valid.

If, pursuant to or in connection with a single transaction or
arrangement, you convey, or propagate by procuring conveyance of, a
covered work, and grant a patent license to some of the parties
receiving the covered work authorizing them to use, propagate, modify or
convey a specific copy of the covered work, then the patent license you
grant is automatically extended to all recipients of the covered work
and works based on it.

A patent license is "discriminatory" if it does not include within the
scope of its coverage, prohibits the exercise of, or is conditioned on
the non-exercise of one or more of the rights that are specifically
granted under this License. You may not convey a covered work if you are
a party to an arrangement with a third party that is in the business of
distributing software, under which you make payment to the third party
based on the extent of your activity of conveying the work, and under
which the third party grants, to any of the parties who would receive
the covered work from you, a discriminatory patent license (a) in
connection with copies of the covered work conveyed by you (or copies
made from those copies), or (b) primarily for and in connection with
specific products or compilations that contain the covered work, unless
you entered into that arrangement, or that patent license was granted,
prior to 28 March 2007.

Nothing in this License shall be construed as excluding or limiting any
implied license or other defenses to infringement that may otherwise be
available to you under applicable patent law.

**12. No Surrender of Others' Freedom.**

If conditions are imposed on you (whether by court order, agreement or
otherwise) that contradict the conditions of this License, they do not
excuse you from the conditions of this License. If you cannot convey a
covered work so as to satisfy simultaneously your obligations under this
License and any other pertinent obligations, then as a consequence you
may not convey it at all. For example, if you agree to terms that
obligate you to collect a royalty for further conveying from those to
whom you convey the Program, the only way you could satisfy both those
terms and this License would be to refrain entirely from conveying the
Program.

**13. Use with the GNU Affero General Public License.**

Notwithstanding any other provision of this License, you have permission
to link or combine any covered work with a work licensed under version 3
of the GNU Affero General Public License into a single combined work,
and to convey the resulting work. The terms of this License will
continue to apply to the part which is the covered work, but the special
requirements of the GNU Affero General Public License, section 13,
concerning interaction through a network will apply to the combination
as such.

**14. Revised Versions of this License.**

The Free Software Foundation may publish revised and/or new versions of
the GNU General Public License from time to time. Such new versions will
be similar in spirit to the present version, but may differ in detail to
address new problems or concerns.

Each version is given a distinguishing version number. If the Program
specifies that a certain numbered version of the GNU General Public
License "or any later version" applies to it, you have the option of
following the terms and conditions either of that numbered version or of
any later version published by the Free Software Foundation. If the
Program does not specify a version number of the GNU General Public
License, you may choose any version ever published by the Free Software
Foundation.

If the Program specifies that a proxy can decide which future versions
of the GNU General Public License can be used, that proxy's public
statement of acceptance of a version permanently authorizes you to
choose that version for the Program.

Later license versions may give you additional or different permissions.
However, no additional obligations are imposed on any author or
copyright holder as a result of your choosing to follow a later version.

**15. Disclaimer of Warranty.**

THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY
APPLICABLE LAW. EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT
HOLDERS AND/OR OTHER PARTIES PROVIDE THE PROGRAM "AS IS" WITHOUT
WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
PARTICULAR PURPOSE. THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF
THE PROGRAM IS WITH YOU. SHOULD THE PROGRAM PROVE DEFECTIVE, YOU ASSUME
THE COST OF ALL NECESSARY SERVICING, REPAIR OR CORRECTION.

**16. Limitation of Liability.**

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MODIFIES AND/OR
CONVEYS THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,
INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES
ARISING OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT
NOT LIMITED TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES
SUSTAINED BY YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE
WITH ANY OTHER PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN
ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.

**17. Interpretation of Sections 15 and 16.**

If the disclaimer of warranty and limitation of liability provided above
cannot be given local legal effect according to their terms, reviewing
courts shall apply local law that most closely approximates an absolute
waiver of all civil liability in connection with the Program, unless a
warranty or assumption of liability accompanies a copy of the Program in
return for a fee.

**END OF TERMS AND CONDITIONS**

**How to Apply These Terms to Your New Programs**

If you develop a new program, and you want it to be of the greatest
possible use to the public, the best way to achieve this is to make it
free software which everyone can redistribute and change under these
terms.

To do so, attach the following notices to the program. It is safest to
attach them to the start of each source file to most effectively state
the exclusion of warranty; and each file should have at least the
"copyright" line and a pointer to where the full notice is found.

::

    one line to give the program's name and a brief idea of what it does.
    Copyright (C) year name of author

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see http://www.gnu.org/licenses/.


Also add information on how to contact you by electronic and paper mail.

If the program does terminal interaction, make it output a short notice
like this when it starts in an interactive mode:

::

    program Copyright (C) year name of author
    This program comes with ABSOLUTELY NO WARRANTY; for details type `show w'.
    This is free software, and you are welcome to redistribute it
    under certain conditions; type `show c' for details.


The hypothetical commands \`\ ``show w``' and \`\ ``show c``' should
show the appropriate parts of the General Public License. Of course,
your program's commands might be different; for a GUI interface, you
would use an "about box".

You should also get your employer (if you work as a programmer) or
school, if any, to sign a "copyright disclaimer" for the program, if
necessary. For more information on this, and how to apply and follow the
GNU GPL, see http://www.gnu.org/licenses/.

The GNU General Public License does not permit incorporating your
program into proprietary programs. If your program is a subroutine
library, you may consider it more useful to permit linking proprietary
applications with the library. If this is what you want to do, use the
GNU Lesser General Public License instead of this License. But first,
please read http://www.gnu.org/philosophy/why-not-lgpl.html.
