.. include:: images.rst


Cron Jobs
=========

A cron job is a Linux command for scheduling a command or script on your
server to complete repetitive tasks automatically. Scripts executed as a
cron job are typically used to modify files or databases; however, they
can perform other tasks that do not modify data on the server, like
sending out email notifications. Koha has many cron jobs in place that
you can enable (search engine indexing, overdue notice generation, data
cleanup and more), this chapter will explain those for you.

Crontab example
-------------------------

An example of a Koha crontab can be found in misc/cronjobs/crontab.example

The example includes sample boilerplate cronjob entries for the most
commonly-used cronjobs.

.. _cron-jobs-subchapter-label:

Cron Jobs
-------------------------

The locations below assume a dev install which puts the crons in misc/,
if you have a standard install you may want to look in bin/ for these
files if you cannot find them in misc/

.. _search-label:

Search
~~~~~~~~~~~~~~~~~~~~~~~~

.. _rebuild-index-label:

Rebuild Index
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/migration\_tools/rebuild\_zebra.pl

Does: Updates Zebra indexes with recently changed data.

Required by: Zebra

Frequency suggestion: every x minutes, (between 5-15 minutes) depending
on performance needs

.. _circulation-label:

Circulation
~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _holds-queue-label:

Holds Queue
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/holds/build\_holds\_queue.pl

Does: Updates holds queue report

Required by: :ref:`Holds Queue Report <holds-queue-label>`

Frequency suggestion: every 1-4 hours

Description:

-  A script that should be run periodically if your library system
   allows borrowers to place on-shelf holds. This script decides which
   library should be responsible for fulfilling a given hold request.

   It's behavior is controlled by the system preferences
   :ref:`StaticHoldsQueueWeight <staticholdsqueueweight,-holdsqueueskipclosed-&-randomizeholdsqueueweight-label>` and
   :ref:`RandomizeHoldsQueueWeight <staticholdsqueueweight,-holdsqueueskipclosed-&-randomizeholdsqueueweight-label>`.

   If you do not want all of your libraries to participate in the
   on-shelf holds fulfillment process, you should list the the libraries
   that \*do\* participate in the process here by inputting all the
   participating library's branchcodes, separated by commas ( e.g.
   "MPL,CPL,SPL,BML" etc. ).

   By default, the holds queue will be generated such that the system
   will first attempt to hold fulfillment using items already at the
   pickup library if possible. If there are no items available at the
   pickup library to fill a hold, build\_holds\_queue.pl will then use
   the list of libraries defined in StaticHoldsQueueWeight. If
   RandomizeHoldsQueueWeight is disabled ( which it is by default ), the
   script will assign fulfillment requests in the order the branches are
   placed in the StaticHoldsQueueWeight system preference.

   For example, if your system has three libraries, of varying sizes (
   small, medium and large ) and you want the burden of holds
   fulfillment to be on larger libraries before smaller libraries, you
   would want StaticHoldsQueueWeight to look something like
   "LRG,MED,SML".

   If you want the burden of holds fulfillment to be spread out equally
   throughout your library system, simply enable
   RandomizeHoldsQueueWeight. When this system preference is enabled,
   the order in which libraries will be requested to fulfill an on-shelf
   hold will be randomized each time the list is regenerated.

   Leaving StaticHoldsQueueWeight empty is contraindicated at this time.
   Doing so will cause the build\_holds\_queue script to ignore
   RandomizeHoldsQueueWeight, causing the script to request hold
   fulfillment not randomly, but by alphabetical order.

.. _expired-holds-label:

Expired Holds
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/holds/cancel\_expired\_holds.pl

Does: By default, this cron job will only automatically cancel holds
where the user has set an expiration date. If the library is using the
:ref:`ExpireReservesMaxPickUpDelay` and
:ref:`ExpireReservesMaxPickUpDelayCharge`
preferences then this script will also cancel holds that have been
sitting on the hold shelf for too long and will (if the library does)
charge the patron for not picking up the hold.

Frequency suggestion: daily

.. _unsuspend-holds-label:

Unsuspend Holds
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/holds/auto\_unsuspend\_holds.pl

