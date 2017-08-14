.. include:: images.rst

Serials
=======

Serials actions can be accessed by going to the More menu at the top of
your screen and choosing Serials or by clicking Serials on the main Koha
staff client page. The Serials module in Koha is used for keeping track
of journals, newspapers and other items that come on a regular schedule.
As with all modules, make sure you go through the related
:ref:`Implementation Checklist <serials-configuration-label>` before using the Serials
module.

-  *Get there:* More > Serials

.. _manage-serial-frequencies-label:

Manage Serial Frequencies
-------------------------------------------

Koha keeps a record of publication frequencies for easy management and
duplication.

-  *Get there:* More > Serials > Manage frequencies

From this page you can view all of the existing frequencies in your
system

Frequencies
|image738|

and create new ones.

New frequency
|image739|

.. _manage-serial-numbering-patterns-label:

Manage Serial Numbering Patterns
------------------------------------------------------

Everytime you create a new numbering pattern in serials you can save it
for later use. These patters are accessible via the Manage numbering
patterns page.

-  *Get there:* More > Serials > Manage numbering patterns

This page will list for you the numbering patterns you have saved in the
past as well as a few canned patterns.

Number patterns
|image740|

    **Note**

    If you have upgraded from a previous version of Koha you will see
    'Backup patterns' listed for patterns used in version before Koha
    3.14. This is how Koha saved your old numbering patterns. You can
    edit these to give them more meaningful names from here.

It will also allow you to create a new numbering pattern without first
adding a subscription. To add new new pattern click 'New numbering
pattern' at the top of the list of patterns.

New number pattern
|image741|

.. _custom-subscription-fields-label:

Custom Subscription Fields
----------------------------------------------

This module will allow you to add custom fields to your serial
subscriptions for reporting and searching.

-  *Get there:* Serials > Add subscription fields

To add custom fields simply click the 'Add subscription fields' link on
the left of the Serial page and choose the 'New field' buttonAdd
subscription fields

The form that appears will ask for either an authorized value or a marc
field to populate the field with

Add field

For example you might want to track which department you're ordering for
or the collection code for this serialAdd department

This data will then show when you are adding a subscriptionAdd field
value

and when you view the subscriptionShow field

and when you search subscriptions (if you chose to make it
'searchable')Searchable field

.. _add-a-subscription-label:

Add a subscription
-----------------------------------------

Subscriptions can be added by clicking the 'New' button on any
bibliographic record

New Subscription Button
|image742|

Or by visiting the Serials module and clicking 'New Subscription'

New Subscription Button
|image743|

If you are entering a new subscription from the Serials module you will
be presented with a blank form (if creating new from a bibliographic
record the form will include the bib info).

Add a new subscription (1/2)
|image744|

-  'Librarian' field will show the logged in librarian's username

-  'Vendor' can be found by either searching vendors entered via the
   `Acquisitions module <#acqmodule>`__ or entering the vendor ID number

   -  Vendor information is not required

   -  In order to claim missing and late issues you need to enter vendor
      information

      Vendor Missing Warning
      |image745|

-  'Biblio' is the MARC record you'd like to link this subscription to

   -  This can be done by searching for an existing record by clicking
      on the 'Search for Biblio' link below the boxes or by entering the
      bib number for a record in the first box. Only if you search with
      the field between the parenthesis.

-  Next you can choose whether a new item is created when receiving an
   issue (if you barcode issues you'll want to create an item at this
   time)

-  In order to determine how to handle irregularities in your
   subscription answer 'When there is an irregular issue', if the
   numbers are always sequential you'll want to pick 'Keep issue number'

-  Checking the 'Manual history' box will allow you to enter serials
   outside the prediction pattern once the subscription is saved by
   going to the 'Planning' tab on the subscription detail page.Manual
   History

-  'Call Number' is for your item's call number or call number prefix

-  'Library' is the branch that owns this subscription.

   -  If more than one library subscribes to this serial you will need
      to create a subscription for each library

   -  This can be done easily by using the 'Edit as New (Duplicate)'
      option found on the subscription information page and changing
      only the 'Library' field

      New Duplicate Subscription
      |image746|

