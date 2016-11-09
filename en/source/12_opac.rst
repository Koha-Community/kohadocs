.. include:: images.rst

OPAC
====

This chapter assumes that you have the following preferences set as
follows:

-  `opacthemes <#opacthemes>`__ = bootstrap

-  `OPACXSLTResultsDisplay <#OPACXSLTResultsDisplay>`__ = default

-  `OPACXSLTDetailsDisplay <#OPACXSLTDetailsDisplay>`__ = default

-  `DisplayOPACiconsXSLT <#DisplayOPACiconsXSLT>`__ = show

-  `TagsEnabled <#TagsEnabled>`__ = Allow

-  `TagsInputOnDetail <#TagsInputOnDetail>`__ =Allow

-  `TagsInputOnList <#TagsInputOnList>`__ = Allow

-  `reviewson <#reviewson>`__ = Allow

-  `ShowReviewer <#ShowReviewer>`__ = Allow

-  `ShowReviewerPhoto <#ShowReviewerPhoto>`__ =Allow

-  `OPACFRBRizeEditions <#OPACFRBRizeEditions>`__ = Show

-  `OPACAmazonCoverImages <#OPACAmazonCoverImages>`__ = Show

-  `XISBN <#XISBN>`__ = Use

-  `OPACSearchForTitleIn <#OPACSearchForTitleIn>`__ = Default set of
   links

-  `OPACShowCheckoutName <#OPACShowCheckoutName>`__ = Don't show

-  `RequestOnOpac <#RequestOnOpac>`__ = Allow

-  `AutoResumeSuspendedHolds <#AutoResumeSuspendedHolds>`__ = Allow

-  `OpacBrowseResults <#OpacBrowseResults>`__ = Enable

-  `SuspendHoldsOpac <#SuspendHoldsOpac>`__ = Allow

-  `OPACShowBarcode <#OPACShowBarcode>`__ = Don't show

-  `OpacSeparateHoldings <#OpacSeparateHoldings>`__ = Don't separate

-  `OpacSeparateHoldingsBranch <#OpacSeparateHoldings>`__ = home library

-  `DisplayLibraryFacets <#DisplayLibraryFacets>`__ = holding library

If your system preferences are set differently your displays may differ.

`Search Results <#opacsearchresults>`__
---------------------------------------

To search the OPAC you can either choose to enter your search words in
the box at the top of the OPAC or click on the 'Advanced Search' link to
perform a more detailed search.

OPAC Search Box
|image937|

For more on searching check the '`Searching <#searching>`__' chapter in
this manual.

`Results Overview <#opacresultsoverview>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

After performing a search the number of results found for your search
will appear above the results

Total Results
|image938|

By default your search results will be sorted based on your
`OPACdefaultSortField and OPACdefaultSortOrder <#opacdefaultsort>`__
system preference values. To change this you can choose another sorting
method from the pull down on the right.

Results Sorting Options
|image939|

Under each title on your results list a series of values from your
leader will appear. It is important to note that this has nothing to do
with the item types or collection codes you have applied to your
records, this data is all pulled from your fixed fields. This can be
turned on or off with the
`DisplayOPACiconsXSLT <#DisplayOPACiconsXSLT>`__ system preference.

Leader Visualization
|image940|

Below each title you will see the availability for the items attached to
the record.

    **Note**

    Even if you filtered on one library location all locations that hold
    the item will appear on the search results.

    **Important**

    An item's hold status doesn't not affect whether or not the item is
    'available' until the item is in 'waiting' status. Items with
    on-shelf holds will show as available until a librarian has pulled
    them from the shelf and checked the item in make it show 'waiting'.

Holdings Information
|image941|

If you have turned on `Enhanced Content <#enhancedcontent>`__
preferences you may have book jackets on your search results.

Book Jacket on Results
|image942|

If you have set your `Did you mean? <#didyoumean>`__ options you will
see a yellow bar across the top of your results will other related
searches.

Did you mean?
|image943|

If you performed an advanced search you see an option to go back and
edit your advanced search blow the list of results pages.Return to the
last advanced search

`Filters <#opacfilter>`__
~~~~~~~~~~~~~~~~~~~~~~~~~

To filter your results click on the links below the 'Refine Your Search'
menu on the left of your screen

Refine Your Results
|image944|

Depending on your setting for the
`DisplayLibraryFacets <#DisplayLibraryFacets>`__ system preference you
will see filters for your home, holding or both libraries.Library Facet

After clicking a facet you can remove that filter from your results by
clicking the small 'x' that appears to the right of the facet.Remove
library facet

