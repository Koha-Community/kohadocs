.. include:: images.rst

OPAC
====

.. _search-results-label:

Search results
---------------------------------------

To search the OPAC you can either choose to enter your search words in
the box at the top of the OPAC or click on the 'Advanced search' link to
perform a more detailed search.

|image937|

For more on searching check the '`Searching <#searching>`__' chapter in
this manual.

.. _results-overview-label:

Results overview
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

After performing a search the number of results found for your search
will appear above the results

|image938|

By default your search results will be sorted based on your
:ref:`OPACdefaultSortField and OPACdefaultSortOrder <opacdefaultsortfield-and-opacdefaultsortorder-label>`
system preference values. To change this you can choose another sorting
method from the pull down on the right.

|image939|

Under each title on your results list a series of values from your
leader will appear. It is important to note that this has nothing to do
with the item types or collection codes you have applied to your
records, this data is all pulled from your fixed fields. This can be
turned on or off with the
:ref:`DisplayOPACiconsXSLT` system preference.

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

|image941|

If you have turned on :ref:`Enhanced content system preferences<enhanced-content-label>
preferences you may have book jackets on your search results.

|image942|

If you have set your :ref:`Did you mean? <did-you-mean?-label>` options you will
see a yellow bar across the top of your results will other related
searches.

|image943|

If you performed an advanced search you see an option to go back and
edit your advanced search blow the list of results pages.

|image1295|

.. _filters-label:

Filters
~~~~~~~~~~~~~~~~~~~~~~~~~

To filter your results click on the links below the 'Refine your search'
menu on the left of your screen

|image944|

Depending on your setting for the
:ref:`DisplayLibraryFacets` system preference you
will see filters for your home, holding or both libraries.

|image1296|

After clicking a facet you can remove that filter from your results by
clicking the small 'x' that appears to the right of the facet.

|image1297|

.. _search-rss-feeds-label:

Search RSS feeds
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You will be able to subscribe to your search results as an RSS feed by
clicking the RSS icon in your address bar or next to the number of
results. To learn more about what RSS feeds are check out `this tutorial
video <http://www.youtube.com/watch?v=0klgLsSxGsU>`__.

|image945|

Subscribing to search results as RSS feeds will allow you to see when a
new item is added to the catalog in your area of interest.

.. _bibliographic-record-label:

Bibliographic record
--------------------------------------

When you click on a title from the search results, you're brought to the
bibliographic detail of the record. This page is broken down in several
different areas.

At the top of your screen will be the title and the GMD:

|image946|

Below the title the authors will be listed. These come from your 1xx and
7xx fields. Clicking the author will run a search for other titles with
that author.

|image947|

If you have an authority file you will see a magnifying glass to the
right of author (and other) authorities. Clicking that magnifying glass
will take you directly to the authority record.

|image948|

