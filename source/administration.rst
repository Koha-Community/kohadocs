.. include:: images.rst

.. _administration-label:

Administration
==============

.. _basic-parameters-label:

Basic parameters
-----------------------------------

*Get there:* More > Administration

    **Important**

    Configure all 'parameters' in the order they appear.

.. _libraries-label:

Libraries
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When setting up your Koha system you will want to add information for
every library that will be sharing your system. This data is used in
several areas of Koha.

-  *Get there:* More > Administration > Basic Parameters > Libraries

When visiting this page you are presented with a list of the libraries that have already been added to the system.

|image122|


.. _adding-a-library-label:

Adding a library
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To add a new library:

-  Click 'New library'

-  The top of the form asks for some basics about the library

   |image124|

   -  The library code should not contain any spaces and be 10 or fewer
      characters. This code will be used as a unique identifier in the
      database.

   -  The name will be displayed on the OPAC wherever the library name
      displays to the public and should be a name that makes sense to
      your patrons.

-  Next you can enter basic contact info about the branch

   |image125|
   .. screenshot is missing the OPAC info box

   -  The address and contact fields can be used to make notices custom
      for each library

   -  The email address field is not required, but it should be filled
      for every library in your system

      -  **Important**

             Be sure to enter a library email address to make sure that
             notices are sent to and from the right address

   -  If you'd like you can enter a different 'Reply-To' email address.
      This is the email address that all replies will go to.

      -  **Note**

             If you do not fill in this value Koha will use the address
             in the :ref:`ReplytoDefault` preference

   -  If you'd like you can also enter a different 'Return-Path' email
      address. This is the email address that all bounced messages will
      go to.

      -  **Note**

             If you do not fill in this value Koha will use the address
             in the :ref:`ReturnpathDefault`
             preference

   -  If the URL field is populated then the library name will be linked
      in the holdings table on the OPAC

      |image126|

   -  The OPAC Info box is for you to put information about the library
      that will appear in the OPAC when the branch name is moused over
      in the holdings table

      |image127|

   -  IP Address does not have be filled in unless you plan on limiting
      access to your staff client to a specific IP Address

      -  **Important**

             An IP address is required if you have enabled
             :ref:`AutoLocation`

   -  If this library has a specific `MARC organization code <http://www.loc.gov/marc/organizations/orgshome.html>`_, you can enter it   here. If left blank, the code entered in the :ref:`MARCOrgCode` preference will be used for this library.

   -  Finally, if you have any notes you can put them here. These will
      not show in the OPAC

    **Note**

    Of the fields listed, only 'Library code' and 'Name' are required

.. _editing/deleting-a-library-label:

Editing/deleting a library
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You will be unable to delete any library that has patrons or items
attached to it.

|image128|

Each library will have an 'Edit' link to the right of it. Click this
link to edit/alter details associated with the library in question.

    **Important**

    You will be unable to edit the 'Library code'

.. _library-groups-label:

Library groups
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Library groups are used in searches to limit the search to a group of 
libraries (for example in a neigbourhood).

-  *Get there:* More > Administration > Basic Parameters > Library groups

When visiting this page you are presented with a list of the groups 
that have already been added to the system.

|image123|

.. _adding-a-group-label:

Adding a group
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Click the 'Add Group' button at the top of the screen

|image129|

- Give the group a title and a description. Only the title is mandatory 
  as it will show up in the staff client and in the OPAC. The description 
  is only used in this page to give an idea of what the group is used for.

- You can limit staff from seeing other groups' patrons by checking the 
  box next to the 'Limit patron data access by group' option.

    **Note**

    This can be overriden with the :ref:`user permission view_borrower_infos_
    from_any_libraries <patron-permissions-defined-label>`.

- If you would like the group to show up in the library pulldown menu at the 
  top of the OPAC (with :ref:`OpacAddMastheadLibraryPulldown` set to 'Add') 
  and on the advanced search page you can check the 'Use for OPAC search 
  groups' box.

- If you want the group to appear in the library pulldown in the staff 
  client advanced search, check the 'Use for staff search groups' box.

|image131|

.. _adding-a-library-to-a-group-label:

Adding a library to a group
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Click on the 'Add library' button next to the group to add a library to 
this group. You will be presented with a list of the libraries that are 
not already in the group.

|image133|

.. _adding-a-sub-group-label:

Adding a sub-group
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If your system is very large, you can create sub-groups. Click on the 
'Actions' button next to the group and select the 'Add a sub-group' 
option. Fill in the title and the description (optional) of the sub-group. 
The features will be inherited from the parent group.

|image1323|

.. _deleting-a-group-label:

Deleting a group
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To delete a group, click on the 'Actions' button next to the group and select 
the 'Delete' option.

|image1324|

|image1325|

.. _item-types-label:

Item types
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Koha allows you to organize your collection by item types and collection
codes.

-  *Get there:* More > Administration > Basic parameters > Item types

Item types typically refer to the material type (book, cd, dvd, etc),
but can be used in any way that works for your library.

|image134|

.. _adding-item-types-label:

Adding item types
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To add a new item type, simply click the 'New item type' button at the
top of the Item types page.

|image135|

-  In the 'Item type' field, enter a short code for your item type (maximum 
   of 10 characters)

