.. include:: images.rst

Circulation
===========

Circulation functions can be accessed in several different ways. On the
main page of the staff client there are some quick links in the center
of the page to check items out, in or transfer them. For a complete
listing of Circulation functions you can visit the Circulation page
which is linked from the top left of every page or from the center of
the main page.

Before circulating your collection you will want to set your `Global
System Preferences <#globalsysprefs>`__, `Basic
Parameters <#basicparams>`__ and `Patrons & Circulation
Rules <#patscirc>`__.

While in Circulation you can jump between the tabs on the quick search
box at the top of the screen by using the following hot keys:

-  jump to the catalog search with Alt+Q

-  jump to the checkout with Alt+U

   -  this will not work for Mac users

-  jump to the checkin with Alt+R

    **Note**

    Mac users use the OPTION button in place of ALT

`Check Out (Issuing) <#checkingout>`__
--------------------------------------

To begin the checkout process you must enter the patron barcode or part
of their name. The checkout option appears in three main places:

-  Check out option on the top of the main staff client

   Check out box on main Koha Staff Client page
   |image482|

-  Check out option on the patron record

   Check out tab on a patron record
   |image483|

-  If you have enabled `batch checkouts <#batchcheckoutprefs>`__ then
   click the batch check out option on the patron recordBatch checkout

-  Check out option on the quick search bar on the circulation page

   Check out tab on quick search bar
   |image484|

`Checking Items Out <#checkitemout>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To check an item out to a patron, first search for that patron using one
of the many options listed above. You will then be presented with the
checkout screen.

Check Out Screen
|image485|

If you have chosen to 'Always show checkouts immediately' then you will
see the list of checkouts below the check out box.

Check Out Screen
|image486|

At the top of the Check Out screen is a box for you to type or scan the
item's barcode into.

-  **Important**

       Many modern barcode scanners will send a 'return' to the browser,
       making it so that the 'Check Out' button is automatically clicked

-  If the barcode is not found you will be prompted to use fast
   cataloging to add the item. Learn more about `fast
   cataloging <#fastaddcat>`__ later in this manual.

-  If you have
   `itemBarcodeFallbackSearch <#itemBarcodeFallbackSearch>`__ set to
   'Enable' then you can enter a keyword search in this box instead of
   just a barcode (this will make it possible to check out using title
   and/or call number).

To see more checkout options click the 'Checkout settings' link to
expand the checkout area.Checkout settings

Below the box for the barcode there may be options for you to override
the default due date for the item.

-  This option will only appear if you have set the
   `SpecifyDueDate <#SpecifyDueDate>`__ system preference to allow staff
   to override the due date

Below the box for the barcode you will see a checkbox for 'Automatic
renewal'. This will allow this item to automatically renew if the
`appropriate cron job <#autorenewcron>`__ is running and there are no
holds on the item.

Next is an option to no decrease the loan length based on holds. This
overrides the `decreaseLoanHighHolds <#decreaseLoanHighHolds>`__
preference.

If you're allowing the `checkout of items on site <#OnSiteCheckouts>`__
to patrons (these are usually items that are not for loan that you would
like to check for in library use) then you will see the 'On-site
checkout' checkbox after clicking the 'Checkout settings' link to expand
your circulation options.On-site checkout

At the bottom of the page there is a summary of the patron's current
checked out items along with the due date (and time if the item is an
hourly loan), items checked out today will appear at the top.

    **Note**

    Items that are hourly loan items will include the time with the due
    date.

Patron's checkout summary
|image487|

If you checked out an item for on site use you will see that highlighted
in red in the checkout summary.

Patron's on-site checkout
|image488|

If you have set your `ExportWithCsvProfile <#ExportWithCsvProfile>`__
preference, you will also see the option to export the patron's current
checkout information using a CSV Profile or ISO2709 (MARC21) format.

Export patron's checkout information
|image489|

Also at the bottom of the page is the list of items the patron has on
hold

Holds summary on check out screen
|image490|

From the holds list you can suspend or resume patrons holds using the
options at the bottom of the list if you have the
`SuspendHoldsIntranet <#SuspendHoldsIntranet>`__ preference set to
'allow.'

    **Note**

    If you have your
    `AutoResumeSuspendedHolds <#AutoResumeSuspendedHolds>`__ preference
    set to "Don't allow" then you will not have the option to put an end
    date on the hold suspension

If there are notes on the patron record these will appear to the right
of the checkout box

Patron notes on check out screen
|image491|

If the patron has a hold waiting at the library that too will appear to
the right of the check out box making it easy for the circulation
librarian to see that there is another item to give the patron

Hold waiting message on check out screen
|image492|

The details of the checkouts will appear on the bib detail page in the
staff client as well.

Circulation information on holdings tab
|image493|

`Printing Receipts <#printcircreceipt>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Once you have checked out all of the items for the patron you can print
them a receipt by choosing one of two methods.

If you have the `CircAutoPrintQuickSlip <#CircAutoPrintQuickSlip>`__
preference set to 'open a print quick slip window' you can simply hit
enter on your keyboard or scan a blank piece of paper with your barcode
scanner. The idea being that you're "checking out" a blank barcode which
triggers Koha to print the 'Quick slip.'

You can also click the Print button at the top of the screen and choose
'Print slip' or 'Print quick slip'.

Print receipt to slip printer
|image494|

If you choose 'Print slip' it will print all of the items the patron has
checked out, including those they checked out at an earlier date.
Choosing 'Print quick slip' will print only the items that were checked
out today.

'Print summary' will generate a full page summary for the patron's
circulation information and 'Print overdues' will print out a slip that
lists all items that are overdue.

What prints on the slips can be customized by altering the slip
templates under the `Notices & Slips <#notices>`__ tool.