`Search RSS Feeds <#searchrss>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You will be able to subscribe to your search results as an RSS feed by
clicking the RSS icon in your address bar or next to the number of
results. To learn more about what RSS feeds are check out `this tutorial
video <http://www.youtube.com/watch?v=0klgLsSxGsU>`__.

RSS Feed Icon
|image945|

Subscribing to search results as RSS feeds will allow you to see when a
new item is added to the catalog in your area of interest.

`Bibliographic Record <#opacbibrec>`__
--------------------------------------

When you click on a title from the search results, you're brought to the
bibliographic detail of the record. This page is broken down in several
different areas.

At the top of your screen will be the title and the GMD:

Title
|image946|

Below the title the authors will be listed. These come from your 1xx and
7xx fields. Clicking the author will run a search for other titles with
that author.

Author Display
|image947|

If you have an authority file you will see a magnifying glass to the
right of author (and other) authorities. Clicking that magnifying glass
will take you directly to the authority record.

Authority link
|image948|

If you have your `DisplayOPACiconsXSLT <#DisplayOPACiconsXSLT>`__
preference set to 'show' you will see a material type that is determined
by values in your fixed fields (learn more in the `XSLT Item
Types <#XSLTiTypes>`__ Appendix).

XSLT Item Type
|image949|

Next you'll see the description of the record you're viewing:

Basic Details
|image950|

Following that information you'll find the subject headings which can be
clicked to search for other titles on similar topics

Bibliographic Subjects
|image951|

If your record has a table of contents or summary it will appear next to
the 'Summary' or 'Table of Contents' label

Summary
|image952|

If your record has data in the 856 fields you'll see the links to the
right of the 'Online Resources' label

Online Resources
|image953|

If the title you're viewing is in a public list then you'll see a list
of those to the right of the 'List(s) this item appears in' label and if
it has tags they will appear below the 'Tags from this library' label

Tags
|image954|

In the tabs below the details you will find your holdings data

|image955|

Any notes (5xx fields) that have been cataloged will appear under 'Title
Notes'

Title notes
|image956|

If you're allowing comments they will appear in the next tab

Comments
|image957|

And finally if you have enabled FRBR and you have other editions of the
title in your collection you will see the 'Editions' tab.

Editions
|image958|

To the right of the details you'll find a series of boxes. The first box
is a list of buttons to help navigate the search results. From there you
can see the next or previous result from your search or return to the
results.

Search Options
|image959|

Clicking Browse Results at the top of the right column will open up your
search results on the detail page

Search Results
|image960|

Below the search buttons you'll find the links to place a hold, print
the record, save the record to your lists, or add it to your cart

More options
|image961|

Clicking 'More Searches' will show the list of libraries you entered in
your `OPACSearchForTitleIn <#OPACSearchForTitleIn>`__ preference

More Searches
|image962|

Under the 'Save Record' label you will find a series of file formats you
can save the record as. This list can be customized by altering the
`OpacExportOptions <#OpacExportOptions>`__ system preference.

Save Record
|image963|

If at any time you want to change the view from the 'Normal' view to see
the Marc or the ISBD you can click the tabs across the top of the record

Record Views
|image964|

`Lists & Cart <#opaclistscart>`__
---------------------------------

A cart is a temporary holding place for records you're interested in
finding during this session. That means that once you log out of the
OPAC or close the browser you lose the items in your cart. A list is a
more permanent location for saving items. To learn more about lists,
check the `Lists in the Staff Client <#stafflists>`__ chapter of this
manual.

`Lists <#opaclists>`__
~~~~~~~~~~~~~~~~~~~~~~

Patrons can manage their own private lists by visiting the 'my lists'
section of their account.

Lists Management
|image965|

`Creating Lists <#opacaddlists>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Lists can also be created by choosing the 'New List' option in the 'Add
to' menu on the search results

Add to New List
|image966|

To create a list the patron simply needs to click the 'New List' link
and populate the form that appears

Create a new list
|image967|

The only field required is the 'List Name,' but the patron can also
choose how they want the list sorted and if the list is public or
private.

-  A Private List is managed by you and can be seen only by you
   (depending on your permissions settings below)

-  A Public List can be seen by everybody, but managed only by you
   (depending on your permissions settings below)

    **Important**

    If you aren't allowing patrons to create public lists with the
    `OpacAllowPublicListCreation <#OpacAllowPublicListCreation>`__
    preference then patrons will only be able to create private lists.

    Create a new private list
    |image968|

