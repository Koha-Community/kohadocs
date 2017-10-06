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

.. _system-administration-label:

System Administration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _clean-up-database-label:

Clean up Database
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/cleanup\_database.pl

Does: Truncates the sessions table, cleans out old zebraqueue entries,
action logs and staged MARC files.

.. _share-usage-stats-label:

Share Usage Stats
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/share\_usage\_with\_koha\_community.pl

Does: If you're sharing information via the :ref:`UsageStats`
feature this will send your info to the `Hea
website <http://hea.koha-community.org/>`__.

Frequency: monthly

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
