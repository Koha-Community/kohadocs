.. include:: images.rst

Tools
=====

Tools in Koha all perform some sort of action. Often many of the items
listed under Tools in Koha are referred to as 'Reports' in other library
management systems.

-  *Get there:* More > Tools

.. _patrons-and-circulation-label:

Patrons and Circulation
------------------------------------------

.. _patron-lists-label:

Patron lists
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Patrons and circulation > Patron lists

Patron lists are a way to store a group of patrons for easy modification
via the :ref:`batch patron modification tool <batch-patron-modification-label>` or
reporting.

|image245|

To create a new list of patrons click the 'New patron list' button

|image246|

Enter a list name and save the list.

|image247|

Each list has an 'Actions' menu with more list options.

|image1218|

To add patrons to the list click the 'Add patrons' link in the 'Actions'
menu.

|image248|

Enter the patron's name or cardnumber in the search box and click on the
right result to add the patron.

Alternatively, you can click on the 'Enter multiple card numbers' link and 
scan (or type in) barcodes in the box.

|image249|

Once you have all of the patrons you would like to add you can click the
'Add patrons' button to save them to the list.

|image250|

.. _Patron-clubs-label:

Patron clubs
~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Patrons and Circulation > Patron clubs

Patron clubs create clubs which patrons may be enrolled in. It is
useful for tracking summer reading programs, book clubs and other such clubs.

    **Important**
    Staff will need permission to edit clubs, templates and enroll patrons. Go
    to your staff members account tab and click on the More drop down menu.
    Select Set Permissions and make sure patron clubs have checkmarks next to
    each of the functions you want your staff to have. Remember if your staff
    is a superlibrarian, they will have the permission.

Creating a new club template
Here you can add fields that can be filled out at the time a new club is
created based on the template, or a new enrollment is created for a given club
based on the template. Click on the New Club template button

Name is required. This could be something like Adult Book Club, Children’s
Book Club or Summer Reading Program. Remember these templates will be starting
point for each club you create.

Description can be any additional information

Allow Public Enrollment: if this box is checked it will allow patrons to enroll
in a club based on this template from the OPAC

Require valid email address: if this box is checked only patrons with a patrons
with a valid email address can enroll. So they will need a email address
to enroll.

The library drop down gives you the flexibility to enroll patrons from specific
branches. If you let it set to blank, all branches will be able to enroll.

Club Fields: these fields will be used when creating a club based on this
template you can connect authorized values here
Enrollment Fields: you can add any additional fields you want to have filled
out by your patrons like you can connect authorized values here.

Creating a new club based on a template
Here you can add information about a new club using a template you created.
Click on the New Club dropdown menu and select the template you want to use.

Name is required, this will be the name of the specific club using the
template you created. For example, if I used my Kids Club template, I can
create Kids Club 2017

Description – any additional information

Start  and End date will depict when this club runs, the entire duration
of the club. Once the club expires, it will be removed from the OPAC for users
to enroll if that option is selected.

The library drop down gives you the flexibility to enroll patrons from specific
branches. If you let it set to blank, all branches will be able to enroll.

Enrolling a patron in a club
    pull up a patron account
    click on the checkout tab on the left hand side
    click on the tab for club
    add the patron to the selected club by selecting the enroll button
    you can also cancel enrollment by clicking on the cancel enrollment

.. _comments-label:

Comments
~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Patrons and Circulation > Comments

All comments added by patrons via the OPAC to bibliographic records
require moderation by the librarians. If there are comments awaiting
moderation they will be listed on the main page of the staff client
below the module list:

|image251|

and next to the Comments tool on the Tools Module

|image1219|

To moderate comments click on the notification on the main dashboard or
go directly to the Comments Tool and click 'Approve' or 'Delete' to the
right of the comments awaiting moderation.

|image252|

If there are no comments to moderate you will see a message saying just
that

|image253|

You can also review and unapprove comments you have approved in the past
by choosing the 'Approved comments' tab

|image254|

.. _patron-import-label:

Patron Import
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Patrons and Circulation > Import Patrons

The patron import tool can be used at any time to add patrons in bulk.
It is commonly used in universities and schools when a new batch of
students registers.

.. _creating-patron-file-label:

Creating Patron File
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Your Koha installation comes with a blank CSV file that you can use as a
template for your patron records. If you would like to create the file
yourself, make sure that your file has the following fields in this
order as the header row:

cardnumber, surname, firstname, title, othernames, initials,
streetnumber, streettype, address, address2, city, state, zipcode,
country, email, phone, mobile, fax, emailpro, phonepro, B\_streetnumber,
B\_streettype, B\_address, B\_address2, B\_city, B\_state, B\_zipcode,
B\_country, B\_email, B\_phone, dateofbirth, branchcode, categorycode,
dateenrolled, dateexpiry, gonenoaddress, lost, debarred,
debarredcomment, contactname, contactfirstname, contacttitle,
guarantorid, borrowernotes, relationship, ethnicity, ethnotes, sex,
password, flags, userid, opacnote, contactnote, sort1, sort2,
altcontactfirstname, altcontactsurname, altcontactaddress1,
altcontactaddress2, altcontactaddress3, altcontactstate,
altcontactzipcode, altcontactcountry, altcontactphone, smsalertnumber,
privacy, patron\_attributes

    **Important**

    The 'password' should be stored in plaintext, and will be converted
    to a Bcrypt hash.

    If your passwords are already encrypted, talk to your systems
    administrator about options

    **Important**

    Date formats should match your :ref:`system preference <dateformat-label>`,
    and must be zero-padded, e.g. '01/02/2008'.

    **Important**

    The fields 'branchcode', 'categorycode' and all fields you have
    defined in the :ref:`BorrowerMandatoryField`
    preference are required and must match valid entries in your
    database.

    **Note**

    If loading :ref:`patron attributes <patron-attribute-types-label>`, the
    'patron\_attributes' field should contain a comma-separated list of
    attribute types and values.

    -  The attribute type code and a colon should precede each value.

       -  For example: "INSTID:12345,BASEBALL:Cubs"

       -  This field must be wrapped in quotes if multiple values are
          defined.

       -  Since values can contain spaces, additional doubled-quotes may
          be required:

          -  "INSTID:12345,BASEBALL:Cubs,""BASEBALL:White Sox"""

       -  When replacing a patron record, any attributes specified in
          the input file replace all of the attribute values of any type
          that were previously assigned to the patron record.

.. _importing-patrons-label:

Importing Patrons
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Once you have created your file, you can use the Patron Import Tool to
bring the data into Koha.

-  Choose your CSV file

   |image255|

-  Choose to match on 'Cardnumber' or 'Username' to prevent adding of
   duplicate card numbers to the system

   |image256|

-  Next you can choose default values to apply to all patrons you are
   importing

   -  ex. If you're importing patrons specific to one branch you can use
      the field on the Import form to apply the branch code to all those
      you are importing.

-  Finally you need to decide on what data you want to replace if there
   are duplicates.

   |image257|

   -  A matching record is found using the field you chose for matching
      criteria to prevent duplication

   -  If you included patron attributes in your file you can decide
      whether to add your values to existing values or erase existing
      values and enter only your new values.

.. _notices-&-slips-label:

Notices & Slips
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Patrons and Circulation > Notices & Slips

All notices and circulation receipts (or slips) generated by Koha can be
customized using the Notices & Slips Tool. The system comes with several
predefined templates that will appear when you first visit this tool.

|image258|

Each notice can be edited, but only a few can be deleted, this is to
prevent system errors should a message try to send without a template.
Each notice and slip can be edited on a per library basis, by default
you will see the notices for all libraries.

If you have a style you'd like applied to all slips you can point the
:ref:`SlipCSS` preference to a stylesheet. The same is true for
notices, using the :ref:`NoticeCSS` preference to define a
stylesheet.

You will also want to review the `Customising Notices and Slips
<https://wiki.koha-community.org/wiki/Customising_Notices_and_Slips>`_ 
wiki page for more information on formatting these notices.

.. _adding-notices-&-slips-label:

Adding Notices & Slips
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To add a new notice or slip

-  Click 'New Notice'

   |image259|

-  Choose which library this notice or slip is for

   -  **Important**

          Not all notices can be branch specific for more information
          review the `Customising Notices and Slips <https://wiki.koha-community.org/wiki/Customising_Notices_and_Slips>`_ 
          wiki page.

-  Choose the module this notice is related to

-  The Code is limited to 20 characters

   -  **Important**

          When working with the overdue notices you want each notice at
          each branch to have a unique code. Think about using the
          branch code in front of the notice code for each branch.

-  Use the name field to expand on your Code

   -  **Note**

          With overdue notices, be sure to put your branch name in the
          description as well so that it will be visible when setting up
          your :ref:`triggers <overdue-notice/status-triggers-label>`.

-  Next you can customize the notice for every possible delivery method

   -  Every notice should have an Email template set for it

      |image1220|

   -  If you're using the
      :ref:`TalkingTechItivaPhoneNotification`
      service you can set up a Phone notification

      |image1221|

   -  If you plan on printing this notice you can set the Print template
      next

      |image1222|

   -  If you have enabled SMS notices with the
      :ref:`SMSSendDriver <smssenddriver,-smssendusername,-and-smssendpassword-label>` preference you can set the text
      for your SMS notices next

      |image1223|

-  Each notice offers you the same options

   -  If you plan on writing the notice or slip in HTML check the 'HTML
      Message' box, otherwise the content will be generated as plain
      text

   -  Message Subject is what will appear in the subject line of the
      email

   -  In the message body feel free to type whatever message you feel is
      best, use the fields on the left hand side to enter individualized
      data from the from database.

      -  **Note**

             Review the `Customising Notices and Slips <https://wiki.koha-community.org/wiki/Customising_Notices_and_Slips>`_ 
             wiki page for more information.

      -  **Important**

             Overdue notices can use <<items.content>> tags by
             themselves, or use <item></item> to span all of the tags.
             Learn more about the :ref:`Overdue Notice
             Markup <overdue-notice-markup-label>`

             -  On overdue notices make sure to use <<items.content>>
                tags to print out the data related to all items that are
                overdue.

             -  The other option, only for overdue notices, is to use
                the <item></item> tags to span the line so that it will
                print out multiple lines One example for the
                <item></item> tag option is:

                <item>"<<biblio.title>>" by <<biblio.author>>,
                <<items.itemcallnumber>>, Barcode: <<items.barcode>> ,
                Checkout date: <<issues.issuedate>>, Due date:
                <<issues.date\_due>> Fine: <<items.fine>> Due date:
                <<issues.date\_due>> </item>

      -  **Important**

             Only the overdue notices take advantage of the
             <item></item> tags, all other notices referencing items
             need to use <<items.content>>

      -  **Note**

             To add today's date you can use the <<today>> syntax

      -  **Note**

             If you don't want to print the patron's full name on your
             slips or notice you can enter data in the Other name or
             Initials field for each patron and use that value instead.

   -  The system preference :ref:`TranslateNotices` will add tabs for each
      installed language to the notices editor. The notice defined in the
      'Default' tab will be used if there is no preferred language set
      for a patron.

      |image1335|

