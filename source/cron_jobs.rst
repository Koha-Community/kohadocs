.. include:: images.rst

.. _cron-jobs-label:

Cron jobs
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

Cron jobs
-------------------------

The locations below assume a dev install which puts the crons in misc/,
if you have a standard install you may want to look in bin/ for these
files if you cannot find them in misc/

.. _daily-backup-label:

Backup
~~~~~~~~~~~~~~~~~~~~~~~~

Daily backup
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/backup.sh

Does: creates a daily backup of the Koha database.

Frequency suggestion: daily

.. _search-label:

Search
~~~~~~~~~~~~~~~~~~~~~~~~

.. _sitemap-label:

Sitemap
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/sitemap.pl

Does: processes all biblio records from a Koha instance and generates sitemap files
complying with the protocol as described on http://sitemaps.org. The goal of this
script is to be able to provide to search engines direct access to biblio records.
It avoids leaving search engines browsing Koha's OPAC which would generate a lot
of site traffic and server workload.

    **Note**
    A file named sitemapindex.xml is generated. It contains references to multiple
    sitemap files. Each file contains at most 50,000 URLs and is named
    sitemapXXXX.xml.
    
    The files must be stored on the Koha OPAC's root directory. In the same directory
    a robots.txt file with the following contents is required:
    
    
    ``Sitemap: sitemapindex.xml
    User-agent: *
    Disallow: /cgi-bin/``

.. _rebuild-index-label:

Rebuild index
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/migration\_tools/rebuild\_zebra.pl

Does: updates Zebra indexes with recently changed data.

Required by: Zebra

Frequency suggestion: every x minutes, (between 5-15 minutes) depending
on performance needs

.. _cron-circulation-label:

Circulation
~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _holds-queue-label:

Holds queue
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/holds/build\_holds\_queue.pl

Does: updates holds queue report

Required by: :ref:`Holds queue report <holds-queue-label>`

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

Expired holds
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/holds/cancel\_expired\_holds.pl

Does: cancels holds
where the user has set an expiration date. If the library is using the
:ref:`ExpireReservesMaxPickUpDelay` and
:ref:`ExpireReservesMaxPickUpDelayCharge`
preferences then this script will also cancel holds that have been
sitting on the hold shelf for too long and will (if the library does)
charge the patron for not picking up the hold.

Frequency suggestion: daily

.. _unsuspend-holds-label:

Unsuspend holds
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/holds/auto\_unsuspend\_holds.pl

Does: checks to find holds that should no longer be
suspended and removes the suspension if the
:ref:`AutoResumeSuspendedHolds` preference is
set to 'allow'. This puts the patron back in to the queue where they
were when the hold was suspended.

Frequency suggestion: daily

.. _fines-label:

Fines
^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/fines.pl

Does: calculates and posts fines to patron accounts.

Required by: :ref:`finesMode` system preference

Frequency suggestion: nightly

.. _staticfines-label:

Static Fines
^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/staticfines.pl

Does: calculates and charges overdue fines to patron accounts

    **Note**
    If the Koha system preference 'finesMode' is set to 'production', the fines
    are charged to the patron accounts. If set to 'test', the fines are calculated but not applied.
    
    **Note**
    Fines won't be applied on a holiday.

.. _long-overdues-label:

Long overdues
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

Track total checkouts
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

Generate patron file for offline circulation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/create\_koc\_db.pl

Does: generates the borrowers.db file for use with the :ref:`Koha offline
circulation <offline-circ-tool-for-windows-label>` tool

Frequency suggestion: weekly

.. _automatic-renewal-label:

Automatic renewal
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/automatic\_renewals.pl

Does: renews items if you're allowing automatic
renewal with your :ref:`circulation and fine rules <circulation-and-fine-rules-label>`.

Frequency suggestion: nightly

.. _patrons-label:

Patrons
~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _delete-patrons-label:

Batch delete patrons
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/delete\_patrons.pl