`Clear Patron Information <#clearpatroninfo>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

When you're done checking an item out if you have the
`DisplayClearScreenButton <#DisplayClearScreenButton>`__ preference set
to 'Show' you can clear the current patron by clicking the X in the top
right of the patron's info to remove the current patron from the screen
and start over.

Clear Screen Button
|image495|

If you have the `CircAutoPrintQuickSlip <#CircAutoPrintQuickSlip>`__
preference set to 'clear the screen' then you simply need to hit enter
or scan a blank barcode and the screen will be cleared of the current
patron.

`Batch Checkouts <#batchcheckout>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you would like to perform a batch check out you can do so by turning
on the `BatchCheckouts <#BatchCheckouts>`__ system preference and
assigning the proper patron categories via the
`BatchCheckoutsValidCategories <#BatchCheckoutsValidCategories>`__
preference. This will allow you to use an RFID pad that reads multiple
barcodes or perform a batch check out for training internal use.Batch
checkouts

From this screen you can scan several barcodes or load a file of
barcodes. If those items cannot be checked out they will provide a
warning on the following screen

Batch checkout warnings
|image496|

If you are using a statistical patron type then you'll see that local
use was recorded for each item you scanned.

Batch local use
|image497|

`Check Out Messages <#checkoutmsg>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you check out an item that has multiple pieces and you have cataloged
that information in subfield 3 of the item record (in MARC21) a message
will pop up when you check out that item telling you how many pieces
should be there.

Materials in the checked out item
|image498|

There are times when Koha will prevent the librarian from being able to
check out items to a patron. When this happens a warning will appear
notifying the librarian of why the patron cannot check items out.

-  Patron owes too much in fines

   Patron owes too much in fines
   |image499|

   -  You can set the amount at which patron checkouts are blocked with
      the `noissuescharge <#noissuescharge>`__ system preference

-  Patron has a restriction on their account

   Patron account restricted
   |image500|

   -  This can be set by the librarian editing a patron record and
      adding a `restriction <#patronflags>`__ or by the `Overdue/Notice
      Status Triggers <#noticetriggers>`__

   -  If the staff member has the right permission they can override the
      restriction temporarily

      Patron account restricted
      |image501|

-  Patron needs to confirm their address

   Patron's address warning
   |image502|

   -  This can be set by the librarian editing a patron record and
      adding a `flag <#patronflags>`__

-  Patrons has lost their library card

   Lost patron card warning
   |image503|

   -  This can be set by the librarian editing a patron record and
      adding a `flag <#patronflags>`__

`Check Out Warnings <#checkoutwarn>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Sometimes checkouts will trigger warning messages that will appear in a
yellow box above the check out field. These warnings need to be
acknowledged before you will be able to continue checking items out.

-  Patron has outstanding fines

   Patron has a debt
   |image504|

-  Item on hold for someone else

   Item is on hold for someone else
   |image505|

-  Item should be on the hold shelf waiting for someone else

   Item is on hold shelf waiting for someone else
   |image506|

-  Item already checked out to this patron

   Item is currently checked out to this patron
   |image507|

-  Item checked out to another patron

   Item checked out to another patron
   |image508|

   -  This warning will allow you to place a hold on the item for the
      patron you're trying to check it out to.

-  Item not for loan

   Item is not normally for loan
   |image509|

-  Patron has too many things checked out and
   `AllowTooManyOverride <#AllowTooManyOverride>`__ is set to 'Allow'

   Too many checkouts
   |image510|

-  Patron has too many things checked out and
   `AllowTooManyOverride <#AllowTooManyOverride>`__ is set to "Don't
   allow"

   Too many checkouts
   |image511|

-  Item cannot be renewed

   No more renewals
   |image512|

   -  This can be overridden with the
      `AllowRenewalLimitOverride <#AllowRenewalLimitOverride>`__ system
      preference

-  Barcode not found

   Barcode not found
   |image513|

   -  Learn more about `fast cataloging <#fastaddcat>`__ later in this
      manual.

-  Item being checked out is marked as 'lost'

   -  Depending on the value in your `IssueLostItem <#IssueLostItem>`__
      preference, you may just see a warning

      Warning that item is lost
      |image514|

      or a confirmation box

      Confirm checkout of lost item
      |image515|

-  Item being checked out is not recommended for a patron of this age

   Age warning
   |image516|

-  Item being checked out meets the
   `decreaseLoanHighHolds <#decreaseLoanHighHolds>`__ system preference
   criteria

   Too many holds
   |image517|

`Renewing <#circrenew>`__
-------------------------

Checked out items can be renewed (checked out for another period of
time) based on your `circulation rules <#circfinerules>`__ and `renewal
preferences <#RenewalPeriodBase>`__.

If `you allow it <#OpacRenewalAllowed>`__, patrons can renew their own
items via the OPAC, but sometimes you'll need to help them by renewing
their items via the staff client.

To renew items checked out to a patron, you can do one of two things.

The first is to visit their details page or checkout page and review
their checkout summary at the bottom.

Circulation Summary
|image518|

In the Renew column you will see how many times each item has been
renewed and a checkbox to renew the item for the patron. Check the boxed
of the items you would like to renew and click the 'Renew or Return
checked items' button, or to renew all items checked out to the patron
simply click the 'Renew all' button.

Renew buttons
|image519|

Sometimes renewals will be blocked based on your circulation rules, to
override this block you must have your
`AllowRenewalLimitOverride <#AllowRenewalLimitOverride>`__ preference
set to 'Allow'. If you allow renewal limit overrides, you will see a
checkbox at the bottom left of the circulation summary. Check that box
and then choose the items you would like to renew.

Override renewal limit
|image520|

Checking that box will add checkboxes in the renew column above where
before the item was not renewable.

The second option is to visit the 'Renew' page found under the
Circulation menu.

Renew
|image521|

And scan the barcodes of the items you would like to renew.