-  Finally decide what your permissions will be on the list. You can all
   or disallow:

   -  anyone else to add entries

   -  anyone to remove his own contributed entries

      -  **Note**

             The owner of a list is always allowed to add entries, but
             needs permission to remove.

   -  anyone to remove other contributed entries    

`Adding titles to Lists <#opacaddtolists>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Titles can be added to lists from the search results and/or from the
bibliographic record. On the search results options to add items to the
list appear below each result and across the top of the results page

Add to Lists from Results
|image969|

To add a single title to a list, click the 'Save to Lists' option and
then choose the list you'd like to add the title to. To add multiple
titles to a list check the boxes on the left of the titles you want to
add and then choose the list you want to add the titles to from the 'Add
too' pull down at the top of the screen.

`Viewing Lists Contents <#listscontent>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To view the contents of a list, click on the list name under the Lists
button.

Lists
|image970|

The contents of the list will look similar to your search results pages
except that there will be different menu options across the top of the
list.

List View
|image971|

To the right of the list title there is an RSS icon that will allow you
to subscribe to updates to the list.

Using the menu options above the list you can place multiple items on
hold, download the list contents, email the list or print the list out.

-  To place a hold on one or more list items check the box to the left
   of the item and click the 'Place Hold' link at the top

-  To download the list contents click the 'Download List' link and
   choose the format you'd like to download the list in

-  To email the list contents to someone, click the 'Send List' link and
   enter in your email details in the form that pops up (`view a sample
   Lists email <#examplelistemail>`__)

   Email List Contents
   |image972|

-  To print the contents of your list out click the 'Print List' link

`Managing Lists <#opacmanagelists>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Once the list is saved patrons can begin adding items to it. From the
'my lists' tab on the patron record the patron can edit and delete the
lists they have created by clicking the appropriate link to the right of
the list name.

My Lists
|image973|

To edit the list's title or sorting patrons click the 'Edit' link to the
right of the list description.

Editing List
|image974|

When clicking 'Delete' next to a list you will be asked to confirm that
you want to delete the list.

Delete list confirmation
|image975|

The list will not be deleted until the 'Confirm' button is clicked to
the right of the list you'd like to delete.

If the library is allowing you to share private lists with the
`OpacAllowSharingPrivateLists <#OpacAllowSharingPrivateLists>`__
preference then you will see the 'Share' link on your list of lists and
the 'Share list' link at the top of each individual list. Clicking this
will ask you to enter the email address of a patron.Share list

Once the email address is entered Koha will present you with a
confirmation message

Share list confirmation
|image976|

and will send a message to that patron.

`Cart <#opaccart>`__
~~~~~~~~~~~~~~~~~~~~

`Adding titles to the Cart <#opacaddtocart>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Titles can be added to the cart from the search results and/or from the
bibliographic record. On the search results options to add items to the
cart appear below each result and across the top of the results page

Add to Cart on Search Results
|image977|

Clicking the 'Add to Cart' button will add the one title to your cart.
To add multiple titles at once, check the box to the left of each result
and then choose 'Cart' from the 'Add to' pull down at the top of the
screen. Once titles are added to the cart you will be presented with a
confirmation

Items added to Cart
|image978|

From the results you will see which items are in your cart and will be
able to remove those items by clicking '(remove)'.Item in your cart

`Managing the Cart <#manageopaccart>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Once you have titles in your cart you can manage the contents by
clicking on the 'Cart' button usually found at the top of the screen.
Your cart will open in a new window.

Contents of your cart
|image979|

From this window you are presented with several options. Across the top
of the cart are several buttons.

First is the 'More details' button. Clicking this will show you
additional information about the titles in your cart (ISBNs, Subjects,
Publisher Info, Notes and more).More details in the cart

Next is the option to send the contents of your cart to an email
address. This is handy if you want to send the resources you found at
the library to your home email account to refer to later or to send to a
patron researching a specific topic. Clicking this link will open up a
new window that asks for the email address and message to send. `View a
sample Cart email <#examplecartemail>`__.

Email Cart
|image980|

    **Important**

    The cart can only be emailed by logged in users. This will prevent
    your cart email function from being used for spamming.

In addition to sending your cart you can download the contents of your
cart in several pre-defined formats or using a `CSV
Profile <#csvprofiles>`__ that you defined in the Tools module.

Download Cart
|image981|

Finally you can print out the contents of your cart by choosing the
'Print' link.

