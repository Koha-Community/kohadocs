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

   Choose patron type
   |image407|

-  The fields that appear on the patron add form can be controlled by
   editing the :ref:`BorrowerUnwantedField` system
   preference.

-  First enter the identifying information regarding your patron

   Add Patron Form
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

   Patron Contact Information
   |image409|

   -  For contact information, note that the primary phone and email
      addresses are the ones that appear on notices and slips printed
      during circulation (receipts, transfer slips and hold slips). The
      primary email is also the one that overdue notices and other
      messages go to.

-  If this patron is a child, you will be asked to attach the child
   patron to an adult patron

   Guarantor Linking
   |image410|

   -  Click 'Set to Patron' to search your system for an existing patron

   -  If the Guarantor is not in the system, you can enter the first and
      last name in the fields available

   -  The relationships are set using the
      :ref:`borrowerRelationship` system preference

-  If this patron is a professional, you will be asked to attach the
   patron to an organizational patron

   Organization Linking
   |image411|

   -  Click 'Set to Patron to search your system for an existing patron

-  Each patron can have an alternate contact

   Alternate Contact
   |image412|

   -  An alternate contact could be a parent or guardian. It can also be
      used in academic settings to store the patron's home address.

-  The library management section includes values that are used within
   the library

   Library Management
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

-  Next, the Library Setup section includes additional library settings

   Library set-up options
   |image414|

   -  The registration date will automatically be filled in with today's
      date

   -  If your patron cards expire (based on your :ref:`patron category
      settings <patron-categories-label>`) the Expiry date will automatically be
      calculated

   -  The OPAC Note is a note for the patron - it will appear in the
      OPAC on the patron's record

   -  The Circulation Note is meant solely for your library staff and
      will appear when the circulation staff goes to check an item out
      to the patron

      Sample Circulation Note
      |image415|

   -  The Staff/OPAC asks for the username and password to be used by
      the patron (and/or staff member) to log into their account in the
      OPAC and for staff to log in to the staff client.

      -  Staff will only be able to use this log in info to log in to
         the staff client if they have the :ref:`necessary
         permissions <patron-permissions-label>`.

-  If you have set :ref:`additional patron
   attributes <patron-attribute-types-label>` up, these will appear next

   Additional Patron Attributes
   |image416|

-  Finally, if you have
   :ref:`EnhancedMessagingPreferences` set
   to 'allow,' you can choose the messaging preferences for this patron.

   Patron Messaging Settings
   |image417|

   -  These notices are:

      -  Advanced notice : A notice in advance of the patron's items
         being due (The patron can choose the number of days in advance)

      -  Item checkout : A notice that lists all the of the items the
         patron has just checked out and/or renewed, this is an
         electronic form of the checkout receipt

      -  Hold filled : A notice when you have confirmed the hold is
         waiting for the patron

      -  Item due : A notice on the day and item is due back at the
         library

      -  Item check-in : A notice that lists all the of the items the
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

Patron Duplicate Suspected
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

Patron age warning
|image419|

.. _add-a-staff-patron-label:

Add a Staff Patron
----------------------------------------

All staff members must be entered into Koha as patrons of the 'Staff'
type. Follow the steps in :ref:`Add a Patron <add-a-new-patron-label>` to add a
staff member. To give the staff member permissions to access the staff
client, follow the steps in :ref:`Patron Permissions`

    **Important**

    Remember to assign your staff secure usernames and passwords since
    these will be used to log into the staff client.

.. _add-a-statistical-patron-label:

Add a Statistical Patron
----------------------------------------------

One way to track use of in house items is to "check out" the materials
to a statistical patron. The "check out" process doesn’t check the book
out, but instead tracks an in house use of the item. To use this method
for tracking in house use you first will need a :ref:`patron
category <patron-categories-label>` set up for your Statistical patron.

In House Patron Category
|image420|

Next, you will need to create a new patron of the statistical type

New In House Patron
|image421|