Barcode to renew
|image522|

If the item is renewed you will receive a confirmation message.

Item renewed
|image523|

If the barcode is not found you will be presented with an error.

No barcode found
|image524|

If the item is not actually checked out you will also receive an error.

Item not checked out
|image525|

`Check In (Returning) <#checkingin>`__
--------------------------------------

Checking in items can be performed from various different locations

-  The check in box on the top of the main staff client

   Check out box on main Koha Staff Client page
   |image526|

-  The check in option on the quick search bar on the Circulation page

   Check in tab on quick search bar
   |image527|

-  The check in link on the patron's checkout summary (and on the
   checkout summary page)

   Patron checkout summary includes 'Check In' link
   |image528|

-  The Check in page under the Circulation menu

   Check in link on Circulation Module
   |image529|

`Checking Items In <#checkitemin>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To check an item in scan the barcode for the item into the box provided.
A summary of all items checked in will appear below the checkin box

Check In Summary
|image530|

If you are checking items in that were put in the book drop while the
library was closed you can check the 'Book drop mode' box before
scanning items. This will effectively roll back the returned date to the
last date the library was open.

-  This requires that you have your closings added to the `Holidays &
   Calendar Tool <#calholidays>`__

You can also choose to forgive all overdue charges for items you are
checking in by checking the 'Forgive overdue charges' box before
scanning items.

If you have the `SpecifyReturnDate <#SpecifyReturnDate>`__ preference
set to 'Allow' you will be able to arbitrarily set the return date from
below the check in box.Specify check in date

`Check In Messages <#checkinmsg>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There are several messages that can appear when checking items in:

-  If you are checking an item in at a library other than the home
   branch, a message will appear asking you to transfer the book to the
   home library

   Check in Transfer Message
   |image531|

   -  After this item is checked in the status of the item will be
      changed in the catalog to 'in transit'

      In Transit Status
      |image532|

   -  To mark an item as back at the home branch, check the item in at
      the home branch

      Check In Transferred Item
      |image533|

      -  A message will appear tell you that the item is not checked
         out, but the status will now say available in the catalog. This
         step is necessary to mark items as received by the home branch.

-  If you are checking in an item that should have multiple parts or
   pieces a message will appear warning you about the number of pieces
   you should have in your hand

   Materials Specified
   |image534|

-  If you're checking an item in that has a hold on it, you will be
   prompted to confirm the hold

   Hold Found Check In Message
   |image535|

   -  Clicking the Confirm hold button will mark the item as waiting for
      pickup from the library

      Hold waiting at the library
      |image536|

   -  Clicking the Print Slip and Confirm button will mark the item as
      waiting for pickup at the library and present the library with a
      receipt to print and place on the book with the patron's
      information

   -  Ignoring the hold will leave the item on hold, but leave its
      status as Available (it will not cancel the hold)

-  If you're checking in an item that has a hold on it at another branch
   you will be prompted to confirm and transfer the item

   Hold found for another branch
   |image537|

   -  Clicking the Confirm hold and Transfer button will mark the item
      as in transit to the library where the hold was placed

      In transit hold status
      |image538|

   -  Clicking the Print Slip, Transfer and Confirm button will mark the
      item as in transit to the library where the hold was placed and
      present the library with a receipt to print and place on the book
      with the patron's information

   -  Ignoring the hold will leave the item on hold, but leave its
      status as Available (it will not cancel the hold)

-  If you have the system showing you fines at the time of checkin
   (`FineNotifyAtCheckin <#FineNotifyAtCheckin>`__) you will see a
   message telling you about the fine and providing you a link to the
   payment page for that patron

   FineNotifyAtCheckin
   |image539|

`Circulation Messages <#circmessages>`__
----------------------------------------

Circulation messages are short messages that librarians can leave for
their patrons or their colleagues that will appear at the time of
circulation.

`Setting up Messages <#setcircmsg>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Circulation messages are set up as `Authorized
Values <#authorizedvalues>`__. To add or edit Circulation Messages you
want to work with the `BOR\_NOTES <#bornotes>`__ value.

BOR\_NOTES Authorized Values
|image540|

The 'Description' field can hold a canned message that you would like to
appear on the patron's record.

    **Important**

    The 'Description' field is limited to 80 characters, but the patron
    message field can hold more than that. Enter 80 characters in the
    'Description' field and then type the rest on the patron record.

`Adding a Message <#addcircmsg>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When on the patron's check out tab you will see a link to 'Add a new
message' to the right of the check out box and a button at the top to
'Add message'.

Circulation Message in Staff Client
|image541|

When you click either of these options you will be asked to choose if
the message is for the librarians or the patron and the message you
would like to leave.

Leave a Circulation Message
|image542|

    **Note**

    A message for the patron will also show to the library staff.

`Viewing Messages <#viewcircmsg>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Circulation messages meant for the staff and/or the patron will appear
on the patron's checkout screen to the right of the checkout box.
Messages in bold and red are meant for the library staff only, whereas
messages in regular italics font are meant for the patron and the
librarian.

Circulation Message in Staff Client
|image543|

Circulation messages meant for the patron will also appear when they log
into the OPAC.

Circulation Message in OPAC
|image544|

`Holds <#holds>`__
------------------

Koha allows patrons to put things on hold. A 'Hold' is a way to reserve
an item. Depending on your `circulation and fine
rules <#circfinerules>`__ and `hold preference <#circholdspolicy>`__
settings patrons will be able to place items on hold for pickup at the
library at a later date/time.

