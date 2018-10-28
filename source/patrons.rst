.. include:: images.rst

Patrons
=======

Before importing and/or adding patrons be sure to set up your :ref:`patron
categories <patron-categories-label>`.

.. _add-a-new-patron-label:

Add a new patron
------------------------------------

Patrons are added by going to the 'Patrons' module.

-  *Get there:* Patrons

Once there you can add a new patron.

-  Click 'New patron'

   |image407|

-  The fields that appear on the patron add form can be controlled by
   editing the :ref:`BorrowerUnwantedField` system
   preference.

-  First enter the identifying information regarding your patron

   |image408|

   -  Required fields are defined in the
      :ref:`BorrowerMandatoryField` system
      preference

   -  Salutation is populated by the
      :ref:`BorrowersTitles` system preference

   -  **Note**

          If you'd like to prevent full names from printing on
          :ref:`slips <notices-&-slips-label>` and you're not using the Initials or
          Other name fields for anything else, you can use them for
          shortened versions of the name to then be printed on the slip.

          For example:

          ::

              Firstname: Nicole C.
              Surname: Engard
              Initials: NCE

          Then on the slip you can have it print the
          <<borrowers.initials>> instead of the full name (NCE).

          Or you could do something like this:

          ::

              Firstname: Nicole
              Surname: Engard
              Initials: E

          Then on the slip you can have it print the
          <<borrowers.initials>>, <<borrowers.firstname>> instead of the
          full name (E, Nicole).

-  Next enter the contact information

   |image409|

   -  For contact information, note that the primary phone and email
      addresses are the ones that appear on notices and slips printed
      during circulation (receipts, transfer slips and hold slips). The
      primary email is also the one that overdue notices and other
      messages go to.

-  If this patron is a child, you will be asked to attach the child
   patron to an adult patron

   |image410|

   -  Click 'Set to patron' to search your system for an existing patron

   -  If the Guarantor is not in the system, you can enter the first and
      last name in the fields available

   -  The relationships are set using the
      :ref:`borrowerRelationship` system preference

-  If this patron is a professional, you will be asked to attach the
   patron to an organizational patron

   |image411|

   -  Click 'Set to patron' to search your system for an existing patron

-  Each patron can have an alternate contact

   |image412|

   -  An alternate contact could be a parent or guardian. It can also be
      used in academic settings to store the patron's home address.

-  The library management section includes values that are used within
   the library

   |image413|

   -  The card number field is automatically calculated if you have the
      :ref:`autoMemberNum` system preference set that way

      -  **Note**

             For a newly installed system this preference will start at
             1 and increment by 1 each time after. To have it start with
             the starting number of your barcodes, enter the first
             barcode by hand in the patron record and save the patron.
             After that the field will increment that number by 1.

   -  If you accidentally chose the wrong patron category at the
      beginning you can fix that here

   -  Sort 1 and 2 are used for statistical purposes within your library
      
   -  'Check for previous checkouts' is used to set the patron's personal preference 
      regarding checking their circulation history to see if they have borrowed this 
      item in the past. This overrides the setting of the :ref:`patron category 
      <adding-a-patron-category>` and of the :ref:`CheckPrevCheckout` system preference.

-  Next, the library set-up section includes additional library settings

   |image414|

   -  The registration date will automatically be filled in with today's
      date

   -  If your patron cards expire (based on your :ref:`patron category
      settings <patron-categories-label>`) the expiry date will automatically be
      calculated

   -  The OPAC note is a note for the patron - it will appear in the
      OPAC on the patron's record

   -  The Circulation note is meant solely for your library staff and
      will appear when the circulation staff goes to check an item out
      to the patron

      |image415|

   -  The Staff/OPAC asks for the username and password to be used by
      the patron (and/or staff member) to log into their account in the
      OPAC and for staff to log in to the staff client.

      -  Staff will only be able to use this log in info to log in to
         the staff client if they have the :ref:`necessary
         permissions <patron-permissions-label>`.

-  If you have set :ref:`additional patron
   attributes <patron-attribute-types-label>` up, these will appear next

   |image416|

-  Finally, if you have
   :ref:`EnhancedMessagingPreferences` set
   to 'allow,' you can choose the messaging preferences for this patron.

   |image417|

   -  These notices are:

      -  Advanced notice: A notice in advance of the patron's items
         being due (the patron can choose the number of days in advance)

      -  Item checkout: A notice that lists all the of the items the
         patron has just checked out and/or renewed, this is an
         electronic form of the checkout receipt

      -  Hold filled: A notice when you have confirmed the hold is
         waiting for the patron

      -  Item due: A notice on the day and item is due back at the
         library

      -  Item check-in: A notice that lists all the of the items the
         patron has just checked in

   -  Patrons can choose to receive their notices as a digest by
      checking the 'Digest only?' box along with the delivery method. A
      digest is a combination of all the messages of that type (so all
      items due in 3 days in one email) in to one email instead of
      multiple emails for each alert.

   -  **Important**

          These preferences will override any you set via the :ref:`patron
          categories <adding-a-patron-category-label>`

   -  **Important**

          These preference can be altered by the patron via the OPAC

-  Once finished, click 'Save'

If the system suspects this patron is a duplicate of another it will
warn you.

|image418|

    **Note**

    A duplicate patron is detected if first and last names match and
    there is no date of birth populated or if first name, last name and
    date of birth fields are all populated. If two patrons have matching
    names, but one has a date of birth and the other does not they will
    not match as duplicates.

If you have set a minimum or upper age limit on the patron category and
are requiring that the birth date be filled in, Koha will warn you if
the patron you're adding is too old or young for the patron category you
have selected:

|image419|

.. _quick-add-patron-label:

Quick add a patron
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If your circulation desk is very busy and you want to register patron quickly, 
you can use the 'quick add' feature. It's a shortened version of the add 
patron form with only a couple of necessary fields to fill out.

This feature uses two system preferences: :ref:`BorrowerMandatoryField` 
and :ref:`PatronQuickAddFields`. These are the two system preferences that
control which fields are in the quick add form.

To quick add a patron, go to the Patrons module

-  *Get there:* Patrons

Click on the 'Quick add new patron' button.

You will be asked to choose a patron category.

Then, you will be presented with a shortened form.

|image1346|

Once the form is filled out, click on 'Save'.

If you need to access the full form, you can click on 'Show full form' 
above the 'Save' button.