Does: deletes patron records in batch based on date not borrowed since,
expired before, last seen, category code, or library branch.

     **Note**

     Dates should be in ISO format, e.g., 2013-07-19, and can be 
     generated with date -d '-3 month' "+%Y-%m-%d".

     **Important**

     The options to select the patron records to delete are **cumulative**. 
     For example, supplying both --expired_before and --library specifies 
     that patron records must meet *both* conditions to be selected for deletion.

     **PARAMETERS**

     -  --not_borrowed_since
        Delete patrons who have not borrowed since this date.

     -  --expired_before
        Delete patrons with an account expired before this date.

     -  --last_seen
        Delete patrons who have not been connected since this date. 
        The system preference :ref:`TrackLastPatronActivity` must be 
        enabled to use this option.

     -  --category_code
        Delete patrons who have this category code.

     -  --library
        Delete patrons in this library.

     -  -c|--confirm
        This flag must be provided in order for the script to actually 
        delete patron records. If it is not supplied, the script will 
        only report on the patron records it would have deleted.

     -  -v|--verbose
        Verbose mode.

.. _unverified-registrations-label:

Unverified registrations
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/delete\_expired\_opac\_registrations.pl

Does: deletes patron registrations that were submitted via the OPAC but
not reviewed by the library within the number of days entered in the
:ref:`PatronSelfRegistrationExpireTemporaryAccountsDelay`
preference.

Frequency suggestion: nightly

.. _unconfirmed-registrations-label:

Unconfirmed registrations
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/delete\_unverified\_opac\_registrations.pl

Does: deletes patron self registrations that were submitted via the OPAC
but not confirmed via email within 24 hours. This is only necessary if
you are requiring patrons to confirm their registrations via email with
the
:ref:`PatronSelfRegistrationVerifyByEmail`
preference.

Frequency suggestion: hourly

.. _anonymize-patron-data-label:

Anonymize patron data
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/batch\_anonymise.pl

Does: removes borrowernumbers
from circulation history so that the stats are kept, but the patron
information is removed for privacy reasons.

.. _update-child-to-adult-patron-type-label:

Update child to adult patron type
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/j2a.pl

Does: converts juvenile/child patrons from juvenile patron category and
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

Message queue
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

Advanced notice
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

Overdue notice
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

.. _printoverdues-label:

Print overdues
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/printoverdues.sh

Does: generates PDF files from HTML files in directories and prints them

.. _print-hold-notices-label:

Print hold notices
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
:ref:`Talking Tech <talking-tech-label>` chapter.

.. _sending-notices-file-label:

Sending notices file
'''''''''''''''''''''''''''''''''''''''''''''''

Script path: misc/cronjobs/thirdparty/TalkingTech\_itiva\_outbound.pl

Does: generates Spec C outbound notifications file for Talking
Tech i-tiva phone notification system.

Required by:
:ref:`TalkingTechItivaPhoneNotification`

Frequency suggestion: nightly

.. _receiving-notices-file-label:

Receiving notices file
''''''''''''''''''''''''''''''''''''''''''''''''''''

Script path: misc/cronjobs/thirdparty/TalkingTech\_itiva\_inbound.pl

Does: processes received results files for Talking Tech i-tiva
phone notification system.

Required by:
:ref:`TalkingTechItivaPhoneNotification`

Frequency suggestion: nightly

.. _notify-patrons-of-expiration-label:

Notify patrons of expiration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/membership\_expiry.pl

Does: sends messages to warn patrons of their card expiration to the
:ref:`message queue <message-queue-label>` cron.

Requires: :ref:`MembershipExpiryDaysNotice`

Frequency: nightly

.. _in-processing/book-cart-label:

In processing/book cart
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Script path: misc/cronjobs/cart\_to\_shelf.pl

Does: updates all items with a location of CART to the item's permanent
location.