`Placing Holds in Staff Client <#holdsinstaff>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There are several ways to place holds from the staff client. The most
obvious is using the 'Place Hold' button at the top of any bibliographic
record.

Place Hold Button on Bib Record
|image545|

You can also click the smaller 'Place Hold' link found at the top of
your catalog search results, or the 'Holds' link found below each
result.

Hold options on search results
|image546|

You will be asked to search for a patron by barcode or any part of their
name to start the hold process.

Find Patron For Hold
|image547|

If you'd like to search for the patron first and then the bib record for
the hold, you can open the patron record and click on the 'Search to
Hold' button at the top of the patron record.

Search to Hold on Patron Record
|image548|

After clicking the button you will be brought to the catalog search page
where you can find the book(s) you want to place a hold on. Under each
title on the results you'll see an option to 'Hold for Patron Name.'

Hold for Patron links on Search Results
|image549|

If you want to place a hold on multiple items, simply check the boxes to
the left of them and click the arrow to the right of the 'Place Hold'
button.

Hold Multiple Items for Patron
|image550|

Depending on how many items you choose to place a hold on at once you
will see a different place hold form. If you are placing a hold on one
bibliographic record you will see a list of all of the items you can
place a hold on.

Place Hold Form
|image551|

-  Enter any notes that might apply to this hold

-  Choose the library where the patron will pick up the item

-  If you have the
   `AllowHoldItemTypeSelection <#AllowHoldItemTypeSelection>`__
   preference set to 'Allow' and the record had more than one item type
   attached you will see an option to choose to limit the hold to a
   specific item typeAllowHoldItemTypeSelection

-  If the patron wants the hold to start on a date other than today,
   enter that in the 'Hold starts on date' field

   -  This option will only appear if the
      `AllowHoldDateInFuture <#AllowHoldDateInFuture>`__ system
      preference is set to 'Allow'

-  If the patron has specified that they don't want the item after a
   certain date, or if you have limits on hold lengths, you can enter an
   expiration date for the hold in the 'Hold expires on date'

   -  To have expired holds cancelled automatically you will need to have
      the `Expired Holds <#expiredholdscron>`__ cron job set to run on a
      regular basis.

-  Next choose if you want to place a hold on the next available item or
   a specific item by clicking the radio button next to an individual
   item.

If you're placing a hold on multiple items you will be presented with
the next available option for all titles. If no items are available for
hold it will say so on the confirmation screen.

Place multiple items on hold
|image552|

Once your hold is placed, if you'd like to have Koha forget that you
used the 'Search to Hold' function, you can choose to have Koha 'forget'
the patron's name by clicking the arrow to the right of the 'Place Hold'
button on the search results and choosing the 'Forget' option.

Forget Search to Hold Option
|image553|

`Managing Holds <#manageholds>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Holds can be altered and cancelled from the Holds tab found on the left
of the bibliographic record.

Bibliographic Record Tabs
|image554|

From the list of holds you can change the order of the holds, the pickup
location, suspend and/or cancel the hold.

Lists of Holds
|image555|

    **Note**

    If you have your
    `AutoResumeSuspendedHolds <#AutoResumeSuspendedHolds>`__ preference
    set to "Don't allow" then you will not have the option to put an end
    date on the hold suspension

    **Note**

    Depending on how you have your `HidePatronName <#HidePatronName>`__
    system preference set the list may show card numbers instead of
    names in the Patron column like in the image above.

To rearrange or delete holds, simply make a selection from the
'Priority' pull down or click the arrows to the right of the priority
pull down.

Hold Priority Menu
|image556|

If you use the priority pull down to rearrange or delete holds you will
need to click the 'Update hold(s)' button to save your changes.

Clicking the down arrow to the right of the hold will stick the hold at
the bottom of the list even if more requests are made.

For example, your library has home-bound patrons that are allowed to
keep books out for months at a time. It would not be fair to other
patrons if a home-bound patron were able to check out a brand new book
and keep it for months. For this reason, the home-bound patron's hold
request would stay at the bottom of the queue until everyone else who
wanted to read that book has already done so.

Lowest Priority & Delete Options for Holds
|image557|

If a patron asks to have their hold suspended and you have the
`SuspendHoldsIntranet <#SuspendHoldsIntranet>`__ system preference set
to 'allow' you can do so by clicking the Suspend button to far right. If
the patron gives you a date for the items to become unsuspended you can
enter that in the date box and click the 'Update hold(s)' button to save
your changes.

Hold suspension column
|image558|

To delete or cancel a hold click the red 'X' to the right of the hold
line. To delete/cancel a bunch of holds you can choose 'del' from pull
down to the left of each line and then click 'Update hold(s)' at the
bottom of the list.

Cancel Holds
|image559|

`Receiving Holds <#receiveholds>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When items that are on hold are `checked in <#checkingin>`__ or
`out <#checkingout>`__ the system will remind the circulation librarian
that the item is on hold and offer them options for managing the hold.

When you check in an item that has a hold on it the system will ask you
to either confirm and transfer the item

Confirm Hold & Transfer
|image560|

or just confirm the hold

Confirm Hold
|image561|

Clicking the Confirm button will mark the item as on hold for the
patron. If the item needs to be transferred the item will also be marked
as in transit to the proper branch. Clicking 'Ignore' will retain the
hold, but allow you to check the item out to another patron. Choosing to
confirm and print will present you with a printable page that you can
slip inside the book with the necessary hold and/or transfer
information.

Once confirmed the hold will show on the patron record and on the
checkout screen under the 'Hold' tab.

Hold on Patron Record
|image562|

From here if the patron would like you suspend their holds you can do so
one by one or in bulk.

The item record will also show that the item is on hold.

Hold on Item Record
|image563|

In some cases a patron may come in to pick up a hold for their partner
(or someone else in their household). In this case you want to make sure
that the hold is cancelled when you check the item out to someone else.
When trying to check out an item that is already waiting for someone
else you will be presented with a warning message.

Hold waiting for someone else
|image564|

From here you can check the item out to the patron at the desk and
cancel the hold for the patron.

`Transfers <#transfers>`__
--------------------------