.. _add-a-staff-patron-label:

Add a staff patron
----------------------------------------

All staff members must be entered into Koha as patrons of the 'Staff'
type. Follow the steps in :ref:`Add a Patron <add-a-new-patron-label>` to add a
staff member. To give the staff member permissions to access the staff
client, follow the steps in :ref:`patron permissions <patron-permissions-label>`

    **Important**

    Remember to assign your staff secure usernames and passwords since
    these will be used to log into the staff client.

.. _add-a-statistical-patron-label:

Add a statistical patron
----------------------------------------------

One way to track use of in house items is to "check out" the materials
to a statistical patron. The "check out" process doesn’t check the book
out, but instead tracks an in house use of the item. To use this method
for tracking in house use you first will need a :ref:`patron
category <patron-categories-label>` set up for your statistical patron.

|image420|

Next, you will need to create a new patron of the statistical type.

|image421|

Next, follow the steps put forth in the ':ref:`Add a new
patron <add-a-new-patron-label>`' section of this manual. Since this patron is
not a real person, simply fill in the required fields, the correct
library and nothing else.

To learn about other methods of tracking in house use visit the
:ref:`tracking inhouse use <tracking-in-house-use-label>` section of this manual.

.. _duplicate-a-patron-label:

Duplicate a patron
-----------------------------------------

Sometimes when you're adding a new family to your system you don't want
to type the contact information over and over. Koha allows for you to
duplicate a patron and change only the parts you want to (or need to)
change.

-  Open the patron you want to use as your base (the patron you want to
   duplicate information from)

-  Click the 'Duplicate' button at the top of their record

   |image422|

-  All of the fields with the exception of first name, card number,
   username and password have been duplicated. Fill in the missing
   pieces and click 'Save'

   |image423|

   -  **Note**

          Clicking in a field that is already populated with data will
          clear that field of all information (making it easier for you
          to type in something different)

-  You will be brought to your new patron

   |image424|

.. _add-patron-images-label:

Add patron images
----------------------------------------

If you would like you can add patron images to help identify patrons. To
enable this feature you must first set the
:ref:`patronimages` preference to 'Allow'.

If the preference is set to 'Allow' you will see a placeholder image
under the patron's name and box to upload a patron image below the basic
contact information.

|image425|

In the 'Upload patron image' box click 'Browse' to find the image on
your computer and 'Upload' to load the image on to the patron record.

|image426|

    **Important**

    There is a limit of 100K on the size of the picture uploaded and it
    is recommended that the image be 200x300 pixels, but smaller images
    will work as well.

.. _editing-patrons-label:

Editing patrons
----------------------------------

Patrons in Koha can be edited using one of many edit buttons.

-  To edit the entire patron record simply click the 'Edit' button at
   the top of the patron record.

   |image427|

-  Patron passwords are not recoverable. The stars show on the patron
   detail next to the Password label are always there even if a password
   isn't set. If a patron forgets their password the only option is to
   reset their password. To change the patron's password, click the
   'Change password' button.

   |image428|

   -  Koha cannot display existing passwords. Leave the field blank to
      leave password unchanged.

   -  This form can automatically generate a random password if you
      click the link labeled "Click to fill with a randomly generated
      suggestion. Passwords will be displayed as text."

-  To edit a specific section of the patron record (for example the
   'Library use' section) click the 'Edit' link below the section.

   |image429|

-  A patron image can be added by browsing for the image on your machine
   from the 'Manage patron image' section.

   |image430|

   -  This form will not appear if you have the
      :ref:`patronimages` system preference to not allow
      patron images.

   -  To add patron images in bulk, use the :ref:`Upload patron
      images <upload-patron-images-label>` tool.

-  Patrons can also be blocked from checking items out by setting Patron
   flags

   |image431|

   -  If you would like your circulation staff to confirm a patron's
      address before checking items out to the patron, you can see the
      'Gone no address' flag

      |image432|

   -  If the patron reports that they have lost their card you can set
      the 'Lost card' flag to prevent someone else from using that card
      to check items out

      |image433|

   -  If you would like to bar a patron from the library you can add a
      manual restriction

      |image434|

      -  **Note**

             This flag can automatically be set with the :ref:`Overdue/notice
             status triggers <overdue-notice/status-triggers-label>`

   -  If you enter in a date and/or note related to the restriction you
      will see that in the restricted message as well

      |image435|

-  Children patrons do not become adults automatically in Koha unless
   you have :ref:`Juvenile to adult cron job <update-child-to-adult-patron-type-label>` running. To
   upgrade a child patron to and adult patron category manually go to
   the 'More' menu and choose 'Update child to adult patron'

   |image436|

   -  You will then be presented with a pop up window asking which one
      of your adult patron categories this Child should be updated to

      |image437|

.. _managing-patron-self-edits-label:

Managing patron self edits
--------------------------------------------------

If you are allowing patrons to edit their accounts via the OPAC with the
:ref:`OPACPatronDetails` preference then you will need
to approve all changes via the staff client before they're applied. If
there are patron edits awaiting action they will appear on the staff
client dashboard below the modules list (along with other items awaiting
action).

|image438|

    **Note**

    Superlibrarians will see modifications for any branch, other staff
    will only see modifications for patrons who belong to their logged
    in branch.

When you click the 'Patrons requesting modifications' link you will be
brought to a list of patrons with requested changes.

|image439|

From here you can 'Approve' and apply the changes to the patron record,
'Delete' and remove the changes or 'Ignore' and keep the changes pending
to review later.

If you would like to see the entire patron record you can click the
'Patron details' links to the right of the buttons. This will open in a
new tab.

Merging patron records
-----------------------------------

If you accidentally end up with one patron with two cards it is possible
to merge their records together so that you don't lose their loan history
or holds.

-  In the patron list, check the boxes next to the records you want to
   merge and click on the 'Merge selected patrons' button.

|image1326|

    **Note**

    It is possible to merge more than two records at a time.

-  Select the patron record you want to keep and click on the 'Merge
   patrons' button.

|image1327|

The checkouts and statistics will be transferred to the right record and
the other one will be deleted.

|image1328|

.. _patron-permissions-label:

Patron permissions
-------------------------------------------

Patron permissions are used to allow staff members access to the staff
client.

    **Important**

    In order for a staff member to log into the staff interface they
    must have (at the very least) 'catalogue' permissions which allow
    them to view the staff interface.

.. _setting-patron-permissions-label:

Setting patron permissions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  On the patron record click 'More' and choose 'Set permissions' to alter
   patron permissions

   |image440|

-  You will be presented with a list of preferences, some of which can
   be expanded by clicking the plus sign to the left of the section
   title.

   |image441|

.. _patron-permissions-defined-label:

Patron permissions defined
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  superlibrarian

   -  Access to all librarian functions

      **Note**

      With this selected there is no need to choose any other
      permissions

-  circulate

   -  Check out and check in items

   -  This section can be expanded (:ref:`Learn more <granular-circulate-permissions-label>`)

-  catalogue

   -  **Required for staff login.** Staff access, allows viewing the
      catalogue in staff client

      **Important**

      Must be given to all staff members to allow them to login
      to the staff client

-  parameters

   -  Manage Koha system settings (Administration panel)

   -  This section can be expanded (:ref:`Learn
      more <granular-parameters-permissions-label>`)

-  borrowers

   -  Add or modify patrons

   -  This section can be expanded (:ref:`Learn more <granular-borrowers-permissions-label>`)

-  permissions

   -  Set user permissions

-  reserveforothers

   -  Place and modify holds for patrons

   -  This section can be expanded (:ref:`Learn
      more <granular-holds-permissions-label>`)

-  editcatalogue

   -  Edit Catalog (Modify bibliographic/holdings data)

   -  This section can be expanded (:ref:`Learn more <granular-cataloging-permissions-label>`)

-  updatecharges

   -  Manage patrons fines and fees

   -  This section can be expanded (:ref:`Learn
      more <granular-fines-and-charges-permissions-label>`)

-  acquisition

   -  Acquisition and/or suggestion management

   -  This section can be expanded (:ref:`Learn more <granular-acquisitions-permissions-label>`)

-  tools

   -  Use all tools

   -  This section can be expanded (:ref:`Learn more <granular-tools-permissions-label>`)

-  editauthorities

   -  Edit Authorities

-  serials

   -  Manage serial subscriptions

   -  This section can be expanded (:ref:`Learn more <granular-serials-permissions-label>`)

-  reports

   -  Allow access to the reports module

   -  Reports found on the Circulation page are not controlled by this
      permission

   -  This section can be expanded (:ref:`Learn more <granular-reports-permissions-label>`)

-  staffaccess

   -  Allow staff members to modify permissions for other staff members

      **Important**

      Requires the borrowers permission above

-  coursereserves

   -  Course reserves

   -  Allow access to the :ref:`course reserves module <course-reserves-label>`

   -  This section can be expanded (:ref:`Learn more <granular-course-reserves-permissions-label>`)

-  plugins

   -  Koha plugins

   -  This section can be expanded (:ref:`Learn more <granular-plugins-permissions-label>`)

-  lists

   -  Lists

      **Important**

      All staff have permission to create and modify their own
      lists, this permission is only necessary if you'd like to give
      a staff member permission to delete public lists that they
      have not created.

   -  This section can be expanded (:ref:`Learn more <granular-lists-permissions-label>`)

-  clubs

   -  Patron clubs

   -  Allows access to the :ref:`Patron clubs feature <Patron-clubs-label>`

   -  This section can be expanded (:ref:`Learn more <granular-clubs-permissions-label>`)

-  ill

   -  Create and modify interlibrary loan requests

-  self\_check

   -  Self check modules

   -  Used for self checkin/self checkout kiosks

   -  This section can be expanded (:ref:`Learn more <granular-self-check-permissions-label>`)

.. _granular-circulate-permissions-label:

Granular circulate permissions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If the staff member has 'circulate' permissions they have the ability to
perform all of these actions. If you would like to control circulation
permissions on a more granular level choose from these options:

-  circulate\_remaining\_permissions

   -  Remaining circulation permissions

   -  All circulation rights except those covered by permissions listed
      below

-  force\_checkout

   -  Force checkout if a limitation exists

   -  With this permission a librarian will be allowed to override a
      check out restriction in the following cases:

      -  age restriction

      -  the item is issued to another patron

      -  the item is not for loan

      -  the patron has overdue items

      -  the item is lost

      -  the item is a high demand item

      -  the item is on hold
         
-  manage\_checkout\_notes
   
   -  Mark checkout notes as seen\/not seen
      
   -  The permission to manage the checkout notes written by users 
      through the OPAC

-  manage\_restrictions

   -  Manage restrictions for accounts

   -  Grants permission to the staff member to lift a restriction that
      might be on the patron's record

-  overdues\_report

   -  Execute overdue items report

   -  The permission to run the overdues reports found under Circulation

-  override\_renewals

   -  Override blocked renewals

   -  Requires that the staff member also has
      circulate\_remaining\_permissions

.. _granular-parameters-permissions-label:

Granular parameters permissions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If the staff member has 'parameters' permissions they have the ability
to perform all of these actions. If you would like to control parameter
permissions on a more granular level choose from these options:

-  manage\_circ\_rules

   -  Manage circulation rules

   -  The ability to access the :ref:`Circulation and fines
      rules <circulation-and-fine-rules-label>` in the administration area

-  parameters\_remaining\_permissions

   -  Remaining system parameters permissions

   -  The ability to access all areas in Administration (other than the
      Circulation and fines rules)

.. _granular-borrowers-permissions-label:

Granular borrowers permissions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If the staff member has 'borrowers' permissions they have the ability 
to perform all of these actions. If you would like to control borrowers 
permissions on a more granular level choose from these options:

-  edit\_borrowers

   -  Add, modify and view patron information

   -  The ability to access the Patrons module to view patron files, 
      as well as adding new patrons and editing patron files

-  view\_borrower\_infos\_from\_any\_libraries

   -  View patron infos from any libraries. If not set the logged in user 
      could only access patron infos from its own library or group of libraries.


.. _granular-holds-permissions-label:

Granular holds permissions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If the staff member has 'reserveforothers' permissions they have the
ability to perform all of these actions. If you would like to control
holds permissions on a more granular level choose from these options:

-  modify\_holds\_priority

   -  Modify holds priority

   -  Allow staff members to alter the holds priority (moving patrons up
      and down the queue)

-  place\_holds

   -  Place holds for patrons

.. _granular-cataloging-permissions-label:

Granular cataloging permissions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If the staff member has 'editcatalogue' permissions they have the
ability to perform all of these actions. If you would like to control
cataloging permissions on a more granular level choose from these
options:

-  delete\_all\_items

   -  Delete all items at once

   -  Ability to use the 'Delete all items' option found under the
      'Edit' menu in cataloging

-  edit\_catalogue

   -  Edit catalog (Modify bibliographic/holdings data)

   -  Ability to access all cataloging functions via the
      `Cataloging <#cataloging>`__ page