Does: This script checks to find holds that should no longer be
suspended and removes the suspension if the
:ref:`AutoResumeSuspendedHolds` preference is
set to 'allow'. This puts the patron back in to the queue where they
were when the hold was suspended.

Frequency suggestion: daily

.. _fines-label:

Fines
^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/fines.pl

Does: Calculates and posts fines to patron accounts.

Required by: :ref:`finesMode` system preference

Frequency suggestion: nightly

.. _long-overdues-label:

Long Overdues
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/longoverdue.pl

Does: allows one to specify delays for changing items to different lost
statuses, and optionally charge for them using the replacement price
listed on the item record.

Frequency suggestion: nightly

    **Note**

    Staff can control some of the parameters for the longoverdue cron
    job with the
    :ref:`DefaultLongOverdueLostValue <defaultlongoverduelostvalue-&-defaultlongoverduedays-label>` and
    :ref:`DefaultLongOverdueChargeValue`
    preferences.

.. _track-total-checkouts-label:

Track Total Checkouts
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/update\_totalissues.pl

Does: updates the biblioitems.totalissues field in the database with the
latest tally of checkouts based on historical issue statistics.

Frequency suggestion: nightly

    **Warning**

    If the time on your database server does not match the time on your Koha
    server you will need to take that into account, and probably use the
    --since argument instead of the --interval argument for incremental
    updating.

    **Note**

    This cronjob can be used if there is a performance concern. Otherwise,
    use the UpdateTotalIssuesOnCirc System Preference.

.. _generate-patron-file-for-offline-circulation-label:

Generate Patron File for Offline Circulation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/create\_koc\_db.pl

Does: Generates the borrowers.db file for use with the :ref:`Koha Offline
Circulation <offline-circ-tool-for-windows-label>` tool

Frequency suggestion: weekly

.. _automatic-renewal-label:

Automatic renewal
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/automatic\_renewals.pl

Does: Will automatically renew items if you're allowing automatic
renewal with your :ref:`circulation and fine rules <circulation-and-fine-rules-label>`.

Frequency suggestion: nightly

.. _patrons-label:

Patrons
~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _unverified-registrations-label:

Unverified Registrations
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/delete\_expired\_opac\_registrations.pl

Does: Deletes patron registrations that were submitted via the OPAC but
not reviewed by the library within the number of days entered in the
:ref:`PatronSelfRegistrationExpireTemporaryAccountsDelay`
preference.

Frequency suggestion: nightly

.. _unconfirmed-registrations-label:

Unconfirmed Registrations
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/delete\_unverified\_opac\_registrations.pl

Does: Deletes patron self registrations that were submitted via the OPAC
but not confirmed via email within 24 hours. This is only necessary if
you are requiring patrons to confirm their registrations via email with
the
:ref:`PatronSelfRegistrationVerifyByEmail`
preference.

Frequency suggestion: hourly

.. _anonymize-patron-data-label:

Anonymize Patron Data
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/batch\_anonymise.pl

Does: Used to anonymize patron data. This will remove borrowernumbers
from circulation history so that the stats are kept, but the patron
information is removed for privacy reasons.

.. _update-child-to-adult-patron-type-label:

Update Child to Adult Patron Type
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/j2a.pl

Does: Convert juvenile/child patrons from juvenile patron category and
category code to corresponding adult patron category and category code
when they reach the upper age limit defined in the Patron Categories.

Frequency suggestion: nightly

    **DESCRIPTION**
    
    This script is designed to update patrons from juvenile to adult patron
    types, remove the guarantor, and update their category codes
    appropriately when they reach the upper age limit defined in the Patron
    Categories.

    **USAGE EXAMPLES**
    
    "juv2adult.pl"
    
    "juv2adult.pl" -b=<branchcode> -f=<categorycode> -t=<categorycode> 
    (Processes a single branch, and updates the patron categories from
    category to category)
    
    "juv2adult.pl" -f=<categorycode> -t=<categorycode> -v -n (Processes all
    branches, shows all messages, and reports the patrons who would be
    affected. Takes no action on the database)

.. _notices-label:

Notices
~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _message-queue-label:

Message Queue
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/process\_message\_queue.pl

Does: processes the message queue to send the check out, check in and
hold filled emails and SMS message to users and sends outgoing emails to
patrons. requires
:ref:`EnhancedMessagingPreferences` to be
on