If you work in a multi-branch system you can transfer items from one
library to another by using the Transfer tool.

-  *Get there*: Circulation > Transfer

To transfer an item

-  Click 'Transfer' on the Circulation page

   Transfer Tool
   |image565|

   -  Enter the library you would like to transfer the item to

   -  Scan or type the barcode on the item you would like to transfer

-  Click 'Submit'

   Transfer Summary
   |image566|

-  The item will now say that it is in transit

   Item in Transit
   |image567|

-  When the item arrives at the other branch the librarian must check
   the item in to acknowledge that it is no longer in transit

-  The item will not be permanently moved to the new library

   Item record
   |image568|

   -  The item shows the same 'Home Library' but has updated the
      'Current Location' to note where it resides at this time

`Set Library <#setlibrary>`__
-----------------------------

By default you will enter the staff client as if you are at your home
library. This library will appear in the top right of the Staff Client.

My Library
|image569|

This is the library that all circulation transactions will take place
at. If you are at another library (or on a bookmobile) you will want to
set your library before you start circulating items. To do this you can
click 'Set' at the top right or on the Circulation page.

Set Library Form
|image570|

Once you have saved your changes you new library will appear in the top
right.

`Fast Add Cataloging <#fastaddcat>`__
-------------------------------------

Sometimes circulation librarians need to quickly add a record to the
system for an item they are about to check out. This is called 'Fast
Add.' To allow circulation librarians access to the Fast Add Cataloging
tool, simply make sure they have the
`fast\_cataloging <#fastaddpermissions>`__ permissions. There are two
ways to add titles via fast add. If you know that you're about to check
out an item that isn't in you catalog you can go to the Circulation
module and click 'Fast cataloging.'

Circulation Menu
|image571|

The cataloging interface will open up with the short cataloging record:

Fast Add Framework
|image572|

After adding your cataloging data you will be asked to enter item data.
Enter the items barcode, collection code, etc and save the item before
checking it out.

The other way to fast catalog is from the checkout screen. When you
enter a barcode at checkout that Koha can't find, it will prompt you to
use fast cataloging to add the item to Koha and check it out.

Barcode not found
|image573|

Clicking 'Fast cataloging' will bring you to the fast cataloging form
where you can enter the title information

Fast cataloging
|image574|

After clicking 'Save' you will be brought to the item record where the
barcode will already be filled in with the barcode you're trying to
check out.

Fast cataloging item record
|image575|

After clicking the 'Add item' button the item will automatically be
checked out the patron you were trying to check the book out to
originally.

Checked out item
|image576|

`Circulation Reports <#circreports>`__
--------------------------------------

Most reports can be found via the Reports module, but some of the more
common circulation reports are available right from the Circulation
module.

-  *Get there*: Circulation > Circulation reports

`Holds Queue <#holdsqueue>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This report will show you all of the holds at your library.

Sample Holds Queue
|image577|

To generate this report, you must have the `Build Holds Queue cron
job <#buildholdscron>`__ running. This cron job is a script that should
be run periodically if your library system allows borrowers to place
on-shelf holds. This script decides which library should be responsible
for fulfilling a given hold request.

It's behavior is controlled by the system preferences
`StaticHoldsQueueWeight <#holdqueueweight>`__ and
`RandomizeHoldsQueueWeight <#holdqueueweight>`__.

If you do not want all of your libraries to participate in the on-shelf
holds fulfillment process, you should list the libraries that \*do\*
participate in the process here by inputting all the participating
library's branchcodes, separated by commas ( e.g. "MPL,CPL,SPL,BML" etc.
).

By default, the holds queue will be generated such that the system will
first attempt to hold fulfillment using items already at the pickup
library if possible. If there are no items available at the pickup
library to fill a hold, build\_holds\_queue.pl will then use the list of
libraries defined in StaticHoldsQueueWeight. If
RandomizeHoldsQueueWeight is disabled ( which it is by default ), the
script will assign fulfillment requests in the order the branches are
placed in the StaticHoldsQueueWeight system preference.

For example, if your system has three libraries, of varying sizes (
small, medium and large ) and you want the burden of holds fulfillment
to be on larger libraries before smaller libraries, you would want
StaticHoldsQueueWeight to look something like "LRG,MED,SML".

If you want the burden of holds fulfillment to be spread out equally
throughout your library system, simply enable RandomizeHoldsQueueWeight.
When this system preference is enabled, the order in which libraries
will be requested to fulfill an on-shelf hold will be randomized each
time the list is regenerated.

Leaving StaticHoldsQueueWeight empty is contraindicated at this time.
Doing so will cause the build\_holds\_queue script to ignore
RandomizeHoldsQueueWeight, causing the script to request hold
fulfillment not randomly, but by alphabetical order.

`Holds to pull <#holdspull>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This report will show you all of the items that have holds on them that
are available at the library for pulling. If the items are available at
multiple branches then all branches with that item available will see
the hold to pull until one library triggers the hold.

Holds to Pull
|image578|

You can limit the results you see by using the Refine box on the left
side of the page:

Refine Holds to Pull Report
|image579|

`Holds awaiting pickup <#holdspickup>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This report will show all of the holds that are waiting for patrons to
pick them up.

Holds Awaiting Pickup
|image580|

Items that have been on the hold shelf longer than you normally allow
(based on the `ReservesMaxPickUpDelay <#ReservesMaxPickUpDelay>`__
preference value) will appear on the 'Holds Over' tab, they will not
automatically be cancelled unless you have set the `cron
job <#expiredholdscron>`__ to do that for you, but you can cancel all
holds using the button at the top of the list.

Items waiting on the hold shelf too long
|image581|