-  Use the 'Public Note' for any notes you would like to appear in the
   OPAC for the patrons

-  'Nonpublic Note' should be used for notes that are only visible to
   the librarians via the staff client

-  The 'Patron notification' option lets you pick a notice to send to
   patrons who subscribe to updates on this serial via the OPAC.

   -  For this option to appear you need to make sure that you have a
      Routing List notice set up in the :ref:`Notices Tool <notices-&-slips-label>`

-  'Location' is for the shelving location

-  The 'Grace period' is the number of days before an issue is
   automatically moved from 'Expected' status to 'Waiting' and how many
   days before an issue is automatically moved from 'Waiting' status to
   'Late'

-  The Staff and OPAC Display options allow you to control how many
   issues appear by default on bibliographic records in the Staff Client
   and the OPAC

   -  If no values are entered in these fields, they will use the
      :ref:`OPACSerialIssueDisplayCount` and
      :ref:`StaffSerialIssueDisplayCount`
      system preference values

Once that data is filled in you can click 'Next' to enter the prediction
pattern information.

Add a new subscription (2/2)
|image747|

-  In 'First issue publication date' you want to enter the date of the
   issue you have in your hand, the date from which the prediction
   pattern will start

-  There are several pre-defined options for the 'Frequency' of
   publication all of which are visible alongside your own custom
   frequencies by visiting ':ref:`Manage frequencies <manage-serial-frequencies-label>`'

   -  Without periodicy: some very specific (usually high level science
      journals) don't have a true periodicity. When you subscribe to the
      title, you subscribe for 6 issues, which can arrive in 1 year...
      or 2... There is no regularity or known schedule.

   -  Unknown select this if none of the other choices are relevant

   -  Irregular: The journal is not "regular" but has a periodicity. You
      know that it comes out on January, then in October and December,
      it is irregular, but you know when it's going to arrive.

   -  2/day: Twice daily

   -  1/day: Daily

   -  3/week: Three times a week

   -  1/week: Weekly

   -  1/ 2 weeks: Twice monthly (fortnightly)

   -  1/ 3 weeks: Tri-weekly

   -  1/month: Monthly

   -  1/ 2 months (6/year): Bi-monthly

   -  1/ 3 months (1/quarter): Quarterly

   -  1/quarter (seasonal) : Quarterly related to seasons (ie. Summer,
      Autumn, Winter, Spring)

   -  2/year: Half yearly

   -  1/year: Annual

   -  1/ 2 years: Bi-annual

-  'Subscription length' is the number of issues or months in the
   subscription. This is also used for setting up renewal alerts

-  'Subscription start date' is the date at which the subscription
   begins. This is used for setting up renewal alerts