Frequency suggestion: 1-4 hours

    **Important**

    Item due and Advanced due notices are controlled by the
    :ref:`advance\_notices cron <advanced-notice-label>`.

.. _advanced-notice-label:

Advanced Notice
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/advance\_notices.pl

Does: prepares "pre-due" notices and "item due" notices for patrons who
request them prepares notices for patrons for items just due or coming
due soon. requires
:ref:`EnhancedMessagingPreferences` to be
on

Frequency suggestion: nightly

    **Note**

    This script does not actually send the notices. It queues them in
    the :ref:`message queue <message-queue-label>` for later

.. _overdue-notice-label:

Overdue Notice
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/overdue\_notices.pl

Does: prepares messages to alert patrons of overdue messages (both via
email and print)

Frequency suggestion: nightly

    **Note**

    This script does not actually send the notices. It queues them in
    the :ref:`message queue <message-queue-label>` for later or generates the
    HTML for later printing

    **See also**
    
    The misc/cronjobs/advance\_notices.pl program allows you to send
    messages to patrons in advance of their items becoming due, or to alert
    them of items that have just become due.

.. _print-hold-notices-label:

Print Hold Notices
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/gather\_print\_notices.pl

Does: looks through the message queue for hold notices that didn't go
through because the patron didn't have an email address and generates a
print notice

Frequency suggestion: nightly

.. _talking-tech-label:

Talking Tech
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To learn more about setting up this third party product view the
`Talking Tech Appendix <#talkingtechappendix>`__.

.. _sending-notices-file-label:

Sending Notices File
'''''''''''''''''''''''''''''''''''''''''''''''

Script path: misc/cronjobs/thirdparty/TalkingTech\_itiva\_outbound.pl

Does: Script to generate Spec C outbound notifications file for Talking
Tech i-tiva phone notification system.

Required by:
:ref:`TalkingTechItivaPhoneNotification`

Frequency suggestion: nightly

.. _receiving-notices-file-label:

Receiving Notices File
''''''''''''''''''''''''''''''''''''''''''''''''''''

Script path: misc/cronjobs/thirdparty/TalkingTech\_itiva\_inbound.pl

Does: Script to process received Results files for Talking Tech i-tiva
phone notification system.

Required by:
:ref:`TalkingTechItivaPhoneNotification`

Frequency suggestion: nightly

.. _notify-patrons-of-expiration-label:

Notify Patrons of Expiration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/membership\_expiry.pl

Does: Sends messages to warn patrons of their card expiration to the
:ref:`messaage queue <message-queue-label>` cron.

Requires: :ref:`MembershipExpiryDaysNotice`

Frequency: nightly

.. _in-processing/book-cart-label:

In Processing/Book Cart
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Script path: misc/cronjobs/cart\_to\_shelf.pl

Does: Updates all items with a location of CART to the item's permanent
location.

Required by: :ref:`NewItemsDefaultLocation`,
:ref:`InProcessingToShelvingCart`, &
:ref:`ReturnToShelvingCart` system preferences

Frequency suggestion: hourly

.. _perl-documentation-in-processing-book-cart-label:

Perl Documentation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**NAME**

cart\_to\_shelf.pl cron script to set items with location of CART to
original shelving location after X hours. Execute without options for
help.

.. _catalog-label:

Catalog
~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _check-urls-label:

Check URLs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/check-url.pl

Does: checks URLs in 856$u field. Script output can now be formatted in
CSV or HTML. The HTML version links directly to MARC biblio record
editor.

Frequency suggestion: monthly

Learn more: http://wiki.koha-community.org/wiki/Check-url_enhancements

.. _perl-documentation-check-urls-label:

Perl Documentation
''''''''''''''''''''''''''''''''''''''''''

**NAME**

C4::URL::Checker - base object for checking URL stored in Koha DB

**SYNOPSIS**

::

    use C4::URL::Checker;

            my $checker = C4::URL::Checker->new( );
            $checker->{ host_default } = 'http://mylib.kohalibrary.com';
            my $checked_urls = $checker->check_biblio( 123 );
            foreach my $url ( @$checked_urls ) {
                print "url:        ", $url->{ url       A }, "\n",
                      "is_success: ", $url->{ is_success }, "\n",
                      "status:     ", $url->{ status     }, "\n";
            }