.. _overdue-notice-markup-label:

Overdue Notice Markup
'''''''''''''''''''''''''''''''''''''''''

When creating your overdue notices there are two tags in addition to the
various database fields that you can use in your notices. You will also
want to review the `Customising Notices and Slips
<https://wiki.koha-community.org/wiki/Customising_Notices_and_Slips>`_ 
wiki page for information on formatting item information in these notices.

    **Important**

    These new tags only work on the overdue notices, not other
    circulation related notices at this time.

These tags are <item> and </item> which should enclose all fields from
the biblio, biblioitems, and items tables.

An example of using these tags in a notice template might be like:

::

       The following item(s) is/are currently overdue:

       <item>"<<biblio.title>>" by <<biblio.author>>, <<items.itemcallnumber>>, Barcode: <<items.barcode>> Fine: <<items.fine>></item>

Which, assuming two items were overdue, would result in a notice like:

::

       The following item(s) is/are currently overdue:

       "A Short History of Western Civilization" by Harrison, John B, 909.09821 H2451, Barcode: 08030003 Fine: 3.50
       "History of Western Civilization" by Hayes, Carlton Joseph Huntley, 909.09821 H3261 v.1, Barcode: 08030004 Fine: 3.50

.. _existing-notices-&-slips-label:

Existing Notices & Slips
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Among the default notices are notices for several common actions within
Koha. All of these notices can be customized by altering their text via
the Notices & Slips tool and their style using the
:ref:`NoticeCSS` preference to define a stylesheet. You will
also want to review the `Customising Notices and Slips
<https://wiki.koha-community.org/wiki/Customising_Notices_and_Slips>`_ 
wiki page for information on formatting item
information in these notices. Here are some of what those notices do:

-  ACCEPTED

   -  This notice is sent when a patron's suggestion is accepted.

   -  *Note:* If you don't want to send this notice, just delete it.

-  ACCTDETAILS

   -  Sent to patrons when their account is set up if the
      :ref:`AutoEmailOPACUser <autoemailopacuser-label>` preference is set to
      'Send'

   -  *Important:* The notice will only be sent correctly if a username,
      password and email address is added to the patron record before
      saving it for the first time.
      The notice can't be resend or triggered again after the patron account
      has been created.

-  ACQCLAIM (Acquisition claim)

   -  Used for claiming orders in the aquisitions module

   -  ACQCLAIM is the code of the sample notice, but it's possible to define
      several notices choosing any code. Only the module 'Claim
      aquisition' will be taken into account. All notices with this module
      will appear in the pull down on the late orders page.

   -  *Get there:* More > Acquisitions > Late orders

   -  This notice is sent if several criteria are met:

      #. The staff patron triggering the email has a valid email address.

      #. The vendor contact marked as 'Contact about late orders?' has 
         a valid email address.

-  ACQORDER (Acquisition order)

   -  Used in the acquisitions module to send order information to the vendor

   -  The notice is triggered manually from the basket summary page using
      the 'Email order' button in the toolbar.

   -  This notice is sent if several criteria are met:

      #. The staff patron triggering the email has a valid email address.

      #. The vendor contact marked as 'Primary acquisitions contact' and
         'Contact when ordering' has a valid email address.

-  ACQ_NOTIF_ON_REVEIV

   -  Used in the acquisition module to inform patrons on receiving orders
      they have been added to. 

-  AR\_CANCELLED

   -  This notice is sent to the patron when an article request is cancelled
      by staff.

-  AR\_COMPLETED

   -  This notice is sent to the patron when an article request is marked
      as completed by staff.

-  AR\_PENDING

   -  This notice is sent to the patron when an article request has been
      made in order to confirm the request.

-  AR\_PROCESSING

   -  This notice is sent to the patron when an article request is marked
      as being processed by staff.

-  AVAILABLE

   -  This notice is sent to the patron who made a suggestion, when the
      order created from the suggestion is received.

   -  *Note:* If you don't want to send this notice, just delete it.

-  CHECKIN

   -  This notice is sent as the 'Check in' notice for all items that
      are checked in

   -  This notice is used if two criteria are met:

      1. The
         :ref:`EnhancedMessagingPreferences`
         is set to 'Allow'

      2. The patron has requested to receive this notice

         -  *Get there:*\ OPAC > Login > my messaging

         -  *Get there:*\ Staff Client > Patron Record >
            :ref:`Notices`

-  CHECKOUT

   -  This notice is sent as the 'Check out' notice for all items that
      are checked out

   -  This notice is used if two criteria are met:

      1. The
         :ref:`EnhancedMessagingPreferences`
         is set to 'Allow'

      2. The patron has requested to receive this notice

         -  *Get there:*\ OPAC > Login > my messaging

         -  *Get there:*\ Staff Client > Patron Record >
            :ref:`Notices`

-  DISCHARGE

  -  This notice is used to generate a PDF to document a successful
     discharge request

  -  The PDF can either be downloaded by the patron from their patron
     account or from the staff interface when discharging a patron

  -  The discharge feature is controlled by the :ref:`useDischarge`
     system preference.

-  DUE

   -  This notice is sent as the 'Item due' for an item is due

   -  This notice is used if two criteria are met:

      1. The
         :ref:`EnhancedMessagingPreferences`
         is set to 'Allow'

      2. The patron has requested to receive this notice

         -  *Get there:*\ OPAC > Login > my messaging

         -  *Get there:*\ Staff Client > Patron Record >
            :ref:`Notices`

-  DUEDGST

   -  This notice is sent as the 'Item due' for all items that are due

   -  This notice is used if two criteria are met:

      1. The
         :ref:`EnhancedMessagingPreferences`
         is set to 'Allow'

      2. The patron has requested to receive this notice as a digest

         -  *Get there:*\ OPAC > Login > my messaging

         -  *Get there:*\ Staff Client > Patron Record >
            :ref:`Notices`

-  HOLD (Hold Available for Pickup)

   -  This notice is used if two criteria are met:

      1. The
         :ref:`EnhancedMessagingPreferences`
         is set to 'Allow'

      2. The patron has requested to receive this notice

         -  *Get there:*\ OPAC > Login > my messaging

         -  *Get there:*\ Staff Client > Patron Record >
            :ref:`Notices`

   -  When this notice references the branches table it is referring to
      the pickup branch information.

-  HOLDPLACED (a notice to the library staff that a hold has been
   placed)

   -  This notice requires the
      :ref:`emailLibrarianWhenHoldIsPlaced`
      system preference to be set to 'Enable'

   -  When this notice references the branches table it is referring to
      the pickup branch information.

-  MEMBERSHIP\_EXPIRY

   -  This notice can be sent to patrons to warn them that their cards
      are expiring soon.

   -  Requires that you have the
      :ref:`MembershipExpiryDaysNotice` set
      and the :ref:`related cron job <notify-patrons-of-expiration-label>` set.

-  ODUE (Overdue notice)

   -  This notice is used to send Overdue Notices to patrons

   -  ODUE is the code of the sample notice, but it's possible to use
      any code and define multiple different messages for different
      patron categories and notice levels

   -  Requires that you set :ref:`Overdue Notice/Status
      Triggers <overdue-notice/status-triggers-label>`

-  ORDERED

   -  This notice is sent to the patron who made a suggestion, when the
      'from a suggestion' option is used to create an order from it.

   -  Note: If you don't want to send this notice, just delete it.

-  PASSWORD_RESET

   -  This notice is sent when a patron requests a new password from the
      OPAC in order to validate the email address.

   -  The password reset feature is controlled by the :ref:`OpacResetPassword`
      system preference.

-  PREDUE

   -  This notice is sent as the 'Advanced notice' for an item is due

   -  This notice is used if two criteria are met:

      1. The
         :ref:`EnhancedMessagingPreferences`
         is set to 'Allow'

      2. The patron has requested to receive this notice

         -  *Get there:*\ OPAC > Login > my messaging

         -  *Get there:*\ Staff Client > Patron Record >
            :ref:`Notices`

-  PREDUEDGST

   -  This notice is sent as the 'Advanced notice' for all items that
      are due

   -  This notice is used if two criteria are met:

      1. The
         :ref:`EnhancedMessagingPreferences`
         is set to 'Allow'

      2. The patron has requested to receive this notice as a digest

         -  *Get there:*\ OPAC > Login > my messaging

         -  *Get there:*\ Staff Client > Patron Record >
            :ref:`Notices`

-  REJECTED

   -  This notice is sent when a patron's suggestion is rejected.

   -  Note: If you don't want to send this notice, just delete it.

-  RENEWAL

   -  This notice is sent as the 'Check out' notice for all items that
      are renewed

   -  This notice is used if three criteria are met:

      1. The
         :ref:`EnhancedMessagingPreferences`
         is set to 'Allow'

      2. The :ref:`RenewalSendNotice` preference is
         set to 'Send'

      3. The patron has requested to receive the checkout notice

         -  *Get there:*\ OPAC > Login > my messaging

         -  *Get there:*\ Staff Client > Patron Record >
            :ref:`Notices`

-  SERIAL_ALERT (New serial issue)

   -  Notice used in the serials module to notify patrons/staff
      of new issues of a serial. SERIAL_ALERT (RLIST in older verisons)
      is provided as a sample notice, but the notice code can be chosen
      freely as only the module is taken into account. Multiple notices
      can also be managed.

      -  *Get there:* More > Serials > :ref:`New
         Subscription <add-a-subscription-label>`

   -  You have the option to select the notice used to inform the patron
      about a received serial issue for a subscription. Choose from the
      'Patron notification' drop down.

   -  If a notice has been selected for a subscription, patrons can
      subscribe to the email notification from the subscription tab
      in the detail view in the OPAC.

   -  **Note**

          Notice also that if you'd like to notify patrons of new serial
          issues, you can click on 'define a notice' which will take you
          to the 'Notices' tool

-  SHARE\_ACCEPT

   -  Used to notify a patron when another patron has accepted their
      shared list.

   -  Requires that you set
      :ref:`OpacAllowSharingPrivateLists`
      to 'Allow'

-  SHARE\_INVITE

   -  Used to notify a patron that another patron would like to share a
      list with them.

   -  Requires that you set
      :ref:`OpacAllowSharingPrivateLists`
      to 'Allow'

-  TO\_PROCESS

   -  Used to notify a staff member if a purchase suggestion has been
      moved to the fund they manage

   -  Requires the
      :ref:`notice\_unprocessed\_suggestions <email-suggestions-to-process-label>` cron job

There are also a set of predefined slips (or receipts) listed on this
page. All of these slips can be customized by altering their text via
the Notices & Slips tool and their style using the
:ref:`SlipCSS` preference to define a stylesheet. Here is what
those slips are used for:

-  AR\_SLIP

   -  Used to print a slip for an article request

   -  The slip or receipt can be printed manually when managing article
      requests from the staff interface.

   -  *Get there:* Circulation > Article requests > Actions > Print slip

-  ISSUEQSLIP

   -  Used to print the quick slip in circulation

   -  The quick slip only includes items that were checked out today

-  ISSUESLIP

   -  Used to print a full slip in circulation

   -  The slip or receipt will show items checked out today as well as
      items that are still checked out

-  HOLD\_SLIP

   -  Used to print a holds slip

   -  The holds slip is generated when a hold is confirmed and set to 
      waiting.

-  OVERDUE\_SLIP

   -  Used to print an overdues slip

   -  The overdues slip can be generated manually using the 'print' menu
      in the patron account in staff. It will show all items overdue.

-  TRANSFERSLIP

   -  Used to print a transfer slip

   -  The transfer slip is printed when you confirm a transfer from one
      branch to another in your system

.. _overdue-notice/status-triggers-label:

Overdue Notice/Status Triggers
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Patrons and Circulation > Overdue
   Notice/Status Triggers

In order to send the overdue notices that you defined using the
:ref:`Notices <notices-&-slips-label>` tool, you need to first set the triggers to have
these messages.

    **Important**

    In order to have overdue notices sent to your patrons, you need to
    :ref:`set that patron category <adding-a-patron-category-label>` to require overdue
    notices.

    **Important**

    Depending on the value of your
    :ref:`OverdueNoticeCalendar` preference the
    delay may or may not include days the library is closed based on the
    :ref:`holiday calendar <calendar-label>`.

The Overdue Notice/Status Triggers tool gives the librarian the power to
send up to three notices to each patron type notifying them of overdue
items

|image260|

-  Delay is the number of days after an issue is due before an action is
   triggered.

   -  **Important**

          If you want Koha to trigger an action (send a letter or
          restrict member), a delay value is required.

-  To send additional notices, click on the tabs for 'Second' and
   'Third' notice

-  If you would like to prevent a patron from checking items out because
   of their overdue items, check the 'Restrict' box, this will put a
   notice on the patron's record at checkout informing the librarian
   that the patron cannot check out due to overdue items.

   -  If you choose to restrict a patron in this way you can also have
      Koha automatically remove that restriction with the
      :ref:`AutoRemoveOverduesRestrictions`
      preference.

-  Next you can choose the delivery method for the overdue notice. You
   can choose from Email, Phone (if you are using the :ref:`iTiva Talking
   Tech service <talkingtechitivaphonenotification-label>`), Print and SMS
   (if you have set your :ref:`SMSSendDriver <smssenddriver,-smssendusername,-and-smssendpassword-label>`).

.. _patron-card-creator-label:

Patron Card Creator
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Patron Card Creator

The Patron Card Creator allow you to use layouts and templates which you
design to print your custom patron cards on your printer. Here are some
of the features of the Patron Card Creator module:

-  Customize patron card layouts with text retrieved from the Koha
   patron data

-  Design custom card templates for printed patron cards (to match the
   label sheets)

-  Build and manage batches of patron cards to print

-  Export (as PDF) single or multiple batches to print

-  Export (as PDF) single or multiple patron cards from within a batch

.. _patron-card-layouts-label:

Layouts
^^^^^^^^^^^^^^^^^^^^^^^^^^

-  *Get there:* More > Tools > Patron Card Creator > Manage > Layouts

A layout defines the text and images that will be printed on to the card
and where it will appear.

    **Note**

    Up to three lines of text, the patron's number in barcode
    representation and up to two images can be printed on to the card.

.. _patron-add-a-layout-label:

Add a Layout
'''''''''''''''''''''''''''''''''