`Hold ratios <#holdratios>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Hold ratios help with collection development. Using this report you will
be able to see how many of your patrons have holds on items and whether
you should buy more. By default it will be set to the library needing 3
items per hold that has been placed. The report will tell you how many
additional items need to be purchased to meet this quota.

Hold Ratios
|image582|

`Transfers to receive <#transferstoreceive>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This report will list all of the items that Koha thinks are in transit
to your library.

Transfers to Receive
|image583|

If your transfers are late in arriving at your library you will see a
message stating how late your items are.

Late transfers include warning messages
|image584|

    **Important**

    An item is considered late based on the number of days you have
    entered in the
    `TransfersMaxDaysWarning <#TransfersMaxDaysWarning>`__ system
    preference.

`Overdues <#overduesreport>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    **Important**

    For libraries with a large patron base, this report may take a
    significant amount of time to run.

    **Note**

    Large libraries can choose to filter the report before it runs by
    setting the
    `FilterBeforeOverdueReport <#FilterBeforeOverdueReport>`__ system
    preference to 'Require'.

This report will list all items that are overdue at your library.

Overdues List
|image585|

The report can be filtered using the menu options found on the left of
the report.

    **Note**

    The 'Show any items currently checked out' checkbox basically
    switches this from a report of overdues to a report of checkouts. It
    will show all titles checked out regardless of due date.

`Overdues with fines <#overduesfines>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This report will show you any overdues at your library that have accrued
fines on them.

Overdues with fines
|image586|

If you would like to limit the report you can use the pull down menu at
the top to limit to a specific shelving location at your branch. To see
overdues with fines at other branches you will have to `change your
branch <#setlibrary>`__ or log in at that branch.

    **Important**

    If you do not charge fines and/or don't have the `fines cron
    job <#finescronjob>`__ running you will see no data on this report.

`Pending on-site checkouts <#pendingonsite>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you are using the on site checkouts functionality
(`OnSiteCheckouts <#OnSiteCheckouts>`__) then you'll have a report to
view all items that are currently checked out on site.Pending onsite
checkouts

This will list the due date (overdues in red), who has the item, item
information and what library the item is at.

`Tracking In house Use <#trackinhouse>`__
-----------------------------------------

Many libraries track the use of items within the library.

    **Note**

    This is different from tracking on site usage. In house use is the
    use of items in the library by patrons without them having to check
    them out. On site use is the use of items on site that must first be
    checked out. To learn more about on site usage please review the
    `OnSiteCheckouts <#OnSiteCheckouts>`__ preference.

Tracking the use of items in the library without checking them out can
be done in Koha one of two ways. The first is to create one or more
`Statistical Patrons <#addstatspatron>`__. When collecting items that
have been used within the library, you will want to check them out to
your statistical patron:

Check Out Items to Stats Patron
|image587|

Instead of marking the item as 'checked out' the system will record that
the item was used in house:

Local Use Recorded
|image588|

Repeat these steps for all items that have been used within the library
to keep accurate statistics for item use.

The other way to record local use of items is to set your
`RecordLocalUseOnReturn <#RecordLocalUseOnReturn>`__ preference to
'Record.' Then whenever you check an item in that is not checked out and
not on hold a local use will be recorded.

Local Use Recorded
|image589|

    **Note**

    If you have `RecordLocalUseOnReturn <#RecordLocalUseOnReturn>`__ set
    to 'Record' you can still use your statistical patrons to record
    local use as well.

`In Processing / Book Cart Locations <#processinglocations>`__
--------------------------------------------------------------

Koha allows for handling temporary locations like the processing center
and/or book carts throughout the library. For this feature to work you
must first make sure you have `authorized values <#authorizedvalues>`__
set in the `LOC <#shelvelocvals>`__ category for PROC (Processing
Center) and CART (Book Cart).

CART & PROC values in LOC
|image590|

Next you need to set the
`NewItemsDefaultLocation <#NewItemsDefaultLocation>`__ system preference
to PROC. This will set the new items to the Processing Center as their
default location.

When creating items you enter in their desired final shelving location
and Koha will temporarily change that to PROC. If
`InProcessingToShelvingCart <#InProcessingToShelvingCart>`__ is set to
"Don't move" then when an item with a location of PROC is checked in it
will either automatically update the item to use the permanent location.
If `InProcessingToShelvingCart <#InProcessingToShelvingCart>`__ is set
to "Move" then when an item is checked in the location is changed from
PROC to CART.

A `cron job <#proccartcron>`__ is then set to run at specified intervals
to age items from CART to the permanent shelving location. (For example,
an hourly cron entry of cart\_to\_shelf.pl --hours 3 where --hours is
the amount of time an item should spend on the cart before aging to its
permanent location.)

-  **Note**

       If the `ReturnToShelvingCart <#ReturnToShelvingCart>`__ system
       preference is set to "Move", any newly checked-in item is also
       automatically put into the shelving cart, to be covered by the
       same script run.

-  **Important**

       Checkins with confirmed holds will not go into the shelving cart.
       If items on the shelving cart are checked out, the cart location
       will be cleared.

`Self Checkout <#selfcheckout>`__
---------------------------------

Koha comes with a very basic self checkout module. To enable this module
you need to set the `WebBasedSelfCheck <#WebBasedSelfCheck>`__
preference to 'Enable.' To use this module you have to log in as a
`staff member <#addstaffpatron>`__ with `circulation
permissions <#patronpermissions>`__.

    **Note**

    Create a `staff patron <#addstaffpatron>`__ specifically for this
    action so that you don't leave a real staff client logged into a
    computer all day

There is no link to the Self Checkout module, but a simple addition to
the `IntranetUserJS <#intranetuserjs>`__ system preference can add one.

::

    $(document).ready(function(){ $("#login
          #submit").parent().after("<p><a
          href=\"http://YOUR_KOHA_OPAC_URL/cgi-bin/koha/sco/sco-main.pl\"
          target=\"_blank\">Self-Checkout</a></p>"); });

    **Important**

    The code above has line breaks added to make it more readable,
    please be sure to enter the above as one line in when putting it in
    the system preference.