Next, follow the steps put forth in the ':ref:`Add a new
Patron <add-a-new-patron-label>`' section of this manual. Since this patron is
not a real person, simply fill in the required fields, the correct
library and nothing else.

To learn about other methods of tracking in house use visit the
:ref:`Tracking inhouse use <tracking-in-house-use-label>` section of this manual.

.. _duplicate-a-patron-label:

Duplicate a Patron
-----------------------------------------

Sometimes when you're adding a new family to your system you don't want
to type the contact information over and over. Koha allows for you to
duplicate a patron and change only the parts you want to (or need to)
change.

-  Open the patron you want to use as your base (the patron you want to
   duplicate information from)

-  Click the 'Duplicate' button at the top of their record

   The Duplicate Button is the 3rd one in
   |image422|

-  All of the fields with the exception of first name, card number,
   username and password have been duplicated. Fill in the missing
   pieces and click 'Save'

   Duplicating Patron Form
   |image423|

   -  **Note**

          Clicking in a field that is already populated with data will
          clear that field of all information (making it easier for you
          to type in something different)

-  You will be brought to your new patron

   Newly created patron
   |image424|

.. _add-patron-images-label:

Add Patron Images
----------------------------------------

If you would like you can add patron images to help identify patrons. To
enable this feature you must first set the
:ref:`patronimages` preference to 'Allow'.

If the preference is set to 'Allow' you will see a placeholder image
under the patron's name and box to upload a patron image below the basic
contact information.

Add patron image
|image425|

In the 'Upload Patron Image' box click 'Browse' to find the image on
your computer and 'Upload' to load the image on to the patron record.

Patron image
|image426|

    **Important**

    There is a limit of 100K on the size of the picture uploaded and it
    is recommended that the image be 200x300 pixels, but smaller images
    will work as well.

.. _editing-patrons-label:

Editing Patrons
----------------------------------

Patrons in Koha can be edited using one of many edit buttons.

-  To edit the entire patron record simply click the 'Edit' button at
   the top of the patron record.

   Main Patron Edit Menu
   |image427|

-  Patron passwords are not recoverable. The stars show on the patron
   detail next to the Password label are always there even if a password
   isn't set. If a patron forgets their password the only option is to
   reset their password. To change the patron's password, click the
   'Change Password' button

   Patron Password Change Form
   |image428|

   -  Koha cannot display existing passwords. Leave the field blank to
      leave password unchanged.

   -  This form can automatically generate a random password if you
      click the link labeled "Click to fill with a randomly generated
      suggestion. Passwords will be displayed as text."

-  To edit a specific section of the patron record (for example the
   Library Use section) click the 'Edit' link below the section

   Library Use Section of Patron Record
   |image429|

-  A patron image can be added by browsing for the image on your machine
   from the 'Manage Patron Image' section

   Manage Patron Image Form
   |image430|

   -  This form will not appear if you have the
      :ref:`patronimages` system preference to not allow
      patron images

   -  To add patron images in bulk, use the :ref:`Upload Patron
      Images <upload-patron-images-label>` Tool

-  Patrons can also be blocked from checking items out by setting Patron
   Flags

   Patron Warning Flags
   |image431|

   -  If you would like your circulation staff to confirm a patron's
      address before checking items out to the patron, you can see the
      'Gone no Address' flag

      Patron's address in doubt
      |image432|

   -  If the patron reports that they have lost their card you can set
      the 'Lost Card' flag to prevent someone else from using that card
      to check items out

      Patron lost card
      |image433|

   -  If you would like to bar a patron from the library you can add a
      manual restriction

      Add manual restriction
      |image434|

      -  **Note**

             This flag can automatically be set with the :ref:`Overdue/Notice
             Status Triggers <overdue-notice/status-triggers-label>`

   -  If you enter in a date and/or note related to the restriction you
      will see that in the restricted message as well

      Restricted until message
      |image435|

-  Children patrons do not become adults automatically in Koha unless
   you have :ref:`Juvenile to Adult cron job <update-child-to-adult-patron-type-label>` running. To
   upgrade a child patron to and adult patron category manually go to
   the 'More' menu and choose 'Update Child to Adult Patron'

   Update Child to Adult Patron
   |image436|

   -  You will then be presented with a pop up window asking which one
      of your adult patron categories this Child should be updated to

      Choose Adult Category to Update To
      |image437|

.. _managing-patron-self-edits-label:

Managing Patron Self Edits
--------------------------------------------------

If you are allowing patrons to edit their accounts via the OPAC with the
:ref:`OPACPatronDetails` preference then you will need
to approve all changes via the staff client before they're applied. If
there are patron edits awaiting action they will appear on the staff
client dashboard below the modules list (along with other items awaiting
action).

Patron requests waiting
|image438|

    **Note**

    Superlibrarians will see modifications for any branch, other staff
    will only see modifications for patrons who belong to their logged
    in branch.

When you click the 'Patrons requesting modifications' link you will be
brought to a list of patrons with requested changes.

Manage patron updates
|image439|

From here you can 'Approve' and apply the changes to the patron record,
'Delete' and remove the changes or 'Ignore' and keep the changes pending
to review later.

If you would like to see the entire patron record you can click the
'Patron details' links to the right of the buttons. This will open in a
new tab.

.. _patron-permissions-label:

Patron Permissions
-------------------------------------------

Patron Permissions are used to allow staff members access to the staff
client.

    **Important**

    In order for a staff member to log into the staff interface they
    must have (at the very least) 'catalogue' permissions which allow
    them to view the staff interface.

.. _setting-patron-permissions-label:

Setting Patron Permissions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To set patron permissions, you must first :ref:`have a patron of the 'Staff'
type <add-a-staff-patron-label>` open

-  On the patron record click More and choose Set Permissions to alter
   patron permissions

   Set Patron Permissions
   |image440|

-  You will be presented with a list of preferences, some of which can
   be expanded by clicking the plus sign to the left of the section
   title.

   Patron Permissions
   |image441|

.. _patron-permissions-defined-label:

Patron Permissions Defined
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  superlibrarian

   -  Access to all librarian functions

      -  **Note**

             With this selected there is no need to choose any other
             permissions

-  circulate

   -  Check out and check in items

   -  This section can be expanded (:ref:`Learn more <granular-circulate-permissions-label>`)

-  catalogue

   -  **Required for staff login.** Staff access, allows viewing the
      catalogue in staff client

      -  **Important**

             Must be given to all staff members to allow them to login
             to the staff client

-  parameters

   -  Manage Koha system systems (Administration panel)

   -  This section can be expanded (:ref:`Learn
      more <granular-parameters-permissions-label>`)

-  borrowers

   -  Add or modify patrons

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

-  management

   -  Set library management params (deprecated)

      -  **Important**

             This permission level no longer controls anything.

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

   -  **Important**

          Requires the borrowers permission above

-  plugins

   -  Koha plugins

   -  This section can be expanded (:ref:`Learn more <granular-plugins-permissions-label>`)

-  lists

   -  Koha Lists

   -  **Important**

          All staff have permission to create and modify their own
          lists, this permission is only necessary if you'd like to give
          a staff member permission to delete public lists that they
          have not created.

   -  This section can be expanded (:ref:`Learn more <granular-lists-permissions-label>`)

.. _granular-circulate-permissions-label:

Granular Circulate Permissions
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

Granular Parameters Permissions
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
      Circulation and fine rules)

.. _granular-holds-permissions-label:

Granular Holds Permissions
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

Granular Cataloging Permissions
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

   -  **Note**

          Please note that edit\_items permission is still required

-  fast\_cataloging

   -  Fast cataloging

   -  The ability to catalog using only the :ref:`Fast Add
      Framework <fast-add-cataloging-label>` found on the
      `Circulation <#circulation>`__ page