-  'Subscription end date' should only be entered for subscriptions that
   have ended (if you're entering in a backlog of serials)

-  'Numbering pattern' will help you determine how the numbers are
   printed for each issue. Patterns entered here are saved and editable
   at any time by visiting ':ref:`Manage numbering
   patterns <manage-serial-numbering-patterns-label>`'

   -  Start with the numbering on the issue you have in hand, the
      numbering that matches the date you entered in the 'First issue
      publication' field

   -  You can choose to create your own numbering pattern by choosing
      'None of the above' and clicking the 'Show/Hide Advanced Pattern'
      button at the bottom of the form

      Advanced prediction pattern
      |image748|

-  The 'Locale' option is useful when you want to display days, month or
   season. For example, if you have a German serial, you can use the
   German locale option to display days, etc. in German.

-  Once a 'Numbering pattern' is chosen the number formula will
   appear.Numbering Forumla

   -  The 'Begins with' number is the number of the issue you're holding
      in your hand.

   -  The 'Inner counter' is used to tell Koha where the "receiving
      cycle" starts

      -  For example: If the first issue to receive is "vol. 4, no. 1,
         iss. 796", you need to set up "inner counter = 0" But if it's
         "vol. 4, no. 2, iss. 797", the inner counter should be "1".

   -  After filling in this data click the 'Test prediction pattern'
      button to see what issues the system will generate, if there are
      irregularities you can choose which issues don't exist from the
      list presented.

      Prediction pattern
      |image749|

-  If you have added a :ref:`custom subscription field <custom-subscription-fields-label>`, it
   will be editable above the buttons at the bottom of the screenShow
   field

Click 'Save Subscription' to save the information you have entered.
`Find sample serial examples in the appendix <#sampleserialsapp>`__.

.. _receive-issues-label:

Receive Issues
-----------------------------------

Issues can be marked as received from several locations. To find a
subscription, use the search box at the top of the Serials page to
search for the serial you'd like to receive issues for:

Subscription Search
|image750|

From the search results you can click the 'Serial Receive' link or you
can click on the subscription title and then click the 'Receive' button.

Subscription Buttons
|image751|

The final way to receive serials is from the 'Serial Collection' page.
To the left of the Subscription summary page there is a menu with a link
to 'Serial Collection'

Serial Subscription Menu
|image752|

From the page that opens up you can click 'Edit Serial' with the issue
you want to receive checked.

Edit Issues
|image753|

All three of these options will open up the issue receive form:

Receive Serials
|image754|

-  Choose 'Arrived' from the status pull down to mark a serial as
   received.

-  If you have decided to have an item record created for each issue an
   :ref:`item add form <adding-items-label>` will appear after choosing 'Arrived'

   Serial item record
   |image755|

-  If your issue has a supplemental issue with it, fill in the
   Supplemental Issue information.

   -  Key the entire numbering in the box after "Supplemental issue" no
      numbering will be inherited/auto-filled from the main issue, and
      exactly what you key in the box after "Supplemental issue" will be
      auto-filled in the item record's Serial enumeration/chronology
      [MARC21 952$h] (if you create item records).

      -  E.g., key this in its entirety if it's what you would like
         displayed: "v.69 no.3 (Mar. 2015) suppl."

-  If you have decided to have an item record created for each issue an
   :ref:`item add form <adding-items-label>` will appear for your supplement and
   for the issue itself

-  Once you have entered your info you can click 'Save'

If you are receiving multiple issues at once, or have marked an issue as
'Late' or 'Missing' there you can click the 'Generate Next' button below
the list of issues.

Generate Next Button
|image756|

Clicking this button will generate the next issue for you and mark the
previously expected issue as 'Late' automatically. You can then check
the 'Edit' box to the right of each issue and edit the status on
multiple issues at once.

.. _create-a-routing-list-label:

Create a Routing List
----------------------------------------

A routing list is a list of people who receive the serial before it goes
to the shelf. To enable routing lists you want to set your
:ref:`RoutingSerials` preference to 'Add'.

When on the subscription page you will see a link to the left that reads
'Create Routing List' or 'Edit Routing List'

Subscription Routing List Link
|image757|

Clicking that link will bring you to the menu to add a new routing list.

Routing List Creation
|image758|

From here you want to click 'Add recipients' in order to add people to
the routing list. In the menu that appears you can filter patrons by
part of their name, their library and/or patron category.

Add Members to Routing List
|image759|

Clicking 'Add' to the right of each name will add them to the routing
list. When you have chosen all of the people for the list, click the
'Close' link to be redirected to the routing list.

Routing List
|image760|

If the list looks the way you expect it to, then click 'Save'. Next you
will be brought to a preview of the routing list. To print the list
click 'Save and preview routing slip.' This will open a printable
version of the list.

Preview Routing List
|image761|

If :ref:`RoutingListAddReserves` is set to on
then patrons listed in the routing list will automatically be added to
the holds list for the issue.

To see a list of all of the routing lists a specific patron is on visit
the :ref:`Routing Lists tab <routing-lists-label>` on their patron record.

.. _subscriptions-in-staff-client-label:

Subscriptions in Staff Client
-----------------------------------------------------

Subscription information will appear on bibliographic records under the
'Subscriptions' tab

Subscription Tab on Bibliographic Record
|image762|

Clicking the 'Subscription Details' link will take you to the
Subscription summary page in the staff client.

Subscription Detail
|image763|

If you are using the `Acquisitions <#acqmodule>`__ module to keep `track
of serial subscriptions <#ordersubscription>`__ you will see that info
before your subscription details.

Acquisitions information for subscription
|image764|

.. _subscriptions-in-opac-label:

Subscriptions in OPAC
--------------------------------------------

When viewing the subscription in the OPAC there will be several options.

Like in the staff client, there will be a Subscriptions tab on the
bibliographic record.

Subscriptions Tab in OPAC
|image765|

Under this tab will appear the number of issues you chose when setting
up the subscription or in your
:ref:`OPACSerialIssueDisplayCount` system
preference. Clicking the 'More details' link will provide you with
additional information about the serial history. You can set the default
view of a serial in the OPAC with the
:ref:`SubscriptionHistory` system preference.

There are two views, compact and full. The compact serial subscription
will show basic information regarding the subscription

Compact Serial View
|image766|

From this compact display patrons can subscribe to be notified of new
issues as they are released by clicking the 'Subscribe to email
notifications of new issues' button. For this link to appear you will
want to have chosen to notify patrons :ref:`on the
subscription <add-a-subscription-label>` itself.

Subscribe link in the OPAC
|image767|

You can see thos who subscribe to new issue alerts by going to the
subscription page in the staff client and looking on the right of the
'Information' tab.Serial notification subscribers

Whereas the full view shows extensive details, broken out by year,
regarding the subscription

Full Serial View
|image768|

.. _claim-late-serials-label:

Claim Late Serials
--------------------------------------

Koha can send email messages to your serial vendors if you have late
issues. To the left of the main serials page there is a link to 'Claims'

Link to Claims on Serials Menu
|image769|

The links to claims also appears to the left of the subscription detail
page

Link to Claims on the Serials Menu
|image770|

If you don't have a claim notice defined yet you will see a warning
message that you need to first define a notice.

Missing Claims Notice Warning
|image771|

Clicking 'Claims' will open a report that will ask you to choose from
your various serial vendors to generate claims for late issues.

Serial Claims
|image772|

From the list of late issues you can choose which ones you want to send
a claim email to by clicking the checkbox to the left of late issue,
choosing the notice template to use and clicking the 'Send notification'
button.

.. _check-serial-expiration-label:

Check Serial Expiration
-----------------------------------------------

When adding serials you enter a subscription length, using the check
expiration tool you can see when your subscriptions are about to expire.
To use the tool click the link to 'Check expiration' on the serials
menu.

Check Serial Expiration
|image773|

In the form that appears you need to enter at least a date to search by.

In your results you will see all subscriptions that will expire before
the date you entered. From there you can choose to view the subscription
further or renew it in one click.

Serial Expiration Search Results
|image774|

.. _renewing-serials-label:

Renewing Serials
-----------------------------------

If your serial subscription has expired you won't be able to receive
issues. To renew your subscription you can click the 'Renew' button at
the top of your subscription detail page.

Renew option on subscription detail
|image775|

Another option is to click the 'Renew' link to the right of the
subscription on the Serial Collection page.

Renew option on serial collection
|image776|

Once you click the 'Renew' link or button you will be presenting with
renewal options.

Subscription renewal form
|image777|

-  The start date should be the date your subscription period starts.

-  For the subscription length you'll want to fill in one of the three
   fields presented: Number of num (issues), Number of months or Number
   of weeks.

-  Finally enter any notes you might have about this renewal.

.. _searching-serials-label:

Searching Serials
-------------------------------------

Once in the Serials module there is basic search box at the top that you
can use to find subscriptions using any part of the ISSN and/or title.

Basic Serials Search
|image778|

You can also click the 'Advanced Search' link to the right of the
'Submit' button to do a more thorough search of your serials.

Advanced Serials Search
|image779|

From your results you can filter by using the search boxes at the bottom
of each column and adjust the number of resutls using the toolbar at the
top of the results set.

Serial Search Results
|image780|