If you have no layouts defined, you will add a new layout by clicking
the 'New' button and choosing 'Layout'.

|image1224|

You may also choose to press 'Manage layout' on the left side. Here you
are offered a list of available layouts you can select for editing. But
at the top of the page there is still the 'New layout' button.

|image261|

-  The name you assign to the layout is for your benefit, name it
   something that will be easy to identify at a later date

-  The Units pull down is used to define what measurement scale you're
   going to be using for your layout.

   |image262|

   -  **Note**

          A Postscript Point is 1/72" an Adobe Agate is 1/64", an Inch
          is 25.4 SI Millimeters

-  Next note if this layout is for the front or the back of the patron
   card

   -  **Note**

          You will need a layout for both the front and back of your
          card if you have 2-sided library cards, this option doesn't
          allow you to print two sided cards, just lets you track which
          side of the card you're designing.

-  You have the option of adding up to 3 lines of text to your card.
   Your text can be static text of your choosing and/or fields from the
   patron record. If you want to print fields from the patron record you
   want to put the field names in brackets like so - <firstname>

   -  **Note**

          A full list of field names can be found in the database schema
          at http://schema.koha-community.org

-  For each line of text, you can choose your font, font size and the
   location of the text on the card using the lower X and Y coordinates

-  In order to show the barcode and the patron card number you will need
   to check the 'Print Card Number as Barcode' option. This will turn
   the patron card number into a barcode. If you want the number to
   print in human readable format you will need to check the 'Print Card
   Number as Text Under Barcode' option.

