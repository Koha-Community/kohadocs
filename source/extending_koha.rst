.. include:: images.rst

Extending Koha
==================

This chapter shows how you can add various enhancements and customizations
in and around Koha by using mostly the existing configuration options.

.. _amazon-lookup-script-for-koha-libraries-label:

Amazon lookup script for Koha libraries
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

Others have added all sorts of bells & whistles: custom messages based on the status of items (on
order, on hold, etc.), ... just search the UserScripts site for Amazon +
library. For a later date!

.. _keyword-clouds-label:

Keyword Clouds
-----------------------------------------

In addition to the traditional tag cloud available in Koha, there is a
way to generate clouds for popular subjects within Koha.

The :ref:`Author/Subject Cloud cron job <subject/author-clouds-label>` is used to help
with this process. This cron job sends its output to files.

-  /home/koha/mylibrary/koharoot/koha-tmpl/cloud-author.html

-  /home/koha/yourlibrary/koharoot/koha-tmpl/cloud-subject.html

This means that you can produce clouds for authors, collective author,
all kind of subjects, classifications, etc. And since it works on zebra
indexes, it is quick, even on large DBs. Tags clouds are sent to files.
It's up to library webmaster to deal with those files in order to
include them in :ref:`OPACMainUserBlock <opacmainuserblock-label>`, or include
them into their library CMS.

Some libraries even send the file into a Samba shared folder where
webmaster take them, eventually clean them a little bit before
integrating them into navigation widgets or pages.

.. _newest-titles-pulldown-label:

Newest Titles Pulldown
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

.. _new-titles-slider-for-opac-label:

New titles slider for OPAC
--------------------------

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
mobile platforms as well, and are even touch responsive!

|image1316|

.. _cataloging-and-searching-by-color-label:

Cataloging and Searching by Color
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
:ref:`Authorized Values` administration area.

|image1118|

Next you'll want to :ref:`update the frameworks <marc-bibliographic-frameworks-label>` so
that the 952$8 (if you're using collection code) label to says Color.

Once you have that in place you can start to catalog items by color.

Finally you'll want to add the following JQuery to your preferences so
that it will relabel 'Collection' to 'Color'

:ref:`IntranetUserJS`

::

    $(document).ready(function(){
        $("#advsearch-tab-ccode a:contains('Collection')").text("Color");
        $("#holdings th:contains('Collection')").text("Color");
        });

:ref:`OPACUserJS`

::

    $(document).ready(function(){
        $("#advsearch-tab-ccode a:contains('Collection')").text("Color");
        $('#item_ccode').text("Color");
        });

.. _koha-search-on-your-site-label:

Using Koha as a Content Management System (CMS)
-----------------------------------------------

.. _setup-label:

Setup
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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

       template_name  => "opac-main.tt",

-  To this code:

   ::

       template_name  => "pages.tt",

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

.. _editing-the-pages-template-label:

Editing the pages template
^^^^^^^^^^^^^^^^^^^^^^^^^^

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

.. _troubleshooting-label:

Troubleshooting
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you have problems check file permissions on pages.pl and pages.tt.
They should have the same user and group as other Koha files like
opac-main.pl.

.. _bonus-points-label:

Bonus Points
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Instead of using the address
http://youraddress/cgi-bin/koha/pages.pl?p=test you can shorten it to
http://youraddress/pages.pl?p=test Just open up
/etc/koha/koha-httpd.conf and add the follow at about line 13:

::

    ScriptAlias /pages.pl "/usr/share/koha/opac/cgi-bin/opac/pages.pl"

Then restart Apache.

.. _usage-label:

Usage
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

After setting up Koha as a CMS you can create new pages following these
instructions:

.. _adding-pages-label:

Adding Pages
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To add a new page you need to add a system preference under Local Use.

-  Get there: More > Administration > Global System Preferences > Local
   Use

-  Click 'New Preference'

-  Enter in a description in the Explanation field

-  Enter a value that starts with 'page\_' in the Variable field

-  Enter starting HTML in the Value field

   |image1076|

-  Set the Variable Type to Textarea

-  Set the Variable options to something like 20\|20 for 20 rows and 20
   columns

   |image1077|

.. _viewing-your-page-label:

Viewing your page
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You can view your new page at
http://YOUR-OPAC/cgi-bin/koha/pages.pl?p=PAGENAME where PAGENAME is the
part you entered after 'page\_' in the Variable field.

.. _example-label:

**Example**

This process can be used to create recommended reading lists within
Koha. So once the code changes have been made per the instructions on
'Koha as a CMS' you go through the 'Adding a New Page' instructions
above to great a page for 'Recommended Reading Lists'

|image1078|

Next we need to create pages for our various classes (or categories). To
do this, return to the 'Adding a New Page' section and create a
preference for the first class.

|image1079|

Next you'll want to link your first page to your new second page, go to
the page\_recommend preference and click 'Edit.' Now you want to edit
the HTML to include a link to your newest page:

|image1080|

.. _live-examples-label:

**Live Examples**

-  The Crawford Library at Dallas Christian College is using this method
   for their recommended reading lists: http://opac.dallas.edu/

Koha search on your site
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