Required by: :ref:`NewItemsDefaultLocation`,
:ref:`InProcessingToShelvingCart`, &
:ref:`ReturnToShelvingCart` system preferences

Frequency suggestion: hourly

.. _catalog-label:

Catalog
~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _import-webservice-batch-label:

Import webservice batch
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/import\_webservice\_batch.pl

Does: processes import bach queues of type 'webservice'.
Batches can also be processed through the UI.

    **Note**
    
    This script is used for OCLC Connexion
    
.. _connexion-import-daemon-label:

Connexion import daemon
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/bin/connexion\_import\_daemon.pl

Does: listens for OCLC Connexion requests and is compliant with
OCLC Gateway specification. It takes requests with MARC XML and import batch
parameters from a configuration file and forwards it to svc/import_bib

    **Note**
    
    This script is used for OCLC Connexion

.. _delete-items-label:

Batch item deletion
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/delete\_items.pl

Does: generates a query against the items
database and deletes the items matching the criteria specified in the
command line arguments.

    **PARAMETERS**
    
    -  --verbose
       Send the "WHERE" clause generated by the collected C<--where> 
       arguments, as well as items affected to Standard Out.

    -  --where
       The C<--where> option may called multiple times. The following 
       argument must be a syntactically valid SQL statement which is 
       part of the C<WHERE> clause querying the items table. 
       These are joined by C<AND>.

    -  --commit
       No items will be deleted unless the C<--commit> flag is present.

    **EXAMPLES**

    The following are examples of this script:

    delete_items.pl --where "items.withdrawn ! 0" --where "items.withdrawn_on < $(date --date="13 month ago" --rfc-3339=date)" --commit

    delete_items.pl --where "itemlost >= '1'" --where "itemlost <='4'" --where "itemlost_on < '2014-04-28'" --commit

.. _check-url-quick-label:

Check URL quick
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/check-url-quick.pl

Does: checks URLs from biblio records; scans all URLs found by default in 
856$u of bibliographic records and displays if resources are available or 
not.

    **Note**
    
    This script replaces the check-url.pl script

    **PARAMETERS**

    -  --host=http://default.tld
       Server host used when URL doesn't have one, ie doesn't begin with 
       'http:'. For example, if --host=mylib.com, then when 856$u contains 
       'img/image.jpg', the url checked is: http://www.mylib.com/image.jpg.

    -  --tags
       Tags containing URLs in $u subfields. If not provided, 856 tag is 
       checked. Multiple tags can be specified, for example:

       check-url-quick.pl --tags 310 410 856

    -  --verbose|v
       Outputs both successful and failed URLs.

    -  --html 
       Formats output in HTML. The result can be redirected to a file 
       accessible by http. This way, it's possible to link directly to the 
       bibliographic record in edit mode. With this parameter --host-intranet 
       is required.

    -  --host-intranet=http://koha-pro.tld
       Server host used to link to bibliographic record editing page in 
       Koha intranet interface.

    -  --timeout=10
       Timeout for fetching URLs. By default 10 seconds.

    -  --maxconn=1000
       Number of simulaneous HTTP requests. By default 200 connexions.

.. _check-urls-label:

Check URLs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/check-url.pl

Does: checks URLs in 856$u field. Script output can now be formatted in
CSV or HTML. The HTML version links directly to MARC biblio record
editor.

Frequency suggestion: monthly

Learn more: http://wiki.koha-community.org/wiki/Check-url_enhancements

.. _delete-records-via-leader-label:

Delete records via leader
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/delete\_records\_via\_leader.pl

Does: attempts to delete any MARC records where the leader character 5 equals 'd'

.. _update-authorities-label:

Update authorities
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/merge\_authorities.pl

Does: updates biblio data with changes to authorities records

    **Note**

    The name of this script is misleading. This script does not merge
    authorities together it instead merges authority data with linked
    bib records. Edits to authority records will be applied to
    bibliographic records that use that authority when this script is
    run.

