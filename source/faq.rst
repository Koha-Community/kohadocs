.. include:: images.rst

.. _faqs-label:

FAQs
====

.. _faq-installation-label:

Installation
------------------------

**Question:** How can I find out what version of Koha I am using?

**Answer:** The easiest way to find out your Koha version is taking a look
at the About page of the staff interface.

You can also find out from the OPAC by taking a look at the HTML source.
It will look something like:

::

    <meta name="generator" content="Koha 18.1200000" /> <!-- leave this for stats -->

**Question:** Should I use the Debian packages or the tarball to install Koha?

**Answer:** For the beginning user, it is highly recommended to use the
package install of Koha - it provides many simple commands to do powerful
things to your Koha installation. Packages should almost always be your
choice of install on an ordinary production Koha install.
A relative minimum of system administration skill is required to install
Koha using the Debian packages.

Instructions for using the packages with `Debian <https://wiki.koha-community.org/wiki/Debian>`_.

Installing from tarball or git is the only option for people not installing on Debian or Ubuntu.

Developers should give the `KohaDevBox <https://gitlab.com/koha-community/kohadevbox>`_
a look, it's the easiest, quickest way to get a Developer instance of Koha going.

.. _faq-opac-and-staff-interface-label:

OPAC and staff interface
-------------------------

.. _faq-cookies-label:

**Question:** What cookies does Koha use?

**Answer:** The cookies Koha uses on the OPAC and in the staff interface
are documented in the Koha Community wiki:

https://wiki.koha-community.org/wiki/Use_of_Cookies

Cookies
~~~~~~~~~~~~~~~~~~~~~~~~~

.. _faq-custom-item-type-authorized-value-icons-label:

Custom item type/authorized value icons
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question:** Can I have my own set of item type images (or authorized
value icons)?

**Answer:** Absolutely. To add additional icons to your system you
simply add a new directory to
koha-tmpl/intranet-tmpl/prog/img/itemtypeimg/ and to
koha-tmpl/opac-tmpl/bootstrap/itemtypeimg and put your icons in the new
directory. Your icons will show up in a new tab as soon as they are in
the folders.

-  **Note**

       Remember to put the icons in both places (on the OPAC and the
       intranet).

.. _faq-customizing-koha-images-label:

Customizing Koha images
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Can I customize the images in the OPAC?

**Answer**: Absolutely. Koha comes with a series of original images that
you can alter to meet your needs. The originals can be found in the
misc/interface\_customization/ directory.

.. _faq-opac-display-fields-label:

OPAC display fields
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: What MARC fields print to the different OPAC screens in
Koha?

**Answer**: The XSLT preference must be set as follows for the following
fields to show

-  :ref:`OPACXSLTResultsDisplay` = using XSLT
   stylesheets

-  :ref:`OPACXSLTDetailsDisplay` = using XSLT
   stylesheets

-  :ref:`DisplayOPACiconsXSLT` = show

The OPAC results page shows:

-  245

-  100, 110, 111

-  700, 710, 711

-  250

-  260

-  246

-  856

The OPAC details page shows:

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

-  plus all of the 5xx fields in the 'Notes' tab at the bottom

.. _faq-show-patrons-the-barcodes-of-items-they-have-checked-out-label:

Show patrons the barcodes of items they have checked out
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Can patrons see the barcodes for the items they have
checked out.

**Answer**: Not by default, but with a few edits to the patron record
you can make a barcode column appear on the patron's check out summary
in the OPAC. You can set up a :ref:`patron
attribute <patron-attribute-types-label>` with the value of SHOW\_BCODE and
:ref:`authorized value <authorized-values-label>` of YES\_NO to make this happen.

|image1112|

Then on the :ref:`patron's record set the value <editing-patrons-label>` for
SHOW\_BCODE to yes.

|image1113|

This will add a column to the check out summary in the OPAC that shows
the patrons the barcodes of the items they have checked out.

|image1114|

Clicking on the 'Overdue' tab will show only the items that are overdue.

.. _faq-circulation-notices-label:

Circulation/Notices
----------------------------------

.. _faq-fees-and-fines-label:

Fees and fines
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Why am I getting fined 5.00 for every loan?

**Answer**: The money you are seeing on your patron's account isn't a fine,
but a rental fee. The optional default item types that come with the Koha sample data
might contain a rental fee. To remove this fee, do the following:

-  Click More > Administration

-  Click Item types

-  Note which item types have a 5.00 fee associated with them, select them for editing

-  Remove the fee, and save the item type

.. _faq-book-drop-date-label:

Book drop
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: How is the book drop date determined? Is it the last
open date for the checkout library? Is it today's date minus one? Can the
book drop checkin date be set?

**Answer**: If the library is closed for four days for renovations, for
example, there would be more than one day needed for the book drop date.
You will only have one book drop date and that will be the last day that
the library was open (determined by the holiday calendar) because there is
no real way to know what day the books were dropped into the box during
the 4 closed days.

If you need to set a different checkin date, you can use
the :ref:`SpecifyReturnDate` system preference. This will allow you to
set an arbitrary date and any overdue fines will be recalculated
accordingly.

.. _faq-holds-to-pull-and-holds-queue-label:

Holds to pull and holds queue
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: What is the difference between the :ref:`Holds
queue <holds-queue-label>` and :ref:`Holds to pull <holds-to-pull-label>`
reports?

**Answer**: The holds to pull report gives a simple list of what holds
need to be filled with available items. It shows the 'live' data of your
database, so new holds will turn up there immediately.
It shows information about each hold including all libraries where items of
the requested title are available.

The holds queue report is divided by libraries and will list the hold only
for one library where it is available. For libraries with lots of holds and
multiple branches this will prevent multiple libraries pulling the item
off the shelf at the same time.

The holds queue report is generated by the :ref:`build_holds_queue.pl <cron-holds-queue-report-label>`
cron job. By default it runs hourly, but it might be changed to run at any other
interval. There are various configuration options to determine the library
to provide the item. For example:

-  :ref:`Library transfer limits <library-transfer-limits-label>`
-  :ref:`Transport cost matrix <transport-cost-matrix-label>`
-  :ref:`StaticHoldsQueueWeight <holds-queue-system-preferences-label>`,
   :ref:`HoldsQueueSkipClosed <holds-queue-system-preferences-label>`, and
   :ref:`RandomizeHoldsQueueWeight <holds-queue-system-preferences-label>` system preferences

.. _faq-printing-overdue-notices-label:

Printing overdue notices
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Can I print overdue notices for patrons without email
addresses on file?

**Answer**: Yes. By default Koha will email all overdue notices to
patrons without email address to the library.

Additionally the :ref:`overdue notice cron job <cron-overdue-notice-label>`
has a setting to generate the overdue notices as HTML for printing. An
example of this usage would be:

::
    overdue_notices.pl -t -html /tmp/noticedir -itemscontent issuedate,date_due,title,barcode,author

In this example, we wanted to use only certain item fields in our
notices, so we specified itemscontent fields in the cron entry; that's
not a requirement for the feature.

The command line needs to specify a web-accessible directory where the
print notices will go -- they get a filename like
notices-2018-11-24.html (or holdnotices-2018-11-24.html). The overdue
notice itself can be formatted to fit a Z-mailer. Within the notice
file, the text is spaced down or over to where it will print properly on
the form. The script has code that wraps around the notice file to tell
the HTML to obey the formatting, and to do a page break between notices.
The system preference :ref:`PrintNoticesMaxLines` can be used to specify
the page length for libraries that allow a lot of checkouts which can lead
to some notices running onto multiple pages. That system preference
says to truncate the print notice at that page length and put in a
message about go check your OPAC account for the full list.

The cron entry is :ref:`gather\_print\_notices.pl <cron-print-hold-notices-label>` /tmp/noticedir

.. _faq-unable-to-renew-items-label:

Unable to renew items
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: We're trying to renew some items for our patron. One of
the items is on hold and ineligible for renewal, but the other two items
refuse to renew even though they should be eligible. When I try to use
the override renewal limit, it just returns a little message that says
"renewal failed". Any idea what's going on here?