In addition to the various different ways to save the contents of your
cart, there are ways to add value to the data in your cart. By selecting
one or more titles from the cart you can add them to a list (click 'Add
to a List'), place hold(s) (click 'Place hold'), or tag them (click
'Tag'). All of these operations follow the same procedure as they do
when performing them in the OPAC.

`Placing Holds <#opacplacehold>`__
----------------------------------

Patrons can place holds on items via the OPAC if they're logged in and
you have the `RequestOnOpac <#RequestOnOpac>`__ preference set to
'Allow'. If the item can be placed on hold the option to place it on
hold will appear in several different places.

-  When viewing a list or search results page you'll see the option to
   place hold on multiple items by checking the boxes to the left of the
   results and clicking 'Place Hold' at the top

   Place Hold from Results
   |image982|

-  When viewing a list or search results page you'll see the option to
   place the item on hold below the basic information about the title

   Place Hold
   |image983|

-  When viewing an individual title you'll see the option to place a
   hold in the box on the right side of the screen

   Place Hold
   |image984|

No matter which of the above links you click to place your hold you'll
be brought to the same hold screen.

Place Hold Form
|image985|

-  Check the box to the left of the items you'd like to place on hold

-  The title includes a link back to the detail page for the record

-  The priority shows where in the holds queue this hold will fall

-  If allowed by your
   `OPACAllowUserToChooseBranch <#OPACAllowUserToChooseBranch>`__
   preference the patron can choose where they'd like to pick up their
   hold

-  If you would like to see more options you can click 'Show more
   options'

   Place Hold Form with More Options

   -  If you have the
      `AllowHoldItemTypeSelection <#AllowHoldItemTypeSelection>`__
      preference set to 'Allow' and the record had more than one item
      type attached you will see an option to choose to limit the hold
      to a specific item typeAllowHoldItemTypeSelection

-  If allowed by your
   `OPACAllowHoldDateInFuture <#OPACAllowHoldDateInFuture>`__
   preference, the 'Hold Starts on Date' column will show. This field
   allows the patron to have their hold start on a future date.

-  By default holds placed in the system remain until canceled, but if
   the patron fills in a 'Hold Not Needed After' date then the hold has
   an expiration date.

   -  **Important**

          Expired holds are removed by the `Expired Holds Cron
          Job <#expiredholdscron>`__, this is not an automatic process
          and must be set up by your system administrator

-  If allowed by the `OpacHoldNotes <#OpacHoldNotes>`__ preference then
   patrons can leave notes about their holds for the library by clicking
   the 'Edit notes' button

   Hold notes
   |image986|

-  Depending on the rules you set regarding item specific holds in your
   `circulation and fines rules <#circfinerules>`__ the patron will be
   allowed to choose whether to place the hold on the next available
   copy and/or a specific copy

   Specific Copy Hold
   |image987|

After clicking the Place Hold button the patron will be brought to their
account page where they'll see all of the items they have on hold.

`Enhanced Content <#opacenhancedcontent>`__
-------------------------------------------

`Tagging <#opactagging>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~

Depending on your settings for the `TagsEnabled <#TagsEnabled>`__,
`TagsInputOnList <#TagsInputOnList>`__ and
`TagsInputOnDetail <#TagsInputOnDetail>`__ preferences you may be able
to add tags to bibliographic records from the search results and/or
bibliographic records. If you are allowing patrons to add tags from the
search results screen you will see an input box below each result and a
'Tag' option at the top of the screen.

Tagging Options on Results
|image988|

To add a tag to one item, type the tabs (separated by commas) in the
'New tag' box and click 'Add'. You will be presented with a confirmation
of your tags being added.

Tags Added on Results
|image989|

From the results you can also tag items in bulk by clicking the
checkboxes on the left and then clicking the 'Tag' button at the top.
After clicking the button it will change into an input box for you to
add tags to all of the items you have selected.

Add Tags to Multiple Items
|image990|

`Comments <#opaccomments>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Patrons can leave comments in the OPAC if you have the
`reviewson <#reviewson>`__ preference set to allow this. Each
bibliographic record has a comments tab below the bibliographic
information.

Comments Tab
|image991|

If the patron is logged in they will see a link to add a comment to the
item. Clicking this link will open a pop up window with a box for their
comments.

Add a Comment
|image992|

Once the comment has been typed and the 'Submit' button clicked, the
patron will see their comment as pending and other patrons will simply
see that there are no comments on the item.

Pending Comment
|image993|