.. _granular-fines-and-charges-permissions-label:

Granular Fines and Charges Permissions
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

Granular Acquisitions Permissions
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

-  vendors\_manage

   -  Manage vendors

.. _granular-serials-permissions-label:

Granular Serials Permissions
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

Granular Tools Permissions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If the staff member has 'tools' permissions they have the ability to
access and use all items under the Tools menu. If you would like to
control which tools staff members have access to on a more granular
level choose from these options:

-  batch\_upload\_patron\_images

   -  Upload patron images in batch or one at a time

   -  Access to the :ref:`Image Upload Tool <upload-patron-images-label>`

-  delete\_anonymize\_patrons

   -  Delete old borrowers and anonymize circulation/reading history
      (deletes borrower reading history)

   -  Access to the :ref:`Anonymize Patron Tool <patrons-(anonymize,-bulk-delete)-label>`

-  edit\_calendar

   -  Define days when the library is closed

   -  Access to the :ref:`Calendar/Holidays Tool <calendar-label>`

-  edit\_news

   -  Write news for the OPAC and staff interfaces

   -  Access to the :ref:`News Tool <news-label>`

-  edit\_notice\_status\_triggers

   -  Set notice/status triggers for overdue items

   -  Access to the :ref:`Overdue Notice Status/Triggers
      Tool <overdue-notice/status-triggers-label>`