-  The description is the plain text definition of the item type (for
   those with multiple languages installed you can translate the item
   type description in to all of those languages using the 'Translate in
   to other languages' link)

-  Item types and can grouped together for searching at the same time.
   For example you can put DVDs and Bluray in to a group called Movie
   and then they can be searched together. These groups are defined in
   the ITEMTYPECAT authorized value.

-  You can choose to have an image associated with your item type

   -  You can choose from a series of image collections

   -  You can link to a remote image

   -  Or you can just have no image associated with the item type

   -  **Important**

          To have your item type images appear in the OPAC you need to
          set :ref:`noItemTypeImages` to 'Show'

      -  *Get there:*\ More > Administration > Global system preferences
         > :ref:`Administration <administration-label>`

-  For items that you are suppressing from the OPAC you can hide their
   item type from being searched in the OPAC

-  For items that do not circulate, check the 'Not for loan' options

   -  Items marked 'Not for loan' will appear in the catalog, but cannot
      be checked out to patrons

-  For items that you charge a rental fee for, enter the total fee you
   charge in the 'Rental charge' field. This will charge the patron on checkout.

   -  **Important**

          Do not enter symbols in this field, only numbers and decimal
          points (ex. $5.00 should be entered as 5 or 5.00)

-  You can add a default replacement cost for this type of item. If left 
   blank, the replacement price of the item itself will be charged to the 
   user when the item is lost.

    -  **Important**
          Do not enter symbols in this field, only numbers and decimal
          points (ex. $5.00 should be entered as 5 or 5.00)


- You can also add a processing fee that will be added to the replacement cost.

   -  **Important**

          Do not enter symbols in this field, only numbers and decimal
          points (ex. $5.00 should be entered as 5 or 5.00)


-  If you would like a message or alert to appear when items of this
   type are checked in you can enter that in the 'Checkin message' box

   |image136|

   -  The Checkin message type can be a Message or an Alert. The only
      difference between these two is the styling. By default a Message
      is blue

      |image137|

      and an Alert is yellow.

      |image138|

-  Some SIP devices need you to use a SIP-specific media type instead of
   Koha's item type (usually lockers and sorters need this media type),
   if you use a device like this you'll want to enter the SIP media
   type.

-  When finished, click 'Save changes'

   -  **Note**

          All fields, with the exception of the 'Item type' will be
          editable from the Item types list

-  Your new item type will now appear on the list

   |image139|

.. _editing-item-types-label:

Editing item types
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Each item type has an Edit button beside it. To edit an item simply
click the 'Edit' link.

    **Important**

    You will not be able to edit the code you assigned as the 'Item
    type' but you will be able to edit the description for the item.

.. _deleting-item-types-label:

Deleting item types
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Each item has a Delete button beside it. To delete an item type, simply click
the 'Delete' link.

    **Important**

    You will not be able to delete item types that are being used by
    items within your system.

|image140|

.. _authorized-values-label:

Authorized values
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Authorized values can be used in several areas of Koha. One reason you
would add an authorized value category would be to control the values
that can be entered into MARC fields by catalogers.

-  *Get there:* More > Administration > Basic parameters > Authorized
   values

.. _existing-values-label:

Existing values
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Koha installs with pre-defined values that your library is likely to
use, for instance 'Lost'.

-  Asort1

   -  Used for acquisitions statistical purposes

-  Asort2

   -  Used for acquisitions statistical purposes

-  BOR\_NOTES

   -  Values for custom patron messages that appear on the circulation
      screen and the OPAC. The value in the Description field should be
      the message text and is limited to 200 characters.

      |image141|

-  Bsort1

   -  Values that can be entered to fill in the patron's sort 1 field

-  Bsort2

   -  Values that can be entered to fill in the patron's sort 2 field

-  CCODE

   -  Collection codes (appears when cataloging and working with items)

-  COUNTRY

   -  Used in UNIMARC 102 $a

-  DAMAGED

   -  Descriptions for items marked as damaged (appears when cataloging
      and working with items)

-  DEPARTMENT

   -  Departments are required by and will be used in the `Course
      Reserves <#coursereserves>`__ module

-  ETAT

   -  Used in French UNIMARC installations in field 995 $o to identify item status.
      Similar to NOT_LOAN

-  HINGS\_AS

   -  General holdings: acquisition status designator :: This data
      element specifies acquisition status for the unit at the time of
      the holdings report.

-  HINGS\_C

   -  General holdings: completeness designator

-  HINGS\_PF

   -  Physical form designators

-  HINGS\_RD

   -  General holdings: retention designator :: This data element
      specifies the retention policy for the unit at the time of the
      holdings report.

-  HINGS\_UT

   -  General holdings: type of unit designator

-  HSBND\_FREQ

   -  Frequencies used by the housebound module. They are displayed on
      the housebound tab in the patron account in staff.

-  ITEMTYPECAT

   - Allows multiple Item types to be searched in a category.  Categories can be
     entered into the Authorized value ITEMTYPECAT. To combine Item types to this
     category, enter this Search category to any Item types.

     For example, an ITEMTYPECAT could be NEW, then in the Item type
     for NEW BOOKS NEW DVDS, etc the search category could be added NEW.
     This is helpful when a patron chooses the Search category of NEW, they could
     get Koha to search multiple Item types with a single search.

-  LANG

   -  ISO 639-2 standard language codes

-  LOC

   Shelving location (usually appears when adding or editing an item). LOC maps to 
   items.location in the Koha database.

   -  CART

      Is the shelving cart location, used by
      :ref:`InProcessingToShelvingCart` and
      :ref:`ReturnToShelvingCart`

   -  PROC

      The location to be used for
      :ref:`NewItemsDefaultLocation` (change
      description as desired), also the location expected by
      :ref:`InProcessingToShelvingCart`.

-  LOST

   -  Descriptions for the items marked as lost (appears when adding or
      editing an item)

   -  **Important**

          Values given to lost statuses should be numeric and not
          alphabetical in order for statuses to appear properly

-  MANUAL\_INV

   -  Values for manual invoicing types

   -  **Important**

          The value set as the Authorized value for the MANUAL\_INV
          authorized value category will appear as the Description and
          the Authorized value description will be used as the amount.
          Enter monetary amounts in the description without currency
          symbols.

-  OPAC\_SUG

   -  A list of reasons displayed in the suggestion form on the OPAC.

-  NOT\_LOAN

   -  Reasons why a title is not for loan

   -  **Important**

          Values given to lost statuses should be numeric and not
          alphabetical in order for statuses to appear properly

   -  **Note**

          Negative number values will still allow holds (use for on
          order statuses for example) where as positive numbers will not
          allow holds or checkouts. A value of 0 means 'for loan'.

-  ORDER\_CANCELLATION\_REASON

   -  Reasons why an order might have been cancelled

-  PAYMENT\_TYPE

   -  Populates a dropdown list of custom payment types when paying fines

-  qualif

   -  Function codes (author, editor, collaborator, etc.) used in UNIMARC 7XX $4
      (French)
      
-  RELTERMS

   -  French terms of relations

-  REPORT\_GROUP

   -  A way to sort and filter your reports, the default values in this
      category include the Koha modules (Accounts, Acquitisions,
      Catalog, Circulation, Patrons)

      |image142|

-  REPORT\_SUBGROUP

   -  Can be used to further sort and filter your reports. This category
      is empty by default. Values here need to include the authorized
      value code from REPORT\_GROUP in the Description (OPAC) field to
      link the subgroup to the appropriate group.

      |image143|

-  RESTRICTED

   -  Restricted status of an item

-  ROADTYPE

   -  Road types to be used in patron addresses

-  SIP\_MEDIA\_TYPE

   -  Used when :ref:`creating <adding-item-types-label>` or
      :ref:`editing <editing-item-types-label>` an item type to assign a SIP specific
      media type for devices like lockers and sorters.

-  SUGGEST

   -  List of patron suggestion reject or accept reasons (appears when
      managing suggestions)

-  SUGGEST\_FORMAT

   -  List of Item types to display in a drop down menu on the Purchase suggestion
      form on the OPAC. When creating the authorized values for SUGGEST_FORMAT,
      enter a description into this form so it is visible on the OPAC to patrons.

-  SUGGEST\_STATUS

   -  A list of additional custom status values for suggestions that can 
      be used in addition to the default values.
      
-  STACK

   -  Shelving control number

-  TERM

   -  Terms to be used in `Course Reserves <#coursereserves>`__ module.
      Enter Terms that will show in the drop down menu when setting up a Course 
      reserve.  (For example: Spring, Summer, Winter, Fall).

-  WITHDRAWN

   -  Description of a withdrawn item (appears when adding or editing an
      item)

-  YES\_NO

   -  A generic authorized value field that can be used anywhere you
      need a simple yes/no pull down menu.

.. _add-new-authorized-value-category-label:

Add new authorized value category
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

In addition to the existing categories that come by default with Koha,
librarians can add their own authorized value categories to control data
that is entered into the system. To add a new category:

-  Click 'New category'

   |image144|

-  Limit your Category to 10 characters (something short to make it
   clear what the category is for)

   -  **Important**

          Category cannot have spaces or special characters other than
          underscores and hyphens in it.

-  When adding a new category you're asked to create at least one
   authorized value

   -  Enter a code for your Authorized value into the 'Authorized value'
      field

      -  **Important**

             Authorized value is limited to 80 characters and cannot
             have spaces or special characters other than underscores
             and hyphens in it.

   -  Use the Description field for the actual value that will be
      displayed. If you want something different to show in the OPAC,
      enter a 'Description (OPAC)'

   -  If you would like to limit this authorized value category to only
      specific libraries you can choose them from the 'Branches
      limitation' menu. To have it show for all libraries just choose
      'All branches' at the top of the list.

   -  If you have
      `StaffAuthorisedValueImages <#StaffAuthorisedValueImages>`__
      and/or :ref:`AuthorisedValueImages` set to
      show images for authorized values you can choose the image under
      'Choose an icon'

-  Click 'Save'

-  Your new category and value will appear on the list of Authorized
   values

   |image145|

.. _add-new-authorized-value-label:

Add new authorized value
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

New authorized values can be added to any existing or new category. To
add a value:

-  Click 'New authorized value for ...'

   |image146|

-  Enter a code for your authorized value into the 'Authorized value'
   field

   -  **Important**

          Authorized value is limited to 80 characters and cannot have
          spaces or special characters other than underscores and
          hyphens in it.

-  Use the Description field for the actual value that will be
   displayed. If you want something different to show in the OPAC, enter
   a 'Description (OPAC)'

-  If you would like to limit this authorized value category to only
   specific libraries you can choose them from the 'Branches limitation'
   menu. To have it show for all libraries just choose 'All branches' at
   the top of the list.

-  If you have
   `StaffAuthorisedValueImages <#StaffAuthorisedValueImages>`__ and/or
   :ref:`AuthorisedValueImages` set to show images
   for authorized values you can choose the image under 'Choose an icon'

-  Click 'Save'

-  The new value will appear in the list along with existing values

   |image147|

.. _patrons-&-circulation-label:

Patrons and circulation
-------------------------------------

Settings for controlling circulation and patron information.

.. _patron-categories-label:

Patron categories
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Patron categories allow you to organize your patrons into different
roles, age groups, and patron types.

-  *Get there:* More > Administration > Patrons and circulation > Patron
   categories

|image148|

Patrons are assigned to one of six main categories:

-  Adult

   -  Most common patron type, usually used for a general 'Patron'
      category.

-  Child

   -  Children patrons can have a guardian to be attached to them.

-  Staff

   -  Librarians (and library workers) should be assigned the staff
      category so that you can :ref:`set their
      permissions <patron-permissions-label>` and give them access to the
      staff client.

-  Organizational

   -  Organizational patrons are organizations. Organizations can be
      used as guarantors for Professional patrons.

-  Professional

   -  Professional patrons can be linked to Organizational patrons

-  Statistical

   -  This patron type is used strictly for statistical purposes, such
      as in house use of items.

.. _adding-a-patron-category-label:

Adding a patron category
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To add a new patron category click 'New category' at the top of the page

|image149|

-  The 'Category code' is an identifier for your new code.

   -  **Important**

          The category code is limited to 10 characters (numbers and
          letters)

   -  **Important**

          This field is required in order to save your patron category.
          If left blank you will be presented with an error.

          |image150|

-  Enter a plain text version of the category in the 'Description'
   field.

   -  **Important**

          This field is required in order to save your patron category.
          If left blank you will be presented with an error.

          |image151|

-  Enrollment period (in months) should be filled in if you have a
   limited enrollment period for your patrons (eg. Student cards expire
   after 9 months or until a specific date)

   -  **Important**

          You cannot enter both a month limit and a date until. Choose
          to enter either one or the other.

   -  **Important**

          This field is required in order to save your patron category.
          If left blank you will be presented with an error.

          |image152|

-  Some patron categories can have a minimum age (in years) requirement
   associated with them, enter this age in the 'Age required'

   -  **Important**

          This value will only be checked if
          :ref:`BorrowerMandatoryField` defines
          the dateofbirth as a required field on the patron record

-  Patron categories can also have a maximum age (in years) associated
   with them (such as children), enter this age in the 'Upperage limit'

   -  **Important**

          This value will only be checked if
          :ref:`BorrowerMandatoryField` defines
          the dateofbirth as a required field on the patron record

-  If you charge a membership fee for your patrons (such as those who
   live in another region) you can enter that in the 'Enrollment fee'
   field.

   -  **Important**

          Only enter numbers and decimals in this field

   -  **Note**

          Depending on your value for the
          :ref:`FeeOnChangePatronCategory`
          preference this fee will be charged on patron renewal as well
          as when they are first enrolled.

-  If you want your patron to receive overdue notices, set the 'Overdue
   notice required' to 'Yes'

-  You can decide on a patron category basis if lost items are shown in
   the staff client by making a choice from the 'Lost items in staff
   client' pull down

   |image153|

   -  **Important**

          Note that this is only applicable in the staff client, so
          changing this value on patron categories who do not have
          access to the staff client won't make any difference

-  If you charge patrons for placing holds on items, enter the fee
   amount in the 'Hold fee' field.

   -  **Important**

          Only enter numbers and decimals in this field

-  In the 'Category type' field choose one of the six main parent
   categories

   |image154|

   -  **Important**

          This field is required in order to save your patron category.
          If left blank you will be presented with an error.

          |image155|

-  The Branch limitations let you limit this patron category to only
   some branches in your library system. Select 'All branches' if you
   would like any library to be able to use this category.

-  You can decide if this patron category is blocked from performing
   actions in the OPAC if their card is expired using the next option.
   By default it will follow the rule set in the
   :ref:`BlockExpiredPatronOpacActions`
   preference

    |image1203|

-  Next you can choose the default privacy settings for this patron
   category. This setting can be edited by the patron via the OPAC if
   you allow it with the :ref:`OPACPrivacy` system
   preference.

    |image1204|

-  You can set the preference for checking the patron's circulation history 
   when checking out an item. The default value for this is set in the 
   :ref:`CheckPrevCheckout` system preference. This setting can be 
   overridden on a per-patron basis in their :ref:`individual file <add-a-new-patron>`.

-  Finally you can assign advanced messaging preferences by default to a
   patron category

   -  **Important**

          Requires that you have
          :ref:`EnhancedMessagingPreferences`
          enabled

   -  These defaults will be applied to new patrons that are added to
      the system. They will not edit the preferences of the existing
      patrons. Also, these can be changed for individual patrons, this
      setting is just a default to make it easier to set up messages for
      an entire category.

      -  **Note**

             After setting the default for the patron category you can
             force those changes to all existing patrons by running the
             *borrowers-force-messaging-defaults* script found in the
             *misc/maintenance* folder. Ask your system administrator
             for assistance with this script.

.. _circulation-and-fine-rules-label:

Circulation and fines rules
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These rules define how your items are circulated, how/when fines are
calculated and how holds are handled.

-  *Get there:* More > Administration > Patrons and circulation >
   Circulation and fines rules

The rules are applied from most specific to less specific, using the
first found in this order:

-  same library, same patron type, same item type

-  same library, same patron type, all item type

-  same library, all patron types, same item type

-  same library, all patron types, all item types

-  default (all libraries), same patron type, same item type

-  default (all libraries), same patron type, all item types

-  default (all libraries), all patron types, same item type

-  default (all libraries), all patron types, all item types

The :ref:`CircControl` and
:ref:`HomeOrHoldingBranch` also come in to play when
figuring out which circulation rule to follow.

-  If CircControl is set to "the library you are logged in at" circulation
   rules will be selected based on the library you are logged in at

-  If CircControl is set to "the library the patron is from" circulation rules
   will be selected based on the patron's library

-  If CircControl is set to "the library the item is from" circulation rules
   will be selected based on the item's library where
   HomeOrHoldingBranch chooses if item's home library is used or holding
   library is used.

-  If :ref:`IndependentBranches` is set to 'Prevent'
   then the value of HomeOrHoldingBranch is used in figuring out if the
   item can be checked out. If the item's home library does not match
   the logged in library, the item cannot be checked out unless you are
   a :ref:`superlibrarian <patron-permissions-defined-label>`.

    **Note**

    If you are a single library system choose your branch name before
    creating rules (sometimes having only rules for the 'all libraries'
    option can cause issues with holds)

    **Important**

    At the very least you will need to set a default circulation rule.
    This rule should be set for all item types, all libraries and all
    patron categories. That will catch all instances that do not match a
    specific rule. When checking out if you do not have a rule for all
    libraries, all item types and all patron types then you may see
    patrons getting blocked from placing holds. You will also want a
    rule for your specific library set for all item types and all patron
    types to avoid this holds issue. Koha needs to know what rule to
    fall back on.

.. _default-circulation-rules-label:

Default circulation rules
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Using the issuing rules matrix you can define rules that depend on
patron/item type combos. To set your rules, choose a library from the
pull down (or 'all libraries' if you want to apply these rules to all
branches):

|image156|

From the matrix you can choose any combination of patron categories and
item types to apply the rules to

|image157|

-  First choose which patron category you'd like the rule to be applied
   to. If you leave this to 'All' it will apply to all patron categories

-  Choose the 'Item type' you would like this rule to apply to. If you
   leave this to 'All' it will apply to all item types

-  Limit the number of items a patron can have checked out at the same
   time by entering a number in the 'Current checkouts allowed' field

-  If you're allowing :ref:`OnSiteCheckouts` then you
   may also want to set a limit on the number of items patron's can have
   onsite.

   -  **Note**

          This setting also depends on the
          :ref:`ConsiderOnSiteCheckoutsAsNormalCheckouts`
          preference

-  Define the period of time an item can be checked out to a patron by
   entering the number of units (days or hours) in the 'Loan period'
   box.

-  Choose which unit of time, Days or Hours, that the loan period and
   fines will be calculated in in the 'Unit' column

-  You can also define a hard due date for a specific patron category
   and item type. A hard due date ignores your usual circulation rules
   and makes it so that all items of the type defined are due on, before
   or after the date you specify.

-  'Fine amount' should have the amount you would like to charge for
   overdue items

   -  **Important**

          Enter only numbers and decimal points (no currency symbols).

-  Enter the 'Fine charging interval' in the unit you set (ex. charge
   fines every 1 day, or every 2 hours)

-  'When to charge' is most handy in libraries that have a fine charging
   interval of more than 1 day.

   -  End of interval

      -  Given a grace period of 2 days and a fine interval of 7 days,
         the first fine will appear 7 days after the due date, it will
         always take one fine interval (7 days), before the first fine
         is charged

   -  Start of interval

      -  Given a grace period of 2 days and a fine interval of 7 days,
         the first fine will appear 2 days after the due date and the
         second fine 7 days after the due date.

-  The 'Fine grace period' is the period of time an item can be overdue
   before you start charging fines.

   -  **Important**

          This can only be set for the Day unit, not in Hours

-  The 'Overdue fines cap' is the maximum fine for this patron and item
   combination

   -  **Important**

          If this field is left blank then Koha will not put a limit on
          the fines this item will accrue. A maximum fine amount can be
          set using the :ref:`MaxFine` system preference.

-  If you would like to prevent overcharging patrons for a lost items,
   you can check the box under 'Cap fine at replacement price.' This
   will prevent the patron's fines from going above the replacement
   price on the item.

   -  **Note**

          If the 'Overdue fines cap' is also set, the fine will be the
          lesser of the two, if both apply to the given overdue
          checkout.

-  If your library 'fines' patrons by suspending their account you can
   enter the number of days their fine should be suspended in the
   'Suspension in days' field

   -  **Important**

          This can only be set for the Day unit, not in Hours

-  You can also define the maximum number of days a patron will be
   suspended in the 'Max suspension duration' setting

-  Next decide if the patron can renew this item type and if so, enter
   how many times they can renew it in the 'Renewals allowed' box

-  If you're allowing renewals you can control how long the renewal loan
   period will be (in the units you have chosen) in the 'Renewal period'
   box

-  If you're allowing renewals you can control how soon before the due
   date patrons can renew their materials with the 'No renewals before'
   box.

   -  Items can be renewed at any time if this value is left blank.
      Otherwise items can only be renewed if the item is due after the
      number in units (days/hours) entered in this box.

   -  To control this value on a more granular level please set the
      :ref:`NoRenewalBeforePrecision`
      preference.

-  You can enable automatic renewals for certain items/patrons if you'd
   like. This will renew automatically following your circulation rules
   unless there is a hold on the item

   -  **Important**

          You will need to enable the :ref:`automatic renewal cron
          job <automatic-renewal-label>` for this to work.

   -  **Important**

          This feature needs to have the "no renewal before" column
          filled in or it will auto renew everyday after the due date

-  If the patron can place holds on this item type, enter the total
   numbers of items (of this type) that can be put on hold in the 'Holds
   allowed' field

-  Next you can decide if this patron/item combo are allowed to place
   holds on items that are on the shelf (or available in the library) or
   not. If you choose 'no' then items can only be placed on hold if
   checked out

-  You can also decide if patrons are allowed to place item specific
   holds on the item type in question. The options are:

   -  Allow: Will allow patrons the option to choose next available or
      item specific

   -  Don't allow: Will only allow patrons to choose next available

   -  Force: Will only allow patrons to choose an specific item

-  Finally, if you charge a `rental fee <#rentalcharge>`__ for the item
   type and want to give a specific patron type a discount on that fee,
   enter the percentage discount (without the % symbol) in the 'Rental
   Discount' field

When finished, click 'Add' to save your changes. To modify a rule,
simply click the 'Edit' link to the right of the fule and edit the
values that appear filled in at the bottom of the form.

|image158|

If you would like to delete your rule, click the 'Delete' link to the
right of the rule.

To save time you can clone rules from one library to another by choosing
the clone option above the rules matrix.

|image159|

After choosing to clone you will be presented with a confirmation
message.

|image160|

.. _default-checkouts-and-hold-policy-label:

Default checkout, hold and return policy
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You can set a default maximum number of checkouts and hold policy that
will be used if none is defined below for a particular item type or
category. This is the fall back rule for defaults.

|image161|

From this menu you can set a default to apply to all item types and
patrons in the library if no other option is set in the forms below.

-  In 'Total current checkouts allowed' enter the total number of items
   patrons can have checked out at one time

-  In 'Total current on-site checkouts allowed' enter the total number
   of items patrons can have checked out on site at a time
   (:ref:`OnSiteCheckouts` needs to be set to 'Enable')

-  Control where patrons can place holds from using the 'Hold Policy'
   menu

   -  From Any Library: Patrons from any library may put this item on
      hold. (default if none is defined)

   -  From Home Library: Only patrons from the item's home library may
      put this book on hold.

   -  No Holds Allowed: No patron may put this book on hold.

-  Control if there is a limit to filling a hold based on the item's
   library

   -  any library

   -  item's home library

   -  item's holding library

   -  **Note**

          The patron's home library should not affect whether a patron
          can place the hold, instead the hold will only be fillable
          when an item matching the pickup location becomes available.

-  Control where the item returns to once it is checked in

   -  Item returns home

   -  Item returns to issuing branch

   -  Item floats

      -  When an item floats it stays where it was checked in and does
         not ever return 'home'

-  Once your policy is set, you can unset it by clicking the 'Unset'
   link to the right of the rule

.. _checkouts-per-patron-label:

Default checkout limit by patron cateogry
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

For this library, you can specify the maximum number of loans that a
patron of a given category can make, regardless of the item type.

|image162|

    **Note**

    If the total amount loanable for a given patron category is left
    blank, no limit applies, except possibly for a limit you define for
    a specific item type.

For example, if you have a rule in the matrix that says Board patrons
are allowed 10 books and 5 DVDs but you want to make it so that Board
patrons only have a total of 12 things checked out at once. If you enter
12 here and the patron has 10 books out already they will only be
allowed 2 DVDs to equal the 12 total they're allowed.

.. _item-fee-refund-on-return-label:

Default lost item fee refund on return policy
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Here, you can specify the default policy for lost item fees on return. 
This policy will apply to this library. This rule is to be used with the 
:ref:`RefundLostOnReturnControl <refundlostonreturncontrol-label>` 
system preference.

.. _item-hold-policies-label:

Default holds policy by item type
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

For this library, you can edit hold and return policies for a given item
type, regardless of the patron's category.

|image163|

The various hold policies have the following effects:

-  From any library: Patrons from any library may put this item on hold.
   (default if none is defined)

-  From home library: Only patrons from the item's home library may put
   this book on hold.

-  No holds allowed: No patron may put this book on hold.

    **Important**

    Note that if the system preference
    :ref:`AllowHoldPolicyOverride` set to
    'allow', these policies can be overridden by your circulation staff.

    **Important**

    These policies are based on the patron's home branch, not the branch
    that the reserving staff member is from.

Control if there is a limit to filling a hold based on the item's
library

-  any library

-  item's home library

-  item's holding library

-  **Note**

       The patron's home library should not affect whether a patron can
       place the hold, instead the hold will only be fillable when an
       item matching the pickup location becomes available.

The various return policies have the following effects:

-  Item returns home: The item will prompt the librarian to transfer the
   item to its home library

   -  **Important**

          If the :ref:`AutomaticItemReturn`
          preference is set to automatically transfer the items home,
          then a prompt will not appear

-  Item returns to issuing branch: The item will prompt the librarian to
   transfer the item back to the library where it was checked out

   -  **Important**

          If the :ref:`AutomaticItemReturn`
          preference is set to automatically transfer the items home,
          then a prompt will not appear

-  Item floats: The item will not be transferred from the branch it was
   checked in at, instead it will remain there until transferred
   manually or checked in at another branch

For example you might allow holds at your libraries but not what New
items or DVDs to be placed on hold by other branches so you can set the
'Hold policy' to 'From home library' so that those items can only be
placed on hold if the items' owning library and the patron's home
library are the same. You can also block holds completely on specific
item types from this form. This is also how you can set up floating item
types and types that remain with their home library.

.. _patron-attribute-types-label:

Patron attribute types
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Patron attributes can be used to define custom fields to associate with
your patron records. In order to enable the use of custom fields you
need to set the :ref:`ExtendedPatronAttributes`
system preference.

-  *Get there:* More > Administration > Patrons and circulation > Patron
   attribute types

A common use for this field would be for a student ID number or a
Driver's license number.

|image164|

.. _adding-patron-attributes-label:

Adding patron attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To add a new patron attribute type, click the 'New patron attribute
type' button at the top of the page

|image165|

-  In the 'Patron attribute type code', enter a short code to identify
   this field

   -  **Important**

          This field is limited to 10 characters (numbers and letters
          only)

   -  **Important**

          This setting cannot be changed after an attribute is defined

-  In the 'Description' field, enter a longer (plain text) explanation
   of what this field will contain

-  Check the box next to 'Repeatable' to let a patron record have
   multiple values of this attribute.

   -  **Important**

          This setting cannot be changed after an attribute is defined

-  If 'Unique identifier' is checked, the attribute will be a unique
   identifier which means, if a value is given to a patron record, the
   same value cannot be given to a different record.

   -  Unique attributes can be used as match points on the :ref:`patron
      import tool <patron-import-label>`

   -  **Important**

          This setting cannot be changed after an attribute is defined

-  Check 'Allow password' to make it possible to associate a password
   with this attribute.

-  Check 'Display in OPAC' to display this attribute on a patron's
   details page in the OPAC.

-  Check 'Searchable' to make this attribute searchable in the staff
   patron search.

-  Check 'Display in check-out' to make this attribute visible in the
   patron's short detail display on the left of the checkout screen and
   other patron pages

   |image166|

-  Authorized value category; if one is selected, the patron record
   input page will only allow values to be chosen from the authorized
   value list.

   -  You will first need to add an authorized value list for it to
      appear in this menu

      -  *Get there:*\ More > Administration > Basic parameters >
         :ref:`Authorized values <authorized-values-label>`

   -  **Important**

          an authorized value list is not enforced during batch patron
          import.

-  If you would like this attribute to only be used by specific branches
   you can choose those branches from the 'Branches limitation' list.
   Choose 'All branches' to show it for all libraries.

   -  **Important**

          Note that items with locations already set on them will not be
          altered. The branch limitation only limits the choosing of an
          authorized value based on the home branch of the current staff
          login. All authorized values for item records (LOC, LOST,
          CCODE, etc) will show in the OPAC for all patrons.

-  If you'd like to only show this attribute on patrons of one type
   choose that patron type from the 'Category' pull down

-  If you have a lot of attributes it might be handy to group them so
   that you can easily find them for editing. If you create an
   :ref:`Authorized value <authorized-values-label>` for PA\_CLASS it will show
   in the 'Class' pull down and you can then change your attributes page
   to have sections of attributes

   |image167|

-  Click Save to save your new attribute

Once added your attribute will appear on the list of attributes and also
on the patron record add/edit form

|image168|

If you have set up classes for organizing attributes they will appear
that way on the add/edit patron form

|image169|

.. _editing/deleting-patron-attributes-label:

Editing/deleting patron attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Each patron attribute has an edit and a delete link beside it on the
list of attributes.

Some fields in the attribute will not be editable once created:

-  Patron attribute type code

-  Repeatable

-  Unique identifier

You will be unable to delete an attribute if it's in use.

|image170|

.. _library-transfer-limits-label:

Library transfer limits
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Limit the ability to transfer items between libraries based on the
library sending, the library receiving, and the collection code
involved.

-  *Get there:* More > Administration > Patrons and circulation > Library
   transfer limits

These rules only go into effect if the preference
:ref:`UseBranchTransferLimits <usebranchtransferlimits-&-branchtransferlimitstype-label>` is set to
'enforce'.

Before you begin you will want to choose which library you are setting
these limits for.

|image171|

Transfer limits are set based on the collections codes you have applied
via the :ref:`Authorized value <authorized-values-label>` administration area.

|image172|

Collection codes will appear as tabs above the checkboxes:

|image173|

Check the boxes for the libraries that you accept checkins from for the
item type you have selected at the top (in the example below - FIC)

|image174|

In the above example, Centerville library will allow patrons to return
items from all libraries except Liberty and Franklin to their branch.

.. _transport-cost-matrix-label:

Transport cost matrix
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The transport cost matrix lets a library system define relative costs to
transport books to one another. In order for the system to use this
matrix you must first set the
:ref:`UseTransportCostMatrix` preference to
'Use'.

    **Important**

    The transport cost matrix takes precedence in controlling where
    holds are filled from, if the matrix is not used then Koha checks
    the :ref:`StaticHoldsQueueWeight <staticholdsqueueweight,-holdsqueueskipclosed-&-randomizeholdsqueueweight-label>`.

Costs are decimal values between some arbitrary maximum value (e.g. 1 or
100) and 0 which is the minimum (no) cost. For example, you could just
use the distance between each library in miles as your 'cost', if that
would accurately reflect the cost of transferring them. Perhaps post
offices would be a better measure. Libraries sharing a post office would
have a cost of 1, adjacent post offices would have a cost of 2, etc.

To enter transport costs simply click in the cell you would like to
alter, uncheck the 'Disable' box and enter your 'cost'

|image175|

After entering in your cost, hit 'Enter' on your keyboard or click the
'Save' button at the bottom of the matrix to save your changes.

    **Note**

    A NULL value will make no difference where the From and To libraries
    are the same library. However, as a best practice, you should put a
    0 in there. For all other To/From combinations, a NULL value will
    cause that relationship to act as if it has been disabled. So, in
    summary, don't leave any of the values empty. It's best to always
    put a number in there ( even if you choose to disable that given
    To/From option ).

.. _item-circulation-alerts-label:

Item circulation alerts
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Libraries can decide if they want to have patrons automatically notified
of circulation events (check ins and check outs).

-  *Get there:* More > Administration > Patrons and circulation > Item
   circulation alerts

These preferences are set based on patron types and item types.

    **Important**

    These preference can be overridden by changes in the individual
    patron's messaging preferences.

To set up circulation alerts:

-  Choose your library from the pull down at the top of the screen

   |image176|

   -  To set preferences for all libraries, keep the menu set to
      'Default'

-  By default all item types and all patrons are notified of check ins
   and check outs. To change this, click on the item/patron type combo
   that you would like to stop notices for.

   |image177|

   -  In the above example, Juveniles and Kids will not receive check
      out notices.

.. _cities-and-towns-label:

Cities and towns
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To standardize patron input you can define cities or towns within your
region so that when new patrons are added librarians simply have to
select the town from a list instead of having to type the town and zip
(or postal) code information.

-  *Get there:* More > Administration > Patrons and circulation > Cities
   and towns

.. _adding-a-city-label:

Adding a city
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To add a new city, click the 'New city' button at the top of the page
and enter the city name, state, zip/postal code and country.

|image178|

One you click Submit, your city will be saved and will be listed on the
Cities and towns page

|image179|

Cities can be edited or deleted at any time.

.. _viewing-cities-on-patron-add-form-label:

Viewing cities on patron add form
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you have defined local cities using the 'New city' form, then when
adding or editing a patron record you will see those cities in a pull
down menu to make city selection easy.

|image180|

This will allow for easy entry of local cities into the patron record
without risking the potential for typos or mistaken zip/postal codes.

.. _catalog-administration-label:

Catalog administration
--------------------------------------

Set these controls before you start cataloging on your Koha system.

-  *Get there:* More > Administration > Catalog

.. _marc-bibliographic-frameworks-label:

MARC bibliographic frameworks
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Think of frameworks as templates for creating new bibliographic records.
Koha comes with some predefined frameworks that can be edited or
deleted, and librarians can create their own frameworks for content
specific to their libraries.

-  *Get there:* More > Administration > Catalog > MARC bibliographic
   frameworks

|image181|

    **Important**

    Do not delete or edit the Default framework since this will cause
    problems with your cataloging records - always create a new template
    based on the Default framework, or alter the other frameworks.

After clicking the 'MARC structure' link to the right of each framework
you can decide how many fields you want to see on one screen by using
the pagination options at the top of the table.

|image182|

.. _add-new-framework-label:

Add new framework
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To add a new framework

-  Click 'New framework'

   |image183|

   -  Enter a code of 4 or fewer characters

   -  Use the Description field to enter a more detailed definition of
      your framework

-  Click 'Submit'

-  Once your framework is added click 'MARC structure' to the right of
   it on the list of frameworks

   |image184|

   -  You will be asked to choose a framework to base your new framework
      off of, this will make it easier than starting from scratch

-  Once your framework appears on the screen you can edit or delete each
   field by following the instructions for :ref:`editing
   subfields <edit-framework-subfields-label>`

.. _edit-existing-frameworks-label:

Edit existing frameworks
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Clicking 'Edit' to the right of a framework will only allow you to edit
the description for the framework:

|image185|

To make edits to the fields associated with the framework you must first
click 'MARC Structure' and then follow the instructions for :ref:`editing
subfields <edit-framework-subfields-label>`

.. _add-subfields-to-frameworks-label:

Add subfields to frameworks
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To add a field to a framework click the 'New tag' button at the top of
the framework definition

|image186|

This will open up a blank form for entering MARC field data

|image187|

Enter the information about your new tag:

-  The 'Tag' is the MARC field number

-  The 'Label for lib' is the text that will appear in the staff client
   when in the cataloging module

-  The 'Label for OPAC' is the text that will appear in the OPAC when
   viewing the MARC version of the record

-  If this field can be repeated, check the 'Repeatable' box

-  If this field is mandatory, check the 'Mandatory' box

-  If you want this field to be a pull down with limited possible
   answers, choose which 'Authorized value' list you want to use

When you're finished, click 'Save changes' and you will be presented
with your new field

|image188|

To the right of the new field is a link to 'Subfields,' you will need to
add subfields before this tag will appear in your MARC editor. The
process of entering the settings for the new subfield is the same as
those found in the :ref:`editing subfields in frameworks <edit-framework-subfields-label>`
section of this manual.

.. _edit-framework-subfields-label:

Edit framework subfields
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Frameworks are made up of MARC fields and subfields. To make edits to
most frameworks you must edit the fields and subfields. Clicking 'Edit'
to the right of each subfield will allow you to make changes to the text
associated with the field

|image189|

-  Each field has a tag (which is the MARC tag) that is uneditable

   -  The 'Label for lib' is what will show in the staff client if you
      have :ref:`advancedMARCeditor` set to display
      labels

   -  The 'Label for OPAC' is what will show on the MARC view in the
      OPAC

   -  If you check 'Repeatable' then the field will have a plus sign
      next to it allowing you to add multiples of that tag

   -  If you check 'Mandatory' the record will not be allowed to save
      unless you have a value assigned to this tag

   -  'Authorized value' is where you define an :ref:`authorized
      value <authorized-values-label>` that your catalogers can choose from
      a pull down to fill this field in

To edit the subfields associated with the tag, click 'Subfields' to the
right of the tag on the 'MARC Structure' listing

-  From the list of subfields you can click 'Delete' to the right of
   each to delete the subfields

-  To edit the subfields click 'Edit subfields'

-  For each subfield you can set the following basic constraint values

   |image190|

   -  Text for librarian

      -  what appears before the subfield in the librarian interface

   -  Text for OPAC

      -  what appears before the field in the OPAC.

         -  If left empty, the text for librarian is used instead

   -  Repeatable

      -  the field will have a plus sign next to it allowing you to add
         multiples of that tag

   -  Mandatory

      -  the record will not be allowed to save unless you have a value
         assigned to this tag

   -  Managed in tab

      -  defines the tab where the subfield is shown. All subfields of a
         given field must be in the same tab or ignored. Ignore means
         that the subfield is not managed.

-  For each subfield you can set the following advanced constraint
   values

   |image191|

   -  Default value

      -  defines what you want to appear in the field by default, this
         will be editable, but it saves time if you use the same note
         over and over or the same value in a field often.

      -  **Note**

             If you would like a field to fill in with today's date you
             can use the YYYY MM DD syntax in the 'Default value'. For
             example: a default of "Year:YYYY Month:MM Day:DD" (without
             quotes) will print as "Year:2015 Month:11 Day:30"

   -  Visibility

      -  allows you to select from where this subfield is
         visible/hidden, simply check the boxes where you would like the
         field to show and uncheck the boxes where you would like it
         hidden.

         |image192|

   -  Is a URL

      -  if checked, it means that the subfield is a URL and can be
         clicked

   -  Link

      -  If you enter a field/subfield here (200b), a link appears after
         the subfield in the MARC Detail view. This view is present only
         in the staff client, not the OPAC. If the librarian clicks on
         the link, a search is done on the database for the
         field/subfield with the same value. This can be used for 2 main
         topics :

         -  on a field like author (200f in UNIMARC), put 200f here, you
            will be able to see all bib records with the same author.

         -  on a field that is a link (4xx) to reach another bib record.
            For example, put 011a in 464$x, will find the serials that
            are with this ISSN.

      -  **Warning**

             This value should not change after data has been added to
             your catalog. If you need to change this value you must ask
             your system administrator to run
             misc/batchRebuildBiblioTables.pl.

   -  Koha link

      -  Koha is multi-MARC compliant. So, it does not know what the
         245$a means, neither what 200$f (those 2 fields being both the
         title in MARC21 and UNIMARC). So, in this list you can "map" a
         MARC subfield to its meaning. Koha constantly maintains
         consistency between a subfield and its meaning. When the user
         want to search on "title", this link is used to find what is
         searched (245 if you're MARC21, 200 if you're UNIMARC).

-  For each subfield you can set the following Other option values

   |image193|

   -  Authorized value

      -  means the value cannot by typed by the librarian, but must be
         chosen from a pull down generated by the :ref:`authorized
         value <authorized-values-label>` list

      -  In the example above, the 504a field will show the MARC504
         authorized values when cataloging

         |image194|

   -  Thesaurus

      -  means that the value is not free text, but must be searched in
         the authority/thesaurus of the selected category

   -  Plugin

      -  means the value is calculated or managed by a plugin. Plugins
         can do almost anything.

      -  Examples:

         -  For call numbers there is an option to add a call number
            browser next to the the call number subfield so that you can
            identify which call numbers are in use and which are not.
            Simply choose the cn\_browser.pl plugin. Learn more in the
            :ref:`cataloging section <adding-items-label>` of this manual.

         -  If you'd like to let file uploads via cataloging you can
            choose the upload.pl plugin and this will allow you to
            :ref:`upload files to Koha to link to your
            records <attaching-files-to-records-label>`.

         -  In UNIMARC there are plugins for every 1xx fields that are
            coded fields. The plugin is a huge help for cataloger! There
            are also two plugins (unimarc\_plugin\_210c and
            unimarc\_plugin\_225a that can "magically" find the editor
            from an ISBN, and the collection list for the editor)

-  To save your changes simply click the 'Save changes' button at the
   top of the screen

.. _import/export-frameworks-label:

Import/export frameworks
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Next to each framework is a link to either import or export the
framework.

.. _export-framework-label:

Export framework
''''''''''''''''''''''''''''''''''''''''

To export a framework simply click the 'Export' link to the right of
framework title.

|image195|

When you click 'Export' you will be prompted to choose what format to
export the file in.

|image196|

A framework exported this way can be imported into any other Koha
installation using the import framework option.

.. _import-framework-label:

Import framework
''''''''''''''''''''''''''''''''''''''''

An easy way to create a new framework is to import one created for your
or another Koha installation. This framework would need to be exported
from the other system :ref:`using the instructions
above <export-framework-label>` to be available for import here.

To import a framework you first need to create :ref:`a new
framework <add-new-framework-label>`. Once you have that framework, click
'Import' to the right of the new framework.

|image197|

You will be prompted to find a file on your computer to import into the
framework.

|image198|

You will be asked to confirm your actions before the file is imported.

|image199|

As your file is uploaded you will see an image that will confirm that
the system is working.

|image200|

Once your import is complete you will be brought to the framework edit
tool where you can make any changes you need to the framework you
imported.

.. _koha-to-marc-mapping-label:

Koha to MARC mapping
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

While Koha stores the entire MARC record, it also stores common fields
for easy access in various tables in the database. Koha to MARC mapping
is used to tell Koha where to find these values in the MARC record. In
many cases you will not have to change the default values set by in this
tool on installation, but it is important to know that the tool is here
and can be used at any time.

-  *Get there:* More > Administration > Catalog > Koha to MARC mapping

The table shows all the database fields that can be mapped to MARC fields.

|image201|

To add a new mapping, click on the 'Add' button to the right of the 
appropriate field.

|image202|

Write in the MARC field and subfield you would like to map, separated 
by a comma, to this Koha field and click the 'OK' button. 

    **Note**

    It is possible to link more than one MARC field to a database field.
    For example, you could link both 260$a and 264$a to the biblioitems.place
    field.

If you would like to clear the mapping for a database field, click
the 'Remove' button.

    **Note**

    All changes are immediate.

.. _keywords-to-marc-mapping-label:

Keywords to MARC mapping
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This tool will allow you to map MARC fields to a set of predefined
keywords.

-  *Get there:* More > Administration > Catalog > Keywords to MARC
   mapping

    **Important**

    This tool only affects sites that are not using the XSLT
    stylesheets.

At this time the only keyword in use is 'subtitle.'

Using this tool you can define what MARC field prints to the detail
screen of the bibliographic record using keywords. The following example
will use the subtitle field.

Using the framework pull down menu, choose the
:ref:`Framework <marc-bibliographic-frameworks-label>` you would like to apply this rule to.
For example, the subtitle for books can be found in the 245$b field.

|image203|

However the subtitle for DVDs appears in 245$p

|image204|

Using this tool you can tell Koha to print the right field as the
subtitle when viewing the bibliographic record in the OPAC.

|image205|

This tool can be used to chain together pieces of the record as well. If
you want the series number to show in the title on your search results
you simply have to map 490 $v to 'subtitle' along with the 245 $b.

    **Note**

    Chain together the fields you want to show after the item title in
    the order in which you want them to appear.

Future developments will include additional keyword assigned fields.

.. _marc-bibliographic-framework-test-label:

MARC bibliographic framework test
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Checks the MARC structure.

-  *Get there:* More > Administration > Catalog > MARC bibliographic
   framework test

If you change your MARC bibliographic framework it's recommended that
you run this tool to test for errors in your definition.

|image206|

.. _authority-types-label:

Authority types
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Authority types are basically MARC frameworks for authority records and
because of that they follow the same editing rules found in the :ref:`MARC
bibliographic frameworks <marc-bibliographic-frameworks-label>` section of this manual.
Koha comes with many of the necessary authority frameworks already
installed. To learn how to add and edit authority types, simply review
the :ref:`MARC bibliographic frameworks` section of this manual.

-  *Get there:* More > Administration > Catalog > Authority types

.. _classification-sources-label:

Classification sources
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Source of classification or shelving scheme is an :ref:`Authorized
values <authorized-values-label>` category that is mapped to field 952$2 and
942$2 in Koha's MARC bibliographic frameworks and stored in the
items.cn\_source field in the database.

-  *Get there:* More > Administration > Catalog > Classification sources

|image207|

Commonly used values of this field are:

-  ddc - Dewey Decimal Classification

-  lcc - Library of Congress Classification

If you chose to install classification sources during Koha's
installation, you would see other values too:

-  ANSCR (sound recordings)

-  SuDOC classification

-  Universal Decimal Classification

-  Other/Generic Classification

.. _adding/editing-classification-sources-label:

Adding/editing classification sources
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You can add your own source of classification by using the 'New
classification source' button. To edit use the 'Edit' button.

|image208|

When creating or editing:

-  You will need to enter a code and a description.

-  Check the 'Source in use?' checkbox if you want the value to appear
   in the drop down list for this category.

-  Select the appropriate :ref:`filing rule <classification-filing-rules-label>` from the
   drop down list.

.. _classification-filing-rules-label:

Classification filing rules
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Filing rules determine the order in which items are placed on shelves.

Values that are pre-configured in Koha are:

-  Dewey

-  LCC

-  Generic

Filing rules are mapped to :ref:`Classification
sources <adding/editing-classification-sources-label>`. You can setup new 
filing rules by using the 'New filing rule' button. To edit use the 'Edit' 
button.

When creating or editing:

-  Enter a code and a description

-  Choose an appropriate filing routine - dewey, generic or lcc

.. _record-matching-rules-label:

Record matching rules
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Record matching rules are used when importing MARC records into Koha.

-  *Get there:* More > Administration > Catalog > Record matching rules

The rules that you set up here will be referenced with you :ref:`Stage MARC
records for import <stage-marc-records-for-import-label>`.

It is important to understand the difference between 'Match points' and
'Match checks' before adding new matching rules to Koha.

Match points are the criteria that you enter that must be met in order
for an incoming record to match an existing MARC record in your catalog.
You can have multiple match points on an import rule each with its own
score. An incoming record will be compared against your existing records
('one record at a time') and given a score for each match point. When
the total score of the match points matches or exceeds the threshold
given for the matching rule, Koha assumes a good match and
imports/overlays according your specifications in the import process. An
area to watch out for here is the sum of the match points. Double check
that the matches you want will add up to a successful match.

Example:

Threshold of 1000

Match point on 020$a 1000

Match point on 022$a 1000

Match point on 245$a 500

Match point on 100$a 100

In the example above, a match on either the 020$a or the 022$a will
result in a successful match. A match on 245$a title and 100$a author
(and not on 020$a or 022$a) will only add up to 600 and not be a match.
And a match on 020$a and 245$a will result in 1500 and while this is a
successful match, the extra 500 point for the 245$a title match are
superfluous. The incoming record successfully matched on the 020$a
without the need for the 245$a match. However, if you assigned a score
of 500 to the 100$a Match Point, a match on 245$a title and 100$a author
will be considered a successful match (total of 1000) even if the 020$a
is not a match.

Match checks are not commonly used in import rules. However, they can
serve a couple of purposes in matching records. First, match checks can
be used as the matching criteria instead of the match points if your
indexes are stale and out of date. The match checks go right for the
data instead of relying on the data in the indexes. (If you fear your
indexes are out of date, a rebuild of your indexes would be a great idea
and solve that situation!) The other use for a match check is as a
'double check' or 'veto' of your matching rule. For example, if you have
a matching rule as below:

Threshold of 1000

Match point on 020$a 1000

Match check on 245$a

Koha will first look at the 020$a tag/subfield to see if the incoming
record matches an existing record. If it does, it will then move on to
the Match Check and look directly at the 245$a value in the incoming
data and compare it to the 245$a in the existing 'matched' record in
your catalog. If the 245$a matches, Koha continues on as if a match was
successful. If the 245$a does not match, then Koha concludes that the
two records are not a match after all. The Match Checks can be a really
useful tool in confirming true matches.

When looking to create matching rules for your authority records the
following indexes will be of use:

+--------------------------+--------------------+
| Index name               | Matches MARC tag   |
+==========================+====================+
| LC-cardnumber            | 010$a              |
+--------------------------+--------------------+
| Personal-name            | 100$a              |
+--------------------------+--------------------+
| Corporate-name-heading   | 110$a              |
+--------------------------+--------------------+
| Meeting-name             | 111$a              |
+--------------------------+--------------------+
| Title-uniform            | 130$a              |
+--------------------------+--------------------+
| Chronological-term       | 148$a              |
+--------------------------+--------------------+
| Subject-topical          | 150$a              |
+--------------------------+--------------------+
| Name-geographic          | 151$a              |
+--------------------------+--------------------+
| Term-genre-form          | 155$a              |
+--------------------------+--------------------+

Table: Authority indexes

.. _adding-matching-rules-label:

Adding matching rules
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To create a new matching rule :

-  Click 'New record matching rule'

   |image209|

   -  Choose a unique name and enter it in the 'Matching rule code'
      field

   -  'Description' can be anything you want to make it clear to you
      what rule you're picking

   -  'Match threshold' is the total number of 'points' a biblio must
      earn to be considered a 'match'

   -  'Record type' is the type of import this rule will be used for -
      either authority or bibliographic

   -  Match points are set up to determine what fields to match on

   -  'Search index' can be found by looking at the ccl.properties file
      on your system which tells the zebra indexing what data to search
      for in the MARC data". Or you can review the index for standard
      index names used. :ref:`Koha Search Indexes`

   -  'Score' - The number of 'points' a match on this field is worth.
      If the sum of each score is greater than the match threshold, the
      incoming record is a match to the existing record

   -  Enter the MARC tag you want to match on in the 'Tag' field

   -  Enter the MARC tag subfield you want to match on in the
      'Subfields' field

   -  'Offset' - For use with control fields, 001-009

   -  'Length' - For use with control fields, 001-009

   -  Koha only has one 'Normalization rule' that removes extra
      characters such as commas and semicolons. The value you enter in
      this field is irrelevant to the normalization process.

   -  'Required match checks' - ??

.. _sample-bibliographic-record-matching-rule-control-number-label:

Sample bibliographic record matching rule: Control number
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

|image210|

-  Match threshold: 100

-  Record type: Bibliographic

   -  **Note**

          If you'd like a rule to match on the 001 in authority records
          you will need the repeat all of these values and change just
          the record type to 'Authority record'

-  Matchpoints (just the one):

-  Search index: Control-number

-  Score: 101

-  Tag: 001

   -  **Note**

          this field is for the control number assigned by the
          organization creating, using, or distributing the record

-  Subfields: a

-  Offset: 0

-  Length: 0

-  Normalization rule: Control-number

-  Required match checks: none (remove the blank one)

   |image211|

.. _oai-sets-configuration-label:

OAI sets configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

On this page you can create, modify and delete OAI-PMH sets

.. _create-a-set-label:

Create a set
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To create a set:

-  Click on the link 'Add a new set'

-  Fill the mandatory fields 'setSpec' and 'setName'

-  Then you can add descriptions for this set. To do this click on 'Add
   description' and fill the newly created text box. You can add as many
   descriptions as you want.

-  Click on 'Save' button'

.. _modify/delete-a-set-label:

Modify/delete a set
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To modify a set, just click on the link 'Modify' on the same line of the
set you want to modify. A form similar to set creation form will appear
and allow you to modify the setSpec, setName and descriptions.

To delete a set, just click on the link 'Delete' on the same line of the
set you want to delete.

.. _define-mappings-label:

Define mappings
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Here you can define how a set will be build (what records will belong to
this set) by defining mappings. Mappings are a list of conditions on
record content. A record only need to match one condition to belong to
the set.

-  Fill the fields 'Field', 'Subfield' and 'Value'. For example if you
   want to include in this set all records that have a 999$9 equal to
   'XXX'. Fill 'Field' with 999, 'Subfield' with 9 and 'Value' with XXX.

-  If you want to add another condition, click on 'OR' button and repeat
   step 1.

-  Click on 'Save'

To delete a condition, just leave at least one of 'Field', 'Subfield' or
'Value' empty and click on 'Save'.

    **Note**

    Actually, a condition is true if value in the corresponding subfield
    is strictly equal to what is defined if 'Value'. A record having
    999$9 = 'XXX YYY' will not belong to a set where condition is 999$9
    = 'XXX'.

And it is case sensitive : a record having 999$9 = 'xxx' will not belong
to a set where condition is 999$9 = 'XXX'.

.. _build-sets-label:

Build sets
^^^^^^^^^^^^^^^^^^^^^^^^^^

Once you have configured all your sets, you have to build the sets. This
is done by calling the script misc/migration\_tools/build\_oai\_sets.pl.

.. _item-search-fields-label:

Item search fields
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

From here you can add custom search fields to the :ref:`item
search <item-searching-label>` option in the staff client.

    |image1205|

To add a new search term simply click the 'New search field' button

    |image1206|

-  Name is a field for you to identify the search term

-  Label is what will appear on the item search page

-  MARC field allows you to pick which field you'd like to search in

-  MARC subfield is the subfield you'd like to search in

-  Authorised values category can be used to turn this search field in
   to a pull down instead of a free text field

Once your new field is added it will be visible at the top of this page
and on the item search page

    |image1207|

.. _acquisitions-module-label:

Acquisitions
----------------------------

The Koha Acquisitions module provides a way for the library to record
orders placed with vendors and manage purchase budgets.

Before using the `Acquisitions Module <#acqmodule>`__, you will want to
make sure that you have completed all of the set up.

-  *Get there:* More > Administration > Acquisitions

.. _currencies-and-exchange-rates-label:

Currencies and exchange rates
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you place orders from more than one country you will want to input
currency exchange rates so that your acquisitions module will properly
calculate totals.

-  *Get there:* More > Administration > Acquisitions > Currencies and
   exchange rates

|image212|

    **Note**

    This data is not automatically updated, so be sure to keep it up to
    date so that your accounting is kept correct.

The ISO code you enter will be used when importing MARC files via the
staging tools, the tool will attempt to find and use the price of the
currently active currency.

The active currency is the main currency you use in your library. Your
active currency will have a check mark in the 'Active' column. If you
don't have an active currency you will see an error message telling you
to choose an active currency.

|image213|

.. _budgets-label:

Budgets
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Budgets are used for tracking accounting values related to acquisitions.
For example you could create a budget for the current year (ex. 2015)
and then break that into :ref:`Funds` for different areas of the
library (ex. Books, Audio, etc).

-  *Get there:* More > Administration > Acquisitions > Budgets

When visiting the main budget administration you will see two tabs, one
for active and one for inactive budgets.

|image214|

.. _adding-budgets-label:

Adding budgets
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Budgets can either be created :ref:`from scratch <add-a-new-budget-label>`, by
:ref:`duplicating the previous year's budget <duplicate-a-budget-label>` or by
:ref:`closing a previous year's budget <close-a-budget-label>`.

.. _add-a-new-budget-label:

Add a new budget
''''''''''''''''''''''''''''''''''''

If you haven't used Koha before for acquisitions then you'll need to
start fresh with a new budget. To add a new budget click the 'New
budget' button.

|image215|

-  Choose the time period this budget is for, whether it's an academic
   year, a fiscal year, a quarter, etc.

-  The description should be something that will help you identify the
   budget when ordering

-  In the amount box do not use any symbols, simply enter the amount of
   the budget with numbers and decimals.

-  Marking a budget active makes it usable when placing orders in the
   acquisitions module, even if the order is placed after the budget end
   date. This will allow you to record orders that were places in a
   previous budget period.

-  Locking a budget means that funds will not be able to be modified by
   librarians

Once you have made your edits, click the 'Save changes' button. You will
be brought to a list of your existing budgets.

|image216|

.. _duplicate-a-budget-label:

Duplicate a budget
'''''''''''''''''''''''''''''''''''''''''

To duplicate a budget from a previous year, click on the link for the
budget name from the list of budgets

|image217|

On the screen listing the budget breakdown click the 'Edit' button at the
top and choose to 'Duplicate budget'

|image218|

You can also click the 'Actions' button to the right of the budget and
choose 'Duplicate'.

|image1208|

In both cases you will be presented with a form where you simply need to
enter the new start and end date and save the budget.

|image219|

Check the box for 'Mark the original budget as inactive' if the original
budget should no longer be used.

Check the box for 'Set all funds to zero' if you wish the new budget to
contain all the same fund structures as the previous budget but no
allocations until you manually enter an amount in the fund.

This will not only duplicate your budget, but all of the funds
associated with that budget so that you can reuse budgets and funds from
year to year and so that you can move unreceived orders and if desired
unspent funds from a previous budget to the new budget.

.. _close-a-budget-label:

Close a budget
'''''''''''''''''''''''''''''''''

Close a budget to move or roll over unreceived orders and if desired
unspent funds from a previous budget to a new budget. Before closing
your budget you might want to :ref:`duplicate the previous year's
budget <duplicate-a-budget-label>` so that you have somewhere for the
unreceived orders to roll to.

Find the previous budget with unreceived orders on the Active budgets or
the Inactive budgets tab and select 'Close' under 'Actions'.

    |image1209|

    **Note**

    In order for the unreceived orders to be automatically moved to the
    new budget, the fund structures in the previous budget must exist in
    the new budget. Budgets without unreceived orders cannot be closed.

When you select 'Close' you will be presented with a form.

    |image1210|

Use the 'Select a budget' drop down to choose the new budget for the
unreceived orders.

Check the box for 'Move remaining unspent funds' to move the unspent
amounts from the funds of the budget being closed to the selected
budget.

Once you have made your choices, click the 'Move unreceived orders'
button. You will be presented with a dialog box that says 'You have
chosen to move all unreceived orders from 'Budget X' to 'Budget Y'. This
action cannot be reversed. Do you wish to continue?' Budget X is the
budget to be closed and Budget Y is the selected budget.

    |image1211|

If everything seems correct click 'OK' and the unreceived orders and, if
selected, unspent funds will be moved.

Wait until the 'Report after moving unreceived orders from budget X to
Y' displays. This will list the order numbers which have been impacted
(grouped by fund) and detail if the unreceived order was moved or if
there was a problem. For example, if the new budget does not contain a
fund with the same name as the previous budget, the order will not be
moved.

|image220|

.. _funds-label:

Funds
~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Administration > Acquisitions > Funds

.. _add-a-fund-label:

Add a Fund
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

A fund is added to a budget.

    **Important**

    A :ref:`budget <adding-budgets-label>` must be defined before a fund can be
    created.

To add a new fund click the 'New' button and then choose which budget you
would like to add the fund to.

|image221|

In the form that appears you want to enter the basics about your fund.

|image222|

The three first fields are required, the rest are optional

-  Fund code is a unique identifier for your fund

-  The fund name should be something that librarians will understand

-  Amount should be entered with only numbers and decimals, no other
   characters

-  Warning at (%) or Warning at (amount) can be filled in to make Koha
   warn you before you spend a certain percentage or amount of your
   budget. This will prevent you from overspending.

-  You can choose to assign this fund to a librarian. Doing so will make
   it so that only that librarian can make changes to the fund

-  Choose which library will be using this fund

-  You can restrict who can order from this fund by choosing either the
   'owner', 'owner and users' or 'owner, users and library' from the
   'Restrict access to' menu

   |image223|

   -  **Important**

          Without an owner, the access restriction will be ignored, be
          sure to enter an owner as well as choose a restriction

-  Notes are simply for any descriptive notes you might want to add so
   that librarians know when to use this fund

-  Planning categories are used for statistical purposes. If you will be
   using the Asort1 and/or Asort2 authorised values lists to track your orders
   you need to select them when setting up the fund.  Select the Asort1/Asort2
   option from the dropdown lists for the Statiscal 1 done on: and
   Statistical 2 done on: fields.

-  To learn more about planning categories, check out the :ref:`Planning category
   FAQ <planning-categories-label>`.

When complete, click 'Submit' and you will be brought to a list of all
of the funds for the budget.

|image224|

The monetary columns in the fund table break down as follows:

1. Base-level allocated is the 'Amount' value you defined when creating
   the fund

2. Base-level ordered is the ordered amount for this fund (without child
   funds)

3. Total ordered is the base-level ordered for this fund and all its
   child funds

4. Base-level spent is the spent amount for this fund (without child
   funds)

5. Total spent is the base-level spent for this fund and all its child
   funds

6. Base-level available is 1 - 2

7. Total available is 1 - 3

To the right of each fund you will find the 'Actions' button under which
you will find the 'Edit,' 'Delete,' and 'Add child fund' options.

|image225|

A child fund simply a sub-fund of the fund listed. An example would be
to have a fund for 'Fiction' and under that have a fund for 'New
releases' and a fund for 'Science Fiction.' It is an optional way to
further organize your finances.

Funds with children will show with a small arrow to the left. Clicking
that will show you the children funds.

|image226|

.. _budget-planning-label:

Budget planning
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

When viewing the list of funds click the 'Planning' button and choose
how you would like to plan to spend your budget.

|image227|

If you choose 'Plan by MONTHS' you will see the budgeted amount broken
down by months:

|image228|

To hide some of the columns you can click the 'hide' link to the right
(or below as in the screenshot above) the dates. To add more columns you
can click the 'Show a column' link found below the 'Fund remaining'
heading.

|image229|

From here you can plan your budget spending by manually entering values
or by clicking the 'Auto-fill row' button. If you choose to auto-fill
the form the system will try to divide the amount accordingly, you may
have to make some edits to split things more accurately.

|image230|

Once your changes are made, click the 'Save' button. If you would like
to export your data as a CSV file you can do so by entering a file name
in the 'Output to a file named' field and clicking the 'Output' button.

|image231|

.. _edi-accounts-label:

EDI accounts
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

From here you can set up the information needed to connect to your
acquisitions vendors.

    **Note**

    Before you begin you will need at least one :ref:`Vendor set up in
    Acquisitions <add-a-vendor-label>`.

To add account information click the 'New account' button.

    |image1212|

In the form that appears you will want to enter your vendor information.

New account information

Each vendor will have one account.

.. _library-eans-label:

Library EANs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A library EAN is the identifier the vendor gives the library to send
back to them so they know which account to use when billing. One EDI
account can have multiple EANs.

To add an EAN click the 'New EAN' button.

New EAN

In the form that appears enter the information provided by your vendor.

New EAN form

.. _additional-parameters-label:

Additional parameters
--------------------------------------------

-  *Get there:* More > Administration > Additional parameters

.. _z39.50/sru-servers-label:

Z39.50/SRU servers
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Z39.50 is a client/server protocol for searching and retrieving
information from remote computer databases, in short it's a tool used
for copy cataloging.

SRU- Search/Retrieve via URL - is a standard XML-based protocol for
search queries, utilizing CQL - Contextual Query Language - a standard
syntax for representing queries.

Using Koha you can connect to any Z39.50 or SRU target that is publicly
available or that you have the log in information to and copy both
bibliographic and/or authority records from that source.

-  *Get there:* More > Administration > Additional parameters >
   Z39.50/SRU servers

Koha comes with a default list of Z39.50/SRU targets set up that you can
add to, edit or delete

|image232|

To find additional Z39.50 targets you use IndexData's IRSpy:
`http://irspy.indexdata.com <http://irspy.indexdata.com/>`__ or the
Library of Congress's list of targets http://www.loc.gov/z3950/

.. _add-a-z39.50-target-label:

Add a Z39.50 target
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  From the main Z39.50 page, click 'New Z39.50 server'

   |image233|

   -  'Z39.50 server' should be populated with a name that will help you
      identify the source (such as the library name).

   -  'Hostname' will be the address to the Z39.50 target.

   -  'Port' tells Koha what port to listen on to get results from this
      target.

   -  'Userid' and 'Password' are only required for servers that are
      password protected.

   -  Check the 'Preselected' box if you want this target to always be
      selected by default.

   -  'Rank' lets you enter where in the list you'd like this target to
      appear.

      -  If this is left blank the targets will be in alphabetical
         order.

   -  'Syntax' is the MARC flavor you use.

   -  'Encoding' tells the system how to read special characters.

   -  'Timeout' is helpful for targets that take a long while. You can
      set the timeout so that it doesn't keep trying the target if
      results aren't found in a reasonable amount of time.

   -  'Record type' lets you define if this is a bibliographic or an
      authority target.

   -  'XSLT file(s)' lets enter one or more (comma-separated) XSLT file
      names that you want to apply on the search results.

      -  When retrieving records from external targets you may wish to
         automate some changes to those records. XSLT's allow you to do
         this. Koha ships with some sample XSLT files in the
         /koha-tmpl/intranet-tmpl/prog/en/xslt/ directory ready for use:

         -  Del952.xsl: Remove items (MARC21/NORMARC)

         -  Del995.xsl: Remove items (UNIMARC)

         -  Del9LinksExcept952.xsl: Remove $9 links. Skip item fields
            (MARC21/NORMARC)

         -  Del9LinksExcept995.xsl: Remove $9 links. Skip item fields
            (UNIMARC)

.. _suggested-bibliographic-z39.50-targets-label:

Suggested bibliographic Z39.50 targets
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Koha libraries with open Z39.50 targets can share and find connection
information on the Koha wiki:
http://wiki.koha-community.org/wiki/Koha_Open_Z39.50_Sources. You can
also find open Z39.50 targets by visiting IRSpy:
http://irspy.indexdata.com.

The following targets have been used successfully by other Koha
libraries (in the Americas):

-  ACCESS PENNSYLVANIA 205.247.101.11:210 INNOPAC

-  CUYAHOGA COUNTY PUBLIC webcat.cuyahoga.lib.oh.us:210 INNOPAC

-  GREATER SUDBURY PUBLIC 216.223.90.51:210 INNOPAC

-  HALIFAX PUBLIC catalogue.halifaxpubliclibraries.ca:210 horizon

-  HALTON HILLS PUBLIC cat.hhpl.on.ca:210 halton\_hills

-  LIBRARY OF CONGRESS lx2.loc.gov: 210 LCDB

-  LONDON PUBLIC LIBRARY catalogue.londonpubliclibrary.ca:210 INNOPAC

-  MANITOBA PUBLIC library.gov.mb.ca:210 horizon

-  MILTON PL cat.mpl.on.ca:210 horizon

-  NATIONAL LIBRARY OF WALES cat.llgc.org.uk:210 default

-  NHUPAC 199.192.6.130:211 nh\_nhupac

-  OCEAN STATE LIBRARIES (RI) catalog.oslri.net:210 INNOPAC

-  OHIOLINK olc1.ohiolink.edu:210 INNOPAC

-  PUBCAT prod890.dol.state.vt.us:2300 unicorn

-  SAN JOAQUIN VALLEY PUBLIC LIBRARY SYSTEM (CA) hip1.sjvls.org:210
   ZSERVER

-  SEATTLE PUBLIC LIBRARY ZSERVER.SPL.ORG:210 HORIZON

-  TORONTO PUBLIC symphony.torontopubliclibrary.ca:2200 unicorn

-  TRI-UNI 129.97.129.194:7090 voyager

-  VANCOUVER PUBLIC LIBRARY z3950.vpl.ca:210 Horizon

.. _suggested-authority-z39.50-targets-label:

Suggested Authority Z39.50 Targets
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The following targets have been used successfully by other Koha
libraries (in the Americas):

-  LIBRARIESAUSTRALIA AUTHORITIES
   z3950-test.librariesaustralia.nla.gov.au:210 AuthTraining Userid:
   ANLEZ / Password: z39.50

-  LIBRARY OF CONGRESS NAME AUTHORITIES lx2.loc.gov:210 NAF

-  LIBRARY OF CONGRESS SUBJECT AUTHORITIES lx2.loc.gov:210 SAF

.. _add-a-sru-target-label:

Add a SRU target
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  From the main Z39.50/SRU page, click 'New SRU server'

   |image234|

   -  'Server name' should be populated with a name that will help you
      identify the source (such as the library name).

   -  'Hostname' will be the address to the Z39.50 target.

   -  'Port' tells Koha what port to listen on to get results from this
      target.

   -  'Userid' and 'Password' are only required for servers that are
      password protected.

   -  Check the 'Preselected' box if you want this target to always be
      selected by default.

   -  'Rank' lets you enter where in the list you'd like this target to
      appear.

      -  If this is left blank the targets will be in alphabetical
         order.

   -  'Syntax' is the MARC flavor you use.

   -  'Encoding' tells the system how to read special characters.

   -  'Timeout' is helpful for targets that take a long while. You can
      set the timeout so that it doesn't keep trying the target if
      results aren't found in a reasonable amount of time.

   -  'Additional SRU options' is where you can enter additional options
      of the external server here, like sru\_version=1.1 or
      schema=marc21, etc. Note that these options are server dependent.

   -  'SRU Search field mapping' lets you add or update the mapping from
      the available fields on the Koha search form to the specific
      server dependent index names.

      -  To further refine your searches, you could add the following
         index names to the SRU search field mappings. To do this, edit
         the server and click the Modify button next to this field.

         +---------------+---------------------------+
         | Title         | dc.title                  |
         +---------------+---------------------------+
         | ISBN          | bath.isbn                 |
         +---------------+---------------------------+
         | Any           | cql.anywhere              |
         +---------------+---------------------------+
         | Author        | dc.author                 |
         +---------------+---------------------------+
         | ISSN          | bath.issn                 |
         +---------------+---------------------------+
         | Subject       | dc.subject                |
         +---------------+---------------------------+
         | Standard ID   | bath.standardIdentifier   |
         +---------------+---------------------------+

         Table: SRU mapping

   -  'XSLT file(s)' lets enter one or more (comma-separated) XSLT file
      names that you want to apply on the search results.

      -  When retrieving records from external targets you may wish to
         automate some changes to those records. XSLT's allow you to do
         this. Koha ships with some sample XSLT files in the
         /koha-tmpl/intranet-tmpl/prog/en/xslt/ directory ready for use:

         -  Del952.xsl: Remove items (MARC21/NORMARC)

         -  Del995.xsl: Remove items (UNIMARC)

         -  Del9LinksExcept952.xsl: Remove $9 links. Skip item fields
            (MARC21/NORMARC)

         -  Del9LinksExcept995.xsl: Remove $9 links. Skip item fields
            (UNIMARC)

.. _did-you-mean?-label:

Did you mean?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*Get there:* More > Administration > Additional parameters > Did you
mean?

Koha can offer 'Did you mean?' options on searches based on values in
your :ref:`authorities <authorities-label>`.

    **Important**

    Did you mean? only works in the OPAC at this time. The intranet
    options are here for future development.

Using this page you can control which options Koha gives patrons on
their search results.

|image235|

To turn on the 'Did you mean?' bar on your search results you need to
check the box next to each plugin you would like to use. The two plugins
you have to choose from are:

-  The ExplodedTerms plugin suggests that the user try searching for
   broader/narrower/related terms for a given search (e.g. a user
   searching for "New York (State)" would click the link for narrower
   terms if they're also interested in "New York (City)"). This is only
   relevant for libraries with highly hierarchical authority data.

-  The AuthorityFile plugin searches the authority file and suggests the
   user might be interested in bibs linked to the top 5 authorities

If you want one plugin to take priority over another you simply drag it
above the other.

|image236|

If you choose both plugins you will see several options at the top of
your search results

|image237|

If you choose just the AuthorityFile you'll see just authorities.

|image238|

.. _column-settings-label:

Column settings
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This administration area will help you hide or display columns on fixed
tables throughout the staff client.

-  *Get there:* Administration > Additional parameters > Column settings

|image239|

Clicking on the module you'd like to edit tables for will show you the
options available to you.

This area lets you control the columns that show in the table in
question. If nothing is hidden you will see no check marks in the 'is
hidden by default' column.

|image240|

And will see all of the columns when viewing the table on its regular
page.

|image241|

If columns are hidden they will have checks in the 'is hidden by
default' column.

|image242|

And hidden when you view the table.

|image243|

You can also toggle columns using the 'Show/hide columns' button in the
top right of the page

|image244|

       **Note**
      
       Any tables with columns listed here have the option to export to Excel, export to CSV,
       copy, or print within the table header

.. _audio-alerts-label:

Audio alerts
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you have your :ref:`AudioAlerts` preference set to
'Enable' you will be able to control the various alert sounds that Koha
uses from this area.

-  *Get there:* More > Administration > Additional parameters > Audio
   alerts

Each dialog box in Koha has a CSS class assigned to it that can be used
as a selector for a sound.

    |image1213|

You can edit the defaults by clicking the 'Edit' button to the right of
each alert.

    |image1214|

You can assign alerts to other CSS classes in Koha by entering that
information in the selector box. For example if you enter

::

    body:contains('Check in message')

Then when you visit the checkin page you will hear an alert.

Every page in Koha has a unique ID in the body tag which can be used to
limit a sound to a specific page

Any ID selector (where HTML contains id="name\_of\_id" ) and can also be
a trigger as: #name\_of\_selector

.. _sms-cellular-providers-label:

SMS cellular providers
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    **Important**

    This option will only appear if the
    :ref:`SMSSendDriver <smssenddriver,-smssendusername,-and-smssendpassword-label>` preference is set to 'Email'

From here you can enter as many cellular providers as you need to send
SMS notices to your patrons using the email protocol.

    |image1215|

Some examples in the US are:

+---------------------+-----------------------------+
| Mobile Carrier      | SMS Gateway Domain          |
+=====================+=============================+
| Alltel              | sms.alltelwireless.com      |
+---------------------+-----------------------------+
| AT&T                | txt.att.net                 |
+---------------------+-----------------------------+
| Boost Mobile        | sms.myboostmobile.com       |
+---------------------+-----------------------------+
| Project Fi          | msg.fi.google.com           |
+---------------------+-----------------------------+
| Republic Wireless   | text.republicwireless.com   |
+---------------------+-----------------------------+
| Sprint              | messaging.sprintpcs.com     |
+---------------------+-----------------------------+
| T-Mobile            | tmomail.net                 |
+---------------------+-----------------------------+
| U.S. Cellular       | email.uscc.net              |
+---------------------+-----------------------------+
| Verizon Wireless    | vtext.com                   |
+---------------------+-----------------------------+
| Virgin Mobile       | vmobl.com                   |
+---------------------+-----------------------------+

Table: SMS provider examples

To add new providers enter the details in the form and click 'Add new'
to save.

    |image1216|

These options will appear in the OPAC for patrons to choose from on the
:ref:`messaging tab <your-messaging-label>` if you have
:ref:`EnhancedMessagingPreferences`
enabled.

    |image1217|
