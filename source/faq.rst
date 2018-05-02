.. include:: images.rst

FAQs
====

.. _display-label:

Display
-------------------------

.. _custom-item-type/authorized-value-icons-label:

Custom Item Type/Authorized Value Icons
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

.. _customizing-koha-images-label:

Customizing Koha Images
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Can I customize the images in the OPAC?

**Answer**: Absolutely. Koha comes with a series of original images that
you can alter to meet your needs. The originals can be found in the
misc/interface\_customization/ directory.

.. _opac-display-fields-label:

OPAC Display Fields
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

.. _subtitle-display-on-bib-records-label:

Subtitle Display on Bib Records
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: How do I get the subtitle to display on the detail pages
for my bib records?

**Answer**: Subtitle display now depends on there being a :ref:`keyword
mapping <keywords-to-marc-mapping-label>` for the MARC field in question. Adding a
mapping for "subtitle" -> "245b" for an item's framework results in
display of the subtitle in OPAC and staff client search and detail pages
(although not in all instances where subtitles might be displayed, e.g.
the Cart).

.. _show-patrons-the-barcodes-of-items-they-have-checked-out-label:

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

.. _circulation/notices-label:

Circulation/Notices
----------------------------------

.. _book-drop-date-label:

Book drop Date
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

.. _holds-to-pull-and-holds-queue-label:

Holds to Pull and Holds Queue
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: What is the difference between the :ref:`Holds
Queue <holds-queue-label>` and :ref:`Holds to Pull <holds-to-pull-label>`?

**Answer**: The holds to pull report gives a simple list of what holds
need to be filled with available items. It should only be used in Koha
installations where there is only one library.

The holds queue tries to do the same thing, but in a 'smarter' way. This
allows it to split up the list by library, consult the :ref:`transport cost
matrix <transport-cost-matrix-label>` and refresh regularly to provide
different pull lists to each library.

.. _duplicate-overdue-notices-label:

Duplicate Overdue Notices
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Why are patrons getting two overdue notices?

**Answer**: This tool takes all branches in the overdue rules and sent
notifications to them. So, if you have a default rule & a branch rule,
the notification will be generated twice. A quick fix is to discard
"default rule" for instance.

.. _printing-overdue-notices-label:

Printing Overdue Notices
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Can I print overdue notices for patrons without email
addresses on file?

**Answer**: Yes. The :ref:`overdue notice cron job <overdue-notice-label>`
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
add an extra syspref (:ref:`PrintNoticesMaxLines`)
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

.. _unable-to-renew-items-label:

Unable to Renew Items
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: We're trying to renew some items for our patron. One of
the items is on hold and ineligible for renewal, but the other two items
refuse to renew even though they should be eligible. When I try to use
the override renewal limit, it just returns a little message that says
"renewal failed". Any idea what's going on here?

**Answer**: At the very least you will need to set an absolute :ref:`default
circulation rule <circulation-and-fine-rules-label>`. This rule should be set for the
default itemtype, default branchcode and default patron category. That
will catch anyone who doesn't match a specific rule. Patrons who do not
match a specific rule will get blocked from placing holds or renewing
items, since there was no baseline number of holds or renewals to
utilize.

.. _unable-to-place-holds-label:

Unable to Place Holds
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

.. _keyboard-shortcuts-label:

Keyboard Shortcuts
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

.. _sms-notices/messages-label:

SMS Notices/Messages
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

.. _cataloging-label:

Cataloging
------------------------

.. _authority-fields-label:

Authority Fields
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question:**\ Why can't I edit 1xx, 6xx, or 7xx fields in my catalog
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

.. _faq-koha-to-marc-mapping-label:

Koha to MARC Mapping
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: What's the relationship between 'Koha to MARC Mapping' and
'MARC Bibliographic Frameworks'?

**Answer**: Mapping can be defined through 'MARC Bibliographic
Frameworks' OR 'Koha to MARC Mapping'. 'Koha to MARC Mapping' is just a
shortcut to speed up linkage. If you change a mapping in one of these
modules, the mapping will change in the other as well. (In other words,
the two modules 'overwrite' each other in order to prevent conflicts
from existing in Koha).

.. _number-of-items-per-bib-record-label:

Number of Items Per Bib Record
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Is there a limit on the number of items I can attach to a
bib record?

**Answer**: There is no explicit limit to the number of items you can
attach to a bibliographic record, but if you attach enough of them, your
MARC record will exceed the maximum file size limit for the ISO 2709
standard, which breaks indexing for that record. I've found this occurs
somewhere between 600 and 1000 items on a 'normal' bibliographic record.

.. _analytics-label:

Analytics
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: I am using the
:ref:`EasyAnalyticalRecords` feature, but my links
in the OPAC and Staff Client to 'Show Analytics' are not working.

**Answer**: If you plan on using
:ref:`EasyAnalyticalRecords` you will want to make
sure to set your :ref:`UseControlNumber` preference to
"Don't use," this will prevent broken links.

.. _acquisitions-label:

Acquisitions
--------------------------

.. _planning-categories-label:

Planning Categories
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

.. _serials-label:

Serials
-------------------------

.. _advanced-patterns-label:

Advanced Patterns
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

.. _faq-reports-label:

Reports
-------------------------

.. _define-codes-stored-in-db-label:

Define Codes Stored in DB
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _fines-table-label:

Fines Table
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

.. _statistics-table-label:

Statistics Table
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

.. _reserves-table-label:

Reserves Table
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

.. _reports-dictionary-table-label:

Reports Dictionary Table
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What are the possible codes for the area field in the
reports\_dictionary table?

**Answer**:

-  1 = Circulation

-  2 = Catalog

-  3 = Patrons

-  4 = Acquisitions

-  5 = Accounts

.. _messages-table-label:

Messages Table
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What are the possible codes for the message\_type field in
the messages table?

**Answer**:

-  L = For Librarians

-  B = For Patrons/Borrowers

.. _serial-table-label:

Serial Table
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

.. _borrowers-table-label:

Borrowers Table
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What are the possible codes for the privacy field in the
borrowers table?

**Answer**:

-  0 = Forever

-  1 = Default

-  2 = Never

.. _messaging-preferences-label:

Messaging Preferences
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What are the possible codes in the message\_attribute\_id
field in the borrower\_message\_preferences table?

**Answer**:

-  2 = advanced notice

-  6 = item checkout

-  4 = hold filled

-  1 = item due

-  5 = item check in

.. _runtime-parameters-label:

Runtime Parameters
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

    |image1117|

.. _results-limited-label:

Results Limited
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: When I download my report it's limited to 10,000 results,
how do I get all of the results to download?

**Answer**: There is a limit of 10,000 records put on SQL statements
entered in Koha. To get around this you want to add 'LIMIT 100000' to
the end of your SQL statement (or any other number above 10,000.

.. _searching-label:

Searching
--------------------------

.. _advanced-search-label:

Advanced Search
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _scan-indexes-label:

Scan Indexes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What does 'scan indexes' on the advanced search page mean?

**Answer**: When you choose an index, enter a term, click 'scan indexes'
and do the search, Koha displays the searched term and the following
terms found in this index with the number of corresponding records That
is search is not made directly in the catalog, but first in the indexes
It works only for one index at once, and only with no limit in Location
(All libraries needed)

.. _searching-for-terms-that-start-with-a-character-label:

Searching for Terms that Start With a Character
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: How do I search for all titles that start with the letter
'C'?

**Answer**: You can choose to search for things that start with a
character or series of characters by using the CCL 'first-in-subfield'

-  example: ti,first-in-subfield=C

.. _wildcard-searching-label:

Wildcard Searching
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

.. _title-searching-label:

Title Searching
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

.. _enhanced-content-label:

Enhanced Content
------------------------------------------

.. _frbrizing-content-label:

FRBRizing Content
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

.. _faq-amazon-label:

Amazon
~~~~~~~~~~~~~~~~~~~~

.. _all-amazon-content-label:

All Amazon Content
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

.. _system-administration-label:

System Administration
--------------------------------------

.. _errors-in-zebra-cron-label:

Errors in Zebra Cron
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

.. _making-z39.50-target-public-label:

Making Z39.50 Target Public
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Could someone tell me the exact steps I need to take to
configure Zebra to expose my Koha 3 db as a public Z39.50 service?

**Answer**: Edit the KOHA\_CONF file that your Koha is using. Uncomment
the publicserver line like:

<!-- <listen id="publicserver" >tcp:@:9999</listen> -->

to be:

<listen id="publicserver" >tcp:@:9999</listen>

Then restart zebasrv and connect on the port specified (9999).

.. _shelving-location-authorized-values-label:

Shelving Location Authorized Values
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: When editing an item, the new shelving location I created
is not showing up by default in the items where I assigned it to.

**Answer**: This is because you created the new shelving location with a
code value of 0 (zero) Just FYI the system interprets authorized values
of 0 as equaling a null so when you edit a record in cataloging where
the authorized value in a field was assigned where the code was 0, the
value displays as null in the item editor (or MARC editor) instead of
the value the library meant it to be.

.. _why-do-i-need-authorized-values?-label:

Why do I need Authorized Values?
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

.. _how-do-i-clean-up-the-sessions-table?-label:

How do I clean up the sessions table?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Is there a periodic job that can be run to cull old
sessions from the table? We don't want to backup all the useless session
data every night.

**Answer**: You can run :ref:`cleanup database cron job <clean-up-database-label>`.

Or just before doing a backup command (mysqldump), you can truncate
session table:  

::

    mysql -u<kohauser -p<password <koha-db-name -e 'TRUNCATE TABLE sessions'

.. _hardware-label:

Hardware
---------------------------

.. _barcode-scanners-label:

Barcode Scanners
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

.. _printers-label:

Printers
~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _printers-used-by-koha-libraries-label:

Printers used by Koha libraries
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

.. _braille-support-label:

Braille Support
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: Are there any braille embosser or printer which has
inbuilt braille converter and it is accessible with UNIX environment?

**Answer**: You may want to look into BRLTTY
(http://www.emptech.info/product_details.php?ID=1232).

.. _additional-support-label:

Additional Support
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  http://www.nexpresslibrary.org/go-live/configure-your-receipt-printers/