-  edit\_notices

   -  Define notices

   -  Access to the :ref:`Notices Tool <notices-&-slips-label>`

-  export\_catalog

   -  Export bibliographic, authorities and holdings data

   -  Access to the :ref:`Export Data Tool <export-data-(marc-&-authorities)-label>`

-  import\_patrons

   -  Import patron data

   -  Access to the :ref:`Import Patrons Tool <patron-import-label>`

-  inventory

   -  Perform inventory (stocktaking) of your catalog

   -  Access to the :ref:`Inventory Tool <inventory/stocktaking-label>`

-  items\_batchdel

   -  Perform batch deletion of items

   -  Access to the :ref:`Batch Item Deletion Tool <batch-item-deletion-label>`

-  items\_batchmod

   -  Perform batch modification of items

   -  Access to the :ref:`Batch Item Modification Tool <batch-item-modification-label>`

-  items\_batchmod\_restricted

   -  Limit :ref:`batch item modification <batch-item-modification-label>` to subfields
      defined in the
      :ref:`SubfieldsToAllowForRestrictedBatchmod`
      preference

   -  **Note**

          Please note that items\_batchmod permission is still required

-  label\_creator

   -  Create printable labels and barcodes from catalog and patron data

   -  Access to the :ref:`Label Creator` and :ref:`Quick Label
      Creator <quick-spine-label-creator-label>` Tools

-  manage\_csv\_profiles

   -  Manage CSV export profiles

   -  Access to the :ref:`CSV Profiles Tool <csv-profiles-label>`

-  manage\_staged\_marc

   -  Manage staged MARC records, including completing and reversing
      imports

   -  Access to the :ref:`Manage Staged MARC Records Tool <staged-marc-record-management-label>`

-  moderate\_comments

   -  Moderate patron comments

   -  Access to the :ref:`Comments Tool <comments-label>`

-  moderate\_tags

   -  Moderate patron tags

   -  Access to the :ref:`Tags Tool <tag-moderation-label>`

-  records\_batchdel

   -  Perform batch deletion of records (bibliographic or authority)

   -  Access to the :ref:`Batch Record Deletion Tool <batch-record-deletion-label>`

-  rotating\_collections

   -  Manage rotating collections

   -  Access to the :ref:`Rotating Collections Tool <rotating-collections-label>`

-  schedule\_tasks

   -  Schedule tasks to run

   -  Access to the :ref:`Task Scheduler Tool <task-scheduler-label>`

-  stage\_marc\_import

   -  Stage MARC records into the reservoir

   -  Access to the :ref:`Stage MARC Records Tool <stage-marc-records-for-import-label>`

-  upload\_general\_files

   -  Upload any file

   -  Access to upload files via the :ref:`Upload Tool <upload-label>`