-  Finally you can choose up to two images to print on the card.

   -  One can be the :ref:`patron image <upload-patron-images-label>` which you
      can resize to meet your needs.

   -  The other image can be something like a library logo or symbol
      that you uploaded using the ':ref:`Manage
      Images <manage-images-label>`' module of the Patron Card Creator
      Tool.

    **Important**

    It is the designers responsibility to define textlines, barcode and
    images such that overlap is avoided.

After saving, your layouts will appear on the 'Manage layouts' page.

|image263|

.. _patron-templates-label:

Templates
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  *Get there:* More > Tools > Patron Card Creator > Manage > Card
   templates

A template describes the arrangement of labels on the label sheet/card
stock you are using. This might be Avery 5160 for address labels,
Gaylord 47-284 for spine labels or Avery 28371 for your patron cards,
just to give a couple of examples. All of the information you will need
for setting up a template may be on the packaging, and if not it can
usually be found on the vendor's website or can be measured from a
sample sheet.

.. _patron-add-a-template-label:

Add a Template
'''''''''''''''''''''''''''''''''''''

To add a new template click on the 'New template' button at the top of
your page which brings you to the Edit template form immediately. You
may also choose to press 'Manage templates' on the left side. Here you
are offered a list of available templates you can select for editing.
But in the top of the page there is still the 'New template' button.

|image264|

Using the form that appears after pressing either 'Edit' or 'New
template'you can define the template for your sheet of labels or cards.

|image265|

-  Template ID is simply a system generated unique id

-  Template Code should be the name of this template to identify it on a
   list of templates

-  You can use the Template Description to add additional information
   about the template

-  The Units pull down is used to define what measurement scale you're
   going to be using for the template.

   |image266|

   -  **Note**

          A Postscript Point is 1/72" an Adobe Agate is 1/64", an Inch
          is 25.4 SI Millimeters

-  The measurements (page height, page width, card width, card height)
   may be on the packaging, and if not it can usually be found on the
   vendor's website or can be measured from a sample sheet.

-  A profile is a set of "adjustments" applied to a given template just
   prior to printing which compensates for anomalies unique and peculiar
   to a given printer (to which the profile is assigned).

   -  Before defining a profile try printing some sample cards so that
      you can take measurements to define a profile to perform the right
      adjustments for your printer/template combination.

   -  After finding and documenting any anomalies in the printed
      document, then you can :ref:`create a profile <patron-add-a-profile-label>` and
      assign it to the template.

   -  **Important**

          Do not specify a profile unless needed, i.e. do not click to
          define a printer profile. It is not possible to remove a
          profile from a template but you can switch to another profile.

   -  **Note**

          If you are using different printers you may be required to
          define several templates that are identical only different
          profiles are specified.

After saving, your templates will appear on the 'Manage templates' page.

|image267|

.. _patron-profiles-label:

Profiles
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  *Get there:* More > Tools > Patron Card Creator > Manage > Profiles

A profile is a set of "adjustments" applied to a given
:ref:`template <patron-templates-label>` just prior to printing which compensates
for anomalies unique and peculiar to a given printer. This means if you
set a template up and then print a sample set of data and find that the
items are not all aligned the same on each card, you need to set up a
profile for each printer (or even different tray selections on the same
printer) to make up for the differences in printing styles, such as the
shifting of text to the left, right, top or bottom.

If your cards are printing just the way you want, you will not need a
profile.

.. _patron-add-a-profile-label:

Add a Profile
'''''''''''''''''''''''''''''''''''

To add a new profile, you want to click on the 'Profiles' button at the
top of your page and choose 'New Profile'

|image268|

To add a new profile, you want to click on the 'New profile' button at
the top of your page. Using the form that appears you can define the
values to correct the card misalignments on your label sheet. You may
also choose 'Manage profiles' on the left side and select one of the
currently available profiles for editing.

|image269|

-  The Printer Name and Paper Bin do not have to match your printer
   exactly, they are for your reference so you can remember what printer
   you have set the profile for.

   -  **Note**

          For example: if you want to use the Printer model number in
          printer name you can, or you can call it 'the printer on my
          desk'

-  Template will be filled in once you have chosen which template to
   apply the profile to on the :ref:`template edit form <patron-add-a-template-label>`

-  The Units pull down is used to define what measurement scale you're
   going to be using for your profile.

   |image270|

   -  **Note**

          A Postscript Point is 1/72" an Adobe Agate is 1/64", an Inch
          is 25.4 SI Millimeters

-  Offset should be used when the entire image is off center either
   vertically or horizontally. Creep describes a condition where the
   distance between the labels changes across the page or up and down
   the page

   -  For offset and creep values, negative numbers move the printed
      information up and to the left on the printed sheet and positive
      numbers move down and to the right

   -  Example: the text is printed 0 .25" from the left edge of the
      first label, 0 .28" from the left edge of the second label and 0
      .31" from the left edge of the third label. This means the
      horizontal creep should be set to (minus) -0.03 " to make up for
      this difference.

After saving, your profiles will appear on the 'Manage Printer Profiles'
page.

|image271|

Once you have saved your new profile, you can return to the list of
templates and choose to edit the template that this profile is for.

.. _patron-batches-label:

Batches
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  *Get there:* More > Tools > Patron Card Creator > Manage > Card
   batches

A batch is a collection of patrons for whom you want to generate cards.

.. _patron-add-a-batch-label:

Add a Batch
'''''''''''''''''''''''''''''''

To add a new batch, you want to click on the 'New batches' button at the
top of your page. Choosing the menu item 'Manage batches' on the left a
list of already defined batches is displayed. In this display you can
either select a batch for editing or add a new batch.

|image272|

For a new batch a message pops up and directs you to select patrons to
be processed in this batch.

|image1225|

After choosing the 'Add item(s)' button the Patron Search window pops
up.

|image1226|

From here you can search for patrons to add to your batch by any part of
their name, their category and/or library. Entering \* in the search box
will display all the patrons.

|image1227|

From the results you can add patrons to the batch by clicking the 'Add'
button. After adding patrons from the results you can start over and
perform another search or click 'Close' at the bottom of the screen to
indicate that you are done. You will then be presented with your
batch.

|image1228|
If you are satisfied with your batch you can proceed to export. If you
want to correct or even delete that batch the buttons to do so can be
found at the top of your screen. You can always come back here through
the 'Manage > Card batches' button.

If you would like to export all patron cards you can click 'Export card
batch' otherwise you can choose specific patrons to print cards for by
checking the box to the right of their names and then choose 'Export
selected card(s)' at the top.

The export menu will ask you to choose a template, a layout and starting
position (where on the sheet should printing begin).

    **Note**

    For the starting position if the first 6 labels have already been
    used on your sheet you can start printing on label in position 7 on
    the sheet. The labels are numbered left to right from top to bottom.

|image1229|

Once you click 'Export' you will be presented with a PDF of your labels
for printing

|image1230|

When you open the PDF you will see the cards for printing

|image273|

The above image shows a layout that is made up of two textlines. The
first one is just plain text, the second one is composed of the
<firstname> <surname> fields. A patron image is printed (if available)
and the barcode of patrons number is displayed in code 39. All this is
printed on a template with three columns and 8 rows using position 1-3
here. When printing this PDF please take care that your printer doesn't
rescale the PDF (e.g do not fit to paper size) otherwise the printer
will not be able to print to the right place per your templates.

.. _manage-images-label:

Manage Images
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  *Get there:* More > Tools > Patron Card Creator > Manage > Images

Images uploaded using this tool will appear on the menu when creating
:ref:`patron card layouts <patron-card-layouts-label>`. You are limited in how many
images you can upload (not counting patron images) by the
:ref:`ImageLimit` system preference.

    **Important**

    Images must be under 500k in size.

    **Note**

    Pictures uploaded with this tool should be at least 300dpi which is
    the minimum quality for a printable image.

In the center of the screen is a simple upload form, simply browse for
the file on your computer and give it a name you'll recognize later.

|image274|

Once the file is uploaded you will be presented with a confirmation
message.

|image275|

And the image will be listed with all of your others on the right hand
side of the page.

|image276|

To delete one or multiple of these images, click the checkbox to the
right of each image you want to delete and click the 'Delete' button.

.. _patrons-anonymize-bulk-delete-label:

Patrons (anonymize, bulk-delete)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Patrons and Circulation > Patrons
   (anonymize, bulk-delete)

This tool allows you to bulk anonymize circulation histories (this means
that you keep records of how many times items were checked out - but not
the patrons who checked the items out) or bulk delete patrons (remove
them from the system completely).

    **Important**

    Patrons with outstanding fines or items checked out are not saved.
    They are not completely removed from the system (they are only moved
    to the delete\_borrowers table), but this tool does not provide as
    many checks as one may desire.

    **Important**

    Before using this tool it is recommended that you backup your
    database. Changes made here are permanent.

    **Important**

    The anonymization will fail quietly if
    :ref:`AnonymousPatron` preference does not contain a
    valid value.

|image277|

To either delete or anonymize patrons

-  Check the 'Verify' box on the task you would like to complete (Delete
   or Anonymize)

-  Enter a date before which you want to alter the data

-  If deleting patrons you can also choose to find patrons who

   -  have not borrowed since a specific date

   -  have accounts that will expire before a specific date

   -  are in a specific :ref:`patron category <patron-categories-label>`

   -  are in a :ref:`patron list <patron-lists-label>`

-  Click 'Next'

-  A confirmation will appear asking if you're sure this is what you
   want to happen

   |image278|

-  Clicking 'Finish' will delete or anonymize your data

   |image279|

.. _batch-patron-modification-label:

Batch patron modification
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Patrons and Circulation > Batch patron
   modification

With this tool you can make edits to a batch of patron records. Simply
load in a file of cardnumbers (one per line), choose from a :ref:`list of
patrons <patron-lists-label>` or scan patron card numbers in to the box
provided.

|image280|

Once you have the file loaded or the barcodes scanned click 'Continue.'
You will be presented with a list of the patrons and the changes you can
make.

|image281|

To the left of each text box there is a checkbox. Clicking that checkbox
will clear our the field values.

    **Important**

    If the field is mandatory you will not be able to clear the value in
    it.

If you have multiple patron attributes you can change them all by using
the plus (+) sign to the right of the text box. This will allow you to
add another attribute value.

|image282|

Once you have made the changes you want, you can click 'Save' and Koha
will present you with the changed patron records.

.. _tag-moderation-label:

Tag Moderation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Patrons and Circulation > Tags

Depending on your :ref:`tagging system preferences <tagging-label>`,
librarians may need to approve tags before they are published on the
OPAC. This is done via the Tag Moderation Tool. If there are tags
awaiting moderation they will be listed on the main staff dashboard
under the module labels:

|image283|

To moderate the tags visit the Tags tool. When first visiting the tool,
you will be presented with a list of tags that are pending approval or
rejection by a librarian

|image284|

-  To see all of the titles this tag was added to simply click on the
   term

   |image1230|

   -  From this list of titles you can remove a tag without outright
      rejecting it from being used in the future by clicking the 'Remove
      tag' button to the right of the title.

-  To approve a tag, you can either click the 'Approve' button in line
   with the term, or check all terms you want to approve and click
   'Approve' below the table.

-  To reject a tag, you can either click the 'Reject' button in line
   with the term, or check all terms you want to approve and click
   'Reject' below the table.

Once a tag has been approved or rejected it will be moved to the
appropriate list of tags. A summary of all tags will appear on the right
of the screen.

|image285|

Even though a tag is approved or rejected, it can still be moved to
another list. When viewing approved tags each tag has the option to
reject:

|image286|

To check terms against the approved and rejected lists (and possibly
against :ref:`the dictionary <tagsexternaldictionary-label>` you have assigned
for tag moderation) simply enter the term into the search box on the
bottom right of the screen to see the status of the term

|image287|

Finally you can find tags by using the filters on the left.

|image288|

.. _upload-patron-images-label:

Upload Patron Images
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Patrons and Circulation > Upload Patron
   Images

Patron images can be uploaded in bulk if you are :ref:`allowing patron
images <patronimages-label>` to be attached to patron records. These images
can also be used when creating :ref:`patron cards <patron-card-creator-label>`.

-  Create a txt file and title it "DATALINK.TXT" or "IDLINK.TXT"

-  On each line in the text file enter the patron's card number followed
   by comma (or tab) and then the image file name

   |image289|

   -  Make sure that your TXT file is a plain text document, not RTF.

-  Zip up the text file and the image files

-  Go to the Upload Patron Images Tool

   |image290|

-  For a single image, simply point to the image file and enter the
   patron card number

-  For multiple images, choose to upload a zip file

-  After uploading you will be presented with a confirmation

   |image291|

    **Important**

    There is a limit of 100K on the size of the picture uploaded and it
    is recommended that the image be 200x300 pixels, but smaller images
    will work as well.

.. _rotating-collections-label:

Rotating Collections
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Catalog > Rotating Collections

Rotating Collections is a tool for managing collections of materials
that frequently get shifted from library to library. It adds the ability
to store not only an item's home library and current location but also
information about where it is supposed to be transferred to next to
ensure that all items in the collection are sent to the correct library.
When an item in a rotating collection is checked in, library staff is
notified that the item is part of a rotating collection and which branch
it should be sent to if it is not at the correct one.

    **Important**

    The :ref:`AutomaticItemReturn` system preference
    must be set to "Don't automatically transfer items to their home
    library when they are returned" for Rotating Collections to function
    properly.

-  To create a new rotating collection, click the "New Collection"
   button, fill in the Title and Description, and click Submit. Once
   submitted you'll see "Collection Name added successfully"; click
   "Return to rotating collections home" to return to the main Rotating
   Collections management page (or click Rotating Collections in the
   sidebar).

-  To add items to a collection, click "Add or remove items" next to the
   collection's name in the list of collections. Under "Add or remove
   items" scan or type in the barcode of the item you wish to add to the
   collection, and hit Enter or click Submit if necessary.

-  To remove an item from a collection, either click Remove next to the
   item's barcode in the list of items within the collection or check
   the "Remove item from collection" box next to the Barcode text box
   under "Add or remove items, and scan or type in the barcode, clicking
   Submit or hitting Enter if necessary. Note: The "Remove item from
   collection" checkbox will remain checked as long as you are on the
   "Add or remove items" page, unless you uncheck it, to facilitate
   quickly removing a number of items at a time by scanning their
   barcodes.

.. _transfer-a-rotating-collection-label:

Transfer a Rotating Collection
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Transferring a collection will:

-  Change the current location of the items in that collection to the
   library it is to be transferred to

-  Initiate a transfer from its original current location/holding
   library to the current location/holding library it is to be rotated
   to. When a library receives a collection they will need to check in
   the items to complete the transfer.

You can transfer a collection in one of two ways:

-  From the main Rotating Collections page, click on Transfer next to
   the title of the collection you wish to transfer; choose the library
   you wish to transfer the collection to and click "Transfer
   collection".

-  Or, from the "add or remove items" page for a collection, you can
   click the Transfer button, choose the library you wish to transfer
   the collection to and click "Transfer Collection".

    **Important**

    In order to complete the transfer process, the library receiving the
    rotating collection should check in all items from the collection as
    they receive them. This will clear the transfer so that the items
    are no longer shown as being "in transit".

If an item in a rotating collection is checked in at a library other
than the one it is supposed to be transferred to, a notification will
appear notifying library staff that the item is part of a rotating
collection, also letting them know where the item needs to be sent.

|image292|

.. _catalog-label:

Catalog
---------------------------

.. _batch-item-deletion-label:

Batch item deletion
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Catalog > Batch item deletion

This tool will allow you to delete a batch of item records from Koha.

From the tool you can choose to upload a file of barcodes or item ids,
or you can scan items one by one into the box below the upload tool.

|image298|

Once you have your file uploaded or the barcodes scanned you can click
'Continue.'

You will be presented with a confirmation screen. From here you can
uncheck the items you don't want to delete and decide if Koha should
delete the bib record if the last item is being deleted before clicking
'Delete selected items.' If you'd like you can delete the bibliogrphic
record if you're deleting the last item by clicking the checkbox next to
'Delete records if no items remain'.

|image299|

If your file (or list of scanned barcodes) has more than 1000 barcodes,
Koha will be unable to present you with a list of the items. You will
still be able to delete them, but not able to choose which items
specifically to delete or delete the biblio records.

|image300|

If the items are checked out you will be presented with an error after
clicking 'Delete selected items' and the items will not be deleted.

|image301|

If the items can be deleted they will be and you will be presented with
a confirmation of your deletion.

|image302|

.. _batch-item-modification-label:

Batch item modification
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Catalog > Batch item modification

This tool will allow you to modify a batch of item records in Koha.

|image293|

From the tool you can choose to upload a file of barcodes or item ids,
or you can scan items one by one into the box below the upload tool. You
can also decide the items edited should be populated with the default
values you have defined in your :ref:`default
framework <marc-bibliographic-frameworks-label>`.

Once you have your file uploaded or the barcodes listed you can click
'Continue.'

|image294|

You will be presented with a summary of the items you want to modify.
From here you can uncheck the items you don't want to modify before
making changes in the form below. You can also hide columns you don't
need to see to prevent having to scroll from left to right to see the
entire item form.

    **Note**

    To uncheck all items thar are currently checked out you can click
    the 'Clear on loan' link at the top of the form.

Using the edit form you can choose which fields to make edits to. By
checking the checkbox to the right of each field you can clear the
values in that field for the records you are modifying.

|image295|

Once you have made you changes you will be presented with the resulting
items.

|image296|

    **Note**

    You can also edit items on one bib record in a batch by going to the
    bib record and clicking Edit > Edit items in batch

|image297|

.. _batch-record-deletion-label:

Batch record deletion
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This tool will take a batch of record numbers for either bibliographic
records or authority records and allow you to delete all those records
and any items attached to them in a batch.

|image1231|

First you need to tell the tool if you're deleting bibliographic or
authority records. Next you can load a file with biblionumbers or
authids or enter a list of those numbers in the box provided. Once you
submit the form you will be presented with a summary of the records you
are trying to delete.

|image1232|

If a record you want to delete can't be deleted it will be highlighted.

Check the records you want to delete and click the 'Delete selected
records' button to finish the process.

.. _batch-record-modification-label:

Batch record modification
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Catalog > Batch record modification

This tool will allow you to edit batches of bibliographic and/or
authority records using :ref:`MARC Modification
Templates <marc-modification-templates-label>`. Before visiting this tool you will
want to set up at least one MARC modification template.

|image303|

When you visit the tool it will ask you:

-  Choose whether you're editing bibliographic or authority records

-  Enter the biblionumbers or authids

   -  You can upload a file of these numbers or

   -  Enter the numbers (one per line) in the box provided

-  Finally choose the MARC Modification Template you'd like to use to
   edit these records.

Once you've entered your criteria click 'Continue'

|image1233|

You will be presented with a list of records that will be edited. Next
to each one is a checkbox so you can uncheck any items you would rather
not edit at this time.

Clicking Preview MARC will allow you to see what edits will be made when
you finalize the edit.

|image1234|

Once you're sure everything is the way you want you can click the
'Modify selected records' button and your records will be modified.

.. _automatic-item-modifications-by-age-label:

Automatic item modifications by age
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Catalog > Automatic item modifications by
   age

This tool allows librarians to update item specific fields when an item
reaches a certain age.

    **Note**

    Staff need the items\_batchmod permission to access this tool

    **Important**

    The settings in this tool will be acted upon by the :ref:`corresponding
    cron job <automatic-item-update-label>`

If you haven't created any rules you will see the option to 'Add rules'
on the Tool page. Click this button to create rules.

|image1235|

If you have rules already there will be a button that reads 'Edit
rules'. To create a new rule click the 'Edit rules' button at the top of
the page

|image304|

You will be brought to a page where you can edit exisitng rules or
create a new rule

|image305|

In the form that appears you can set :

-  the age in days at which the item will update (Age)

-  what criteria is needed to trigger the update (Conditions)

-  what changes are made when the script runs (Substitutions)

|image306|

Once you're done you can click the 'Add this rule' link and then add
additional rules or you can click the 'Submit these rules' button to
save your changes.

|image307|

.. _export-data-(marc-&-authorities)-label:

Export Data (MARC & Authorities)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Catalog > Export Data

Koha comes with a tool that will allow you to export your bibliographic,
holdings and/or authority data in bulk. This can be used to send your
records to fellow libraries, organizations or services; or simply for
backup purposes.

.. _export-bibliographic-records-label:

Export Bibliographic Records
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

At the top of the screen you need to pick what data you're exporting. If
you're exporting bibliographic records with or without the holdings
information you want to click the 'Export bibliographic records' tab.

-  Fill in the form in order to limit your export to a specific range
   (all fields are optional)

   |image308|

   -  Choose to limit your export by any one or more of the following
      options

      -  Limit to a bib number range

      -  Limit to a specific item type

         -  **Important**

                This limit will use the type you have defined in the
                :ref:`item-level\_itypes <item-level\_itypes-label>` preference.
                If you have the item-level\_itypes preference set to
                'specific item' and you have no items attached to a bib
                record it will not be exported. To get all bib records
                of a specific type you will need your item-level\_itypes
                preference set to 'biblio record'.

      -  Limit to a specific library or group of libraries

         -  **Important**

                This is a filter: if you leave this set to the default
                (all libraries selected) or select one or more libraries,
                bib records with no items attached will not be exported. To get
                bib records with no items you will need to 'clear all'
                (i.e. de-select all libraries).

      -  Limit to a call number range

      -  Limit to an acquisition date range

   -  If you'd like you can load a file of biblionumbers for the records
      you would like to export.  File type needs to be .csv or .txt

      |image309|

   -  Next choose what to skip when exporting

      |image310|

      -  By default items will be exported, if you would like to only
         export bibliographic data, check the 'Don't export items' box

      -  To limit your export only to items from the library you're
         logged in as (if you leave the 'Library' field set to 'All') or
         to the library you selected above check the 'Remove non-local
         items' box

      -  You can also choose what fields you don't want to export. This
         can be handy if you're sharing your data, you can remove all
         local fields before sending your data to another library

   -  Finally choose the file type and file name

      |image311|

      -  Choose to export your data in marc or marcxml format

      -  Choose the name you want your file to save as

   -  Click 'Export bibliographic records'

.. _export-authority-records-label:

Export Authority Records
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

At the top of the screen you need to pick what data you're exporting. If
you're exporting authority records you want to click the 'Export
authority records' tab.

-  Fill in the form in order to limit your export to a specific range or
   type of authority record (all fields are optional)

   |image312|

-  Or you can choose a file of authids to export

  |image1236|

  File type needs to be .csv or .txt

-  Next choose fields that you would like to exclude from the export
   separated by a space (no commas)

   |image313|

   -  If you'd like to exclude all subfields of the 200 for example just
      enter 200

   -  If you'd like to exclude a specific subfield enter it beside the
      field value 100a will exclude just the subfield 'a' of the 100

-  Finally choose the file type and file name

   |image314|

   -  Choose to export your data in marc or marcxml format

   -  Choose the name you want your file to save as

-  Click 'Export authority records'

.. _inventory-tool-label:

Inventory
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Catalog > Inventory

Koha's Inventory tool can be used in one of three ways:
1. By printing out a shelf list that you can then mark items off on;

2. By uploading a text file of barcodes gathered by a portable scanner;

3. By comparing a text file of barcodes gathered by a portable scanner to a
   generated shelf list.

If you do not have the ability to use your barcode scanner on the floor
of the library, the option available to you is to generate a shelf
list based on criteria you enter.

|image315|

First, choose the criteria for the items you want to print out on a list.
All parameters are optional, but if none are selected, the resulting list
might be quite large.

- Library: choose the branch you want to check, as well as if that branch
  is the home library or the current holding library of the items.

- Shelving location (items.location) is: you can filter by location.

- Item callnumber between ... and ...: you can also limit the list to a specific
  range of callnumbers.

You can filter even more with item statuses (not for loan status, lost status,
withdrawn status or damaged status). Check the boxes next to the statuses you
want to include. For example, if you are using the list to shelf read, check
only the 'for loan' status as the other items probably won't be on the shelves.

- Last inventory date: enter a date here to skip items that have been marked
  as seen recently.

- Skip items on loan: check this box to filter out loaned items from the list.

- Export to CSV file: check this box to generate a CSV file for altering in an
  application on your desktop. If this box is unchecked, the list will be
  presented on the screen.

Click on 'Submit' to generate your shelf list. You can then print it to use
while walking around the library checking your collection or use it directly
in Koha on a portable device.

|image316|

Once you have found the items on your shelves, return to this
list and check the boxes next to the items you found. Next, click on one of
the three buttons to continue:

- Mark seen and quit: updates the 'last seen' date of the checked items to
  today and returns to the previous screen.

- Mark seen and continue: updates the 'last seen' date of the checked items to
  today and shows the next page of the list.

- Continue without marking: doesn't update any of the items on this page
  and shows the next page of the list.

If you have a portable scanner (or a laptop and USB scanner) you can
walk through the library with the scanner in hand and scan barcodes as
you come across them (on a laptop, scan the barcodes into a text file). Once 
finished you can then upload the text file generated by the scanner to Koha.

|image317|

Choose the text file and the date you want to mark all items as seen and
then scroll to the very bottom and click 'Submit'. This will update all the
items' 'last seen' date to the chosen date. By default, this will also check in
the items scanned as it is assumed that they are on the shelf and so not loaned
out. If you do not want to check in scanned items, check the 'Do not check in
items scanned during inventory' before clicking 'Submit'.

Alternatively, you can combine the two methods to automatically compare a list
of scanned barcodes with a generated list. First, upload you barcode file and
choose the date you want to appear in the items' 'last seen' field. The 'Compare 
barcodes list to results' checkbox should automatically be checked. If you do 
not want the scanned items to be automatically checked-in if they are checked-out, 
make sure you check the 'Do not check in items scanned during inventory' checkbox. 
Choose the filters (library, shelving location, callnumbers or statuses) to generate a 
list with which to compare your barcodes. Click on 'Submit'.

    **Note**

    Depending on the number of barcodes you are comparing, this may take a few
    minutes. It is not recommended to compare lists of more than 1000 barcodes as
    this may cause a session timeout.

Once Koha has finished comparing the barcodes file to the generated list, it
will return the number of items updated and a list of problematic items.

- Missing (not scanned): the item is in the generated list but not in the
  barcodes file.

- Found in wrong place: the item is in the barcodes list, but not in the
  generated list.

- Still checked out: the item is checked out, but is in the generated list. It
  was not automatically checked in.

- Barcode not found: the barcode doesn't exist.

- Item withdrawn: the item has 'withdrawn' status, but it is in the barcodes
  file.

.. _label-creator-label:

Label Creator
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Catalog > Label Creator

The Label Creator allow you to use layouts and templates which you
design to print a nearly unlimited variety of labels including barcodes.
Here are some of the features of the Label Creator module:

-  Customize label layouts

-  Design custom label templates for printed labels

-  Build and manage batches of labels

-  Export single or multiple batches

-  Export single or multiple labels from within a batch

-  Export label data in one of three formats:

   -  PDF - Readable by any standard PDF reader, making labels printable
      directly on a printer

   -  CSV - Export label data after your chosen layout is applied
      allowing labels to be imported in to a variety of applications

   -  XML - Included as an alternate export format

.. _label-templates-label:

Templates
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  *Get there:* More > Tools > Label Creator > Manage > Label templates

A template is based on the label/card stock you are using. This might be
Avery 5160 for address labels, Gaylord 47-284 for spine labels or Avery
28371 for your patron cards, just to give a couple of examples. These
labels will include all of the information you will need for setting up
a Koha, this information may be on the packaging, and if not it can
usually be found on the vendor's website.

.. _label-add-a-template-label:

Add a Template
''''''''''''''''''''''''''''''''''''''

To add a new template, you want to click on the 'New' button at the top
of the Label Creator and choosing 'Label template'.

|image318|

Using the form that appears you can define the template for your sheet
of labels or cards.

|image319|

-  Template ID will be automatically generated after saving your
   template, this is simply a system generated unique id

-  Template Code should be something you can use to identify your
   template on a list of templates

-  You can use the Template Description to add additional information
   about the template

-  The Units pull down is used to define what measurement scale you're
   going to be using for the template. This should probably match the
   unit of measurement used on the template description provided by the
   product vendor.

   |image320|

-  The measurements, number of columns and number of rows can be found
   on the vendor product packaging or website.

   -  **Important**

          If you do not supply a left text margin in the template, a
          3/16" (13.5 point) left text margin will apply by default.

-  A profile is a set of "adjustments" applied to a given template just
   prior to printing which compensates for anomalies unique and peculiar
   to a given printer (to which the profile is assigned).

   -  Before picking a profile try printing some sample labels so that
      you can easily define a profile that is right for your
      printer/template combination.

   -  After finding any anomalies in the printed document, :ref:`create a
      profile <label-add-a-profile-label>` and assign it to the template.

After saving, your templates will appear on the 'Manage' area under
'Label templates'.

|image321|

.. _label-profiles-label:

Profiles
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  *Get there:* More > Tools > Label Creator > Manage > Printer Profiles

A profile is a set of "adjustments" applied to a given
:ref:`template <label-add-a-template-label>` just prior to printing which
compensates for anomalies unique and peculiar to a given printer (to
which the profile is assigned). This means if you set a template up and
then print a sample set of data and find that the items are not all
aligned the same on each label, you need to set up a profile for each
printer to make up for the differences in printing styles, such as the
shifting of text to the left, right, top or bottom.

If your labels are printing just the way you want, you will not need a
profile.

.. _label-add-a-profile-label:

Add a Profile
''''''''''''''''''''''''''''''''''''

To add a new profile, you want to click on the 'New' button at the top
of the Label Creator tool and choose 'Printer profile'.

|image322|

Using the form that appears you can create a profile to fix any problems
with your template.

|image323|

-  The Printer Name and Paper Bin do not have to match your printer
   exactly, they are for your reference so you can remember what printer
   you have set the profile for. So if you want to use the Printer model
   number in printer name or you can call it 'the printer on my desk'

-  Template will be filled in once you have chosen which template to
   apply the profile to on the :ref:`template edit
   form <label-add-a-template-label>`

-  The Units pull down is used to define what measurement scale you're
   going to be using for your profile.

   |image324|

-  Offset describes what happens when the entire image is off center
   either vertically or horizontally and creep describes a condition
   where the distance between the labels changes across the page or up
   and down the page

   -  For these values, negative numbers move the error up and to the
      left and positive numbers move the error down and to the right

   -  Example: the text is .25" from the left edge of the first label,
      .28" from the left edge of the second label and .31" from the left
      edge of the third label. This means the horizontal creep should be
      set to .03" to make up for this difference.

After saving, your profiles will appear on the 'Manage' area under
'Printer profiles'.

|image325|

Once you have saved your new profile, you can return to the list of
templates and choose to edit the template that this profile is for.

.. _label-layouts-label:

Layouts
^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  *Get there:* More > Tools > Label Creator > Manage > Layouts

A layout is used to define the fields you want to appear on your labels.

.. _label-add-a-layout-label:

Add a Layout
''''''''''''''''''''''''''''''''''

To add a new layout, you want to click on the 'New' button at the top of
the Label Creator tool and choose 'Layout'.

|image326|

Using the form that appears you can create a profile to fix any problems
with your template.

|image327|

-  The name of your layout can be anything you'd like to help you
   identify it later.

-  If this is a barcode label you'll want to choose the encoding (Code
   39 is the most common)

-  The layout type can be any combination of bibliographic information
   and/or barcode. For example a spine label would just be Biblio
   whereas a label for your circulation staff to use to checkout the
   book would probably be Biblio/Barcode.

-  The Bibliographic Data to Print includes any of the data fields that
   may be mapped to your MARC frameworks. You can choose from the preset
   list of fields or you can click on 'List Fields' and enter your own
   data. In 'List Fields', you can specify MARC subfields as a
   4-character tag-subfield string: (ie. 254a for the title field), You
   can also enclose a whitespace-separated list of fields to concatenate
   on one line in double quotes. (ie. "099a 099b" or "itemcallnumber
   barcode"). The fields available are from the database tables list
   below. Finally you could add in static text strings in single-quote
   (ie. 'Some static text here.')

   -  You can use the schema viewer (http://schema.koha-community.org)
      with the following tables to find field names to use:

      -  Currently all fields in the following tables are used: items,
         biblioitems, biblio, branches

         |image328|

-  Choose if the label maker should print out the guidelines around each
   label

-  Choose if you'd like Koha to try to split your call numbers (usually
   used on Spine Labels)

-  Finally choose your text settings such as alignment, font type and
   size.

After saving, your layouts will appear on the 'Manage Layouts' page.

.. _label-batches-label:

Batches
^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  *Get there:* More > Tools > Label Creator > Manage > Label batches

Batches are made up of the barcodes you would like to print. Once in
this tool you can search for the item records you would like to print
out labels for.

.. _label-add-a-batch-label:

Add a Batch
''''''''''''''''''''''''''''''''

Batches can be created in one of two ways. The first is to click the
'Create Label Batch' link on the ':ref:`Staged MARC
Management <staged-marc-record-management-label>`' page:

|image329|

The other is to choose to create a new batch from the label creator tool

|image330|

You will be brought to an empty batch with a box to scan barcodes or
itemnumbers in to and an 'Add item(s)' button at the bottom of the page.

|image331|

You can either scan barcodes in to the box provided and click the 'Add
item(s)' button or you can click the 'Add item(s)' button with the
barcodes box empty. Clicking 'Add item(s)' with nothing in the barcodes
box will open a search window for you to find the items you want to add
to the batch.

|image332|

From the search results, click the check box next to the items you want
to add to the batch and click the 'Add checked' button. You can also add
items one by one by clicking the 'Add' link to the left of each item.

|image333|

Once you have added all of the items click the 'Done' button. The
resulting page will list the items you have selected.

|image334|

To print your labels, click the 'Export full batch' button. To print
only some of the labels, click the 'Export selected item(s)' button.
Either way you will be presented with a confirmation screen where you
can choose your template and layout.

|image335|

You will then be presented with three download options: PDF, Excel, and
CSV.

|image336|

After saving your file, simply print to the blank labels you have in
your library.

.. _quick-spine-label-creator-label:

Quick Spine Label Creator
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Catalog > Quick Spine Label Creator

    **Note**

    This tool does not use the label layouts or templates, it simply
    prints a spine label in the first spot on the label sheet.

    -  Define the fields you want to print on the spine label in the
       :ref:`SpineLabelFormat` system preference

    -  Format your label printing by editing spinelabel.css found in
       koha-tmpl/intranet-tmpl/prog/en/css/

To use this tool you simply need the barcode for the book you'd like to
print the spine label for.

|image337|

.. _marc-modification-templates-label:

MARC modification templates
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The MARC Modification Templates system gives Koha users the power to
make alterations to MARC records automatically while staging MARC
records for import.

This tool is useful for altering MARC records from various
vendors/sources work with your MARC framework. The system essentially
allows one to create a basic script using actions to Copy, Move, Add,
Update and Delete fields.

Start by adding a new template (a template can be made up of one or more
actions) by entering a name and clicking 'Create template'.

|image338|

Next you can add actions to the template by filling in the Action box.
For example if you're loading in a batch of files from your EBook vendor
you might want to add the biblio item type of EBOOK to the 942$c.

|image1237|

-  Choose 'Add/Update'

-  Enter the field 942 and subfield c

-  Enter the value of 'EBOOK' (or whatever your ebook item type code is)

-  Provide a description so you can identify this action later

-  Click 'Add action'

Each action can also have an optional condition to check the value or
existence of another field. For example you might want to add the call
number to the item record if it's not already there.

|image339|

-  Choose 'Copy'

-  Decide if you want to copy the first occurrence or all occurrence of
   the field

-  Enter the field 090 (or other biblio call number field) and subfield
   a to copy

-  Enter the 952 field and o subfield to copy to

-  Choose 'if'

-  Enter the 952 field and o subfield

-  Choose "doesn't exist"

-  Provide a description so you can identify this action later

-  Click 'Add action'

The Copy & Move actions also support Regular Expressions, which can be
used to automatically modify field values during the copy/move. An
example would be to strip out the '$' character in field 020$c.

|image340|

-  Choose 'Copy and replace'

-  Decide if you want to copy the first occurrence or all occurrences of
   the field

-  Enter the field 020 and subfield c to copy

-  Enter the 020 field and c subfield to copy to

-  Check the 'RegEx' box and enter your regular expression (in this case
   s/\\$// )

-  Choose 'if'

-  Enter the 020 field and c subfield

-  Choose "matches"

-  Check the 'RegEx' box and enter your regular expression (in this case
   m/^\\$/ )

-  Provide a description so you can identify this action later

-  Click 'Add action'

    **Note**

    The value for an update can include variables that change each time
    the template is used. Currently, the system supports two variables,
    \_\_BRANCHCODE\_\_ which is replaced with the branchcode of the
    library currently using the template, and \_\_CURRENTDATE\_\_ which
    is replaced with the current date in ISO format ( YYYY-MM-DD ).

You could also use regular expressions to add your library's proxy URL
in front of links in your MARC record.

|image1238|

-  Choose 'Copy and replace'

-  Decide if you want to copy the first occurrence or all occurrences of
   the field

-  Enter the field 856 and subfield u to copy

-  Enter the 856 field and u subfield to copy to

-  Check the 'RegEx' box and enter your regular expression (in this case
   s/^/PROXY\_URL/ )

-  Provide a description so you can identify this action later

-  Click 'Add action'

When choosing between 'Copy' and 'Copy and replace' keep the following
example in mind:

::

    245 _aThe art of computer programming _cDonald E. Knuth.
    300 _aA_exists _bB_exists

If we apply action (a) Copy the whole field 245 to 300, we get:

::

    245 _aThe art of computer programming _cDonald E. Knuth.
    300 _aA_exists _bB_exists
    300 _aThe art of computer programming _cDonald E. Knuth.

If we apply action (b) Copy the subfield 245$a to 300$a, we get:

::

    245 _aThe art of computer programming _cDonald E. Knuth.
    300 _aThe art of computer programming _bB_exists

Once your actions are saved you can view them at the top of the screen.
Actions can be moved around using the arrows to the left of them.

|image341|

Depending on your actions the order may be very important. For example
you don't want to delete a field before you copy it to another field.

To add another template you can either start fresh or click the
'Duplicate current template' checkbox to create a copy of an existing
template to start with.

|image342|

Once your template is saved you will be able to pick it when using the
:ref:`Stage MARC Records for Import` tool.

|image343|

.. _stage-marc-records-for-import-label:

Stage MARC Records for Import
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Catalog > Stage MARC records for import

This tool can be used to import both bibliographic and authority records
that are saved in MARC format. Importing records into Koha includes two
steps. The first is to stage records for import.

-  First find the MARC file on your computer

   |image344|

-  Next you will be presented with options for record matching and item
   imports

   |image345|

   -  Enter 'Comments about this file' to identify your upload when
      going to the ':ref:`Manage Staged MARC Records <staged-marc-record-management-label>`' tool

   -  Tell Koha which type of file this is, bibliographic or authority

      |image346|

   -  Choose the character encoding

      |image347|

   -  Choose if you would like to use a :ref:`MARC Modification
      Template <marc-modification-templates-label>` to alter the data you're about to
      import

      |image348|

   -  Choose whether or not you want to look for matching records

      |image349|

      -  You can set up :ref:`record matching rules <record-matching-rules-label>`
         through the administration area

         |image350|

         -  When using the ISBN matching rule Koha will find only exact
            matches. If you find that the ISBN match is not working to
            your satisfaction you can change the
            :ref:`AggressiveMatchOnISBN`
            preference to 'Do' and then run your import again.

   -  Next choose what to do with matching records if they are found

   -  Finally choose what to do with records that are unique

   -  Next you can choose whether or not to import the item data found
      in the MARC records (if the file you're loading is a bibliographic
      file)

      |image351|

      -  From here you can choose to always add items regardless of
         matching status, add them only if a matching bib was found, add
         items only if there was no matching bib record, replace items
         if a matching bib was found (The match will look at the
         itemnumbers and barcodes to match on for items. Itemnumbers
         take precendence over barcodes), or Ignore items and not add
         them.

-  Click 'Stage for import'

-  You will be presented with a confirmation of your MARC import

   |image352|

-  To complete the process continue to the :ref:`Manage Staged MARC Records
   Tool <staged-marc-record-management-label>`

.. _staged-marc-record-management-label:

Staged MARC Record Management
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Catalog > Staged MARC Record Management

Once you have :ref:`staged <stage-marc-records-for-import-label>` your records for import you can
complete the import using this tool.

|image353|

-  From the list of staged records, click on the file name that you want
   to finish importing

   -  You will note that records that have already been imported will
      say so under 'Status'

-  A summary of your import will appear along with the option to change
   your matching rules

   |image354|

-  Below the summary is the option to import the batch of bib records
   using a specific framework

   |image355|

   -  Choosing a framework other than 'Default' isn't necessary, but
      it's helpful for running reports and having the right bib level
      item type selected on import.

-  Below the framework selection there will be a list of the records
   that will be imported

   |image356|

   -  Review your summary before completing your import to make sure
      that your matching rule worked and that the records appear as you
      expect them to

   -  Matches will appear with info under the 'Match details column'

      |image357|

      and when clicking the 'View' link under 'Diff' you can see the
      difference between versions.

      |image358|

-  Click 'Import into catalog' to complete the import

   |image359|

-  Once your import is complete a link to the new bib records will
   appear to the right of each title that was imported

-  You can also undo your import by clicking the 'Undo import into
   catalog' button

Records imported using this tool remain in the 'reservoir' until they
are cleaned. These items will appear when searching the catalog from the
`Cataloging <#cataloging>`__ tool:

|image360|

To clean items out of the 'reservoir':

-  Visit the main screen of the Manage Staged MARC Records tool

   |image361|

-  To clean a batch, click the 'Clean' button to the right

-  You will be presented with a confirmation message

   |image362|

   -  Accept the deletion and the records will be removed from the
      reservoir and the status will be changed to 'cleaned'

.. _upload-local-cover-image-label:

Upload Local Cover Image
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Catalog > Upload Local Cover Image

This tool will allow you to upload cover images for the materials in
your catalog. To access this tool, staff will need the
:ref:`upload\_local\_cover\_images permission <granular-tools-permissions-label>`. In
order for images to show in the staff client and/or OPAC you will need
to set your :ref:`LocalCoverImages` and/or
:ref:`OPACLocalCoverImages` preferences to
'Display.' Images can be uploaded in batches or one by one.

    **Note**

    Koha does not have a maximum file size limit for this tool, but
    Apache may limit the maximum size of uploads (talk to your sys
    admin).

    **Note**

    When you want to upload multiple images onto a bib record, they will
    display left to right (then top to bottom, depending on screen real
    estate) in order of uploading, and the one on the left (the first
    one uploaded) will be the one used as a thumbnail cover in search
    results and on the detail page. There is no way to reorder cover
    images uploaded in this way, so be sure to upload them in the order
    you'd like them to appear.

    |image1239|