**Answer**: At the very least you will need to set an absolute
:ref:`default circulation rule <circulation-and-fines-rules-label>`. This rule
should be as standard rule for all libraries, 'All' itemtype', and 'All' patron
category. That will catch anyone who doesn't match a specific rule. Patrons who
do not match a specific rule will get blocked from placing holds or renewing
items, since there was no baseline number of holds or renewals to utilize.

.. _faq-unable-to-place-holds-label:

Unable to place holds
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Why can't I place holds when I have all of the preferences
turned on.

**Answer**: You probably need to set a default circulation rule in your
:ref:`Circulation and fines rules <circulation-and-fines-rules-label>`. At the
very least you will need to set a default circulation rule. his rule should be as
standard rule for all libraries, 'All' itemtype', and 'All' patron category.
That will catch all instances that do not match a specific
rule.

The ability to place holds also depends on the 'On shelf holds allowed' setting
in the used circulation rule. Depending on the setting, it might not be
possible to place a hold, unless all or at least one item of the record
is checked out.

.. _faq-keyboard-shortcuts-label:

Keyboard shortcuts
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Do I have to use my mouse to access the checkout, checkin,
renewal and catalog tabs at the top of the circulation pages?

**Answer**: You can jump between the tabs on the quick search box at the
top of the screen by using the following hot keys (if the tab is
available):

-  jump to the catalog search with Alt+q

-  jump to the checkout with Alt+u

   -  this will not work for Mac user

-  jump to the renewal tab with Alt+w

-  jump to the checkin with Alt+r

    **Note**

    Mac users use the OPTION button in place of Alt

.. _faq-sms-notices-messages-label:

SMS notices/messages
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

Alternatively you can configure Koha to send SMS via Email. In order
to use this feature you need to set the :ref:`SMSSendDriver` system
preference to 'Email' and confiugre the email gateways for the different
:ref:`SMS cellular providers <sms-cellular-providers-label>` of your patrons.

In any case you might want to check if sending SMS to your patrons is
legal in your location.

**Question**: What about in India?

**Answer**: India does not yet have too many options here. This is
partly due to the Telecom regulatory authority's (TRAI) stipulations
about transactional SMSes and limits on the number of SMSes that may be
sent/received per users per day. India specific drivers include:

-  Unicel Technologies Pvt Ltd (`unicel.in <http://unicel.in>`__)

.. _faq-email_notices-messages-label:

Email notices/messages
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: How do I prevent my libraries notices ending up marked as spam?

**Answer**: This is a complicated topic, but thankfully Koha gives you a good
degree of control via various system preferences.

For every email sent out from Koha there are three important addresses for the
system to get correct, *From*, *Reply-to* and *Sender*. These are configurable
at both the system and library level and should fallback in a suitable manor if
any of them are not defined.

* KohaAdminEmailAddress - This will act as the *From* address and should be an
  address in the same domain as the koha server [for example noreply@koha-hosting.org]
* ReplytoDefault - This will act as the *Reply-to* address and can be in any
  domain [for example librarian@mylibrary.com] and this is the address which will
  be used if/when a patron hits 'Reply' in their email client. Note: This will
  fall back to KohaAdminEmailAddress when it is not set.
* ReturnpathDefault - This will act as the *Sender* address and also needs to be
  within the koha/email servers domain [for example postmaster@koha-hosting.org]
  and this is the address which will be used to report if an email bounces for any
  reason.

There are parallels to all the above preferences at the per branch level which
fall back in the same order as mentioned aboved before falling back to the system
level preferences above when required.

If you have the above configured correctly and your emails are still being
treated as spam then you likely need to contact your email service provider/dns
provider and look into MX, SPF and DKIM records.

.. _faq-cataloging-label:

Cataloging
------------------------

.. _faq-authorities-label:

Authorities
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question:** Why can't I edit 1xx, 6xx, or 7xx fields in my catalog
record?