The link will then appear at the bottom of the log in page:

Self Checkout Link on Staff Login
|image591|

You can also access this module by going to :
http://YOUR\_KOHA\_OPAC\_URL/cgi-bin/koha/sco/sco-main.pl

When on the self checkout page depending on your value in the
`SelfCheckoutByLogin <#SelfCheckoutByLogin>`__ preference you will be
asked to enter you cardnumber

Self Checkout Patron Card Number
|image592|

or your username and password:

Shelf checkout by login
|image593|

Once you're logged in to the self check module you will be asked to scan
the items you are checking out

Self Checkout
|image594|

As you scan items they will appear below the barcode box

Self Checkout Summary
|image595|

When you are finished scanning items it is important to click the
'Finish' button. This will prompt you to print a receipt and log you out
of the self check module.

Self Checkout Receipt
|image596|

When attempting to check items out there are some instances where error
messages will appear and the patron will be directed to the librarian.
This will happen even if you are allowing overrides on circulation
functions. Only a librarian can override a circulation block and so
patrons must go to the librarian for help in these situations.

Self Checkout Error Message
|image597|

`Offline Circulation Utilities <#offlinecirc>`__
------------------------------------------------

Koha allows for you to continue circulation actions while offline by
using any one of three utilities.

`Offline Circulation in Koha <#kohaofflinecirc>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If the `AllowOfflineCirculation <#AllowOfflineCirculation>`__ preference
is set to 'Enable' the library staff can continue to perform circulation
actions within Koha when the system is offline. You will want to visit
http://your-koha-staff-client-url/cgi-bin/koha/circ/offline.pl at least
once while online and bookmark that page. That is the page you will go
to when you are offline.

    **Important**

    The offline interface uses HTML LocalStorage, which depending on the
    browser and user setting, is limited to 2.5MB or 5MB per domain.
    This means that larger systems will not be able to synchronize their
    data and are recommended to use either the
    `Firefox <#firefoxofflinecirc>`__ or
    `Windows <#windowsofflinecirc>`__ application for offline
    circulation.

`Setup <#kohaofflinesetup>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Before the first time the system goes offline go to Circulation and
choose 'Built-in offline circulation interface'

Built-in offline circulation interface
|image598|

And synchronize your data on every circulation computer by clicking the
'Synchronize' link on the right of the screen.

Synchronize data
|image599|

    **Important**

    The offline interface uses HTML LocalStorage, which depending on the
    browser and user setting, is limited to 2.5MB or 5MB per domain.
    This means that larger systems will not be able to synchronize their
    data and are recommended to use either the
    `Firefox <#firefoxofflinecirc>`__ or
    `Windows <#windowsofflinecirc>`__ application for offline
    circulation.

This will allow you download a local copy of your patrons and
circulation data. Click the 'Download records' link at the top of the
page to synchronize your data.

Download records for offline use
|image600|

Once your data is downloaded you will see the dates your data was last
synced to the right of each data set.Synced offline dataThis should be
done regularly in preparation for any unexpected connection losses.

`Circulating <#kohaofflinecirculating>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

When your system goes offline visit the Offline Circulation page
(http://your-koha-staff-client-url/cgi-bin/koha/circ/offline.pl) in Koha
and click 'Check out' or 'Check in' to perform offline actions.

Checking out is done by searching for the patron by barcode or name at
the top of the 'Check out' screen. After selecting a patron you will be
presented with the synced patron info, including fines and check outs.

Check out offline
|image601|

Scan the barcode of the item you would like to check out and enter a due
date. If you don't enter a due date Koha will prompt you for one.

Offline due date
|image602|

Once the item is checked out it will appear below the patron's info.

Offline checkouts
|image603|

`Koha Offline Uploading <#kohaofflineupload>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Once the system is back online visit the Synchronize page on the Offline
Circulation module and click 'Upload transactions'

Upload transactions
|image604|

After the files are uploaded you can click 'View pending offline
circulation actions' on the right.

View pending offline circulation actions
|image605|

After clicking 'View pending offline circulation actions' you will be
brought to a summary of all of the actions you loaded in to Koha in your
\*.koc file.

Offline Circulation
|image606|

-  Once all of the logs from all of the circulation computers are loaded
   you will be able to check them all or select just those you want to
   process into Koha.

-  Click on the Process button and Koha will record every stored
   transaction one by one. For each transaction, the status will change
   to:

   -  "Success." if the transaction was processed correctly

   -  "Borrower not found." if the borrower card number is incorrect

   -  "Item not found." if the item barcode is wrong

   -  "Item not issued." if you checked in an available item

Once finished you will have a summary of all of your transactions

Offline Circulation Summary
|image607|