**FUNCTIONS**

new

Create a URL Checker. The returned object can be used to set default
host variable :

::

    my $checker = C4::URL::Checker->new( );
            $checker->{ host_default } = 'http://mylib.kohalibrary.com';

check\_biblio

Check all URL from a biblio record. Returns a pointer to an array
containing all URLs with checking for each of them.

::

     my $checked_urls = $checker->check_biblio( 123 );

With 2 URLs, the returned array will look like that:

::

         [
               {
                 'url' => 'http://mylib.tamil.fr/img/62265_0055B.JPG',
                 'is_success' => 1,
                 'status' => 'ok'
               },
               {
                 'url' => 'http://mylib.tamil.fr//img/62265_0055C.JPG',
                 'is_success' => 0,
                 'status' => '404 - Page not found'
               }
             ],

**NAME**

check-url.pl - Check URLs from 856$u field.

**USAGE**

check-url.pl [--verbose\|--help] [--host=http://default.tld]

Scan all URLs found in 856$u of bib records and display if resources are
available or not.

**PARAMETERS**

--host=http://default.tld

Server host used when URL doesn't have one, ie doesn't begin with
'http:'. For example, if --host=http://www.mylib.com, then when 856$u
contains 'img/image.jpg', the url checked is:
http://www.mylib.com/image.jpg'.

--verbose\|-v

Outputs both successful and failed URLs.

--html

Formats output in HTML. The result can be redirected to a file
accessible by http. This way, it's possible to link directly to biblio
record in edit mode. With this parameter --host-pro is required.

--host-pro=http://koha-pro.tld

Server host used to link to biblio record editing page.

--help\|-h

Print this help page.

.. _update-authorities-label:

Update Authorities
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/migration\_tools/merge\_authority.pl

Does: Updates biblio data with changes to authorities records

    **Note**

    The name of this script is misleading. This script does not merge
    authorities together it instead merges authority data with linked
    bib records. Edits to authority records will be applied to
    bibliographic records that use that authority when this script is
    run.

Required by: `dontmerge <#dontmerge>`__ system preference

Frequency suggestion: nightly

.. _serials-update-label:

Serials Update
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/serialsUpdate.pl

Does: checks if there is a "late" issue on active subscriptions, and if
there is, the script will set it as late, and add the next one as
expected.

Frequency suggestion: nightly

.. _automatic-item-update-label:

Automatic item update
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/automatic\_item\_modification\_by\_age.pl

Does: updates items based on the list of rules set forth in the
:ref:`Automatic item modifications by age` tool

Required by: :ref:`Automatic item modifications by age`

Frequency suggestions: nightly

.. _perl-documentation-automatic-item-update-label:

Perl Documentation
'''''''''''''''''''''''''''''''''''''''''''''''

**NAME**

automatic\_item\_modification\_by\_age.pl

**SYNOPSIS**

./automatic\_item\_modification\_by\_age.pl -h

Toggle recent acquisitions status. Use this script to delete "new"
status for items.

**OPTIONS**

-h\|--help Prints this help message.

-v\|--verbose Set the verbose flag.

-c\|--confirm The script will modify the items.

**AUTHOR**

Jonathan Druart <jonathan.druart@biblibre.com>

**COPYRIGHT**

Copyright 2013 BibLibre

**LICENSE**

This file is part of Koha.

Koha is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free
Software Foundation; either version 3 of the License, or (at your
option) any later version.

Koha is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
more details.

You should have received a copy of the GNU General Public License along
with Koha; if not, see <http://www.gnu.org/licenses>.

.. _opac-label:

OPAC
~~~~~~~~~~~~~~~~~~~~~

.. _rss-feeds-label:

RSS Feeds
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/rss/rss.pl

Does: Produces an RSS XML document for any SQL query (not used for
search results RSS feed). :ref:`Learn more <custom-rss-feeds-label>`.

Frequency suggestion: hourly

.. _authorities-browser-label:

Authorities Browser
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/build\_browser\_and\_cloud.pl

Does: Generate content for authorities browse in OPAC

Required by: :ref:`OpacBrowser` system preference

    **Important**

    This preference and cron job should only be used on French systems.

.. _subject/author-clouds-label:

Subject/Author Clouds
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/cloud-kw.pl

Does: Generates HTML keywords clouds from Koha Zebra indexes.
misc/cronjobs/cloud-sample.conf has a sample of how this script
operates.

Frequency: This is the type of script you can run once a month or so,
the content generated isn't going to change very much over time.

.. _perl-documentation-subject-author-clouds-label:

Perl Documentation
'''''''''''''''''''''''''''''''''''''''''''

**NAME**

cloud-kw.pl - Creates HTML keywords clouds from Koha Zebra Indexes

**USAGE**

cloud-kw.pl [--verbose\|--help] --conf=cloud.conf

Creates multiple HTML files containing keywords cloud with top terms
sorted by their logarithmic weight. cloud.conf is a YAML configuration
file driving cloud generation process.

**PARAMETERS**

--conf=configuration file

Specify configuration file name

--verbose\|-v

Enable script verbose mode.

--help\|-h

Print this help page.

**CONFIGURATION**

Configuration file looks like that:

::

      ---
             # Koha configuration file for a specific installation
             # If not present, defaults to KOHA_CONF
             KohaConf: /home/koha/mylibray/etc/koha-conf.xml
             # Zebra index to scan
             ZebraIndex: Author
             # Koha index used to link found kewords with an opac search URL
             KohaIndex: au
             # Number of top keyword to use for the cloud
             Count: 50
             # Include CSS style directives with the cloud
             # This could be used as a model and then CSS directives are
             # put in the appropriate CSS file directly.
             Withcss: Yes
             # HTML file where to output the cloud
             Output: /home/koha/mylibrary/koharoot/koha-tmpl/cloud-author.html
            ---
             KohaConf: /home/koha/yourlibray/etc/koha-conf.xml
             ZebraIndex: Subject
             KohaIndex: su
             Count: 200
             Withcss: no
             Output: /home/koha/yourlibrary/koharoot/koha-tmpl/cloud-subject.html

**IMPROVEMENTS**

Generated top terms have more informations than those outputted from the
time being. Some parameters could be easily added to improve this
script:

WithCount

In order to output terms with the number of occurrences they have been
found in Koha Catalogue by Zebra.

CloudLevels

Number of levels in the cloud. Now 24 levels are hardcoded.

Weighting

Weighting method used to distribute terms in the cloud. We could have
two values: Logarithmic and Linear. Now it's Logarithmic by default.

Order

Now terms are outputted in the lexical order. They could be sorted by
their weight.

.. _system-administration-label:

System Administration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _clean-up-database-label:

Clean up Database
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/cleanup\_database.pl

Does: Truncates the sessions table, cleans out old zebraqueue entries,
action logs and staged MARC files.

.. _perl-documentation-clean-up-database-label:

Perl Documentation
''''''''''''''''''

**USAGE**

kohaclone/misc/cronjobs/cleanup\_database.pl [-h\|--help] [--sessions]
[--sessdays DAYS] [-v\|--verbose] [--zebraqueue DAYS] [-m\|--mail]
[--merged] [--import DAYS] [--logs DAYS] [--searchhistory DAYS]

**PARAMETERS**

-h --help

prints this help message, and exits, ignoring all other options

--sessions

purge the sessions table. If you use this while users are logged into
Koha, they will have to reconnect.

--sessdays DAYS

purge only sessions older than DAYS days

-v --verbose

will cause the script to give you a bit more information about the run.

--zebraqueue DAYS

purge completed zebraqueue entries older than DAYS days. Defaults to 30
days if no days specified.

-m --mail DAYS

purge items from the mail queue that are older than DAYS days. Defaults
to 30 days if no days specified.

--merged

purged completed entries from need\_merge\_authorities.

--import DAYS

purge records from import tables older than DAYS days. Defaults to 60
days if no days specified

--z3950

purge records from import tables that are the result of Z39.50 searches

--logs DAYS

purge entries from action\_logs older than DAYS days. Defaults to 180
days if no days specified

--searchhistory DAYS

purge entries from search\_history older than DAYS days. Defaults to 30
days if no days specified

--list-invites DAYS

purge (unaccepted) list share invites older than DAYS days. Defaults to
14 days if no days specified.

--restrictions DAYS

purge patrons restrictions expired since more than DAYS days. Defaults
to 30 days if no days specified.

.. _share-usage-stats-label:

Share Usage Stats
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/share\_usage\_with\_koha\_community.pl

Does: If you're sharing information via the :ref:`UsageStats`
feature this will send your info to the `Hea
website <http://hea.koha-community.org/>`__.

Frequency: monthly

.. _perl-documentation-share-usage-stats-label:

Perl Documentation
'''''''''''''''''''''''''''''''''''''''

**NAME**

share\_usage\_with\_koha\_community.pl - Share your library's usage with
the Koha community

**SYNOPSIS**

share\_usage\_with\_koha\_community.pl [-h\|--help] [-v\|--verbose]

If the :ref:`UsageStats` system preference is set, you can
launch this script to share your usage data anonymously with the Koha
community.

Collecting Koha usage statistics will help developers to know how Koha
is used across the world.

This script will send the usage data for the bibliographic and authority
records, checkouts, holds, orders, and subscriptions.

Only the total number is retrieved. In no case will private data be
shared!

In order to know which parts of Koha modules are used, this script will
collect some system preference values.

If you want to tell us who you are, you can fill the
:ref:`UsageStatsLibraryName` system preference
with your library name,
:ref:`UsageStatsLibraryUrl`,
:ref:`UsageStatsLibraryType` and/or
:ref:`UsageStatsCountry`.

All these data will be analyzed on the http://hea.koha-community.org
Koha community website.

IMPORTANT : please do NOT run the cron on the 1st, but on another day.
The idea is to avoid all Koha libraries sending their data at the same
time ! So choose any day between 1 and 28 !

**OPTIONS**

-h\|--help

Print a brief help message

-v\|--verbose

Verbose mode.

-f\|--force

Force the update.

**AUTHOR**

Alex Arnaud <alex.arnaud@biblibre.com>

Jonathan Druart <jonathan.druart@biblibre.com>

**COPYRIGHT**

Copyright 2014 BibLibre

**LICENSE**

This file is part of Koha.

Koha is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free
Software Foundation; either version 3 of the License, or (at your
option) any later version.

You should have received a copy of the GNU General Public License along
with Koha; if not, write to the Free Software Foundation, Inc., 51
Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

.. _acquisitions-label:

Acquisitions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _clean-up-old-suggestions-label:

Clean up old suggestions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/purge\_suggestions.pl

Does: Removes old (defined by you) suggestions from the suggestion
management area.

.. _email-suggestions-to-process-label:

Email suggestions to process
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/notice\_unprocessed\_suggestions.pl

Does: Generates a notice to the fund owner that there are suggestions in
need of processing

.. _perl-documentation-email-suggestions-to-process-label:

Perl Documentation
''''''''''''''''''''''''''''''''''''''''''''''

**NAME**

notice\_unprocessed\_suggestions.pl - Generate notification for
unprocessed suggestions.

The budget owner will be notified.

The letter template 'TO\_PROCESS' will be used.

**SYNOPSIS**

notice\_unprocessed\_suggestions.pl [-h\|--help] [-v\|--verbose]
[-c\|--confirm] [--days=NUMBER\_OF\_DAYS]

**OPTIONS**

-h\|--help Print a brief help message

-c\|--confirm This flag must be provided in order for the script to
actually generate notices. If it is not supplied, the script will only
report on the patron it would have noticed.

--days This parameter is mandatory. It must contain an integer
representing the number of days elapsed since the last modification of
suggestions to process.

-v\|--verbose Verbose mode.

.. _edi-message-processing-label:

EDI Message Processing
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/edi\_cron.pl

Does: Sends and received EDI messages

Frequency: Every 15 minutes

.. _deprecated-scripts-label:

Deprecated scripts
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These should not be run without modification:

Script path: misc/cronjobs/update\_items.pl

Script path:misc/cronjobs/smsoverdues.pl

Script path:misc/cronjobs/notifyMailsOp.pl

Script path:misc/cronjobs/reservefix.pl

Script path:misc/cronjobs/zebraqueue\_start.pl