**Answer:** These fields are authority controlled and you probably have
the :ref:`BiblioAddsAuthorities` set to "Don't
allow". When it is set to "Don't allow" these fields will be locked and
require you to search for an existing authority record to populate the
field with. To allow typing in these authority fields set
:ref:`BiblioAddsAuthorities` to 'Allow'.

    **Note**

    Fields affected by this preference will show a lock symbol in them

|image1115|

**Question:** Can I use Koha without creating authority records?

**Answer:** If you don't want to create authorities for your reacords at all, you can
remove the authority link by blanking the Thesaurus setting for the fields
in your MARC bibliographic frameworks. See also:
:ref:`Edit framework subfields <edit-framework-fields-and-subfields-label>`

.. _faq-koha-to-marc-mapping-label:

Koha to MARC mapping
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: What's the relationship between 'Koha to MARC mapping' and
'MARC bibliographic frameworks'?

**Answer**: Mappings can be defined through 'MARC bibliographic
frameworks' OR 'Koha to MARC mapping'. 'Koha to MARC mapping' is just a
shortcut to speed up linkage. If you change a mapping in one of these
modules, the mapping will change in the other as well. In other words,
the two modules 'overwrite' each other in order to prevent conflicts
from existing in Koha.

.. _faq-number-of-items-per-bib-record-label:

Number of items per bibliographic record
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Is there a limit on the number of items I can attach to a
bib record?

**Answer**: There is no limit to the number of items you can
attach to a bibliographic record. For records with a big number of items
exporting the MARC record as ISO 2709 might be problematic as this format
has a size limit. Item numbers somewhere between 600 and 1000 items on a
'normal' bibliographic record should be ok.

.. _faq-analytics-label:

Analytics
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: I am using the
:ref:`EasyAnalyticalRecords` feature, but my links
in the OPAC and Staff client to 'Show analytics' are not working.

**Answer**: If you plan on using
:ref:`EasyAnalyticalRecords` you will want to make
sure to set your :ref:`UseControlNumber` preference to
"Don't use," this will prevent broken links.

.. _faq-acquisitions-label:

Acquisitions
--------------------------

.. _faq-planning-categories-label:

Planning categories
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

The list is meant to represent when the books acquired were published.
Then you plan for it, saying: we want to spend at least 40% of our
budgets on books published less than a year ago, 10% on books more than
10 years old, etc.

Upon acquiring new material, you'll be able to select, for a given item,
a value from this list in a drop down. Then, after the material has been
acquired, at the end of the year, you'll be able to compare the goals
set with what's been achieved.

.. _faq-serials-label:

Serials
-------------------------

.. _faq-advanced-patterns-label:

Advanced patterns
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

-  Every : 12

-  When more than: 9999999

-  Inner counter: 3

-  Set back to: 0

-  Begins with: 2010

Year is going to change after 12 received issues from April 2010, that
is in April 2011 if you don't set inner counter. Set inner counter to 3
will say to Koha: change year after 12-3 = 9 received issues.

Inner counter says to Koha to take into account the first issues of the
year, even if they are not received with Koha. If you begin with first
issue of the year write nothing or 0.

.. _faq-reports-label:

Reports
-------------------------

.. _faq-sql-help-label:

SQL help
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question:** I don't know SQL, but I want to write a report that does X.
Can you tell me how?

**Answer:** The `Koha reports library <https://wiki.koha-community.org/wiki/SQL_Reports_Library>`_ on the Koha wiki is a good starting point
and contains a lot of SQL reports shared by other libraries that can be
reused and adapted.

`Koha's database schema <https://schema.koha-community.org>`_ is also publicly documented and contains helpful
notes on how the columns in the various tables are used.

If you get stuck people on the community mailing lists will often be
willing to help you.

.. _faq-define-codes-stored-in-db-label:

Codes stored in the database
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _faq-statistics-table-label:

Statistics table
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question:** What are the possible codes for the type field in the
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

.. _faq-reserves-table-label:

Reserves table
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What are the possible codes for the found field in the
reserves and old\_reserves tables?

**Answer**:

-  NULL: means the patron requested the 1st available, and we haven't
   chosen the item

-  T = Transit: the hold is linked to an item but is in transit to
   the pickup library

-  W = Waiting: the hold is linked to an item, is at the pickup
   library, and is waiting on the hold shelf

-  F = Finished: the reserve has been completed, and is done

.. _faq-reports-dictionary-table-label:

Reports dictionary table
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What are the possible codes for the area field in the
reports\_dictionary table?

**Answer**:

-  1 = Circulation

-  2 = Catalog

-  3 = Patrons

-  4 = Acquisitions

-  5 = Accounts

.. _faq-messages-table-label:

Messages table
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What are the possible codes for the message\_type field in
the messages table?

**Answer**:

-  L = For Librarians

-  B = For Patrons/Borrowers

.. _faq-serial-table-label:

Serial table
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

.. _faq-borrowers-table-label:

Borrowers table
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What are the possible codes for the privacy field in the
borrowers and deleted_borrowers tables?

**Answer**:

-  0 = Forever

-  1 = Default

-  2 = Never

.. _faq-patron-categories-table-label:

Patron categories table
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What are the possible codes for the category types?

**Answer**:

-  A = Adult

-  C = Child

-  I = Organization

-  P = Professional

-  S = Staff

-  X = Statistical

.. _faq-messaging-preferences-label:

Messaging preferences
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What are the possible codes in the message\_attribute\_id
field in the borrower\_message\_preferences table?

**Answer**:

-  2 = advanced notice

-  6 = item checkout

-  4 = hold filled

-  1 = item due

-  5 = item check in

.. _faq-runtime-parameters-label:

Runtime parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Is there a way to filter my custom SQL reports before they
run?

**Answer**: If you want to make your reports easy to reuse with different
filters and date ranges, you can add runtime parameters to your query.
Runtime parameters basically make a filter appear before the report is
run.

There is a specific syntax that Koha will understand as 'ask for values
when running the report'. The syntax is <<Question to
ask\[\|type]>>.

-  The << and >> are just delimiters. You must put << at the beginning
   and >> at the end of your parameter

-  The 'Question to ask' will be displayed as a label before the form
   field.

-  The type can be omitted if you want a free text input field. If it
   contains an authorized value category, 'branches' (libraries), 'itemtype'
   (itemtypes), 'categorycode' (patron categories), or 'biblio\_framework'
   (MARC bibliographic frameworks), a pull down will be displayed
   with the options from your configuration instead of a free text field.

-  When using 'date' as type, the date picker will be displayed to help
   with entering dates. The date will be automatically changed to the ISO
   date needed for the SQL query, while you can enter it according to your
   :ref:`DateFormat` system preference setting.

-  Note that you can
   have more than one parameter in one SQL query. If you need the same value
   multiple times in your SQL query, make sure you use the same label. This
   will make the form field only appear once.

-  Note that entering
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
   branch\|branches>> and barcode like <<Partial barcode value here, use
   % to truncate>>

-  SELECT title, author FROM biblio WHERE frameworkcode=<<Enter the
   frameworkcode\|biblio\_framework>>

    |image1116|

    **Note**

    You have to use 'like' in your SQL query and put "%" in a text box
    to 'leave it blank'. Otherwise, it literally looks for "" (empty string)
    as the value for the field.

.. _faq-searching-label:

Searching
--------------------------

.. _faq-advanced-search-label:

Advanced search
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _faq-scan-indexes-label:

Scan indexes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What does 'scan indexes' on the advanced search page mean?

**Answer**: When you choose an index, enter a term, click 'scan indexes'
and do the search, Koha displays the searched term and the following
terms found in this index with the number of corresponding records. That
search is not made directly in the catalog, but first in the indexes.
It works only for one index at once, and only with no limit on library or
library group (All libraries needed).

.. _faq-searching-for-terms-that-start-with-a-character-label:

Searching for terms that start with a character
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: How do I search for all titles that start with the letter
'C'?

**Answer**: You can choose to search for things that start with a
character or series of characters by using the CCL 'first-in-subfield'