Once the comment is approved the patron will see the number of comments
on the 'Comments' tab and their comment labeled amongst the other
comments. If you have set your
`ShowReviewerPhoto <#ShowReviewerPhoto>`__ preference to 'Show' then
you'll see the patron's photo pulled from the
`Libravatar <https://www.libravatar.org>`__ library.

Your Comments
|image994|

Other patrons will see the comment with the name of the patron who left
the comment (unless you have set the `ShowReviewer <#ShowReviewer>`__
preference to not show patron names).

Comment by other patron
|image995|

If you have your `OpacShowRecentComments <#OpacShowRecentComments>`__
set to show then you'll see the approved comments on that page.

Recent Comments List
|image996|

From this page patrons can subscribe to the recent comments using RSS if
they would like.

`Zotero <#zotero>`__
~~~~~~~~~~~~~~~~~~~~

Zotero is a Firefox add on that allows for the saving and generating of
a bibliography. Learn more about and download Zotero at
http://zotero.org.

When on the search results in the Koha OPAC, if you have Zotero
installed, you will see a folder icon in the address bar to the right of
the URL. Clicking that folder will open up a list of titles on the page
for you to pick from to add to Zotero.

Zotero pop up
|image997|

Select the titles you want to add to Zotero and then click the 'OK'
button. This will add the title to Zotero. You can see the title by
opening your Zotero library.

Title in the Zotero Library
|image998|

`Custom RSS Feeds <#customrss>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Using misc/cronjobs/rss/rss.pl you can generate an RSS feed for any SQL
query (for example a new acquisitions RSS feed). rss.pl is run on the
command line to produce an RSS XML document.

The output should be placed in a directory accessible to the OPAC (or
staff) web interface so that users can download the RSS feed.

An example of usage can be found at: misc/cronjobs/rss.pl
lastAcquired.conf

Normally rss.pl should be run periodically (e.g., daily) to keep the
feed up-to-date.

The configuration file (e.g., lastAcquired.conf) lists

-  name of the template file to use

-  path of output file

-  SQL query

rss.pl runs the SQL query, then feeds the output of the query through
the template to produce the output file.

    **Important**

    To use custom RSS feeds you need to turn on the rss.pl cron job.

`OPAC Self Registration <#selfregistration>`__
----------------------------------------------

If you allow it, patrons can register for their own accounts via the
OPAC. If you have the
`PatronSelfRegistration <#PatronSelfRegistration>`__ preference set to
'Allow' then patrons will see a link to register below the log in box on
the right of the main OPAC page.

Registration link in OPAC
|image999|

When the patron clicks the 'Register here' link they will be brough to a
registration page. The options on the registration page can be conrolled
by editing the
`PatronSelfRegistrationBorrowerMandatoryField <#PatronSelfRegistrationBorrowerMandatoryField>`__
and the
`PatronSelfRegistrationBorrowerUnwantedField <#PatronSelfRegistrationBorrowerUnwantedField>`__
preferences.

Registration form
|image1000|

Once the patron has confirmed submitted their registration they will
either be sent an email to confirm their account (if you have the
`PatronSelfRegistrationVerifyByEmail <#PatronSelfRegistrationVerifyByEmail>`__
preference to require this) or presented with their new username and
password.

New account confirmation
|image1001|

Patrons registered in this way will not have a cardnumber until assigned
one by the library, but will have access to all OPAC functionality
immediately. For this reason it is recommended that you:

-  set up a provisional `patron category <#addingpatroncat>`__ for self
   registered patrons (such as 'Self Registered) instead of using an
   existing patron category and set that value in the
   `PatronSelfRegistrationDefaultCategory <#PatronSelfRegistrationDefaultCategory>`__
   preference

-  give this patron category minimal circulation privileges in the
   `Circulation and Fine Rules <#circfinerules>`__ (such as allowing a
   couple holds, but no check outs)

That way patrons will either have to come in to the library to verify
their identity before given a cardnumber and the ability to check items
out or the library will have to come up with internal policy on
generating cardnumbers before providing them to self registered patrons.
Once this is done the library can change the category to one that is
more appropriate (be it an adult, resident, non resident, student, etc)
and add a cardnumber/barcode.

`My Account <#opacmyaccount>`__
-------------------------------

From the OPAC patrons can log in and access their account if you have
set the `opacuserlogin <#opacuserlogin>`__ preference to 'Allow'. Once
logged in patrons are brought to their account summary. If you would
like to get to your account in the OPAC, you can click on your name in
the top right of any page in the OPAC.

`Resetting your password <#resetpwopac>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you have the `OpacResetPassword <#OpacResetPassword>`__ set to allow
patrons to reset their password they can click 'Forgot your password?'
link found under the log in box to reset their passwords.

'Forgot your password?' link
|image1002|

Once clicked they will be presented with a form asking for their
username and their email address (patrons must have an email address on
file to reset their password).Recover password

The system will then email the patron instructions for resetting their
password.Reset password confirmation

`My Summary <#opacmysummary>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

My Summary
|image1003|

From the 'my summary' tab, patrons will see all of the items they have
checked out with the overdue items highlighted in red. If you have
`OpacRenewalAllowed <#OpacRenewalAllowed>`__ set to 'Allow' then your
patrons will be able to renew their books right from the OPAC. If you
have HTML entered in the `OPACMySummaryHTML <#OPACMySummaryHTML>`__
preference then you will see that to the right of the 'Fines' column.

Checked out tab with OPACMySummaryHTML set
|image1004|

If your patrons would like to see the items barcodes on their list of
checked out items you can set up a `patron
attribute <#patronattributetypes>`__ with the value of SHOW\_BCODE and
`authorized value <#authorizedvalues>`__ of YES\_NO.

Add SHOW\_BCODE patron attribute
|image1005|

Then on the `patron's record set the value <#editpatrons>`__ for
SHOW\_BCODE to yes.

Setting value for SHOW\_BCODE on patron record
|image1006|

This will add a column to the check out summary in the OPAC that shows
the patrons the barcodes of the items they have checked out.

Barcode number on checkout list in OPAC
|image1007|

If their guarantee has allowed it via `their
privacy <#opacmyprivacy>`__, when the guarantor logs in they will see a
tab labeled "Relatives' checkouts" on their summary tab.Relatives'
checkouts

Clicking on the 'Overdue' tab will show only the items that are overdue.

Overdue Items
|image1008|

The 'Fines' tab will show just a total of what the patron owes. Clicking
on the total will take them to the 'my fines' tab where they will see a
complete breakdown of their fines and bills. If you don't charge fines
at your library you can turn the display of these tabs off by setting
the `OPACFinesTab <#OPACFinesTab>`__ preference to 'Don't Allow.'

Patron Fines
|image1009|

Finally, clicking on the 'Holds' tab will show the patron the status of
all of the items they have on hold.

Patron holds status
|image1010|

Patrons can cancel or suspend (depending on the value of your
`SuspendHoldsOpac <#SuspendHoldsOpac>`__ system preference) their own
holds if they are not in transit or already waiting for them. When they
click 'Suspend' they will be presented with the option to choose a date
for their hold to resume.Suspend until

They can also suspend all of their holds indefinitely or until a
specific date if they choose by filling in the suspend options at the
bottom of the page.

    **Note**

    If you have your
    `AutoResumeSuspendedHolds <#AutoResumeSuspendedHolds>`__ preference
    set to "Don't allow" then you will not have the option to put an end
    date on the hold suspension

`Patron Flags <#opacmyaccount-flags>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you have `flagged your patron's account <#patronflags>`__ they may
see one of the following error messages at the top of their account.

-  Card marked as lost

   Library card lost
   |image1011|

-  Patron address in question

   Patron address in question
   |image1012|

   -  **Note**

          this error message will not include a link to the update form
          if you have `OPACPatronDetails <#OPACPatronDetails>`__ set to
          'Don't allow'

-  Patron marked restricted

   Patron restricted
   |image1013|

`My Fines <#opacmyfines>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~

If your library charges fines the next tab on the left is 'my fines.'
Opening this tab will show the patron an entire history of their
accounting at the library.

Library Fines & Charges
|image1014|

If you are allowing patrons to pay their fines using PayPal with the
`EnablePayPalOpacPayments <#EnablePayPalOpacPayments>`__ preference
there will be checkboxes to the left of each fine with an outstanding
amount.Fines with checkboxes

At the bottom the patron will see the option to pay with PayPal for the
items they have checked.

PayPal Payment
|image1015|

After paying they will be presented with a confirmationPayPal
Confirmation

And you will see that the fine was paid using PayPal on the staff
side.Staff side fines

`My Details <#opacmydetails>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you have your `OPACPatronDetails <#OPACPatronDetails>`__ preference
set to 'Allow', your patrons will see a form filled in with their
contacting information by clicking on the 'my personal details' tab. You
can control what fields patrons see and can modify via the OPAC by
setting the
`PatronSelfRegistrationBorrowerMandatoryField <#PatronSelfRegistrationBorrowerMandatoryField>`__
`PatronSelfRegistrationBorrowerUnwantedField <#PatronSelfRegistrationBorrowerUnwantedField>`__
preferences.

Patron's personal details
|image1016|

Patrons can edit their details in this form and click 'Submit Changes'
to have their edits sent to the library for review before their record
is updated. Staff will see all patrons requesting modification to their
record listed below the modules on the main dashboard along with
anything else awaiting library attention.

Patron requests waiting review
|image1017|

If the `OPACPatronDetails <#OPACPatronDetails>`__ preference is set to
'Don't allow' then patrons will simply see their details and a message
stating that they should contact the library for changes.

Patron's personal details with no edits
|image1018|

`My Tags <#opacmytags>`__
~~~~~~~~~~~~~~~~~~~~~~~~~

If your library has `TagsEnabled <#TagsEnabled>`__ set to 'Allowed' then
the next tab on the left will be 'my tags.' This tab will show patrons
all of the tags in the system as a cloud and then all of the tags they
have applied in a list format. From here patrons have the ability to
remove tags that they have added if they want.

Patron's tags
|image1019|

`Change My Password <#opacmypassword>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Next, if you have `OpacPasswordChange <#OpacPasswordChange>`__ set to
'Allow' the next tab will be 'change my password,' where patrons can
change their password for logging into the OPAC. Patrons will be
presented with a standard form asking them to enter their old password
and then their new password twice.

Change my password
|image1020|

`My Search History <#opacmysearchistory>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you have your `EnableOpacSearchHistory <#EnableOpacSearchHistory>`__
preference set to 'Allow' then your patrons can access their search
history via the 'my search history' tab.

my search history tab
|image1021|

The search history is a record of all searches run by the patron.
Clicking on any of the search phrases will re-run the search for the
patron. The search history can be deleted by the patron at any time by
clicking the 'Delete your search history' link found at the top of this
tab or by clicking the little red 'x' next to the 'Search history' link
at the top right of the OPAC.

Search history link at the top right of the OPAC
|image1022|

`My Reading History <#opacmyhistory>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Depending on your library's setting for
`opacreadinghistory <#opacreadinghistory>`__ your patrons may see the
'my reading history' tab next. This will show the patron their entire
reading history unless they have asked the library to not keep that
information via the 'my privacy' tab which will appear if you have the
`OPACPrivacy <#OPACPrivacy>`__ preference set to 'Allow.'

Patron reading history
|image1023|

If you have HTML entered in the
`OPACMySummaryHTML <#OPACMySummaryHTML>`__ preference then you will see
that to the right of the 'Date' column.

`My Privacy <#opacmyprivacy>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The 'my privacy' tab will appear if you have both the
`opacreadinghistory <#opacreadinghistory>`__ and the
`OPACPrivacy <#OPACPrivacy>`__ preferences set to 'Allow.' This tab will
allow the patrons to decide how the library keeps their circulation
history data.

my privacy tab
|image1024|

The patron can choose from three options:

-  Forever: keep my reading history without limit. This is the option
   for users who want to keep track of what they are reading.

-  Default: keep my reading history according to local laws. This is the
   default option : the library will keep your reading history for the
   duration permitted by local laws.

-  Never: Delete my reading history immediately. This will delete all
   record of the item that was checked-out upon check-in.

Depending on the patron's suggestions the contents of the '`my reading
history <#opacmyhistory>`__' tab and the '`Circulation
History <#circhistory>`__' tab in the staff client may change.

Regardless of the patron's choice they can delete their reading history
in bulk at any time by clicking the 'Immediate deletion' button.

Delete Circulation History
|image1025|

Clicking this button will not delete items that are currently checked
out, but will clear the patron's past reading history.

    **Important**

    In order for the patron to be able to delete their reading history
    you must have the `AnonymousPatron <#AnonymousPatron>`__ preference
    set.

If you're allowing guarantees to grand permission to their guarantors to
view their current checkouts with the
`AllowPatronToSetCheckoutsVisibilityForGuarantor <#AllowPatronToSetCheckoutsVisibilityForGuarantor>`__
preference they will see that option on this
screen.AllowPatronToSetCheckoutsVisibilityForGuarantor

When the guarantor logs in they will see a tab labeled "Relatives'
checkouts" on their summary tab.Relatives' checkouts

`My Purchase Suggestions <#opacmysuggestions>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If your library allows patrons to make purchase suggestions the next tab
will show all suggestions that the patron made to the library and their
statuses. To disable this tab and the suggestion functionality set the
`suggestion <#suggestionspref>`__ preference to 'Don't allow.'

Patron purchase suggestions
|image1026|

If you have `OPACViewOthersSuggestions <#OPACViewOthersSuggestions>`__
set to 'Show' then patrons will be able to search suggestions from the
top of this list.

`My Messaging <#opacmymsgs>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If your library has the
`EnhancedMessagingPreferences <#EnhancedMessagingPreferences>`__ and the
`EnhancedMessagingPreferencesOPAC <#EnhancedMessagingPreferencesOPAC>`__
preferences set to 'Allow' then your patrons will be able to choose
which messages they receive from the library (with the exception of
overdue notices which the library controls).

Patron messaging preferences
|image1027|

If you use an outside driver for sending text messages set with the
`SMSSendDriver <#SMSSendDriver>`__ preference, you will see an
additional column to receive these messages as SMS (or text messages)
and a field for a cell (or SMS) number.

SMSSendDriver in the OPAC
|image1028|

If you are using the Email protocol for sending text messages set with
the `SMSSendDriver <#SMSSendDriver>`__ preference, you will see an
additional column to receive these messages as SMS (or text messages), a
field for a cell (or SMS) number, and a pull down listing `cellular
providers entered in administration <#smsadmin>`__.

SMSSendDriver in the OPAC
|image1029|

If you are using the `Itiva Talking
Tech <#TalkingTechItivaPhoneNotification>`__ service you will see an
additional column to receive these messages via Phone.Phone messaging
preferences in the OPAC

-  These notices are:

   -  Advanced notice : A notice in advance of the patron's items being
      due (The patron can choose the number of days in advance)

   -  Item checkout : A notice that lists all the of the items the
      patron has just checked out and/or renewed, this is an electronic
      form of the checkout receipt

   -  Hold filled : A notice when you have confirmed the hold is waiting
      for the patron

   -  Item due : A notice on the day and item is due back at the library

   -  Item check-in : A notice that lists all the of the items the
      patron has just checked in

Patrons can choose to receive their notices as a digest by checking the
'Digest only?' box along with the delivery method. A digest is a
combination of all the messages of that type (so all items due in 3 days
in one email) in to one email instead of multiple emails for each alert.

    **Important**

    You must choose a delivery method (SMS or Email or Phone) along with
    'Digest only?' if you would like to receive a digest of the
    messages.

`My Lists <#opacmylists>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Finally, if your library has the `virtualshelves <#virtualshelves>`__
set to 'Allow' then the last tab will by 'my lists.' From here your
patrons can review public lists and create or edit their own private
lists.

Patron lists
|image1030|

`Ask for a Discharge <#opacdischarge>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you have enabled the `useDischarge <#useDischarge>`__ preference then
patrons will be able to request a discharge via the OPAC.Discharge tab

From here patrons can request a discharge

Request discharge
|image1031|

And will receive confirmation of their request.

Discharge confirmation
|image1032|

`Purchase Suggestions <#purchasesuggest>`__
-------------------------------------------

If your library has the `suggestion <#suggestionspref>`__ preference set
to 'Allow' then patrons will have the option to make purchase
suggestions in several areas in the OPAC.

If you are allowing everyone to see the purchase suggestions made by
others with the
`OPACViewOthersSuggestions <#OPACViewOthersSuggestions>`__ preference,
then there will be a link at the top of your OPAC under the search box.

Purchase Suggestions Link on Search Box
|image1033|

There will be a link when the patron finds nothing for their search.

Purchase Suggestion Link from Search Results
|image1034|

And there will be a link on the patron's `My Purchase
Suggestions <#opacmysuggestions>`__ tab.

Purchase Suggestion from My Purchase Suggestions Tab
|image1035|

Clicking any one of these links will open the purchase suggestion form.

New Purchase Suggestion
|image1036|

-  From the form on the 'Title' is required by the library.

-  The Item type list can be edited by editing the SUGGEST\_FORMAT
   `authorized value <#authorizedvalues>`__.

-  If you would like the 'Reason for suggestion' menu shown in the
   screenshot above to appear on your suggestions list you need to add
   an `authorized value <#authorizedvalues>`__ category titled
   'OPAC\_SUG' and include reasons as values in that list.

-  If you would like the patron to be able to choose which branch they
   are making a suggestion for you need to set the
   `AllowPurchaseSuggestionBranchChoice <#AllowPurchaseSuggestionBranchChoice>`__
   preference to 'Allow'

Once the form is submitted the data will be saved to the
`Acquisitions <#managesuggest>`__ module for the librarians to manage.
