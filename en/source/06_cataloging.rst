.. include:: images.rst

Cataloging
==========

Before you start cataloging in Koha you're going to want to do some
basic setup. Refer to the :ref:`Implementation Checklist`
for a full list of these things. Most importantly you're going to want
to make sure that your :ref:`MARC Bibliographic Frameworks` are all
defined the way you want. Once in the cataloging module you will not be
able to add or remove fields and subfields so your frameworks must be
ready before you start cataloging.

You can also use OCLC Connexion to send records directly in to Koha. For
more information on that please review the :ref:`OCLC Connexion Gateway` 
setup Appendix.

-  *Get there:* More > Cataloging

`Bibliographic Records <#catbibs>`__
------------------------------------

In Koha the bibliographic record contains the main information related
to the material. This includes things like the title, author, ISBN, etc.
This information is stored in Koha in Marc (different flavors of Marc
are supported in Koha). Once this information is saved, :ref:`Item Records`
can be attached.

`Adding Records <#addbibrec>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Records can be added to Koha via original or copy cataloging. You can
also choose to use the basic or advanced cataloging interface for all of
your work.

If you would like to catalog a record using a blank template in the
basic editor

-  Click 'New Record'

   New Record Menu
   |image627|

   -  Choose the framework you would like to base your record off of

If you would like to catalog a record using a blank template in the
advanced editor

-  Enable the
   `EnableAdvancedCatalogingEditor <#EnableAdvancedCatalogingEditor>`__
   preference

-  Click the 'Advanced editor' buttonAdvanced editor button

If you want to catalog a record based on an existing record at another
library in the editor you last used (basic or advanced)

-  Click 'New from Z39.50/SRU'

   Z39.50 Search
   |image628|

   -  Search for the item you would like to catalog

      -  **Note**

             If no results are found, try searching for fewer fields,
             not all Z39.50 targets can search all of the fields above.

   -  Search targets can be altered by using the `Z39.50
      Admin <#z3950admin>`__ area.

   -  From the results you can view the MARC or Card view for the
      records or choose to Import them into Koha

      Z39.50 Search Results
      |image629|

      -  In addition to the Import link to the right of each title, you
         can click on the title you're interested in and a menu will pop
         up with links to preview the record and import it

         Import Link Popup on Z39.50 Search Results
         |image630|

      -  If you don't find the title you need in your Z39.50 search
         results you can click the 'Try Another Search' button at the
         bottom left of your results

         Try another search
         |image631|

`Basic Editor Cataloging <#basicatalog>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

In the basic editor once you've opened a blank framework or imported a
record via Z39.50 you will be presented with the form to continue
cataloging

Add MARC Record
|image632|

-  If you would rather not see the MARC tag numbers you can change the
   value in your `hide\_marc <#hide_marc>`__ system preference or each
   user can check the box next to 'Show tags' found under 'Settings'.

-  To expand a collapsed tag click on the tag description

-  To get help from the Library of Congress on a Marc tag click the
   question mark (?) to the right of each field number

   -  If you feel that this clutters the screen you can hide the
      question marks by unchecking the box next to the 'Show MARC tag
      documentation links' note found under 'Settings'

-  Sometimes fields may not be editable due to the value in your
   `BiblioAddsAuthorities <#BiblioAddsAuthorities>`__ system preference.
   If you have this preference set to not allow catalogers to type in
   fields controlled by authorities you may see a lock symbol to the
   left of the field.

   Authority fields locked against editing
   |image633|

   -  If this icon appears you must click the icon to the right of the
      field to search for an existing authority.

      Search for authority
      |image634|

   -  From the results list click 'Choose authority' to bring that into
      your catalog record

      Authority search results
      |image635|

-  To duplicate a field click on the 'repeat this tag' icon to the right
   of the tag

   Duplicate a Field
   |image636|

   -  To move subfields in to the right order, click the up arrow to the
      left of the field

   -  To duplicate a subfield click on the clone icon (to remove a
      copied field, click the delete clone icon) to the right of the
      field

      Clone Subfield
      |image637|

   -  To remove a subfield (if there is more than one of the same type),
      click the - (minus sign) to the right of the field

-  To use a plugin click on the icon to the right of the filed

   Leader Builder Plugin
   |image638|

   -  Some fixed fields have editors that will change based on the
      material type you're cataloging (for example the 006 and the 008
      fields)

      008 Plugin
      |image639|

-  Once you've finished, click the 'Save' button at the top and choose
   whether you want to save and view the bib record you have created or
   continue on to add/edit items attached to the record

   Record save options
   |image640|

   -  Choosing 'Save and view record' will bring you right to the record
      you just cataloged

   -  Choosing 'Save and edit items' will bring you to the add/edit item
      form after saving the bib record so that you can attach holdings

   -  Choosing 'Save and continue editing' will allow you to save your
      work so far and keep you in the editor to continue working

-  If you are about to add a duplicate record to the system you will be
   warned before saving

   Duplicate Record Warning
   |image641|

`Advanced Editor Cataloging <#advancededitor>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

In order to use the Advanced cataloging editor you need to enable the
`EnableAdvancedCatalogingEditor <#EnableAdvancedCatalogingEditor>`__
preference.

    **Important**

    This feature is currently experimental, and may have bugs that cause
    corruption of records. It also does not include any support for
    UNIMARC or NORMARC fixed fields. Please help us test it and report
    any bugs, but do so at your own risk.

In the advanced editor once you've opened a blank framework or imported
a record via Z39.50 you will be presented with the form to continue
catalogingAdvanced cataloging editor

Using the search box on the left you can perform Z39.50 searches

Advanced Z39.50 results
|image642|

And from those Z39.50 results you can view the marc record by clicking
the link to the right

Advanced Z39.50 results
|image643|

Clicking 'Import' will bring the record in to the editor where you can
perform your edits

Advanced Cataloging
|image644|

    **Note**

    When adding a new field in the Advanced Editor, you need to key
    underscores for a blank indicator, and surround the indicators with
    spaces.

    **Note**

    You need to key a space before the first subfield delimiter, but not
    before or after other subfield delimiters in the field.

At the bottom of the editor you will see help from the Library of
Congress for the field you are on. In cases where your MARC is invalid
you will see red highlighting. To edit the record using only keyboard
functions the Keyboard shortcuts button will inform you of the necessary
commands

Advanced Z39.50 results
|image645|

`Advanced Cataloging Keyboard Shortcuts <#advancedkeyshortcuts>`__
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

The following keyboard shortcuts can be used in the advanced cataloging
module to save time and clicking.