Required by: :ref:`AuthorityMergeLimit <authoritymergelimit-label>` 
system preference

Frequency suggestion: nightly

.. _serials-update-label:

Serials update
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

.. _opac-label:

OPAC
~~~~~~~~~~~~~~~~~~~~~

.. _rss-feeds-label:

RSS feeds
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/rss/rss.pl

Does: produces an RSS XML document for any SQL query (not used for
search results RSS feed). :ref:`Learn more <custom-rss-feeds-label>`.

Frequency suggestion: hourly

.. _authorities-browser-label:

Authorities browser
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/build\_browser\_and\_cloud.pl

Does: generates content for authorities browse in OPAC

Required by: :ref:`OpacBrowser` system preference

    **Important**

    This preference and cron job should only be used on French systems.

.. _subject/author-clouds-label:

Subject/author clouds
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/cloud-kw.pl

Does: generates HTML keywords clouds from Koha Zebra indexes.
misc/cronjobs/cloud-sample.conf has a sample of how this script
operates.

Frequency: This is the type of script you can run once a month or so,
the content generated isn't going to change very much over time.

.. _system-administration-label:

System administration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _services-throttle-label:

Services throttle
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/services\_throttle.pl

Does: resets the xISBN services throttle

Frequency suggestion: nightly

.. _clean-up-database-label:

Clean up database
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/cleanup\_database.pl

Does: truncates the sessions table, cleans out old zebraqueue entries,
action logs and staged MARC files.

.. _share-usage-stats-label:

Share usage stats
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/share\_usage\_with\_koha\_community.pl

Does: sends your info to the `Hea
website <http://hea.koha-community.org/>`__
if you're sharing information via the :ref:`UsageStats`
feature 

Frequency: monthly

.. _acquisitions-label:

Acquisitions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _clean-up-old-suggestions-label:

Clean up old suggestions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/purge\_suggestions.pl

Does: removes old (defined by you) suggestions from the suggestion
management area.

       **Note**
       
       The system preference :ref:`PurgeSuggestionsOlderThan` defines the number
       of days used in the script

.. _email-suggestions-to-process-label:

Email suggestions to process
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/notice\_unprocessed\_suggestions.pl

Does: generates a notice to the fund owner that there are suggestions in
need of processing

.. _edi-message-processing-label:

EDI message processing
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/edi\_cron.pl

Does: sends and received EDI messages

Frequency: Every 15 minutes

.. _remove-temporary-edi-files-label:

Remove temporary EDI files
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/remove\_temporary\_edifiles.pl

Does: removes temporary EDI files that are older than 5 days

.. _deprecated-scripts-label:

.. _cron-reports-label:

Reports
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Run report
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/runreport.pl

Does: runs pre-existing saved reports

Norwegian patron database
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

NL sync to Koha
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/nl-sync-to-koha.pl

Does: syncs patrons from the Norwegian national patron database (NL) to Koha

    **Note**
    Relies on NorwegianPatronDBUsername and NorwegianPatronDBPassword system preferences
    
NL sync from Koha
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/nl-sync-from-koha.pl

Does: syncs patrons from Koha to the Norwegian national patron database (NL)

    **Note**
    Relies on NorwegianPatronDBUsername and NorwegianPatronDBPassword system preferences
    
Social data
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get report social data
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/social_data/get\_report\_social\_data.pl

Does: downloads data from Babelthèque to add to OPAC records

Frequency suggestion: nightly

Update social data
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/social_data/update\_social\_data.pl

Does: updates OPAC records with Babelthèque social data

Deprecated scripts
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These should not be run without modification:

Script path: misc/cronjobs/update\_items.pl

Script path:misc/cronjobs/smsoverdues.pl

Script path:misc/cronjobs/notifyMailsOp.pl

Script path:misc/cronjobs/reservefix.pl

Script path:misc/cronjobs/zebraqueue\_start.pl