-  upload\_local\_cover\_images

   -  Upload local cover images

   -  Access to the :ref:`Upload Local Cover Image
      Tool <upload-local-cover-image-label>` as well as permission to add and
      delete local cover images from the bib detail page

-  upload\_manage

   -  Manage uploaded files

   -  Access to uploaded files via the :ref:`Upload Tool <upload-label>`

          **Note**

          upload\_general\_files permission is required for this
          permission

-  view\_system\_logs

   -  Browse the system logs

   -  Access to the :ref:`Log Viewer Tool <log-viewer-label>`

.. _granular-reports-permissions-label:

Granular Reports Permissions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If the staff member has 'reports' permissions they have the ability to
perform all of these actions. If you would like to control reports
permissions on a more granular level choose from these options:

-  create\_reports

   -  Create SQL Reports

   -  The ability to create and edit but not run SQL reports

-  execute\_reports

   -  Execute SQL Reports

   -  The ability to run but not create or edit SQL reports

.. _granular-plugins-permissions-label:

Granular Plugins Permissions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If the staff member has 'plugins' permissions they have the ability to
perform all of these actions. If you would like to control reports
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

Granular Lists Permissions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

All staff members have permission to access lists. This section only
needs to be checked off if you want to give permission to a staff member
to delete public lists that they have no created themselves.

-  delete\_public\_lists

   -  Delete public lists

.. _patron-information-label:

Patron Information
-------------------------------------------

When viewing a patron record you have the option to view information
from one of many tabs found on the left hand side of the record.

-  *Get there:* Patrons > Browse or search for patron > Click patron
   name

.. _check-out-label:

Check Out
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

For instruction on checking items out, view the :ref:`Checking
Out <check-out-(issuing)-label>` section of this manual.

Staff members can access their own check out screen by clicking their
username in the top right of the staff client and choosing 'My
checkouts'

|image1178|

.. _details-label:

Details
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Staff members can access their own account details by clicking their
username in the top right of the staff client and choosing 'My account'

|image442|

All patron information will appear on the Details tab. This includes all
the contact information, notes, custom patron attributes, messaging
preferences, etc entered when adding the patron.

In the case of patrons who are marked as 'Child' or 'Professional' and
their Guarantors additional information will appear on their record.

-  A child patron will list their Guarantor

   Guarantor listed and linked from the child record
   |image443|

-  On the Guarantor's record, all children and/or professionals will be
   listed

   Guarantees listed on the Guarantor's profile
   |image444|

.. _circulation-summary-label:

Circulation Summary
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Below the patron's information on the details screen is a tabbed display
of the items they have checked out, overdue, and on hold.

Checkout summary
|image445|

If they have family at the library staff can see what the other family
members have checked out.

Relative checkouts
|image446|

The Restrictions tab will show for all patrons. If the patron has no
restrictions you will see that on the tab.

Patron restrictions
|image447|

If the patron has restrictions on their account the tab will show the
number and the description.

Patron restrictions
|image448|

Using the 'Add manual restriction' button you can add a restriction to
the patron record from here.

Add restriction
|image449|

.. _fines-label:

Fines
~~~~~~~~~~~~~~~~~~~~~~~~

The patron's complete accounting history will appear on the Fines tab.
Contrary to its name, the Fines tab does not just show fine data, it
also shows membership fees, rental fees, reserve fees and any other
charge you may have for patrons.

Patron Accounting Summary
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

-  A link to print a receipt for that line item

At the top of the table you can click the 'Filter paid transaction' to
hide all completed transaction and above that you can use the search box
to find a specific charge or payment.

.. _charging-fines/fees-label:

Charging Fines/Fees
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Most fees and fines will be charged automatically if the :ref:`fines cron
job <fines-label>` is running:

-  Fines will be charged based on your :ref:`Circulation & Fines
   Rules <circulation-and-fine-rules-label>`