+----------------+--------------------------------+
| Shortcut       | Behavior                       |
+================+================================+
| Ctrl-D         | Insert delimiter (‡)           |
+----------------+--------------------------------+
| Ctrl-H         | Get help on current subfield   |
+----------------+--------------------------------+
| Ctrl-S         | Save record                    |
+----------------+--------------------------------+
| Ctrl-X         | Delete current field           |
+----------------+--------------------------------+
| Ctrl-Shift-X   | Delete current subfield        |
+----------------+--------------------------------+
| Enter          | New field on next line         |
+----------------+--------------------------------+
| Shift-Enter    | Insert line break              |
+----------------+--------------------------------+
| Tab            | Move to next position          |
+----------------+--------------------------------+
| Shift-Tab      | Move to previous position      |
+----------------+--------------------------------+

`Macros in Advanced Cataloging <#macroscataloging>`__
'''''''''''''''''''''''''''''''''''''''''''''''''''''

To record a new macro:

-  Select the "> Macros..." button

-  A window will pop up. In this window, select "New macro...," key the
   new macro's name in the pop-up box and select OK.

-  Now click to the right of the little number 1, and key the first line
   of your macro. For a multi-line, i.e., multi-field macro, hit the
   return key so that a little number 2 appears, and key the second
   line/field, etc.

-  Your macros will be automatically saved. When finished you can select
   the "x" to close the window, or select a macro to run on the record
   that you're editing, or select another macro to run.

To edit an existing macro:

-  Select the "> Macros..." button

-  A window will pop up. In this window, select the macro that you wish
   to edit & make your changes.

-  Your work will automatically be saved, and when finished you can
   select the "x" to close the window, or select a macro to run on the
   record that you're editing, or select another macro to run.

The basic syntax of the macro language:

-  new 500=‡aEdited with Rancor

   -  Creates a new 500 with a ‡a subfield and sets it to "Edited with
      Rancor".

-  245c= by J.K. Rowling.

   -  Sets the first ‡c subfield of the first 245 tag in the record to "
      by J.K. Rowling", creating it if necessary.

-  082a={084a}

   -  Sets the ‡a subfield of the first 082 tag (creating the subfield
      if necessary) to the contents of the first 084‡a.

-  indicators=\_1

   -  Sets the indicators of the last mentioned tag (in this case, 082)
      to "\_" and "1".

-  new 090a=Z674.75.W67

   -  Creates a new ‡a subfield on the first 090 (but only if that field
      already exists) and sets it to Z674.75.W67.

-  new 090a at end=Z674.75.W67

   -  Same as above.

-  new 245b after a= a tale of might and magic /

   -  Creates a new ‡b after the first a subfield and sets it to " a
      tale of might and magic /".

-  delete 245b

   -  Deletes the first ‡b subfield on the first 245 to ‡b

`Adding Analytic Records <#cataloganalytics>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Libraries sometimes make journal articles and articles within monographs
and serials accessible to library patrons through analytics cataloging.
Analytics cataloging creates separate bibliographic records for these
articles, chapters, sections, etc. found within a larger resource such
as a book, an article within a journal, newspaper or serial. In
analytics cataloging, although a separate bib record is created for the
title, it is not physically separated from the host item.  Learn more
about Analytics in Chapter 13 of AACR2.

If you would like to catalog analytic records there are two options. One
is to use the `Easy Analytics <#catalogeasyanalytics>`__ funtion; the
other is the `Analytics Enhanced Workflow <#catalogenhanceanalytics>`__.

`Easy Analytics <#catalogeasyanalytics>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The Easy Analytics feature makes linking analytic records together
easier. The first thing you need to do is set the
`EasyAnalyticalRecords <#EasyAnalyticalRecords>`__ preference to
'Display' and the `UseControlNumber <#UseControlNumber>`__ preference to
'Don't use.'

After cataloging your analytic record (see `Adding
Records <#addbibrec>`__ for more on creating records) click 'Edit' from
the normal view and choose to 'Link to Host Item'

Link to Host Item
|image646|

This will prompt you to enter the barcode for the item this record
should be linked to.

Barcode for Analytic Linking
|image647|

After entering the item's barcode and clicking 'Select' you will receive
a confirmation message.

Analytic Link Success
|image648|

The record will now have the 773 field filled in properly to complete
the link.

773
|image649|

To view all of the items tied to the host record, do a search for the
record, click the Analytics tab on the left and the analytics tied to
each barcode will be shown under the "Used in" column.

Analytics Tab
|image650|

    **Note**

    It is also possible to create analytic records from this screen by
    clicking on "Create Analytics"

You can also see the analytics attached to this record by clicking the
'Show Analytic' link towards the top of the record in the normal view.

Show Analytics on Bib Record
|image651|

When looking at the analytic record you will also see a link to the host
item under the 'Host records' column in the holdings table when viewing
the 'Analytics' tab.

Host Record
|image652|

`Analytics Enhanced Workflow <#catalogenhanceanalytics>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To use the Enhanced Workflow method of adding analytics, the first thing
you need to do is set the
`EasyAnalyticalRecords <#EasyAnalyticalRecords>`__ preference to 'Don't
display' and the `UseControlNumber <#UseControlNumber>`__ preference to
'Use.'

After cataloging your original record (see `Adding
Records <#addbibrec>`__ for more on creating records) click 'New' from
the normal view and choose to 'New child record.'

New child record
|image653|

This will open a new blank record for cataloging. The blank record will
only have the 773 field filled in properly to complete the link once the
record is saved.

773
|image654|

To view all of the items tied to the host record, do a search for the
record, click the Analytics tab on the left and the analytics tied to
each barcode will be shown under the "Used in" column.

Analytics Tab
|image655|

You can also see the analytics attached to this record by clicking the
'Show Analytic' link towards the top of the record in the normal view.

Show Analytics on Bib Record
|image656|

When looking at the analytic record you will also see a link to the host
item under the 'Host records' column in the holdings table when viewing
the 'Analytics' tab.

Host Record
|image657|

`Editing Analytics <#analyticediting>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you have linked an analytic record incorrectly you can remove that
link by editing the item on the analytic record (not the host record).
To do this, go to the analytic record and click the 'Edit' button and
choose to 'Edit items'. To the left of each item you will see two
options.

Edit Analytic Item Record
|image658|

-  Clicking 'Edit in Host' will allow you to edit the item on the host
   record.

-  Clicking 'Delink' will remove the 773 field and the link between the
   analytic and the host.

`Editing Records <#editbibrec>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To edit a record you can click 'Edit Biblio' from the search results on
the cataloging page

Edit Biblio Option on Search Results
|image659|

or by clicking the Edit button on the Bibliographic Record and choosing
'Edit Record'

Edit Record Option on Bibliographic Record
|image660|

The record will open in the MARC editor

Editing MARC Record
|image661|

The alternative is to search via Z39.50 to overlay your record with a
fuller record found at another library. You can do this by choosing
'Replace Record via Z39.50' from the Edit menu.

Replace via Z39.50
|image662|

Once you choose that you will be brought to a Z39.50 search window to
search other libraries for the record in question.

Once you have made your edits (via either method) you can click 'Save'
at the top left of the editor.

You can also use the edit menu to add your own custom cover image if you
have either `OPACLocalCoverImages <#OPACLocalCoverImages>`__ and/or
`LocalCoverImages <#LocalCoverImages>`__ set to 'Display' by choosing
'Upload Image' from the menu.

Upload Image
|image663|

Choosing to 'Upload Image' will take you to the `Upload Local Cover
Image Tool <#uploadlocalimages>`__.

`Duplicating Records <#dupbibrec>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Sometimes a copy of the record you need to catalog can't be found via
Z39.50. In these cases you can create a duplicate of similar record and
edit the necessary pieces to create a new record. To duplicate an
existing record click 'Edit as New (Duplicate)' from the Edit menu on
the Bibliographic Record

Edit as New (Duplicate) Bibliographic Record
|image664|

This will open a new MARC record with the fields filled in with the
values from the original Bibliographic Record.

New Duplicate Record
|image665|

`Attaching files to Records <#uploadbibfile>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you would like to upload files to Koha you can do so with a few
settings.

-  You will need to ask your system administrator to set the
   'upload\_path' config variable to point to where the files will be
   stored

   -  You can see if your upload path is set correctly by visiting About
      Koha > System Information. If there is an error you will see it
      there.Upload Path Warning

-  You will want to be sure that your `OPACBaseURL <#OPACBaseURL>`__
   system preference is set appropriately

-  You will want to add the upload.pl plugin to the 856$u subfield in
   one (or multiple) of your `frameworks <#editsubfields>`__

Once you are all set up you can continue with cataloging as regular. You
will see a plugin icon next to the 856$u that will open up the upload
and/or search windowUpload file to record

From this menu you can click browse to find a file and attach it, or you
can search files you have uploaded previously using the search box. From
the search results you can choose which file to attach.Uploaded files

Once the file is chosen it will appear as a link in the MARC record and
on the detail display.

`Merging Records <#mergebibs>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To merge bibliographic records together you will want to go to the
Cataloging module and perform a search.

If you see duplicates on that search results screen you can check the
boxes next to the duplicates and click the 'Merge selected' button at
the top of the results.

Once you have selected the records you want to merge, click the 'Merge
selected' button at the top of the list. You will be asked which of the
records you would like to keep as your primary record and which will be
deleted after the merge. If the records were created using different
frameworks, Koha will also ask you what Framework you would like the
newly merged record to use.

Choose Primary Record for Merge
|image666|

You will be presented with the MARC for all of the records (each
accessible by tabs labeled with the bib numbers for those records). By
default the entire first record will be selected, uncheck the fields you
don't want in the final (destination) record and then move on to the
second tab to choose which fields should be in the final (destination)
record.

Merging Records
|image667|

Should you try to add a field that is not repeatable two times (like
choosing the 245 field from both record #1 and #2) you will be presented
with an error

Non-repeatable Error
|image668|

Below the records you are merging is an option to enter fields to report
on. This will allow you to control what fields you see on the merge
confirmation page:

Merge report fields
|image669|

If you enter nothing you will be presented with a confirmation of
biblionumbers only

Merge report
|image670|

If you enter fields you will see those on the confirmation page (you can
set defaults with the `MergeReportFields <#MergeReportFields>`__
preference)

Merge report
|image671|

Once you have completed your selections click the 'merge' button. The
primary record will now CONTAIN the data you chose for it as well as all
of the items/holdings from both bib records, and the second record will
be deleted.

    **Important**

    It is important to rebuild your zebra index immediately after
    merging records. If a search is performed for a record which has
    been deleted Koha will present the patrons with an error in the
    OPAC.

    **Note**

    If you would like you can also use the `Lists <#lists>`__ tool for
    merging records together. `Learn more here <#mergebibrecs>`__.

`Deleting Records <#deleterecord>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To delete a bibliographic record simply choose the 'Edit' button and
select 'Delete record'

Delete record
|image672|

Bibliographic records can only be deleted one all items have been
deleted. If you try to delete a bibliographic record with items still
attached you will see that the delete option is grayed out.

Record with items still attached
|image673|

`Item Records <#catitems>`__
----------------------------

In Koha each bibliographic record can have one or more items attached.
These items are sometimes referred to as holdings. Each item includes
information to the physical copy the library has.

`Adding Items <#addingitems>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

After saving a new bibliographic record, you will be redirected to a
blank item record so that you can attach an item to the bibliographic
record. You can also click 'Add/Edit Items' from the cataloging search
results

Add/Edit Items Option on Search Results
|image674|

or you can add new item at any time by clicking 'New' on the
bibliographic record and choosing 'New Item'

New Item Button
|image675|

The item edit form will appear:

Add item form
|image676|

At the very least, if you plan on circulating the item, the following
fields should be entered for new items:

-  2 - Source of classification

-  a - Permanent location

-  b - Current location

-  o - Full call number

   -  If you'd like you can use the `call number browser
      plugin <#cnbrowseplugin>`__ for this field. If it's enabled you'll
      see a ... to the right of the field. When clicked that will open a
      call number browser window if the row is highlighted in Red then
      the call number is in use, if there is a thin Green line instead
      then the call number can be used.Call number browser

-  p - Barcode

-  v - Cost, replacement price

   -  This value will be charged to patrons when you mark an item they
      have checked out as 'Lost'

-  y - Koha item type

To make sure that these values are filled in you can mark them as
mandatory in the `framework <#marcbibframeworks>`__ you're using and
then they will appear in red with a 'required' label. The item will not
save until the required fields are filled in.

Required Item Subfield
|image677|

-  **Note**

       To make item subfields required in a framework you'll want to
       edit the 952 field in the `framework
       editor <#marcbibframeworks>`__.

Below the add form there are 3 buttons for adding the item

Add Item Buttons
|image678|

-  Add Item will add just the one item

-  Add & Duplicate will add the item and fill in a new form with the
   same values for your to alter

-  Add Multiple items will ask how many items and will then add that
   number of items adding +1 to the barcode so each barcode is unique

Your added items will appear above the add form once submitted

Items
|image679|

Your items will also appear below the bibliographic details on the bib
record display.

List of Items on the Bib Record
|image680|

If you have
`SpineLabelShowPrintOnBibDetails <#SpineLabelShowPrintOnBibDetails>`__
set to 'Display' then there will also be a link to print a quick spine
label next to each item.

List of Items on the Bib Record with a Print Label link
|image681|

You can also filter the contents of your holdings table by clicking the
'Activate filters' links. This will show a row at the top where you can
type in any column to filter the results in the table.

Filter holdings
|image682|

`Editing Items <#editingitems>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Items can be edited in several ways.

-  Clicking 'Edit' and 'Edit Items' from the bibliographic record

   Edit Items Menu Option
   |image683|

   Which will open up a list of items where you can click the 'Actions'
   button to the left of the specific item you would like to edit and
   choose 'Edit'.

   Edit individual items
   |image684|

-  Clicking 'Edit Items' beside the item on the 'Items' tab

   Items Tab
   |image685|

   Which will open up the editor on the item you'd like to edit

   Edit individual items
   |image686|

-  Clicking 'Edit' and then 'Edit items in batch'

   Edit items in a batch
   |image687|

   This will open up the `batch item modification
   tool <#batchmodifyitems>`__ where you can edit all of the items on
   this record as a batch.

-  You can also enable
   `StaffDetailItemSelection <#StaffDetailItemSelection>`__ to have
   checkboxes appear to the left of each item on the detail display. You
   can then check off the items you would like to edit and click 'Modify
   selected items' at the top of the list.

   Editing selected items
   |image688|

-  You can click 'Edit' to the right of each item in the Holdings
   tabEdit individual items

-  There is also a link to Edit items from the search results in the
   staff clientEdit item on the search results

-  Finally you can use the `Batch Item
   Modification <#batchmodifyitems>`__ tool

`Quick Item Status Updates <#itemquickedit>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Often circulation staff need to change the status of an item to Lost or
Damaged. This doesn't require you to edit the entire item record.
Instead clicking on the item barcode on the checkout summary or checkin
history will bring you to an item summary. You can also get to the item
summary by clicking on the Items tab to the left of the bib detail page.

Item Edit
|image689|

From this view you can mark an item lost by choosing a lost status from
the pull down and clicking the 'Set Status' button.

Edit Lost Status
|image690|

You can also mark an item as damaged by choosing a damaged status from
the pull down and clicking the 'Set Status' button.

Edit Damaged Status
|image691|

`Duplicating Items <#duplicateitem>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You can easily duplicate each item by clicking the 'Action' button the
left of each item on the edit items screen

Edit individual items
|image692|

From here you can choose to 'Duplicate' the item and this will populate
the form with the values from the item you chose.

`Item Information <#iteminfo>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To the left of every bibliographic record there is a tab to view the
items.

Items Tab
|image693|

Clicking that tab will give you basic information about the items. From
here you can see basic information about the item such as the home
library, item type, collection code, call number and replacement price.
You can also see and edit the status information. If an item is marked
lost or withdrawn you will also see the date that status was applied.

In the History section you will see information about the check out
history of the item and if you ordered the item via the acquisitions
module then this section will include information about the order.

History with order info
|image694|

If the Order or Accession date is linked, clicking it will bring you to
the acquisitions information for that item.

`Moving Items <#moveitemrec>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Items can be moved from one bibliographic record to another using the
Attach Item option

Attach Item Option
|image695|

Visit the bibliographic record you want to attach the item to and choose
'Attach Item' from the 'Edit' menu.

Attach Item Form
|image696|

Simply enter the barcode for the item you want to move and click
'Select'

If you want to move all items to a new record creating only one
bibliographic record you can use the `Merge Records
tool <#mergebibrecs>`__ instead.

`Deleting Items <#deleteitems>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There are many ways to delete item records. If you only need to delete
one item you can do this by opening up the detail page for the bib
record and clicking the 'Edit' button at the top. From there you can
choose to 'Edit items'.

'Edit Items' menu option
|image697|

You will be presented with a list of items and next to each one will be
a link labeled 'Delete'. Click that link and if the item is not checked
out it will delete that item.

Delete link on the left
|image698|

If you know that all of the items attached to your record are not
currently checked out you can use the 'Delete all items' option under
the 'Edit menu' and it will remove all items from the record.

You can also enable
`StaffDetailItemSelection <#StaffDetailItemSelection>`__ to have
checkboxes appear to the left of each item on the detail display. You
can then check off the items you would like to delete and click 'Delete
selected items' at the top of the list.

Deleting selected items
|image699|

Finally you can use the `batch delete tool <#batchdeleteitems>`__ to
delete a batch of items.

`Item Specific Circulation History <#itemcirchistory>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Each bibliographic record keeps a circulation history (with or without
the patron information depending on your settings), but each item also
has its own circulation history page. To see this, click on the 'Items'
tab to the left of the record you are viewing.

Items tab
|image700|

Below the 'History' heading is a link to 'View item's checkout history,'
clicking that will open up the item's history which will look slightly
different from the bibliographic record's history page.

Item Specific Circulation History
|image701|

`Authorities <#catauthorities>`__
---------------------------------

Authority records are a way of controlling fields in your MARC records.
Using authority records will provide you with control over subject
headings, personal names and places.

`Adding Authorities <#addauthorities>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To add a new authority record you can either choose the authority type
from the 'New Authority' button or search another library by clicking
the 'New from Z39.50' button.

New Authority Record Options
|image702|

If you choose to enter a new authority from scratch, the form that
appears will allow you to enter all of the necessary details regarding
your authority record.

New Authority Record
|image703|

To expand collapsed values simply click on the title and the subfields
will appear. To duplicate a field or subfield just click the plus sign
(+) to the right of the label. To use field helper plugins simply click
the ellipsis (...) to the right of the field.

When linking authorities to other headings, you can use the authority
finder plugin by clicking the ellipsis (...) to the right of the field.

Authority search plugin
|image704|

From there you can search your authority file for the authority to link.
If you can't find the authority to link, you can click the 'Create new'
button and add the necessary authority for the link. This plugin also
allows for you to choose the link relationship between the authorities.

Authority relationships
|image705|

If you choose to search another library for the authority record you
will be presented with a search box

Authority Z39.50 Search
|image706|

From the results you can choose the 'Import' link to the right of the
record you would like to add to Koha

Authority Z39.50 Results
|image707|

You will then be presented with the form to edit the authority before
saving it to your system

Imported Authority
|image708|

`Searching Authorities <#searchauthorities>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

From the authorities page you can search for existing terms and the
bibliographic records they are attached to.

Authority Search
|image709|

From the results you will see the authority record, how many
bibliographic records it is attached to, an 'Actions' menu that includes
the ability to `edit <#editauthorities>`__, `merge <#authoritymerge>`__
and `delete <#editauthorities>`__ (if there are no bibliographic records
attached).

Authority Search Results
|image710|

Clicking on the Details link to the right of the authority record
summary will open the full record and the option to edit the record.

Authority Record
|image711|

If the authority has See Alsos in it you will see those broken out on
the search results, clicking the linked headings will run a search for
that heading instead.

See Also in Authorities
|image712|

`Editing Authorities <#editauthorities>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Authorities can be edited by clicking on the authority summary from the
search results and then clicking the 'Edit' button above the record. Or
by clicking on the 'Edit' link to the left of the authority on the
search results.

Edit Authority Record
|image713|

Once you've made the necessary edits, simply click 'Save' and
`dontmerge <#dontmerge>`__ is set to 'Do', Koha will immediately update
all of the bib records linked to the authority with the new authority
record's data. If dontmerge is set to "Don't" then Koha won't edit bib
records when changes are made to authorities, rather, this is done later
by the `merge\_authority.pl cronjob <#mergeauthcron>`__.

To delete an authority record you first must make sure it's not linked
to any bibliographic records. If it is not used by any bibliographic
records a 'Delete' link will appear to the right of the record on the
search results and as a button that appears after clicking on the
summary of the authority record.

`Merging Authorities <#authoritymerge>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you have duplicate authority records you can merge them together by
clicking the 'Merge' link, found in the actions menu, next to two
results on an authority search.

Duplicate authorities results
|image714|

After clicking 'Merge' on the first result you will see that authority
listed at the top of the results.

Merging authorities results
|image715|

Next you need to click 'Merge' next to the second result you'd like to
merge.

You will be asked which of the two records you would like to keep as
your primary record and which will be deleted after the merge.

Merging authorities
|image716|

You will be presented with the MARC for both of the records (each
accessible by tabs labeled with the authority numbers for those
records). By default the entire first record will be selected, uncheck
the fields you don't want in the final (destination) record and then
move on to the second tab to choose which fields should be in the final
(destination) record.

Authorities to merge
|image717|

Once you have completed your selections click the 'Merge' button. The
primary record will now contain the data you chose for it and the second
record will be deleted.

Merged authority
|image718|

`Cataloging Guides <#catguides>`__
----------------------------------

`Bibliographic Record Cataloging Cheat Sheet <#bibcatcheatsheet>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Tag   | Label                               | Description                                                                                                                                          | Instructions                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
+=======+=====================================+======================================================================================================================================================+===================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================+
| 000   | LEADER                              | Describes the record(i.e. surrogate) -- is it a record for a monograph? A serial?                                                                    | Click in this field to fill it in. Then set "Bibliographic level" to 'a' for articles or 's' for serials. Otherwise, leave everything as is.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 001   | CONTROL NUMBER                      | Accession number.                                                                                                                                    | Enter the accession number written inside the item here. For articles and items which do not have accession numbers, leave blank.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 003   | CONTROL NUMBER IDENTIFIER           | Your MARC Organizational Code                                                                                                                        | Click in this field to fill it in (will auto fill if you have your `MARCOrgCode <#MARCOrgCode>`__ preference set).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 005   | D & T LATEST TRANSACTION            | Current date and time.                                                                                                                               | Click in this field to fill it in.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 008   | FIXED-LENGTH DATA ELEMENTS          | Field containing computer-readable representations of a number of things.                                                                            | Generally you will only use 's' (single) or 'm' (multiple) options for position 06- use the former when the item was published in a single year, the latter when it was published over the course of several. If there is a single date, only enter a date in the first date field (positions 07-10). Enter the three-digit country code in positions 15-17, being sure to add spaces if the country code is fewer than three characters long. If there is an index, note that fact in position 31. Enter the three-letter language code in positions 35-37.                                                                                                                                                                                                                                                                                                                                                                                                                                      |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 010   | LCCN                                | A number assigned by the Library of Congress to uniquely identify the work.                                                                          | Check on the copyright page of the book (if it was published in the US) or the LC catalog for this number. If you can't find it, don't worry about it.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 020   | ISBN                                | Unique number used by publishers to identify books.                                                                                                  | If this number isn't listed on the book, there probably isn't one.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 022   | ISSN                                | Unique number used by publishers to identify serials.                                                                                                | If this number isn't listed on the book, there probably isn't one.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 033   | DATE/TIME OF EVENT                  | Used for auction dates. Required for auction catalogs.                                                                                               | For auctions that took place on only one day, enter the date of the auction in the format YYYYMMDD in the subfield 'a' and a '0' in the first indicator. For auctions that took place over two consecutive days or any number of non-consecutive days, create a subfield 'a' for each day with the date in the format YYYYMMDD, and put a '1' in the first indicator. For auctions that took place over more than two consecutive days, create a subfield 'a' (in format YYYYMMDD) for the first day and a subfield 'a' (also in format YYYYMMDD) for the last day, and put a '2' in the first indicator.                                                                                                                                                                                                                                                                                                                                                                                         |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 040   | CATALOGING SOURCE                   | Identifies which libraries created and modified the record.                                                                                          | For imported records, add a subfield 'd' with your OCLC code as the value. For new records, make sure that the subfield 'c' with your OCLC code as the value.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 041   | LANGUAGE CODE                       | Identifies all the languages used in an item, when two or more languages are present.                                                                | For significant portions of a text in a given language, there should be a subfield 'a' with that language code. If there are only summaries or abstracts in a specific language, create a subfield 'b' with that language code.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 100   | MAIN ENTRY--PERSONAL                | Authorized form of the main author's name                                                                                                            | See Authorized headings sheet and AACR2. The first indicator should generally be a '1', to indicate that the entry is surname first. If the name consists only of a forename, however, the first indicator should be '0'.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 110   | MAIN ENTRY--CORPORATE               | Authorized form of the name of the main corporate author. Required for auction catalogs.                                                             | Auction catalogs should use a 110 field rather than a 100 field. See Authorized headings sheet and AACR2. Set the first indicator to '2'.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 111   | MAIN ENTRY--MEETING                 | Authorized form of the name of a meeting which acted as a main offer (e.g. conference proceedings)                                                   | See Authorized headings sheet and AACR2. Set the first indicator to '2'.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 245   | TITLE STATEMENT                     | Transcription of the title statement from the title page (or chief source of information)                                                            | Enter the title in subfield 'a', the subtitle in subfield 'b', and the statement of responsibility in subfield 'c'. If you are creating a record for a single volume or part of a multi-part item, you should put the part number in subfield 'n' and the part title in subfield 'p.' For auction catalogs, the date (in 'MM/DD/YYYY' format) should be listed in square brackets in subfield 'f'. See ISBD punctuation sheet. Set the first indicator to '0' if there is no author, otherwise set it to '1'. Set the second indicator to the number of non-filing characters (i.e. characters in an initial articles plus the space... for "The " set the second indicator to '4').                                                                                                                                                                                                                                                                                                              |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 246   | VARYING FORM OF TITLE               | Alternate form of title for searching and filing purposes                                                                                            | If the patron might look for the work under a different title, enter it here. Do not include initial articles. The first indicator should be '3', unless the title is merely a variant spelling, in which case the first indicator should be '1'.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 250   | EDITION STATEMENT                   | Transcription of the edition statement from the title page (or chief source of information)                                                          | Transcribe the edition statement exactly as it appears on the title-page. You may abbreviate if the edition statement is very long.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 260   | PUBLICATION (IMPRINT)               | Publication information.                                                                                                                             | Put the location of publication in subfield 'a', the publisher in subfield 'b', and the year (or probable year) in subfield 'c'. See ISBD punctuation sheet.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 300   | PHYSICAL DESCRIPTION                | Physical description                                                                                                                                 | Enter the pagination statement in subfield 'a', a brief description of "special" contents such as illustrations or maps in subfield 'b' (see AACR2), and the size of the item in subfield 'c'. See ISBD punctuation sheet.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 490   | SERIES STATEMENT                    | Shows the series statement exactly as it appears on the item.                                                                                        | Transcribe the series statement into subfield 'a' with the volume number in subfield 'v'. See ISBD punctuation sheet. Set the first indicator to '1' if you are using an 830. As a general rule, you should do so.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 500   | GENERAL NOTE                        | Notes that don't fit anywhere else.                                                                                                                  | Enter notes as full sentences, with a separate 500 field for each distinct topic.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 501   | WITH NOTE                           | Notes whether the work is bound with the works described by other records.                                                                           | Put description of relationship in subfield 'a'.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 504   | BIBLIOGRAPHY, ETC. NOTE             | Indicates whether the work includes a bibliography.                                                                                                  | If the work includes a bibliography and index, put the text "Includes bibliographical references (p. XXX-XXX) and index." in subfield 'a'. If the work does not include an index, remove that part of the sentence. If the references are scattered throughout the work and not gathered into a distinct sentence, remove the parenthetical statement.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 505   | FORMATTED CONTENTS                  | List of contents in a standard format. Unformatted contents can be listed in a 500 (General Note) field.                                             | See ISBD punctuation sheet. Set the first indicator to '0'. If you are separately coding authors and titles, set the second indicator to '0'. Otherwise, leave the second indicator blank.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 518   | DATE/TIME OF EVENT NOTE             | Used for auction dates.                                                                                                                              | For auction catalogs, enter the date of the auction in the format 'January 2, 1984' in the subfield 'a'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 520   | SUMMARY, ETC.                       | A brief summary or abstract of the book or article.                                                                                                  | In general you do not need to write a summary. A summary might be called for, however, with items that cannot be easily reviewed by a patron, such as books with highly acidic paper or CD-ROMs.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 546   | LANGUAGE NOTE                       | Note describing the languages used in the work                                                                                                       | Only needed for works in multiple languages. See ISBD punctuation sheet.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 561   | PROVENANCE INFORMATION              | Describes the previous ownership of the item.                                                                                                        | Used only for rare books.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 563   | BINDING INFORMATION                 | Describes the binding of the item.                                                                                                                   | Used only for rare books.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 590   | LOCAL NOTE                          | Local notes. Required for auction catalogs.                                                                                                          | Used for auction catalogs to indicate what types of coins are sold in the auction- Roman, Greek, etc.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 600   | SUBJECT ADDED--PERSONAL             | Authorized form of personal names for people discussed in the work                                                                                   | See Authorized headings sheet and AACR2. The first indicator should generally be a '1', to indicate that the entry is surname first. If the name consists only of a forename, however, the first indicator should be '0'. If you found the name in the LC authority file, set the second indicator to '0'. Otherwise set the second indicator to '4'.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 610   | SUBJECT ADDED--CORPORATE            | Authorized form of corporate names for organizations discussed in the work                                                                           | See Authorized headings sheet and AACR2. Set the first indicator to '2'. If you found the name in the LC authority file, set the second indicator to '0'. Otherwise set the second indicator to '4'.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 611   | SUBJECT ADDED--MEETING              | Authorized form of meeting names for meetings discussed in the work                                                                                  | See Authorized headings sheet and AACR2. Set the first indicator to '2'. If you found the name in the LC authority file, set the second indicator to '0'. Otherwise set the second indicator to '4'.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 630   | SUBJECT ADDED--UNIFORM TITLE        | Authorized form of titles for other works discussed in the work                                                                                      | See Authorized headings sheet and AACR2. Set the first indicator to the number of non-filing characters (i.e. characters in an initial articles plus the space... for "The " set the first indicator to '4'). If you found the name in the LC authority file, set the second indicator to '0'. Otherwise set the second indicator to '4'.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 650   | SUBJECT ADDED--TOPICAL              | Library of Congress Subject Heading terms describing the subject of the work                                                                         | See Authorized headings sheet and AACR2. If you found the name in the LC authority file, set the second indicator to '0'. Otherwise set the second indicator to '4'.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 651   | SUBJECT ADDED--GEOGRAPHICAL         | Library of Congress Subject Heading geographical terms describing the subject of the work                                                            | See Authorized headings sheet and AACR2. If you found the name in the LC authority file, set the second indicator to '0'. Otherwise set the second indicator to '4'.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 655   | INDEX TERM--GENRE/FORM              | Describes what an item is as opposed to what the item is about.                                                                                      | Generally used only for auction catalogs, which should have the genre heading "Auction catalogs." (make sure to find the authorized heading!) If you found the name in the LC authority file, set the second indicator to '0'. If you are using a term from a specific thesaurus, set the second indicator to '7' and put the code for the thesaurus in subfield '2'. Otherwise set the second indicator to '4'.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 690   | LOCAL SUBJECT ADDED--TOPICAL        | Used for headings from any custom subject authority file.                                                                                            | If there is no appropriate LCSH term, you can use a 690 with subject headings you find on other items in the catalog.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 691   | LOCAL SUBJECT ADDED--GEOGRAPHICAL   | Used for headings from any custom subject authority file.                                                                                            | If there is no appropriate LCSH term, you can use a 691 with subject headings you find on other items in the catalog.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 700   | ADDED ENTRY--PERSONAL               | Used for second authors and other persons related to the production of the work.                                                                     | See Authorized headings sheet and AACR2. The first indicator should generally be a '1', to indicate that the entry is surname first. If the name consists only of a forename, however, the first indicator should be '0'.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 710   | ADDED ENTRY--CORPORATE              | Used for corporate bodies related to the production of the work (e.g. publishers).                                                                   | See Authorized headings sheet and AACR2. Set the first indicator to '2'.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 711   | ADDED ENTRY--MEETING                | Used for meetings related to the production of the work (e.g. symposia that contributed to the work).                                                | See Authorized headings sheet and AACR2. Set the first indicator to '2'.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 730   | ADDED ENTRY--UNIFORM TITLE          | Used for uniform titles related to the production of the work (e.g. a work that inspired the present work)                                           | See Authorized headings sheet and AACR2. Set the first indicator to the number of non-filing characters (i.e. characters in an initial articles plus the space... for "The " set the first indicator to '4').                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 773   | HOST ITEM ENTRY                     | Describes the larger bibliographic unit that contains the work (e.g. book or journal containing the article being described in the current record)   | If the host publication is author main entry, enter the authorized form of the author's name in subfield 'a'. Put the title in subfield 't'. If the host publication is an independent work, put publication information in subfield 'd'. When available, ISSN and ISBN should always be used in, in subfields 'x' and 'z' respectively. Relationship information (e.g. volume number, page number, etc.) goes in subfield 'g'. Subfield 'q' contains an encoded representation of the location of the item: volume, issue, and section numbers are separated by colons, and the first page is entered following a '<' at the end of the subfield. See ISBD punctuation sheet. Set the first indicator to '0'. If you want the label "In:" to be generated, leave the second indicator blank. If you want something else displayed before the 773 text, set the second indicator to '8' and add a subfield 'i' with the label you want at the beginning of the field (e.g. "$iOffprint from:").   |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 830   | SERIES ENTRY--UNIFORM TITLE         | Authorized form of the series name transcribed in the 490 field. Often this will just be the same as the 490.                                        | See Authorized headings sheet and AACR2. Set the second indicator to the number of non-filing characters (i.e. characters in an initial articles plus the space... for "The " set the second indicator to '4').                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 852   | LOCATION/CALL NUMBER                | Provides the section name for pre-barcode books, pamphlets, and some articles and serials.                                                           | Do not put anything in this field if you are cataloging a volume which gets only one record and a barcode. If the item does not get a barcode, or you are currently creating a record for an article in a volume, put the section in subfield 'a' (see ANS cataloging documentation), and the call number in subfield 'i'. Set the first indicator to '8'.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 856   | ELECTRONIC ACCESS                   | Links to material available online.                                                                                                                  | Put the URL of any electronic copies or summaries, etc. in subfield 'u' and a link title in subfield 'y'. Set the first indicator to '4'.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 942   | ADDED ENTRY ELEMENTS (KOHA)         | Used for Koha-specific data.                                                                                                                         | Set the subfield 'c' to the appropriate item type.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
+-------+-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Table: Cataloging Guide

`Item/Holdings Record Cataloging Guide <#itemcatguide>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This table represents the default embedded holdings data in Koha. This
information can be used for migration or importing data purposes

+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| MARC21 Tag/subfield   | Data Element                                        | Description                                                                      | Notes                                                                                                                                                                                                                                                                    |
+=======================+=====================================================+==================================================================================+==========================================================================================================================================================================================================================================================================+
| 952$0                 | Withdrawn status                                    | Default values:                                                                  | Coded value, matching `Authorized Value <#authorizedvalues>`__ category ('WITHDRAWN' in default installation)                                                                                                                                                            |
|                       |                                                     |                                                                                  |                                                                                                                                                                                                                                                                          |
|                       |                                                     | -  0 = Not withdrawn                                                             |                                                                                                                                                                                                                                                                          |
|                       |                                                     |                                                                                  |                                                                                                                                                                                                                                                                          |
|                       |                                                     | -  1 = Withdrawn                                                                 |                                                                                                                                                                                                                                                                          |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$1                 | Lost status                                         | Default values:                                                                  | It's possible to configure OPAC so that lost items don't display with the `hidelostitems <#hidelostitems>`__ system preference.                                                                                                                                          |
|                       |                                                     |                                                                                  |                                                                                                                                                                                                                                                                          |
|                       |                                                     | -  0 = Available                                                                 | Coded value, matching `Authorized Value <#authorizedvalues>`__ category ('LOST' in default installation)                                                                                                                                                                 |
|                       |                                                     |                                                                                  |                                                                                                                                                                                                                                                                          |
|                       |                                                     | -  1 = Lost                                                                      |                                                                                                                                                                                                                                                                          |
|                       |                                                     |                                                                                  |                                                                                                                                                                                                                                                                          |
|                       |                                                     | -  2 = Long Overdue (Lost)                                                       |                                                                                                                                                                                                                                                                          |
|                       |                                                     |                                                                                  |                                                                                                                                                                                                                                                                          |
|                       |                                                     | -  3 = Lost and Paid For                                                         |                                                                                                                                                                                                                                                                          |
|                       |                                                     |                                                                                  |                                                                                                                                                                                                                                                                          |
|                       |                                                     | -  4 = Missing in Inventory                                                      |                                                                                                                                                                                                                                                                          |
|                       |                                                     |                                                                                  |                                                                                                                                                                                                                                                                          |
|                       |                                                     | -  5 = Missing in Hold Queue                                                     |                                                                                                                                                                                                                                                                          |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$2                 | Classification                                      | Classification scheme that defines filing rules used for sorting call numbers.   | A choice of `classification sources <#classificationsources>`__ as they are defined in administration. If no classification scheme is entered, the system will use the value entered in the `DefaultClassificationSource <#DefaultClassificationSource>`__ preference.   |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$3                 | Materials specified                                 | Specific issues of serials or multi-part items.                                  | Displayed when items are checked out and in to tell the staff how many pieces the item has. Copy/volume data is stored in 952$h and $t for display in Normal views.                                                                                                      |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$4                 | Damaged status                                      | Default values:                                                                  | Coded value, matching `Authorized Value <#authorizedvalues>`__ category ('DAMAGE' in default installation)                                                                                                                                                               |
|                       |                                                     |                                                                                  |                                                                                                                                                                                                                                                                          |
|                       |                                                     | -  0 = Not damaged                                                               |                                                                                                                                                                                                                                                                          |
|                       |                                                     |                                                                                  |                                                                                                                                                                                                                                                                          |
|                       |                                                     | -  1 = Damaged                                                                   |                                                                                                                                                                                                                                                                          |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$5                 | Use restrictions                                    | Default values:                                                                  | Coded value, matching `Authorized Value <#authorizedvalues>`__ category ('RESTRICT' in default installation). This value has no effect on circulation.                                                                                                                   |
|                       |                                                     |                                                                                  |                                                                                                                                                                                                                                                                          |
|                       |                                                     | -  0 = No use restrictions                                                       |                                                                                                                                                                                                                                                                          |
|                       |                                                     |                                                                                  |                                                                                                                                                                                                                                                                          |
|                       |                                                     | -  1 = Restricted Access                                                         |                                                                                                                                                                                                                                                                          |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$7                 | Not for loan                                        | Default values:                                                                  | Coded value, matching `Authorized Value <#authorizedvalues>`__ category ('NOT\_LOAN' in default installation). Negative number values can still be placed on hold.                                                                                                       |
|                       |                                                     |                                                                                  |                                                                                                                                                                                                                                                                          |
|                       |                                                     | -  -1 = Ordered                                                                  |                                                                                                                                                                                                                                                                          |
|                       |                                                     |                                                                                  |                                                                                                                                                                                                                                                                          |
|                       |                                                     | -  0 = Available for loans                                                       |                                                                                                                                                                                                                                                                          |
|                       |                                                     |                                                                                  |                                                                                                                                                                                                                                                                          |
|                       |                                                     | -  1 = Not for Loan                                                              |                                                                                                                                                                                                                                                                          |
|                       |                                                     |                                                                                  |                                                                                                                                                                                                                                                                          |
|                       |                                                     | -  2 = Staff Collection                                                          |                                                                                                                                                                                                                                                                          |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$8                 | Collection code                                     | Coded value                                                                      | Coded value, matching `Authorized Value <#authorizedvalues>`__ category ('CCODE' in default installation)                                                                                                                                                                |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$9                 | Item number                                         | System-generated item number.                                                    | Does not display in the item record.                                                                                                                                                                                                                                     |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$a                 | Owning Library \*\*                                 | Branch code                                                                      | **Required**. Code must be defined in `Libraries, Branches and Groups <#libsgroups>`__                                                                                                                                                                                   |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$b                 | Holding library \*\* (usually the same as 952$a )   | Branch code                                                                      | **Required**. Code must be defined in `Libraries, Branches and Groups <#libsgroups>`__                                                                                                                                                                                   |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$c                 | Shelving location code                              |                                                                                  | Coded value, matching `Authorized Value <#authorizedvalues>`__ category ('LOC' in default installation)                                                                                                                                                                  |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$d                 | Date acquired                                       | YYYY-MM-DD                                                                       | Date formats in the 952 subfields are required to be in the system internal format for data loading and subsequent item editing: YYYY-MM-DD                                                                                                                              |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$e                 | Source of acquisition                               | Coded value or vendor string                                                     | Filled in automatically with the Koha assigned vendor id by Acquisitions when an item is received.                                                                                                                                                                       |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$g                 | Purchase price                                      | Decimal number, no currency symbol (ex. 10.00)                                   | Filled in automatically by Acquisitions when an item is received.                                                                                                                                                                                                        |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$h                 | Serial enumeration                                  |                                                                                  | Filled in automatically by Serials if the issue is received there.                                                                                                                                                                                                       |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$o                 | Koha full call number                               |                                                                                  | Can be filled in automatically based on the `itemcallnumber <#itemcallnumber>`__ system preference.                                                                                                                                                                      |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$p                 | Barcode \*                                          | Max 20 characters                                                                |                                                                                                                                                                                                                                                                          |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$t                 | Copy number                                         | Max 32 characters                                                                |                                                                                                                                                                                                                                                                          |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$u                 | Uniform Resource Identifier                         | Item specific URL                                                                | Full URL starting with http:// Only needed if your item has its own URL, not necessary if the bib record has a 856$u that applies to all items on the record.                                                                                                            |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$v                 | Replacement price                                   | Decimal number, no currency symbol (ex. 10.00)                                   | Filled in automatically by Acquisitions when an item is received.                                                                                                                                                                                                        |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$w                 | Price effective from                                | YYYY-MM-DD                                                                       | Date formats in the 952 subfields are required to be in the system internal format for data loading and subsequent item editing: YYYY-MM-DD. Filled in automatically by Acquisitions when an item is received.                                                           |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$x                 | Nonpublic note                                      |                                                                                  | This is a note field for notes that will not appear in the OPAC. Right now this note does not appear anywhere but in the item edit screen in the staff client.                                                                                                           |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$y                 | Koha item type \*\*                                 | Coded value, required field for circulation                                      | **Required**. Coded value, must be defined in `Item types <#itemtypeadmin>`__                                                                                                                                                                                            |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$z                 | Public note                                         |                                                                                  |                                                                                                                                                                                                                                                                          |
+-----------------------+-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Table: Koha Embedded Holdings Data

\* - required for circulation

\*\* - required by Koha

`Handling On Order Items and Holds <#onorderitemholds>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you tend to import your MARC records when you have ordered the book
(as opposed to when you receive the books), and allow patrons to place
holds on those books, you may need to add item records to the \*.mrc
file before importing.

The easiest way to import your latest order is to first run your records
through `MARCEdit <http://marcedit.reeset.net/>`__. Download your MARC
records, saving them to your desktop or some other location you use/will
remember. If you have MARCEdit already installed you should simply have
to double click on your MARC records, and they will automatically open
in MARCEdit.

    **Important**

    This tutorial was written with MARCEdit version 5.2.3769.41641 on
    Windows XP, instructions may be different if your version or
    operating system is different.

-  Your original file will automatically be in the input; ensure
   MarcBreaker is chosen, and then click "Execute"

   MarcBreaker
   |image719|

-  You will be presented with a summary of the records processed at the
   bottom of the screen

   MarcBreaker Summary
   |image720|

-  Click 'Edit Records' to continue on to adding item records

-  Your screen will be replaced with a larger screen containing the MARC
   records

   MARC file for editing
   |image721|

-  Click on Tools > Add/Edit Field

   Add/Delete Field
   |image722|

-  Enter in the Koha specific item info

   Add 942 Field
   |image723|

   -  In the Field box, type 942

   -  In the Field Data box, type \\\\$c and the item type code
      (\\\\$cBOOK in this example)

   -  Check the 'Insert last' option

   -  Click 'Add Field'

-  Enter in the item record data

   Add 952 Field
   |image724|

   -  In the Field box, type 952

   -  In the Field Data box, type
      $7ORDERED\_STATUS$aPERM\_LOC$bCURR\_LOC$cSHELVING\_LOCATION$eSOURCE\_OF\_ACQ$yITEM\_TYPE

      -  ex. $7-1$aCPL$bCPL$cNEW$eBrodart$yBOOK

         -  In a default install of Koha -1 is the value for the Ordered
            status

      -  You may want to look at other subfields you would like data in
         -- for example, changing the collection code to put all the
         items in the same collection (8), automatically fill in the
         acquisition date (d), or put in a public note (z).

      -  Be sure you use the $ to separate subfields; adding each
         subfield on a separate line will cause that many items to be
         imported with your MARC record (in the example above, four
         items, each with one of those subfields corrected)

      -  Make sure you look at the Administration > Authorized Values in
         Koha to put the correct code into the field

   -  Check the 'Insert last' option

   -  Click 'Add Field'

-  Close the field editor window

-  Click on File > Compile into MARC

   Compile into MARC
   |image725|

-  Choose where to save your file

Now you want to go into your Koha system and follow the instructions for
`importing MARC records <#stagemarc>`__.

Once the item has come in, you will need to go to the item record and
individually change the item to have the correct barcode, and manually
change the status from Ordered to the blank line in the Not for Loan
field.

    **Note**

    If you purchase your cataloged item records, you may want to request
    your vendor put in the information you need into the MARC records
    for you; that way, you could import the edited-by-the-vendor file,
    overwriting the current record, automatically replacing the data
    with what you need.