-  edit\_items

   -  Edit items

   -  Ability to make :ref:`edits to item/holdings
      records <editing-items-label>`, but not bibliographic records

-  edit\_items\_restricted

   -  Limit item modification to subfields defined in the
      :ref:`SubfieldsToAllowForRestrictedEditing`
      preference

      **Note**

      Please note that edit\_items permission is still required

-  fast\_cataloging

   -  Fast cataloging

   -  The ability to catalog using only the :ref:`Fast add
      framework <fast-add-cataloging-label>` found on the
      `Circulation <#circulation>`__ page

.. _granular-fines-and-charges-permissions-label:

Granular fines and charges permissions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If a staff member has 'updatecharges' permission they have the ability
to perform all of these actions. If you would like to control fines and
charges permissions on a more granular level choose from these options:

-  remaining\_permissions

   -  Remaining permissions for managing fines and fees other than the
      ability to write off charges

-  writeoff

   -  Write off fines and fees

.. _granular-acquisitions-permissions-label:

Granular acquisitions permissions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If the staff member has 'acquisition' permissions they have the ability
to perform all of these actions. If you would like to control
acquisitions permissions on a more granular level choose from these
options:

-  budget\_add\_del

   -  Add and delete budgets (but can't modify budgets)

-  budget\_manage

   -  Manage budgets

-  budget\_manage\_all

   -  Manage all budgets

   budget\_modify

   -  Modify budget (can't create lines, but can modify existing ones)

-  contracts\_manage

   -  Manage contracts

-  currencies\_manage
   
   -  Manage currencies and exchange rates
      
-  edi\_manage
   
   -  Manage EDIFACT transmissions

-  group\_manage

   -  Manage orders and basket groups

-  order\_manage

   -  Manage orders and baskets

-  order\_manage\_all

   -  Manage all orders and baskets, regardless of restrictions on them

-  order\_receive

   -  Manage orders and baskets

-  period\_manage

   -  Manage periods

-  planning\_manage

   -  Manage budget planning
      
-  suggestions\_manage
   
   -  Manage purchase suggestions

-  vendors\_manage

   -  Manage vendors

.. _granular-serials-permissions-label:

Granular serials permissions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If the staff member has 'serials' permissions they have the ability to
perform all of these actions. If you would like to control serials
permissions on a more granular level choose from these options:

-  check\_expiration

   -  Check the :ref:`expiration of a serial <check-serial-expiration-label>`

-  claim\_serials

   -  Claim missing serials via the :ref:`Claims section <claim-late-serials-label>`

-  create\_subscription

   -  Create :ref:`a new subscription <add-a-subscription-label>`

-  delete\_subscription

   -  Delete an existing subscription

-  edit\_subscription

   -  Edit an existing subscription

   -  This permission does not include the ability to delete or create a
      subscription

-  receive\_serials

   -  Serials receiving

   -  Receive serials on existing subscriptions

-  renew\_subscription

   -  Renew a subscription

-  routing

   -  Routing

   -  Manage :ref:`routing lists <create-a-routing-list-label>`

-  superserials

   -  Manage subscriptions from any branch (only applies when
      :ref:`IndependantBranches <independentbranches-label>` is used)

.. _granular-tools-permissions-label:

Granular tools permissions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If the staff member has 'tools' permissions they have the ability to
access and use all items under the Tools menu. If you would like to
control which tools staff members have access to on a more granular
level choose from these options:

-  access\_files

   -  Access to the files stored on the server

   -  Access to the :ref:`Upload tool <upload-label>`

-  batch\_upload\_patron\_images

   -  Upload patron images in batch or one at a time

   -  Access to the :ref:`Image upload tool <upload-patron-images-label>`

-  delete\_anonymize\_patrons

   -  Delete old borrowers and anonymize circulation/reading history
      (deletes borrower reading history)

   -  Access to the :ref:`Anonymize patron tool
      <patrons-anonymize-bulk-delete-label>`

-  edit\_calendar

   -  Define days when the library is closed

   -  Access to the :ref:`Calendar/holidays tool <calendar-label>`

-  edit\_news

   -  Write news for the OPAC and staff interfaces

   -  Access to the :ref:`News tool <news-label>`

-  edit\_notice\_status\_triggers

   -  Set notice/status triggers for overdue items

   -  Access to the :ref:`Overdue notice status/triggers
      tool <overdue-notice/status-triggers-label>`

-  edit\_notices

   -  Define notices

   -  Access to the :ref:`Notices and slips tool <notices-&-slips-label>`

-  edit\_patrons

   -  Perform batch modification of patrons

   -  Access to the :ref:`Batch patron modification tool
      <batch-patron-modification-label>`

-  edit\_quotes

   -  Edit quotes for the quote-of-the-day feature

   -  Access to the :ref:`Quote of the Day (QOTD) Editor
      <quote-of-the-day-(qotd)-editor-label>`

-  export\_catalog

   -  Export bibliographic, authorities and holdings data

   -  Access to the :ref:`Export data tool <export-data-(marc-&-authorities)-label>`

-  import\_patrons

   -  Import patron data

   -  Access to the :ref:`Import patrons tool <patron-import-label>`

-  inventory

   -  Perform inventory (stocktaking) of your catalog

   -  Access to the :ref:`Inventory tool <inventory-tool-label>`

-  items\_batchdel

   -  Perform batch deletion of items

   -  Access to the :ref:`Batch item deletion tool <batch-item-deletion-label>`

-  items\_batchmod

   -  Perform batch modification of items

   -  Access to the :ref:`Batch item modification tool <batch-item-modification-label>`

-  items\_batchmod\_restricted

   -  Limit :ref:`batch item modification <batch-item-modification-label>` to subfields
      defined in the
      :ref:`SubfieldsToAllowForRestrictedBatchmod`
      preference

      **Note**

      Please note that items\_batchmod permission is still required

-  label\_creator

   -  Create printable labels and barcodes from catalog and patron data

   -  Access to the :ref:`Label creator <label-creator-label>` and 
      :ref:`Quick label creator <quick-spine-label-creator-label>` Tools

-  manage\_csv\_profiles

   -  Manage CSV export profiles

   -  Access to the :ref:`CSV profiles tool <csv-profiles-label>`

-  manage\_patron\_lists

   -  Add, edit and delete patron lists and their contents

   -  Access to the :ref:`Patron lists tool <patron-lists-label>`

-  manage\_staged\_marc

   -  Manage staged MARC records, including completing and reversing
      imports

   -  Access to the :ref:`Manage Staged MARC Records Tool
      <staged-marc-record-management-label>`

-  marc\_modification\_templates

   -  Manage MARC modification templates

   -  Access to the :ref:`MARC modification templates tool
      <marc-modification-templates-label>`

-  moderate\_comments

   -  Moderate patron comments

   -  Access to the :ref:`Comments tool <comments-label>`

-  moderate\_tags

   -  Moderate patron tags

   -  Access to the :ref:`Tags tool <tag-moderation-label>`

-  records\_batchdel

   -  Perform batch deletion of records (bibliographic or authority)

   -  Access to the :ref:`Batch record deletion tool <batch-record-deletion-label>`

-  records\_batchmod

   -  Perform batch modification of records (bibliographic or authorities)

   -  Access to the :ref:`Batch record modification tool <batch-record-modification-label>`

-  rotating\_collections

   -  Manage rotating collections

   -  Access to the :ref:`Rotating collections tool <rotating-collections-label>`

-  schedule\_tasks

   -  Schedule tasks to run

   -  Access to the :ref:`Task scheduler tool <task-scheduler-label>`

-  stage\_marc\_import

   -  Stage MARC records into the reservoir

   -  Access to the :ref:`Stage MARC records tool <stage-marc-records-for-import-label>`

-  upload\_general\_files

   -  Upload any file

   -  Access to upload files via the :ref:`Upload tool <upload-label>`

-  upload\_local\_cover\_images

   -  Upload local cover images

   -  Access to the :ref:`Upload local cover image
      tool <upload-local-cover-image-label>` as well as permission to add and
      delete local cover images from the record detail page

-  upload\_manage

   -  Manage uploaded files

   -  Access to uploaded files via the :ref:`Upload tool <upload-label>`

          **Note**

          upload\_general\_files permission is required for this
          permission

-  view\_system\_logs

   -  Browse the system logs

   -  Access to the :ref:`Log viewer tool <log-viewer-label>`

.. _granular-reports-permissions-label:

Granular reports permissions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If the staff member has 'reports' permissions they have the ability to
perform all of these actions. If you would like to control reports
permissions on a more granular level choose from these options:

-  create\_reports

   -  Create SQL reports

   -  The ability to create and edit but not run SQL reports

-  delete\_reports

   -  Delete SQL reports

-  execute\_reports

   -  Execute SQL reports

   -  The ability to run but not create or edit SQL reports

.. _granular-course-reserves-permissions-label:

Granular course reserves permissions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If the staff member has 'course reserves' permissions they have the ability to
perform all of these actions. If you would like to control course reserves
permissions on a more granular level choose from these options:

-  add\_reserves

   -  Add course reserves

-  delete\_reserves

   -  Remove course reserves

-  manage\_courses

   -  Add, edit and delete courses


.. _granular-plugins-permissions-label:

Granular plugins permissions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If the staff member has 'plugins' permissions they have the ability to
perform all of these actions. If you would like to control plugins
permissions on a more granular level choose from these options:

-  configure

   -  Configure plugins

   -  The ability to run the 'configure' section of a plugin if it has
      one

-  manage

   -  Manage plugins

   -  The ability to install or uninstall plugins

-  report

   -  Use report plugins

   -  The ability to use report plugins

-  tool

   -  Use tool plugins

   -  The ability to use tool plugins


.. _granular-lists-permissions-label:

Granular lists permissions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

All staff members have permission to access lists. This section only
needs to be checked off if you want to give permission to a staff member
to delete public lists that they have no created themselves.

-  delete\_public\_lists

   -  Delete public lists

   -  The ability to delete public lists created by someone else

.. _granular-clubs-permissions-label:

Granular patron clubs permissions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If the staff member has 'clubs' permissions they have the ability to
perform all of these actions. If you would like to control patron clubs
permissions on a more granular level choose from these options:

-  edit\_clubs

   -  Create and edit clubs

   -  Create and edit patron clubs using the :ref:`Patron clubs tool <Patron-clubs-label>`

-  edit\_templates

   -  Create and edit club templates

   -  Create and edit club templates using the :ref:`Patron clubs tool <Patron-clubs-label>`

-  enroll

   -  Enroll patrons in clubs

   -  Enroll patrons from the patron file

.. _granular-self-check-permissions-label:

Granular self check permissions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If the user has 'self check' permissions they have the ability to
perform all of these actions. If you would like to control self check
permissions on a more granular level choose from these options:

-  self\_checkin\_module

   -  Log into the self check-in module.

      ** Note**

      This permission prevents the patron from using any other OPAC 
      functionality

-  self\_checkout\_module

   -  Perform self checkout at the OPAC.

      **Note**

      This permission should be used for the patron matching the
      :ref:`AutoSelfCheckID <autoselfcheckallowed-autoselfcheckid-&-autoselfcheckpass-label>`
      system preference

.. _patron-information-label:

Patron information
-------------------------------------------

When viewing a patron record you have the option to view information
from one of many tabs found on the left hand side of the record.

-  *Get there:* Patrons > Browse or search for patron > Click patron
   name

.. _check-out-label:

Check out
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

For instruction on checking items out, view the :ref:`Checking
out <check-out-(issuing)-label>` section of this manual.

Staff members can access their own check out screen by clicking their
username in the top right of the staff client and choosing 'My
checkouts'

|image1178|

.. _details-label:

Details
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

     **Note**

     Staff members can access their own account details by clicking their
     username in the top right of the staff client and choosing 'My account'

     |image442|

All patron information will appear in the Details tab. This includes all
the contact information, notes, custom patron attributes, messaging
preferences, etc. entered when adding the patron.

|image1359|

In the case of patrons who are marked as 'Child' or 'Professional' and
their guarantors additional information will appear on their record.

-  A child patron will list their guarantor

   |image443|

-  On the guarantor's record, all children and/or professionals will be
   listed

   |image444|

.. _circulation-summary-label:

Circulation summary
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Below the patron's information on the details screen is a tabbed display
of the items they have checked out, overdue, and on hold.

Checkouts
''''''''''''''''''''''''''''''''''''''''''

The first tab shows the items the patron currently has checked out.

|image445|

Relatives' checkouts
''''''''''''''''''''''''''''''''''''''''''

If they have family at the library, staff can see what the other family
members have checked out.

|image446|

Fines & charges
'''''''''''''''''''''''''''''''''''''''''

The Fines & charges tab will show for all patrons, even those who
don't owe anything.

If the patron does owe money to the library, the tab will show the
total amount, without any details. To see the details, go to the
:ref:`fines tabs <fines-label>`.

|image1360|

Holds
'''''''''''''''''''''''''''''''''''''''''

If the patron has holds, the number of holds will appear on this tab's
title and the details will appear in the tab.

|image490|

     **Note**

     The barcode and call number will only appear on item-level holds or
     holds that have been confirmed. Record-level holds that are not
     waiting to be picked up will not have barocdes or call numbers.

From here you can manage the patron's holds: change the pickup library,
cancel or suspend holds.

     **Note**

     You will only be able to suspend holds if the :ref:`SuspendHoldsIntranet`
     system preference is set to "Allow".

     **Note**

     If, when suspending a hold, you want to be able to set a date at which to
     automatically resume the hold, set the :ref:`AutoResumeSuspendedHolds`
     system preference to "Allow" and make sure the :ref:`unsuspend_holds cron
     job <unsuspend-holds-label>` is activated.

Article requests
'''''''''''''''''''''''''''''''''''''''''''''

If the :ref:`ArticleRequests` system preference is enabled, and the circulation
rules allow it, the patrons will be able to request articles, either through the
OPAC or in the staff interface.

The details of the patron's request, and its status, are visible in this
tab.

|image1361|

Restrictions
''''''''''''''''''''''''''''''''''''''''''''

The Restrictions tab will show for all patrons. If the patron has no
restrictions you will see that on the tab.

|image447|

If the patron has restrictions on their account the tab will show the
number and the description.

There are four kinds of restrictions:
  - Manual
  - Overdues
  - Suspension
  - Discharge

Using the 'Add manual restriction' button you can add a restriction to
the patron record from here. This can be used for any type of restriction
you need to put manually on a patron record.

|image449|

|image448|

The overdues restrictions are automatically set when overdue notices are sent
if you specified you wanted the patron restricted in the
:ref:`Overdue notice/status triggers tool <overdue-notice/status-triggers-label>`.

This restriction will not be removed automatically when the overdue items are
returned unless the :ref:`AutoRemoveOverduesRestrictions` system preference
is set to 'Do'.

In the :ref:`circulation rules <circulation-and-fine-rules-label>`, you can choose
to fine users by suspending them instead of (or in addition to) fining them money.
In that case, returning an overdue document will trigger a suspension restriction.

Patrons may also be restricted if you have issued a :ref:`discharge <patron-
discharges-label>` for them. Once the discharge is validated, the patron is
automatically restricted.

Restrictions on a patron record will block checkouts. In fact,
a message will appear in red when going to the checkout page.

|image1363|

Restrictions may also prevent renewing items if the :ref:`RestrictionBlockRenewing`
system preference is set to 'block'.

On the OPAC, patrons will get a message saying their account is frozen. They will
not be able to place holds from the OPAC.

If you have patrons that have more than one restriction, you can choose to
cumulate their restriction periods or not through the :ref:`CumulativeRestrictionPeriods`
system preference.

     **Note**

     If you want to restrict patrons from doing various actions if their record
     is not pristine, check the following system preferences:

     - Set the :ref:`OverduesBlockCirc` system preference to 'Block' to prevent
       patrons who have overdue materials from checking out other materials.
     - Set the :ref:`OverduesBlockRenewing` system preference to 'block renewing
       for all the patron's items' or 'block renewing only for this item' to prevent
       patrons who have overdue materials from renewing their loans.
     - Enter values in the :ref:`noissuescharge` and :ref:`NoIssuesChargeGuarantees`
       system preferences in order to block checking out to patrons who have more
       than a certain amount in fines or to patrons whose guarantees owe more than
       a certain amount.
     - Enter a value in the :ref:`maxoutstanding` system preference to prevent
       patron from placing holds on the OPAC if they owe more than a certain amount.
     - Enter a value in the :ref:`OPACFineNoRenewals` system preference to prevent
       patron who owe more than a certain amount to renew their loans from the OPAC.
     - Set the :ref:`BlockExpiredPatronOpacActions` system preference to 'Block' if
       you want to prevent patron whose membership has expired to place hold or
       renew their loans from the OPAC.


Clubs
'''''''''''''''''''''''''''''''''''''''''''

If you use :ref:`patron clubs <Patron-clubs-label>`, patrons will have a tab
in their record indicating which club they are enrolled in, if any.

|image1362|


.. _fines-label:

Fines
~~~~~~~~~~~~~~~~~~~~~~~~

The patron's complete accounting history will appear on the Fines tab.
Contrary to its name, the Fines tab does not just show fine data, it
also shows membership fees, rental fees, reserve fees and any other
charge you may have for patrons.

|image450|

The table will show you the following columns:

-  Date: the date the charge/payment was posted

   -  In the case of fines this will be the last day that the fine was
      accrued

-  Description: a description of the charges including the due date for
   overdue items and a link to the item record where one is available

-  Note: any notes about this charge/payment

   -  If you're allowing patrons to pay fines via the OPAC with PayPal
      (:ref:`EnablePayPalOpacPayments <enablepaypalopacpayments-&-paypalsandboxmode-label>`) you
      will see a Note that says 'PayPal' for items paid this way

      |image1246|

-  Amount: the total amount of the payment or charge

-  Outstanding: the amount still due on charge

-  The ability to reverse a payment

-  The ability to void a payment

-  A link to print a receipt for that line item

At the top of the table you can click the 'Filter paid transaction' to
hide all completed transaction and above that you can use the search box
to find a specific charge or payment.

.. _charging-fines/fees-label:

Charging fines/fees
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Most fees and fines will be charged automatically if the :ref:`fines cron
job <fines-label>` is running:

-  Fines will be charged based on your :ref:`Circulation & fines
   rules <circulation-and-fine-rules-label>`

-  Hold fees will be charged based on the rules you set in the :ref:`Patron
   types & categories <patron-categories-label>` administration area

-  Rental fees will be charged based on the settings in your :ref:`Item
   iypes <item-types-label>` administration area

-  Marking an item 'Lost' via the cataloging module will automatically
   charge the patron the replacement cost for that item

.. _pay/reverse-fines-label:

Pay/reverse fines
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Each line item can be paid in full (or written off) using the 'Pay
fines' tab.

|image451|

-  Each line item can be paid in full, partially paid, or written off.

-  Pay a fine in full

   -  If you have a note about the payment please type that first then
      move on

   -  Click "Pay" next to the fine you want to pay in full

   -  The full amount of the fine will be populated for you in the
      "Collect from patron" box
      
   -  If one or more values are defined under the PAYMENT\_TYPE authorized value
      category a dropdown selection box will be displayed to specify a custom
      payment type

      |image452|

   -  Click "Confirm"

   -  The fine will be removed from outstanding fines, and displayed as
      fully paid.

-  Pay a partial fine

   -  Click "Pay" next to the fine you want to partially pay

   -  Enter the amount you are collecting from the patron in the
      "Collect from patron" box

      |image453|

   -  Click "Confirm"

   -  The fine will be updated to show the original amount, and the
      current amount outstanding

-  Pay an amount towards all fines

   -  Click the "Pay amount" button

   -  Enter the amount you are collecting from the patron in "Collect
      from patron." The sum of all fines is shown in "Total amount
      outstanding"

      |image454|

   -  Click "Confirm"

   -  The fine totals will be updated with the payment applied to oldest
      fines first.

-  Pay selected fines

   -  Check the selection boxes next to the fines you wish to pay, click
      "Pay selected"

      |image455|

   -  Enter an amount to pay towards the fines.

      |image456|

   -  Click "Confirm"

   -  The fine totals will be updated with the payment applied to the
      oldest selected fines first.

-  Writeoff a single fine

   -  Click "Writeoff" next to the fine you wish to writeoff.
   
   -  A confirmation box will appear to specify a total amount to writeoff.
      This box allows a partial writeoff of fines.

   -  The fine will be removed from outstanding fines, and displayed as
      written off.

-  Writeoff selected fines

    -  Check the selection boxes next to the fines you wish to pay, click "Writeoff selected".
    
    -  Click "Confirm".
    
    -  The fine will be removed from outstanding fines, and displayed as written off.

-  Writeoff all fines

   -  Click the "Writeoff all" button

   -  All fines will be removed from outstanding fines, and displayed as
      written off.

-  If you accidentally mark and item as paid, you can reverse that line
   item by clicking 'Reverse' to the right of the line

   |image457|

   -  Once clicked a new line item will be added to the account, showing
      the payment as reversed

      |image458|

      **Note**

      - You can enable email receipts for payment and writeoff transactions 
        with the :ref:`UseEmailReceipts` system preference.

.. _creating-manual-invoices-label:

Creating manual invoices
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

For fees that are not automatically charged, librarians can create a
manual invoice

|image459|

-  First choose the type of invoice you would like to create

   -  To add additional values to the manual invoice type pull down
      menu, add them to the `MANUAL\_INV <#manualinvvals>`__ authorized
      values

   -  **Important**

          The value set as the authorized value for the MANUAL\_INV
          authorized value category will appear as the description and
          the authorized value description will be used as the amount.

-  If the fee is associated with an item you can enter its barcode so
   that the line item shows a link to that item

-  The description field is where you will enter the description of the
   charge

-  In the amount field, do not enter currency symbols, only numbers and
   decimals

.. _creating-manual-credits-label:

Creating manual credits
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Manual credits can be used to pay off parts of fines, or to forgive a
fine amount.

|image460|

-  First choose the type of credit you'd like to apply

-  If this credit is associated with an item you can enter that item's
   barcode so that the line item links to the right item

-  The description field is where you will enter the description of the
   credit

-  In the amount field, do not enter currency symbols, only numbers and
   decimals

.. _printing-invoices-label:

Printing invoices
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To the right of each account line there is a print link. Clicking that
link will print an invoice for the line item that includes the date and
description of the line item along with the total outstanding on the
account.

|image461|

.. _routing-lists-label:

Routing lists
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A list of all of the serial routing lists the patron belongs to will be
accessible via the 'Routing lists' tab on the patron record.

|image462|

On this tab you will be able to see and edit all of the routing lists
that this patron is on.

|image463|

.. _circulation-history-label:

Circulation history
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The circulation history tab will appear if you have set the
:ref:`intranetreadinghistory` preference to allow
it to appear. If you have the :ref:`OPACPrivacy` system
preference set to 'Allow' and the patron has decided that the library
cannot keep this information this tab will only show currently checked
out items.

|image464|

If you would like to export a list of barcodes for the items checked in
today you can find that option under the More menu on the top right of
the page.

|image465|

This will generate a text file with one barcode per line.

.. _modification-log-label:

Modification log
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you have set your :ref:`BorrowersLog` to track changes
to patron records, then this tab will appear. The Modification log will
show when changes were made to the patron record. If you also have
turned on the :ref:`IssueLog` and :ref:`ReturnLog`
you will see checkins and outs on this screen as well.

|image466|

-  The Librarian field shows the patron number for the librarian who
   made the changes

-  The module lists 'MEMBERS' for the patron module

-  The action will tell you what action was being logged

-  The Object field lists the borrowernumber that is being modified (in
   the example above, it was my changing my own record)

.. _notices-label:

Notices
~~~~~~~~~~~~~~~~~~~~~~~~~

The `patron's messaging preferences <#setpatronmessaging>`__ are set
when :ref:`adding <add-a-new-patron-label>` or :ref:`editing <editing-patrons-label>` the
patron. This tab will show the messages that have been sent and those
that are queued to be sent:

|image467|

Clicking on the message title will expand the view to show you the full
text of the message that was sent.

|image468|

If the message has a status of sent or failed you will have the option
to 'resend' the message to the patron by clicking the 'resend' button
found under the status.

|image469|

.. _statistics-label:

Statistics
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Depending on what you set for the values of your
:ref:`StatisticsFields` system preference, you can see
statistics for one patron's circulation actions.

|image470|

.. _files-label:

Files
~~~~~~~~~~~~~~~~~~~~~~~~

If you set the :ref:`EnableBorrowerFiles` preference
to 'Do' the Files tab will be visible on the patron information page.

|image471|

From here you can upload files to attach to the patron record.

|image472|

All files that are uploaded will appear above a form where additional
files can be uploaded from.

|image473|

.. _purchase-suggestions-label:

Purchase suggestions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If the patron has made any purchase suggestions you will see a purchase
suggestions tab on the patron record.

|image1247|

From here you can see all suggestions made by the patron and their
status, you can also create a purchase suggestion on the patron's behalf
by clicking the 'New purchase suggestion' button at the top.

Learn more about :ref:`purchase suggestions <purchase-suggestions-label>` in the
`Acquisitions <#acqmodule>`__ chapter of this manual.

.. _patron-discharges-label:

Patron discharges
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A discharge is a certificate that says the patron has no current
checkouts, no holds and owe no money. To enable this opti`on on the
patron record you need to set the :ref:`useDischarge`
system preference to 'Allow'.

    **Note**

    In France a "quitus" ("discharge") is needed if you want to register
    for an account in a library or a university.

    **Note**

    Academic libraries often require that you have a clear record at the
    library before you can graduate.

Patrons can :ref:`request discharges via the OPAC <ask-for-a-discharge-label>`. Any
pending discharges will be listed below the menu buttons on the main
staff client page

|image1248|

Clicking the pending requests will open a screen where you can allow
those discharges

|image1249|

To generate a discharge for a specific patron click the 'Discharge' tab
on the left of the patron record

|image1250|

If the patron can have a discharge generated then it will have a button
that says 'Generate discharge'

|image474|

If not then you'll see an error explaining why you can't discharge the
patron.

|image475|

Once the letter is generated you will have a PDF to download

|image476|

    **Note**

    You can style the PDF using the :ref:`NoticeCSS`
    preference.

The patron will have a restriction added to their account

|image1251|

And a history of discharges will be added to the 'Discharge'
tab

|image1252|

.. _housebound-patrons-label:

Housebound patrons
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There are three roles a patron can have in regard to housebound
circulation: borrower, chooser or deliverer.

    **Important**

    In order to use the housebound module, the :ref:`HouseboundModule`
    and :ref:`ExtendedPatronAttributes` system preferences must be
    enabled.

.. _housebound-chooser-label:

Chooser
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you have enabled the housebound module, with the
:ref:`HouseboundModule` system preference, you will see that
patrons now have a new section in their record called 'Housebound
roles'.

|image1349|

Click the 'Add' button to mark this
patron as a 'Chooser'.

|image1350|

The chooser is in charge of choosing the materials for the
housebound patron.

.. _housebound-deliverer-label:

Deliverer
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

In the 'Housebound roles', click the 'Add' button to mark
this patron as a 'Deliverer'.

|image1351|

The deliverer is in charge of delivering the chosen materials
to the housebound patron on a specific day at a specific time.

.. _housebound-borrower-label:

Housebound borrowers
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To create a housebound profile for an housebound patron, click on
the 'Housebound' tab in their record.

|image1347|

From there, you can edit their housebound profile information.

|image1348|

- Delivery day: choose which day (or 'Any') the patron prefers to
  receive their delivery.

- Frequency: choose the frequency at which they want to receive
  their deliveries.

    **Note**

    The frequencies are managed through the HSBND\_FREQ list of
    :ref:`authorized values <existing-values-label>`.

- Preferred materials: enter notes that will help the chooser
  choose appropriate documents for the housebound patron.

  For example: books, dvds, magazines, etc.

- Subjects: if the housebound patron has a preference for
  particular subjects, enter it here. This will help the
  chooser choose interesting documents for the patron.

  For example: romance, cookbooks, thrillers, etc.

- Authors: if the housebound patron has favorite authors,
  enter them here.

  For example: Danielle Steel, James Patterson, etc.

- Referral: if the housebound patron has a referral, enter
  it here.

- Notes: enter any other notes that may help the chooser or
  the deliverer.

Click the 'Save changes' button to save the housebound profile.

.. _housebound-deliveries-label:

Coordinating deliveries
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To plan visits, go to the housebound patron's record.

In their housebound tab, you will be able to create deliveries.

|image1352|

Click on 'Add a new delivery'.

|image1353|

Fill out the information :

  - Date: Enter the date of the delivery.

  - Time: Select a time of day for the delivery. The choices are
    morning, afternoon, or evening.

  - Chooser: Select a chooser who will be in charge of selecting
    the materials for this housebound patron.

  - Deliverer: Select a deliverer who will be in charge of picking
    up the materials and bringing them over to the housebound
    patron.

|image1354|

Choosers and Deliverers can be notified of planned deliveries via reports.  Example reports be found in the SQL Reports Library at https://wiki.koha-community.org/wiki/SQL_Reports_Patrons#Patron_Characteristics.

.. _patron-search-label:

Patron search
---------------------------------

Clicking on the link to the Patron module will bring you to a
search/browse screen for patrons. From here you can search for a patron
by any part of their name or their card number.

|image477|

Clicking the small plus sign [+] to the right of the search box will
open up an advanced patron search with more filters including the
ability to limit to a specific category and/or library.

|image478|

You can also filter your patron results using the search options on the
left hand side of the page.

|image1253|

Depending on what you have chosen for the 'Search fields' you can search
for patrons in various different ways.

|image479|

-  Standard:

   -  Enter any part of their name, username, email address or barcode

-  Email:

   -  Enter any part of their email address and choose 'Contains'
      instead of 'Starts with'

-  Borrower number:

   -  Enter the Koha borrower number

-  Phone number:

   -  Enter the phone number exactly as it is in the system or by using
      spaces between each batch of numbers.

   -  Example: To find (212) 555-1212 you can search for it exactly as
      it was entered or by searching for 212 555 1212

-  Street address:

   -  Enter any part of the patron's address (includes all address
      fields) and choose 'Contains' instead of 'Starts with' to find the
      string anywhere in the address

-  Date of birth

   -  Birth dates should be entered using the format set forth in the
      :ref:`dateformat` preference.

-  Sort field 1

   -  This is a custom field that libraries can use for any type of data
      about the patron.

-  Sort field 2

   -  This is a custom field that libraries can use for any type of data
      about the patron.

You can also choose to either search for fields that start with the
string you entered or contain the string. Choosing 'Contains' will work
like a wildcard search.

|image480|

You can also browse through the patron records by clicking on the linked
letters across the top.

|image481|