If uploading a single image:

-  Visit the tool and click the 'Browse' button to browse to the image
   on your local machine.

   |image363|

-  Click 'Upload file'

-  Choose 'Image file' under the 'File type' section

-  Enter the biblionumber for the record you're attaching this image to.
   This is not the same as the barcode, this is the system generated
   number assigned by Koha.

   -  Find the biblionumber by looking at the end of the URL in the
      address bar when on the detail page

      |image364|

   -  or by clicking on the MARC tab on the detail page in the staff
      client

      |image365|

-  If you would like to replace any other cover images you may have
   uploaded in the past, check the 'Replace existing covers' box under
   the 'Options' section

-  Click 'Process images'

-  You will be presented with a summary of the upload and a link to the
   record you have just added the image to

If uploading a batch of images at once you will need to prepare a ZIP
file first.

-  Enter in to the ZIP file all the images you are uploading

-  Also include a text file (\*.TXT) named either datalink.txt or
   idlink.txt listing the biblionumber followed by the image name for
   each image one per line

   -  ex. 4091,image4091.jpg

      |image366|

-  Browse your local computer to the ZIP file

-  Click 'Upload file'

-  Choose 'Zip file' under the 'File type' section

-  If you would like to replace any other cover images you may have
   uploaded in the past, check the 'Replace existing covers' box under
   the 'Options' section