`Firefox Plugin <#firefoxofflinecirc>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There is an offline circulation tool that you can add to your Firefox
browser as an addon. To do so, just go to
https://addons.mozilla.org/en/firefox/addon/koct/ page and click on the
"install now" button. You may have to confirm the installation, just
click on "install now" and then restart Firefox to complete the
installation.

Once you have installed the plugins and restarted Firefox, you will see
the Koha logo in the download bar at the bottom right of Firefox.

Koha Icon on Add-on Bar
|image608|

A click on the logo will open the tool in its own window.

Koha Offline Circ Tool
|image609|

The plugin consists of four tabs:

-  The Check Out tab is where you check out items

-  The Check In tab is where you check in items

-  The Log tab keeps track of every transaction done while in offline
   mode

   -  The log will keep information until you empty it. Each time you
      open the plugin and it contains data in the log it will warn you

      Koha Offline Circ Warning
      |image610|

      If you'd like to clear the log, check the 'I want to delete rows'
      box before hitting the 'OK' button. Otherwise clicking 'OK' will
      keep the items in the log and let you continue working with the
      tool.

-  The Param tab is to set up the plugin

The first thing you want to do then is to set up the plugin. Go to the
Param tab to set up the plugin

Koha Offline CIrc Params
|image611|

Answer the 4 questions presented:

-  Server = the URL of the librarian interface

-  Branch Code = the code for the branch where you are located

-  Username = your staff account login

-  Password = your staff account password

    **Important**

    To save the settings, you will have to close the plugin window and
    re-open it by clicking again on the Koha logo in the add-on bar.

    **Note**

    You can create a staff account dedicated to the offline circulation.
    So that, no matter who is at the circulation desk, they can all use
    the same login. Along those lines, you can use a group login that
    you already have in place for circulation as well.

Once you have everything set up you can start checking items in and out.

Checking out:

Koha Offline Circulation Check Out
|image612|

-  Go to the Check Out tab

-  Scan the patron barcode

-  Scan the item barcode

-  Click 'Save'

Checking in:

Koha Offline Circulation Check In
|image613|

-  Go to the Check In tab

-  Scan the item barcode

-  Click Save

Each time, you check out or check in an item, a new transaction is
recorded in the local plugin database and you will see, at the bottom of
the plugin how many transactions has been made during the offline
circulation. For example, "10 Row(s) Added" means you did 10
transactions.

Koha Offline Circulation Tool Count
|image614|

Then, if you want an overview of every transaction, go to the Log tab.
This tab will show you the transactions in the plugin database

Koha Offline Circulation Log
|image615|

    **Note**

    The status will be "Local." as long as you are offline and don't
    process the transactions into Koha.

When your Internet connection comes back up you will want to get these
transactions in to Koha. Before processing these transactions you should
be aware of a few issues.

Because you are not connected to your Koha database when using this
plugin holds will need additional processing. If an item you check in
while offline has a hold, the hold is kept on the item. Since, you can't
confirm holds found during the processing of every check in, the holds
stay on the item and will need to be managed later. If you only checked
in a few items you can just keep a record of them all. If you checked in
a lot of items you can use the Holds Queue once it rebuilds to see what
holds made it to the shelf erroneously.

Similarly, if an patron card was expired, the offline circulation tool
won't know about it, so the checkout will be recorded regardless of the
patron's account being blocked normally.

You have two options for adding this data to Koha

-  Commit to Koha

   -  If you checked in/out on more than one computer at the same time,
      what you want is to process every transaction consistently. Let's
      say for instance that one patron checked a book out on one
      computer and then checked the same book in on another computer. To
      be consistent, you need to record the check out first and then the
      check in. Not the opposite! To do so, you need to group every
      transaction in one place, sort them all and then, process
      everything. So, you need to use the "Commit to Koha" option from
      every plugin/computer you worked with. This way, the log will go
      to Koha and be accessible from the Offline Circulation page.

      Circulation Menu
      |image616|

   -  *Get there:* Circulation > Pending offline circulation actions

      Offline Circulation
      |image617|

   -  Once all of the logs from all of the circulation computers are
      loaded you will be able to check them all or select just those you
      want to process into Koha.

   -  Click on the Process button and Koha will record every stored
      transaction one by one. For each transaction, the status will
      change to:

      -  "Success." if the transaction was processed correctly

      -  "Borrower not found." if the borrower card number is incorrect

      -  "Item not found." if the item barcode is wrong

      -  "Item not issued." if you checked in an available item

   -  Once finished you will have a summary of all of your transactions

      Offline Circulation Summary
      |image618|

-  Apply directly

   -  If you performed all of the circulation actions on one computer
      then everything is sorted already so you can choose to "Apply
      directly"

   -  The status column will be updated to let you know if the
      transactions were applied

      -  "Success." if the transaction was processed correctly

      -  "Borrower not found." if the borrower card number is incorrect

      -  "Item not found." if the item barcode is wrong

      -  "Item not issued." if you checked in an available item

   -  Once you're finished you can review all of the items right in the
      Log tab

      Koha Offline Circulation Apply Directly
      |image619|

Once you are done you can clear the log by clicking Clear. If you don't
you will be warned the next time you open the Offline Circulation tool.

Koha Offline Circulation Tool Warning
|image620|

`Offline Circ Tool for Windows <#windowsofflinecirc>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Offline Circulation Utility can be downloaded at:
https://github.com/bywatersolutions/koha-offline-circulation/releases

To generate a borrowers.db file for loading in to the Windows tool you
will need to run the `file generator via a cron
job <#offlinecirccron>`__.

`Upload Offline Circ File <#uploadofflinecirc>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The `offline circulation tool for Windows <#windowsofflinecirc>`__ will
generate a KOC file that you can upload into Koha once your system comes
back up.

On the Circulation menu click 'Upload offline circulation file (.koc)'

Circulation menu
|image621|

Browse your computer for the \*.koc file

Upload KOC File
|image622|

Once the file is uploaded, click the process the file

Process offline circulation file
|image623|

When this is complete you'll be able to upload another file or tend to
pending offline circulation actions.

Summary of offline actions
|image624|

After clicking 'View pending offline circulation actions' you will be
brought to a summary of all of the actions you loaded in to Koha in your
\*.koc file.

Offline Circulation
|image625|

-  Once all of the logs from all of the circulation computers are loaded
   you will be able to check them all or select just those you want to
   process into Koha.

-  Click on the Process button and Koha will record every stored
   transaction one by one. For each transaction, the status will change
   to:

   -  "Success." if the transaction was processed correctly

   -  "Borrower not found." if the borrower card number is incorrect

   -  "Item not found." if the item barcode is wrong

   -  "Item not issued." if you checked in an available item

Once finished you will have a summary of all of your transactions

Offline Circulation Summary
|image626|