If you have your :ref:`DisplayOPACiconsXSLT`
preference set to 'show' you will see a material type that is determined
by values in your fixed fields (learn more in the :ref:`XSLT material 
type icons <material-type-cataloging-guide-label>` cataloging guide.

|image949|

Next you'll see the description of the record you're viewing:

|image950|

Following that information you'll find the subject headings which can be
clicked to search for other titles on similar topics

|image951|

If your record has a table of contents or summary it will appear next to
the 'Summary' or 'Table of contents' label

|image952|

If your record has data in the 856 fields you'll see the links to the
right of the 'Online resources' label

|image953|

If the title you're viewing is in a public list then you'll see a list
of those to the right of the 'List(s) this item appears in' label and if
it has tags they will appear below the 'Tags from this library' label

|image954|

In the tabs below the details you will find your holdings data

|image955|

Any notes (5xx fields) that have been cataloged will appear under 'Title
notes'

|image956|

If you're allowing comments they will appear in the next tab

|image957|

And finally if you have enabled FRBR and you have other editions of the
title in your collection you will see the 'Editions' tab.

|image958|

To the right of the details you'll find a series of boxes. The first box
is a list of buttons to help navigate the search results. From there you
can see the next or previous result from your search or return to the
results.

|image959|

Clicking 'Browse results' at the top of the right column will open up your
search results on the detail page

|image960|

Below the search buttons you'll find the links to place a hold, print
the record, save the record to your lists, or add it to your cart

|image961|

Clicking 'More searches' will show the list of libraries you entered in
your :ref:`OPACSearchForTitleIn` preference

|image962|

Under the 'Save record' label you will find a series of file formats you
can save the record as. This list can be customized by altering the
:ref:`OpacExportOptions` system preference.

|image963|

If at any time you want to change the view from the 'Normal' view to see
the Marc or the ISBD you can click the tabs across the top of the record

|image964|

.. _lists-&-cart-label:

Lists & Cart
---------------------------------

A cart is a temporary holding place for records you're interested in
finding during this session. That means that once you log out of the
OPAC or close the browser you lose the items in your cart. A list is a
more permanent location for saving items. To learn more about lists,
check the `Lists in the staff client <#stafflists>`__ chapter of this
manual.

.. _lists-label:

Lists
~~~~~~~~~~~~~~~~~~~~~~

Patrons can manage their own private lists by visiting the 'your lists'
section of their account.

|image965|

.. _creating-lists-label:

Creating lists
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Lists can also be created by choosing the 'New list' option in the 'Add
to' menu on the search results

|image966|

To create a list the patron simply needs to click the 'New list' link
and populate the form that appears

|image967|

The only field required is the 'List name,' but the patron can also
choose how they want the list sorted and if the list is public or
private.

-  A private list is managed by you and can be seen only by you
   (depending on your permissions settings below)

-  A public list can be seen by everybody, but managed only by you
   (depending on your permissions settings below)

    **Important**

    If you aren't allowing patrons to create public lists with the
    :ref:`OpacAllowPublicListCreation`
    preference then patrons will only be able to create private lists.

    |image968|

-  Finally decide what your permissions will be on the list. You can all
   or disallow:

   -  anyone else to add entries

   -  anyone to remove his own contributed entries

      -  **Note**

             The owner of a list is always allowed to add entries, but
             needs permission to remove.

   -  anyone to remove other contributed entries    

.. _adding-titles-to-lists-label:

Adding titles to lists
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Titles can be added to lists from the search results and/or from the
bibliographic record. On the search results options to add items to the
list appear below each result and across the top of the results page

|image969|

To add a single title to a list, click the 'Save to lists' option and
then choose the list you'd like to add the title to. To add multiple
titles to a list check the boxes on the left of the titles you want to
add and then choose the list you want to add the titles to from the 'Add
too' pull down at the top of the screen.

.. _viewing-lists-contents-label:

Viewing lists contents
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To view the contents of a list, click on the list name under the 'Lists'
button.

|image970|

The contents of the list will look similar to your search results pages
except that there will be different menu options across the top of the
list.

|image971|

To the right of the list title there is an RSS icon that will allow you
to subscribe to updates to the list.

Using the menu options above the list you can place multiple items on
hold, download the list contents, email the list or print the list out.

-  To place a hold on one or more list items check the box to the left
   of the item and click the 'Place hold' link at the top

-  To download the list contents click the 'Download list' link and
   choose the format you'd like to download the list in

-  To email the list contents to someone, click the 'Send list' link and
   enter in your email details in the form that pops up

   |image972|

-  To print the contents of your list out click the 'Print list' link

.. _managing-lists-label:

Managing lists
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Once the list is saved patrons can begin adding items to it. From the
'your lists' tab on the patron record the patron can edit and delete the
lists they have created by clicking the appropriate link to the right of
the list name.

|image973|

To edit the list's title or sorting patrons click the 'Edit' link to the
right of the list description.

|image974|

When clicking 'Delete' next to a list you will be asked to confirm that
you want to delete the list.

|image975|

The list will not be deleted until the 'Confirm' button is clicked to
the right of the list you'd like to delete.

If the library is allowing you to share private lists with the
:ref:`OpacAllowSharingPrivateLists`
preference then you will see the 'Share' link on your list of lists and
the 'Share list' link at the top of each individual list. Clicking this
will ask you to enter the email address of a patron.

|image1298|

Once the email address is entered Koha will present you with a
confirmation message

|image976|

and will send a message to that patron.

.. _cart-label:

Cart
~~~~~~~~~~~~~~~~~~~~

.. _adding-titles-to-the-cart-label:

Adding titles to the cart
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Titles can be added to the cart from the search results and/or from the
bibliographic record. On the search results options to add items to the
cart appear below each result and across the top of the results page

|image977|

Clicking the 'Add to cart' button will add the one title to your cart.
To add multiple titles at once, check the box to the left of each result
and then choose 'Cart' from the 'Add to' pull down at the top of the
screen. Once titles are added to the cart you will be presented with a
confirmation

|image978|

From the results you will see which items are in your cart and will be
able to remove those items by clicking '(remove)'.

|image1299|

.. _managing-the-cart-label:

Managing the cart
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Once you have titles in your cart you can manage the contents by
clicking on the 'Cart' button usually found at the top of the screen.
Your cart will open in a new window.

|image979|

From this window you are presented with several options. Across the top
of the cart are several buttons.

First is the 'More details' button. Clicking this will show you
additional information about the titles in your cart (ISBNs, subjects,
publisher info, notes and more).

|image1300|

Next is the option to send the contents of your cart to an email
address. This is handy if you want to send the resources you found at
the library to your home email account to refer to later or to send to a
patron researching a specific topic. Clicking this link will open up a
new window that asks for the email address and message to send.

|image980|

    **Important**

    The cart can only be emailed by logged in users. This will prevent
    your cart email function from being used for spamming.

In addition to sending your cart you can download the contents of your
cart in several pre-defined formats or using a :ref:`CSV
profile <csv-profiles-label>` that you defined in the tools module.

|image981|

Finally you can print out the contents of your cart by choosing the
'Print' link.

In addition to the various different ways to save the contents of your
cart, there are ways to add value to the data in your cart. By selecting
one or more titles from the cart you can add them to a list (click 'Add
to a list'), place hold(s) (click 'Place hold'), or tag them (click
'Tag'). All of these operations follow the same procedure as they do
when performing them in the OPAC.

.. _placing-holds-label:

Placing holds
----------------------------------

Patrons can place holds on items via the OPAC if they're logged in and
you have the :ref:`RequestOnOpac` preference set to
'Allow'. If the item can be placed on hold the option to place it on
hold will appear in several different places.

-  When viewing a list or search results page you'll see the option to
   place hold on multiple items by checking the boxes to the left of the
   results and clicking 'Place hold' at the top

   |image982|

-  When viewing a list or search results page you'll see the option to
   place the item on hold below the basic information about the title

   |image983|

-  When viewing an individual title you'll see the option to place a
   hold in the box on the right side of the screen

   |image984|

No matter which of the above links you click to place your hold you'll
be brought to the same hold screen.

|image985|

-  Check the box to the left of the items you'd like to place on hold

-  The title includes a link back to the detail page for the record

-  The priority shows where in the holds queue this hold will fall

-  If allowed by your
   :ref:`OPACAllowUserToChooseBranch`
   preference the patron can choose where they'd like to pick up their
   hold

-  If you would like to see more options you can click 'Show more
   options'

   Place hold form with more options

   -  If you have the
      :ref:`AllowHoldItemTypeSelection`
      preference set to 'Allow' and the record had more than one item
      type attached you will see an option to choose to limit the hold
      to a specific item type

      |image1301|

-  If allowed by your
   :ref:`OPACAllowHoldDateInFuture`
   preference, the 'Hold starts on date' column will show. This field
   allows the patron to have their hold start on a future date.

-  By default holds placed in the system remain until canceled, but if
   the patron fills in a 'Hold not needed after' date then the hold has
   an expiration date.

   -  **Important**

          Expired holds are removed by the :ref:`expired holds cron
          job <expired-holds-label>`, this is not an automatic process
          and must be set up by your system administrator

-  If allowed by the :ref:`OpacHoldNotes` preference then
   patrons can leave notes about their holds for the library by clicking
   the 'Edit notes' button

   |image986|

-  Depending on the rules you set regarding item specific holds in your
   :ref:`circulation and fines rules <circulation-and-fine-rules-label>` the patron will be
   allowed to choose whether to place the hold on the next available
   copy and/or a specific copy

   |image987|

After clicking the 'Place hold' button the patron will be brought to their
account page where they'll see all of the items they have on hold.

.. _enhanced-content-label:

Enhanced content
-------------------------------------------

.. _opac-tagging-label:

Tagging
~~~~~~~~~~~~~~~~~~~~~~~~~~

Depending on your settings for the :ref:`TagsEnabled`,
:ref:`TagsInputOnList` and
:ref:`TagsInputOnDetail` preferences you may be able
to add tags to bibliographic records from the search results and/or
bibliographic records. If you are allowing patrons to add tags from the
search results screen you will see an input box below each result and a
'Tag' option at the top of the screen.

|image988|

To add a tag to one item, type the tabs (separated by commas) in the
'New tag' box and click 'Add'. You will be presented with a confirmation
of your tags being added.

|image989|

From the results you can also tag items in bulk by clicking the
checkboxes on the left and then clicking the 'Tag' button at the top.
After clicking the button it will change into an input box for you to
add tags to all of the items you have selected.

|image990|

Emojis can also be included using the emoji picker when adding tags

|image1341|

.. _comments-label:

Comments
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Patrons can leave comments in the OPAC if you have the
:ref:`reviewson` preference set to allow this. Each
bibliographic record has a comments tab below the bibliographic
information.

|image991|

If the patron is logged in they will see a link to add a comment to the
item. Clicking this link will open a pop up window with a box for their
comments.

|image992|

Once the comment has been typed and the 'Submit' button clicked, the
patron will see their comment as pending and other patrons will simply
see that there are no comments on the item.

|image993|

Once the comment is approved the patron will see the number of comments
on the 'Comments' tab and their comment labeled amongst the other
comments. If you have set your
:ref:`ShowReviewerPhoto` preference to 'Show' then
you'll see the patron's photo pulled from the
`Libravatar <https://www.libravatar.org>`__ library.

|image994|

Other patrons will see the comment with the name of the patron who left
the comment (unless you have set the :ref:`ShowReviewer`
preference to not show patron names).

|image995|

If you have your :ref:`OpacShowRecentComments`
set to show then you'll see the approved comments on that page.

|image996|

From this page patrons can subscribe to the recent comments using RSS if
they would like.

.. _zotero-label:

Zotero
~~~~~~~~~~~~~~~~~~~~

Zotero is a Firefox add on that allows for the saving and generating of
a bibliography. Learn more about and download Zotero at
http://zotero.org.

When on the search results in the Koha OPAC, if you have Zotero
installed, you will see a folder icon in the address bar to the right of
the URL. Clicking that folder will open up a list of titles on the page
for you to pick from to add to Zotero.

|image997|

Select the titles you want to add to Zotero and then click the 'OK'
button. This will add the title to Zotero. You can see the title by
opening your Zotero library.

|image998|

.. _custom-rss-feeds-label:

Custom RSS feeds
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Using the :ref:`RSS feeds cron job<rss-feeds-label>` you can generate an RSS feed for any SQL
query (for example a new acquisitions RSS feed). The cron job is run on the
command line to produce an RSS XML document.

The output should be placed in a directory accessible to the OPAC (or
staff) web interface so that users can download the RSS feed.

An example of usage can be found at: misc/cronjobs/rss.pl
lastAcquired.conf

Normally the RSS cron job should be run periodically (e.g., daily) to keep the
feed up-to-date.

The configuration file (e.g., lastAcquired.conf) lists

-  name of the template file to use

-  path of output file

-  SQL query

The RSS cron job runs the SQL query, then feeds the output of the query through
the template to produce the output file.

    **Important**

    To use custom RSS feeds you need to turn on the :ref:`RSS cron job<rss-feeds-label>`.

.. _opac-self-registration-label:

OPAC self registration
----------------------------------------------

If you allow it, patrons can register for their own accounts via the
OPAC. If you have the
:ref:`PatronSelfRegistration` preference set to
'Allow' then patrons will see a link to register below the log in box on
the right of the main OPAC page.

|image999|

When the patron clicks the 'Register here' link they will be brough to a
registration page. The options on the registration page can be conrolled
by editing the
:ref:`PatronSelfRegistrationBorrowerMandatoryField`
and the
:ref:`PatronSelfRegistrationBorrowerUnwantedField`
preferences.

|image1000|

Once the patron has confirmed submitted their registration they will
either be sent an email to confirm their account (if you have the
:ref:`PatronSelfRegistrationVerifyByEmail`
preference to require this) or presented with their new username and
password.

|image1001|

Patrons registered in this way will not have a cardnumber until assigned
one by the library, but will have access to all OPAC functionality
immediately. For this reason it is recommended that you:

-  set up a provisional :ref:`patron category <adding-a-patron-category-label>` for self
   registered patrons (such as 'Self Registered) instead of using an
   existing patron category and set that value in the
   :ref:`PatronSelfRegistrationDefaultCategory`
   preference

-  give this patron category minimal circulation privileges in the
   :ref:`Circulation and fines rules` (such as allowing a
   couple holds, but no check outs)

That way patrons will either have to come in to the library to verify
their identity before given a cardnumber and the ability to check items
out or the library will have to come up with internal policy on
generating cardnumbers before providing them to self registered patrons.
Once this is done the library can change the category to one that is
more appropriate (be it an adult, resident, non resident, student, etc)
and add a cardnumber/barcode.

.. _your-account-label:

Your account
-------------------------------

From the OPAC patrons can log in and access their account if you have
set the :ref:`opacuserlogin` preference to 'Allow'. Once
logged in patrons are brought to their account summary. If you would
like to get to your account in the OPAC, you can click on your name in
the top right of any page in the OPAC.

.. _resetting-your-password-label:

Resetting your password
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you have the :ref:`OpacResetPassword` set to allow
patrons to reset their password they can click 'Forgot your password?'
link found under the log in box to reset their passwords.

|image1002|

Once clicked they will be presented with a form asking for their
username and their email address (patrons must have an email address on
file to reset their password).

|image1302|

The system will then email the patron instructions for resetting their
password.

|image1303|

.. _your-summary-label:

Your summary
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

|image1003|

From the 'your summary' tab, patrons will see all of the items they have
checked out with the overdue items highlighted in red. If you have
:ref:`OpacRenewalAllowed` set to 'Allow' then your
patrons will be able to renew their books right from the OPAC. If you
have HTML entered in the :ref:`OPACMySummaryHTML`
preference then you will see that to the right of the 'Fines' column.

|image1004|

If your patrons would like to see the items barcodes on their list of
checked out items you can set up a :ref:`patron
attribute <patron-attribute-types-label>` with the value of SHOW\_BCODE and
:ref:`authorized value <authorized-values-label>` of YES\_NO.

|image1005|

Then on the :ref:`patron's record set the value <editing-patrons-label>` for
SHOW\_BCODE to yes.

|image1006|

This will add a column to the check out summary in the OPAC that shows
the patrons the barcodes of the items they have checked out.

|image1007|

If you would like your patrons to leave a note on an item they have checked out
:ref:`allowcheckoutnotes` preference must be set to allow.

In the patron's summary of checkouts, there will be an added column 
to allow the patron to leave a note (for example:  missing first page, or DVD is
scratched).  This note once confirmed by the patron will appear to the staff
at the bottom of the staff interface's home page, and also when the item is checked in. 

|image1391|

If their guarantee has allowed it via :ref:`their
privacy <your-privacy-label>`, when the guarantor logs in they will see a
tab labeled "Relatives' checkouts" on their summary tab.

|image1304|

Clicking on the 'Overdue' tab will show only the items that are overdue.

|image1008|

The 'Fines' tab will show just a total of what the patron owes. Clicking
on the total will take them to the 'your fines' tab where they will see a
complete breakdown of their fines and bills. If you don't charge fines
at your library you can turn the display of these tabs off by setting
the :ref:`OPACFinesTab` preference to 'Don't allow.'

|image1009|

Finally, clicking on the 'Holds' tab will show the patron the status of
all of the items they have on hold.

|image1010|

Patrons can cancel or suspend (depending on the value of your
:ref:`SuspendHoldsOpac` system preference) their own
holds if they are not in transit or already waiting for them. When they
click 'Suspend' they will be presented with the option to choose a date
for their hold to resume.

|image1305|

They can also suspend all of their holds indefinitely or until a
specific date if they choose by filling in the suspend options at the
bottom of the page.

    **Note**

    If you have your
    :ref:`AutoResumeSuspendedHolds` preference
    set to "Don't allow" then you will not have the option to put an end
    date on the hold suspension

.. _patron-flags-label:

Patron flags
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you have `flagged your patron's account <#patronflags>`__ they may
see one of the following error messages at the top of their account.

-  Card marked as lost

   |image1011|

-  Patron address in question

   |image1012|

   -  **Note**

          this error message will not include a link to the update form
          if you have :ref:`OPACPatronDetails` set to
          'Don't allow'

-  Patron marked restricted

   |image1013|

.. _your-fines-label:

Your fines
~~~~~~~~~~~~~~~~~~~~~~~~~~~

If your library charges fines the next tab on the left is 'your fines'.
Opening this tab will show the patron an entire history of their
accounting at the library.

|image1014|

If you are allowing patrons to pay their fines using PayPal with the
:ref:`EnablePayPalOpacPayments <enablepaypalopacpayments-&-paypalsandboxmode-label>` preference
there will be checkboxes to the left of each fine with an outstanding
amount.

|image1306|

At the bottom the patron will see the option to pay with PayPal for the
items they have checked.

|image1015|

After paying they will be presented with a confirmation

|image1307|

And you will see that the fine was paid using PayPal on the staff
side.

|image1308|

.. _your-details-label:

Your personal details
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you have your :ref:`OPACPatronDetails` preference
set to 'Allow', your patrons will see a form filled in with their
contacting information by clicking on the 'Your personal details' tab. You
can control what fields patrons see and can modify via the OPAC by
setting the
:ref:`PatronSelfRegistrationBorrowerMandatoryField`
:ref:`PatronSelfRegistrationBorrowerUnwantedField`
preferences.

|image1016|

Patrons can edit their details in this form and click 'Submit changes'
to have their edits sent to the library for review before their record
is updated. Staff will see all patrons requesting modification to their
record listed below the modules on the main dashboard along with
anything else awaiting library attention.

|image1017|

If the :ref:`OPACPatronDetails` preference is set to
'Don't allow' then patrons will simply see their details and a message
stating that they should contact the library for changes.

|image1018|

.. _your-tags-label:

Your tags
~~~~~~~~~~~~~~~~~~~~~~~~~

If your library has :ref:`TagsEnabled` set to 'Allowed' then
the next tab on the left will be 'your tags'. This tab will show patrons
all of the tags in the system as a cloud and then all of the tags they
have applied in a list format. From here patrons have the ability to
remove tags that they have added if they want.

|image1019|

.. _change-your-password-label:

Change your password
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Next, if you have :ref:`OpacPasswordChange` set to
'Allow' the next tab will be 'change your password,' where patrons can
change their password for logging into the OPAC. Patrons will be
presented with a standard form asking them to enter their old password
and then their new password twice.

|image1020|

.. _your-search-history-label:

Your search history
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you have your :ref:`EnableOpacSearchHistory`
preference set to 'Allow' then your patrons can access their search
history via the 'your search history' tab.

|image1021|

The search history is a record of all searches run by the patron.
Clicking on any of the search phrases will re-run the search for the
patron. The search history can be deleted by the patron at any time by
clicking the 'Delete your search history' link found at the top of this
tab or by clicking the little red 'x' next to the 'Search history' link
at the top right of the OPAC.

|image1022|

.. _your-reading-history-label:

Your reading history
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Depending on your library's setting for
:ref:`opacreadinghistory` your patrons may see the
'your reading history' tab next. This will show the patron their entire
reading history unless they have asked the library to not keep that
information via the 'your privacy' tab which will appear if you have the
:ref:`OPACPrivacy` preference set to 'Allow.'

|image1023|

If you have HTML entered in the
:ref:`OPACMySummaryHTML` preference then you will see
that to the right of the 'Date' column.

.. _your-privacy-label:

Your privacy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The 'your privacy' tab will appear if you have both the
:ref:`opacreadinghistory` and the
:ref:`OPACPrivacy` preferences set to 'Allow.' This tab will
allow the patrons to decide how the library keeps their circulation
history data.

|image1024|

The patron can choose from three options:

-  Forever: keep my reading history without limit. This is the option
   for users who want to keep track of what they are reading.

-  Default: keep my reading history according to local laws. This is the
   default option : the library will keep your reading history for the
   duration permitted by local laws.

-  Never: Delete my reading history immediately. This will delete all
   record of the item that was checked-out upon check-in.

Depending on the patron's suggestions the contents of the ':ref:`Your reading
history <your-reading-history-label>`' tab and the ':ref:`Circulation
History <circulation-history-label>`' tab in the staff client may change.

Regardless of the patron's choice they can delete their reading history
in bulk at any time by clicking the 'Immediate deletion' button.

|image1025|

Clicking this button will not delete items that are currently checked
out, but will clear the patron's past reading history.

    **Important**

    In order for the patron to be able to delete their reading history
    you must have the :ref:`AnonymousPatron` preference
    set.

If you're allowing guarantees to grand permission to their guarantors to
view their current checkouts with the
:ref:`AllowPatronToSetCheckoutsVisibilityForGuarantor`
preference they will see that option on this
screen.

|image1309|

When the guarantor logs in they will see a tab labeled "Relatives'
checkouts" on their summary tab.

|image1310|

.. _your-purchase-suggestions-label:

Your purchase suggestions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If your library allows patrons to make purchase suggestions the next tab
will show all suggestions that the patron made to the library and their
statuses. To disable this tab and the suggestion functionality set the
:ref:`suggestion` preference to 'Don't allow.'

|image1026|

If you have :ref:`OPACViewOthersSuggestions`
set to 'Show' then patrons will be able to search suggestions from the
top of this list.

.. _your-messaging-label:

Your messaging
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If your library has the
:ref:`EnhancedMessagingPreferences` and the
:ref:`EnhancedMessagingPreferencesOPAC`
preferences set to 'Allow' then your patrons will be able to choose
which messages they receive from the library (with the exception of
overdue notices which the library controls).

|image1027|

If you use an outside driver for sending text messages set with the
:ref:`SMSSendDriver <smssenddriver,-smssendusername,-and-smssendpassword-label>` preference, you will see an
additional column to receive these messages as SMS (or text messages)
and a field for a cell (or SMS) number.

|image1028|

If you are using the Email protocol for sending text messages set with
the :ref:`SMSSendDriver <smssenddriver,-smssendusername,-and-smssendpassword-label>` preference, you will see an
additional column to receive these messages as SMS (or text messages), a
field for a cell (or SMS) number, and a pull down listing :ref:`cellular
providers entered in administration <sms-cellular-providers-label>`.

|image1029|

If you are using the :ref:`Itiva Talking
Tech <talkingtechitivaphonenotification-label>` service you will see an
additional column to receive these messages via Phone.

|image1311|

-  These notices are:

   -  Advanced notice: A notice in advance of the patron's items being
      due (The patron can choose the number of days in advance)

   -  Item checkout: A notice that lists all the of the items the
      patron has just checked out and/or renewed, this is an electronic
      form of the checkout receipt

   -  Hold filled: A notice when you have confirmed the hold is waiting
      for the patron

   -  Item due: A notice on the day and item is due back at the library

   -  Item check-in: A notice that lists all the of the items the
      patron has just checked in

Patrons can choose to receive their notices as a digest by checking the
'Digest only?' box along with the delivery method. A digest is a
combination of all the messages of that type (so all items due in 3 days
in one email) in to one email instead of multiple emails for each alert.

    **Important**

    You must choose a delivery method (SMS or email or phone) along with
    'Digest only?' if you would like to receive a digest of the
    messages.

.. _your-lists-label:

Your lists
~~~~~~~~~~~~~~~~~~~~~~~~~~~

If your library has the :ref:`virtualshelves`
set to 'Allow' they will see the 'your lists' tab. From here your
patrons can review public lists and create or edit their own private
lists.

|image1030|

.. _ask-for-a-discharge-label:

Ask for a discharge
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you have enabled the :ref:`useDischarge` preference then
patrons will be able to request a discharge via the OPAC.

|image1312|

From here patrons can request a discharge

|image1031|

And will receive confirmation of their request.

|image1032|

.. _your-interlibrary-loan-requests-label:

Your interlibrary loan requests
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If your library has the :ref:`ILLModule` preference set to ‘Enable’ patrons will have the option to make ILL requests when logged in to their OPAC account.  From here they can view their existing requests and place new ones.

|image1373|

To place a new interlibrary loan request click on ‘Create a new request’ and choose a request form. 

|image1374|

    **Note**

    The options displayed are dependent on your ILL configuration.  See the ILL backends wiki page at https://wiki.koha-community.org/wiki/ILL_backends for further explanation.

    **Note**

    If you have entered copyright text in the :ref:`ILLModuleCopyrightClearance` preference the text displays here and you need to click ‘Yes’ to accept before continuing.
    
Complete the publication details as fully as possible. Depending on the form in use you may see the option to add Custom fields for additional information such as notes.  Destination branch is a required field, this is the branch you would like the request to be sent to.

|image1375|

Click on 'Create' to submit your request to the library for processing.

Your submitted request will be listed with a status of ‘New request’.  Once processed the status will be updated to ‘Requested’.

Click on ‘View’ to make changes or cancel your request.

You cannot edit the form details but you can add a note to request a modification and then click on ‘Submit modifications’ at the bottom of the screen.  Your modification will be sent to the library for processing. 

For new requests you will also have the option to ‘Request cancellation’. Your request will be updated with the status ‘Cancellation requested’ and can then be removed by library staff.

Purchase suggestions
-------------------------------------------

If your library has the :ref:`suggestion` preference set
to 'Allow' then patrons will have the option to make purchase
suggestions in several areas in the OPAC.

If you are allowing everyone to see the purchase suggestions made by
others with the
:ref:`OPACViewOthersSuggestions` preference,
then there will be a link at the top of your OPAC under the search box.

|image1033|

There will be a link when the patron finds nothing for their search.

|image1034|

And there will be a link on the patron's :ref:`Your purchase
suggestions <your-purchase-suggestions-label>` tab.

|image1035|

Clicking any one of these links will open the purchase suggestion form.

|image1036|

-  From the form only the 'Title' is required by the library.

-  The item type list can be edited by editing the SUGGEST\_FORMAT
   :ref:`authorized value <authorized-values-label>`.

-  If you would like the 'Reason for suggestion' menu shown in the
   screenshot above to appear on your suggestions list you need to add
   an :ref:`authorized value <authorized-values-label>` category titled
   'OPAC\_SUG' and include reasons as values in that list.

-  If you would like the patron to be able to choose which branch they
   are making a suggestion for you need to set the
   :ref:`AllowPurchaseSuggestionBranchChoice`
   preference to 'Allow'

Once the form is submitted the data will be saved to the
:ref:`Acquisitions <managing-suggestions-label>` module for the librarians to manage.