-  Click 'Process images'

-  You will be presented with a summary of the upload

   |image367|

    **Important**

    The source image is used to generate a 140 x 200 px thumbnail image
    and a 600 x 800 px full-size image. The original sized image
    uploaded will not be stored by Koha

You will be able to see your cover images in the staff client on the
detail page under the 'Image' tab in the holdings table at the bottom

|image368|

In the OPAC the cover images will also appear in the images tab, as well
as next to the title and on the search results.

If you would like to remove a cover image you can click 'Delete image'
below the image if you have the :ref:`upload\_local\_cover\_images
permission <granular-tools-permissions-label>`.

.. _additional-tools-label:

Additional Tools
---------------------------------------

.. _calendar-label:

Calendar
~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Additional Tools > Calendar

Libraries can define library closings and holidays to be used when
calculating due dates. You can make use of the Calendar by turning on
the proper system preferences:

-  *Get there:*\ More > Administration > Global System Preferences >
   Circulation > :ref:`useDaysMode`

   -  Choose the method for calculating due date - either include days
      the library is closed in the calculation or don't include them.

-  *Get there:* More > Administration > Global System Preferences >
   Circulation > :ref:`finescalendar <finescalendar-label>`

   -  This will check the holiday calendar before charging fines

|image369|

.. _adding-events-label:

Adding Events
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Before adding events, choose the library you would like to apply the
closings to. When adding events you will be asked if you would like to
apply the event to one branch or all branches. To add events, simply

-  Click on the date on the calendar that you would like to apply the
   closing to

   |image370|

-  In the form that appears above the calendar, enter the closing
   information (for more info on each option click the question mark [?]
   to the right of the option)

   -  Library will be filled in automatically based on the library you
      chose from the pull down at the top of the page

   -  The day information will also be filled in automatically based on
      the date you clicked on the calendar

   -  In the description enter the reason the library is closed

   -  Next you can choose if this event is a one time event or if it is
      repeatable.

      -  If this is a one day holiday choose 'Holiday only on this day'

      -  If this is a weekly closing (like a weekend day) then you can
         choose 'Holiday repeated every same day of the week'

      -  If this is an annual holiday closing choose 'Holiday repeated
         yearly on the same date'

      -  If the library is going to be closed for the week or a range of
         time choose 'Holiday on a range' and enter a 'To Date' at the
         top

      -  If the library is going to be closed for a range of time each
         year (such as summer holidays for schools) choose 'Holiday
         repeated yearly on a range' and enter a 'To Date' at the top

   -  Finally decide if this event should be applied to all libraries or
      just the one you have originally selected

      -  If you'd rather enter all the holidays and then copy them all
         to another branch all at once you can use the copy menu below
         the calendar

         |image371|