-  Hold fees will be charged based on the rules you set in the :ref:`Patron
   Types & Categories <patron-categories-label>` administration area

-  Rental fees will be charged based on the settings in your :ref:`Item
   Types <item-types-label>` administration area

-  Marking an item 'Lost' via the cataloging module will automatically
   charge the patron the replacement cost for that item

.. _pay/reverse-fines-label:

Pay/Reverse Fines
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Each line item can be paid in full (or written off) using the 'Pay
Fines' tab.

Paying Fines
|image451|

-  Each line item can be paid in full, partially paid, or written off.

-  Pay a fine in full

   -  If you have a note about the payment please type that first then
      move on

   -  Click "Pay" next to the fine you want to pay in full

   -  The full amount of the fine will be populated for you in the
      "Collect From Patron" box

      Pay fine
      |image452|

   -  Click "Confirm"

   -  The fine will be removed from outstanding fines, and displayed as
      fully paid.

-  Pay a partial fine

   -  Click "Pay" next to the fine you want to partially pay

   -  Enter the amount you are collecting from the patron in the
      "Collect From Patron" box

      Pay partial fine
      |image453|

   -  Click "Confirm"

   -  The fine will be updated to show the original Amount, and the
      current Amount Outstanding

-  Pay an amount towards all fines

   -  Click the "Pay Amount" button

   -  Enter the amount you are collecting from the patron in "Collect
      from Patron." The sum of all fines is shown in "Total Amount
      Outstanding"

      Pay Amount
      |image454|

   -  Click "Confirm"

   -  The fine totals will be updated with the payment applied to oldest
      fines first.

-  Pay Selected fines

   -  Check the selection boxes next to the fines you wish to pay, click
      "Pay Selected"

      Select lines to pay
      |image455|

   -  Enter an amount to pay towards the fines.

      Pay Selected
      |image456|

   -  Click "Confirm"

   -  The fine totals will be updated with the payment applied to the
      oldest selected fines first.

-  Writeoff a single fine

   -  Click "Writeoff" next to the fine you wish to writeoff.

   -  The fine will be removed from outstanding fines, and displayed as
      written off.

-  Writeoff All fines

   -  Click the "Writeoff All" button

   -  All fines will be removed from outstanding fines, and displayed as
      written off.

-  If you accidentally mark and item as paid, you can reverse that line
   item by clicking 'Reverse' to the right of the line

   Reverse Link
   |image457|

   -  Once clicked a new line item will be added to the account, showing
      the payment as reversed

      Reversed Payment
      |image458|

.. _creating-manual-invoices-label:

Creating Manual Invoices
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

For fees that are not automatically charged, librarians can create a
manual invoice

Create Manual Invoice
|image459|

-  First choose the type of invoice you would like to create

   -  To add additional values to the manual invoice type pull down
      menu, add them to the `MANUAL\_INV <#manualinvvals>`__ Authorized
      Value

   -  **Important**

          The value set as the Authorized Value for the MANUAL\_INV
          authorized value category will appear as the Description and
          the Authorized Value Description will be used as the amount.

-  If the fee is associated with an item you can enter its barcode so
   that the line item shows a link to that item

-  The description field is where you will enter the description of the
   charge

-  In the amount field, do not enter currency symbols, only numbers and
   decimals

.. _creating-manual-credits-label:

Creating Manual Credits
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Manual credits can be used to pay off parts of fines, or to forgive a
fine amount.

Create Manual Credit
|image460|

-  First choose the type of credit you'd like to apply

-  If this credit is associated with an item you can enter that item's
   barcode so that the line item links to the right item

-  The description field is where you will enter the description of the
   credit

-  In the amount field, do not enter currency symbols, only numbers and
   decimals

.. _printing-invoices-label:

Printing Invoices
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To the right of each account line there is a print link. Clicking that
link will print an invoice for the line item that includes the date and
description of the line item along with the total outstanding on the
account.

Sample Invoice
|image461|

.. _routing-lists-label:

Routing Lists
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A list of all of the serial routing lists the patron belongs to will be
accessible via the 'Routing Lists' tab on the patron record.

Routing Lists
|image462|

On this tab you will be able to see and edit all of the routing lists
that this patron is on.

Patron's routing lists
|image463|

.. _circulation-history-label:

Circulation History
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The circulation history tab will appear if you have set the
:ref:`intranetreadinghistory` preference to allow
it to appear. If you have the :ref:`OPACPrivacy` system
preference set to 'Allow' and the patron has decided that the library
cannot keep this information this tab will only show currently checked
out items.

Patron Circulation History
|image464|

If you would like to export a list of barcodes for the items checked in
today you can find that option under the More menu on the top right of
the page.

Export today's checkins
|image465|

This will generate a text file with one barcode per line.

.. _modification-log-label:

Modification Log
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you have set your :ref:`BorrowersLog` to track changes
to patron records, then this tab will appear. The Modification Log will
show when changes were made to the patron record. If you also have
turned on the :ref:`IssueLog` and :ref:`ReturnLog`
you will see checkins and outs on this screen as well.

Changes to Patron
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

Patron Notices Tab
|image467|

Clicking on the message title will expand the view to show you the full
text of the message that was sent.

Full message text
|image468|

If the message has a status of sent or failed you will have the option
to 'resend' the message to the patron by clicking the 'resentd button
found under the status.

Resend notice
|image469|

.. _statistics-label:

Statistics
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Depending on what you set for the values of your
:ref:`StatisticsFields` system preference, you can see
statistics for one patron's circulation actions.

Patron's Statistics
|image470|

.. _files-label:

Files
~~~~~~~~~~~~~~~~~~~~~~~~

If you set the :ref:`EnableBorrowerFiles` preference
to 'Do' the Files tab will be visible on the patron information page.

Patron Files Tab
|image471|

From here you can upload files to attach to the patron record.

Upload patron files
|image472|

All files that are uploaded will appear above a form where additional
files can be uploaded from.

List of files on the patron record
|image473|

.. _purchase-suggestions-label:

Purchase Suggestions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If the patron has made any purchase suggestions you will see a purchase
suggestions tab on the patron record.

|image1247|

From here you can see all suggestions made by the patron and their
status, you can also create a purchase suggestion on the patron's behalf
by clicking the 'New purchase suggestion' button at the top.

Learn more about :ref:`Purchase suggestions <purchase-suggestions-label>` in the
`Acquisitions <#acqmodule>`__ chapter of this manual.

.. _patron-discharges-label:

Patron discharges
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A discharge is a certificate that says the patron has no current
checkouts, no holds and owe no money. To enable this option on the
patron record you need to set the :ref:`useDischarge`
system preference to 'Allow'.

    **Note**

    In France a "quitus" ("discharge") is needed if you want to register
    for an account in a library or a university).

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

Generate discharge
|image474|

If not then you'll see an error explaining why you can't discharge the
patron.

Cannot discharge
|image475|

Once the letter is generated you will have a PDF to download

Discharge letter
|image476|

    **Note**

    You can style the PDF using the :ref:`NoticeCSS`
    preference.

The patron will have a restriction added to their account

|image1251|

And a history of discharges will be added to the 'Discharge'
tab

|image1252|

.. _patron-search-label:

Patron Search
---------------------------------

Clicking on the link to the Patron module will bring you to a
search/browse screen for patrons. From here you can search for a patron
by any part of their name or their card number.

Patron Search
|image477|

Clicking the small plus sign [+] to the right of the search box will
open up an advanced patron search with more filters including the
ability to limit to a specific category and/or library.

Expanded patron search
|image478|

You can also filter your patron results using the search options on the
left hand side of the page.

|image1253|

Depending on what you have chosen for the 'Search fields' you can search
for patrons in various different ways.

Patron Search Fields
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

Contains or Starts with Search
|image480|

You can also browse through the patron records by clicking on the linked
letters across the top.

Patron Browse
|image481|