-  example: ti,first-in-subfield=C

.. _faq-wildcard-searching-label:

Wildcard searching
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
'%' searches for similar terms.

.. _faq-title-searching-label:

Title searching
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Why does my Zebra title search for 'Help' not turn up 'The
help' in the first pages of results?

**Answer**: In general, the more terms you enter, the better your results will
be. Koha doesn't use stop words, so searching for "the" and "an" will work
just fine. So "the help" shoudl bring better results than just a title search
for help. Also using "Title, phrase" would further improve the results as it
means that these terms have to appear in this sequence and with no other
terms in between.

Some system preferences are known to affect relevancy ranking negatively.
These are :ref:`QueryAutoTruncate` and :ref:`UseICU`. With the latter also
requiring the server setup to actually use ICU for indexing.

Note: If multiple results have the same relevancy score, they will be
sorted by biblionumber as second criteria.

.. _faq-reset-the-zebra-index-label:

Reset the Zebra index
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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

.. _faq-enhanced-content-label:

Enhanced content
------------------------------------------

.. _faq-amazon-label:

Amazon
~~~~~~~~~~~~~~~~~~~~

.. _faq-all-amazon-content-label:

All Amazon content
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

Amazon also requires an ISBN for displaying book covers - make sure that
you have the correct ISBN for your title. If you are having trouble with
a book that seems like it should have a cover but doesn't turn one up,
give it a try with the 10 digit ISBN in the first 020a. If you have a
10 digit and it's not turning up, try with the 13 digit ISBN in the first
020a.

.. _faq-system-administration-label:

Server administration
--------------------------------------

.. _faq-making-z39.50-target-public-label:

Making Z39.50 target public
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: How can I configure Zebra to make my database searchable
via Z39.50?

**Answer**: Edit the KOHA\_CONF file that your Koha is using. Uncomment
the publicserver line like:

<!-- <listen id="publicserver" >tcp:@:9999</listen> -->

to be:

<listen id="publicserver" >tcp:@:9999</listen>

Then restart zebasrv and connect on the port specified (9999).

.. _faq-shelving-location-authorized-values-label:

Shelving location authorized values
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: When editing an item, the new shelving location I created
is not showing up by default in the items where I assigned it to.

**Answer**: One possible reason is that you created the location
in the LOC authorized value category with the code '' or 0 (zero). This
will be treated as 'no location' and not display correctly.

.. _faq-why-do-i-need-authorized-values-label:

Why do I need authorized values?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Why would I want to define authorized values for MARC
tags?

**Answer**: Authorized values create a 'controlled vocabulary' for your
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

.. _faq-how-do-i-clean-up-the-sessions-table-label:

How do I clean up the sessions table?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Is there a periodic job that can be run to cull old
sessions from the table? We don't want to backup all the useless session
data every night.

**Answer**: You can regularly run the :ref:`cleanup database cron job <cron-clean-up-database-label>`.

Or just before doing a backup command (mysqldump), you can truncate
session table:  

::

    mysql -u<kohauser -p<password <koha-db-name -e 'TRUNCATE TABLE sessions'

.. _faq-hardware-label:

Hardware
---------------------------

.. _faq-barcode-scanners-label:

Barcode scanners
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: What barcode scanners have been known to work with Koha?

**Answer**: The simple rule of thumb is: does it act like a keyboard
device? If so, it will work. (i.e. can you take the scanner, scan a
barcode and have it show up in a text editor.)

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

.. _faq-printers-label:

Printers
~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _faq-printers-used-by-koha-libraries-label:

Printers used by Koha libraries
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

General rule of thumb here is that if you can print with the printer
from your browser, it will work with Koha.

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

.. _faq-braille-support-label:

Braille support
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: Are there any braille embossers or printers which have
inbuilt braille converters and are accessible within the UNIX environment?

**Answer**: You may want to look into `BRLTTY <http://mielke.cc/brltty/>`_.

.. _faq-additional-support-label:

Additional information
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  http://www.nexpresslibrary.org/go-live/configure-your-receipt-printers/