-  After saving you will see the event listed in the summary to the
   right the calendar

   |image372|

.. _editing-events-label:

Editing Events
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To edit events

-  Click on the event on the calendar that you want to change (do this
   by clicking on the date on the calendar, not the event listed in the
   summary)

   |image373|

-  From this form you can make edits to the holiday or delete the
   holiday completely.

   -  All actions require that you click 'Save' before the change will
      be made.

-  Clicking on repeatable events will offer slightly different options

   |image374|

   -  In the form above you will note that there is now an option to
      'Generate an exception for this repeated holiday,' choosing this
      option will allow you to make it so that this date is not closed
      even though the library is usually closed on this date.

      -  All actions require that you click 'Save' before the change
         will be made.

.. _additional-help-label:

Additional Help
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

When adding or editing events you can get additional help by clicking on
the question mark next to various different options on the form

|image375|

.. _csv-profiles-label:

CSV Profiles
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Additional Tools > CSV Profiles

CSV Profiles are created to define how you would like your cart or list
to export.

.. _add-csv-profiles-label:

Add CSV Profiles
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To add a CSV Profile

-  Click 'CSV Profiles' from the Tools menu

-  The 'Profile type' determines what type of fields you plan to use
   (MARC or SQL) to define your profile

   -  If you choose MARC then you will need to enter MARC fields

   |image376|

   -  If you choose SQL then you will need to enter SQL database fields

      |image377|

   -  The 'Profile name' will appear on the export pull down list when
      choosing 'Download' from your cart or list

      |image378|

   -  The 'Profile description' is for your own benefit, but will also
      appear in the OPAC when patrons download content, so make sure
      it's clear to your patrons as well

   -  The 'CSV separator' is the character used to separate values and
      value groups

          **Note**

          The most common option here is comma because most spreadsheet
          applications know how to open files split by commas.

   -  The 'Field separator' is the character used to separate duplicate
      fields

      -  Example: You may have multiple 650 fields and this is the
         character that will appear in between each one in the column

         |image379|

   -  The 'Subfield separator' is the character used to separate
      duplicate subfields

      -  Example: You may have multiple $a subfields in a field

   -  The 'Encoding' field lets you define the encoding used when saving
      the file

   -  Finally format your CSV file using the 'Profile MARC' or 'Profile
      SQL' field

      -  Define which fields or subfields you want to export, separated
         by pipes. Example : 200\|210$a\|301 for MARC and
         biblio.title\|biblio.author for SQL

      -  **Note**

             You can also use your own headers (instead of the ones from
             Koha) by prefixing the field number with an header,
             followed by the equal sign. Example : Personal
             name=100\|title=245$a\|300

   When you have entered in all of the information for you profile,
   simply click 'Submit' and you will be presented with a confirmation
   that your profile has been saved.

   |image380|

.. _modify-csv-profiles-label:

Modify CSV Profiles
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Once you have created at least one CSV Profile an 'Edit profile' tab
will appear next to the 'New profile' button.

|image381|

-  Choose the profile you would like to edit and alter the necessary
   fields.

-  After submitting your changes you will be presented with a
   confirmation message at the top of the screen

   |image382|

-  To delete a profile, check the 'Delete selected profile' option
   before clicking 'Submit Query'

   |image383|

.. _using-csv-profiles-label:

Using CSV Profiles
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Your CSV Profiles will appear on the export list or cart menu under the
'Download' button in both the staff client and the OPAC

|image384|

.. _log-viewer-label:

Log Viewer
~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Additional Tools > Log Viewer

Actions within the Koha system are tracked in log files. Your :ref:`system
preferences <logs-label>` can be changed to prevent the logging of
different actions. These logs can be viewed using the Log Viewer Tool.

|image385|

Choosing different combinations of menu options will produce the log
file for that query.

A query for all logs related to the Circulation module produces a result
|image386|

.. _news-label:

News
~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Additional Tools > News

Koha's news module allows librarians to post news to the OPAC, staff
interface and circulation receipts.

|image387|

To add news to either the OPAC, the Staff Client or a Circulation
receipt:

-  Click 'New Entry'

   |image388|

   -  Under 'Display Location' choose whether to put the news on the
      OPAC, Slip (circulation receipt) or the Librarian (Staff)
      Interface.

      |image1240|

   -  Choose the library this news item will show for

   -  Choose a title for your entry

   -  Using the publication and expiration date fields you can control
      from which date and for how long your news item appears

      -  Examples: (these assume today's date as 07-May-2015)

         -  Publish on current date: set publication date as 07-May-2015

         -  Schedule for publishing in future: set date later than
            07-May-2015

         -  Backdate the news item: set date earlier than 07-May-2015

   -  'Appear in position' lets you decide what order your news items
      appear in

   -  The 'News' box allows for the use of HTML for formatting of your
      news item

-  After filling in all of the fields, click 'Submit'

-  News in the OPAC will appear above the
   :ref:`OpacMainUserBlock`

   |image389|

   -  Below the news in the OPAC there will be an RSS icon allowing you
      to subscribe to library news

    |image1241|

-  News in the Staff Client will appear on the far left of the screen

   |image390|

-  News on the circulation receipts will appear below the items that are
   checked out

   |image391|

-  Depending on your choice for the
   :ref:`NewsAuthorDisplay` preference you will also
   see the person who created the news item (this uses the logged in
   person)

.. _task-scheduler-label:

Task Scheduler
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Additional Tools > Task Scheduler

The task scheduler is a way to schedule reports to run whenever you
want.

To schedule a task, visit the Task Scheduler and fill in the form

|image392|

-  Current Server Time shows the time on your server (schedule all of
   your reports to run based on that time - not on your local time)

-  Time should be entered as hh:mm (2 digit hour, 2 digit minute)

-  Date should be entered using the calendar pop up

-  From Report choose the report you want to schedule

-  Choose whether to receive the text of or a link to the results

-  In the Email filed enter the email of the person you want to receive
   your report

Below the task scheduler form, there is a list of scheduled reports

|image393|

You can also schedule reports directly from the list of saved reports by
clicking the 'Schedule' link

|image394|

.. _troubleshooting-label:

Troubleshooting
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Task scheduler will not work if the user the web server runs as doesn't
have the permission to use it. To find out if the right user has the
permissions necessary, check /etc/at.allow to see what users are in it.
If you don't have that file, check etc/at.deny. If at.deny exists but is
blank, then every user can use it. Talk to your system admin about
adding the user to the right place to make the task scheduler work.

.. _quote-of-the-day-(qotd)-editor-label:

Quote of the Day (QOTD) Editor
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Additional Tools > Edit quotes for QOTD
   feature

This tool will allow you to add and edit quotes to show on the OPAC if
you're using the Quote of the Day (QOTD) feature.

To turn this feature on set the :ref:`QuoteOfTheDay`
preference to 'Enable and add at least one quote via the Quote of the
Day Editor. Once these steps are complete you will see your quotes above
the :ref:`OpacMainUserBlock` in the OPAC:

|image395|

.. _add-a-quote-label:

Add a Quote
^^^^^^^^^^^^^^^^^^^^^^^^^^^

To add a quote:

-  Click the 'Add quote' button in the toolbar and an empty quote entry
   will be added to the end of the current quote list.

   |image396|

   -  **Important**

          Both the 'Source' and the 'Text' fields must be filled in in
          order to save the new quote.

          |image397|

-  When finished filling in both fields, press the <Enter> key on your
   keyboard to save the new quote.

-  The list will update and the new quote should now be visible in the
   list.

    **Note**

    You may cancel the addition of a new quote any time prior to saving
    it simply by pressing the <Esc> key on your keyboard.

.. _edit/delete-a-quote-label:

Edit/Delete a Quote
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Once the current quote pool has been loaded into the editing table, you
may edit the quote source and text.

-  Edit either the 'Source' or 'Text' fields by clicking on the desired
   field.

   |image398|

-  When you are finished editing a field, press the <Enter> key on your
   keyboard to save the changes.

The list will be updated, the edits saved, and visible.

If you'd like you can also delete quote(s).

-  Select the quote(s) you desire to delete by clicking on the
   corresponding quote id.

-  Once quote selection is finished, simply click the 'Delete quote(s)'
   button.

-  You will be prompted to confirm the deletion.

-  After confirming the deletion, the list will update and the quote(s)
   will no longer appear.

.. _import-quotes-label:

Import Quotes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you'd like you can import a batch of quotes as a CSV file. Your file
must contain two columns in the form: "source","text" with no header
row.

    **Note**

    You will be prompted to confirm upload of files larger than 512KB.

-  To start the import process click the 'Import quotes' button at the
   top of the screen

   |image399|

-  Once on the import quotes screen you can browse your computer for the
   file you would like to import

   |image400|

-  After selecting the CSV file, click the 'Open' button and the file
   will be uploaded into a temporary editing table.

   |image401|

-  From the listing you can edit either the 'Source' or 'Text' fields by
   clicking on the desired field. When you are finished editing a field,
   press the <Enter> key on your keyboard to save the changes.

   |image402|

-  You can also delete quotes from this listing before completing the
   import.

   -  Select the quote(s) you desire to delete by clicking on the
      corresponding quote id.

      |image403|

   -  Once quote selection is finished, simply click the 'Delete
      quote(s)' key.

      |image404|

   -  You will be prompted to confirm the deletion.

      |image405|

   -  After confirming the deletion, the list will update and the
      quote(s) will no longer appear.

-  Once you are satisfied with the quotes, click the 'Save quotes'
   button in the toolbar at the top and the quotes will be saved.

   |image406|

.. _upload-label:

Upload
~~~~~~~~~~~~~~~~~~~~~~~~

-  *Get there:* More > Tools > Additional Tools > Upload

This tool will allow you to upload files to your Koha system for
selection from the :ref:`Cataloging form <attaching-files-to-records-label>`.

.. _upload-files-label:

Upload Files
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

When you first visit the Upload tool you might see a warning about
missing a category.

|image1242|

Categories are defined in the :ref:`authorized value <authorized-values-label>`
in the UPLOAD category. If you do not have upload categories then your
files will be temporary and will be deleted the next time the server is
rebooted. Once you have a value in the UPLOAD authorized value category
you will see a Category pull down below the 'Browse' button.

|image1243|

Browse your computer a file, choose a category and decide if the public
will be able to download this file via the OPAC. Once your file is
uploaded you will be presented with a confirmation.

|image1244|

.. _search-files-label:

Search Files
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

All uploaded files are searchable from below the upload form. Using the
form you can search any part of the filename and/or the Hashvalue.Search
uploaded files

You will be presened with the results of your search.

|image1245|
