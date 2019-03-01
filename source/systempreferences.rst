.. include:: images.rst

Global system preferences
=========================

.. _global-system-preferences-label:

Global system preferences control the way your Koha system works in
general. Set these preferences before anything else in Koha.

-  *Get there:* More > Administration > Global System Preferences

|image0|

System preferences can be searched (using any part of the preference
name or description) using the search box on the 'Administration' page
or the search box at the top of each system preferences page.

|image1|

When editing preferences a ^(modified)^ tag will appear next to items
you change until you click the 'Save All' button:

|image2|

After saving your preferences you'll get a confirmation message telling
you what preferences were saved:

|image3|

Each section of preferences can be sorted alphabetically by clicking the
small down arrow to the right of the word 'Preference' in the header
column

|image4|

If the preference refers to monetary values (like
:ref:`maxoutstanding`) the currency displayed will be the
default you set in your :ref:`Currencies and Exchange Rates`
administration area. In the examples to
follow they will all read USD for U.S. Dollars.

    **Important**

    For libraries systems with unique URLs for each site the system
    preference can be overridden by editing your koha-http.conf file
    this has to be done by a system administrator or someone with access
    to your system files. For example if all libraries but one want to
    have search terms highlighted in results you set the
    OpacHighlightedWords preference to 'Highlight' then edit the
    koha-http.conf for the library that wants this turned off by adding
    'SetEnv OVERRIDE\_SYSPREF\_OpacHighlightedWords "0"'. After
    restarting the web server that one library will no longer see
    highlighted terms. Consult with your system administrator for more
    information.

.. _acquisitions-label:

Acquisitions
----------------------------

*Get there:* More > Administration > Global system preferences >
Acquisitions

.. _acquisitions-policy-label:

Policy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _acqcreateitem-label:

AcqCreateItem
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: placing an order

Asks: Create an item when \_\_\_.

Values:

-  cataloging a record

-  placing an order

-  receiving an order

Description:

-  This preference lets you decide when you'd like to create an item
   record in Koha. If you choose to add an item record when 'placing an
   order' then you will enter item information in as you place records
   in your basket. If you choose to add the item when 'receiving an
   order' you will be asked for item record information when you're
   receiving orders in acquisitions. If you choose to add the item when
   'cataloging a record' then item records will not be created in
   acquisitions at all, you will need to go to the cataloging module to
   add the items.

.. _acqenablefiles-label:

AcqEnableFiles
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't

Asks: \_\_\_ enable the ability to upload and attach arbitrary files to
invoices.

Values:

-  Do

-  Don't

Description:

-  This preference controls whether or not you allow the uploading of
   invoice files via the acquisitions module.

.. _acqitemsetsubfieldswhenreceiptiscancelled-label:

AcqItemSetSubfieldsWhenReceiptIsCancelled
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Upon cancelling a receipt, update the item's subfields if they
were created when placing an order (e.g. o=5\|a="bar foo""). \_\_\_

Description:

-  This preference is used in conjunction with the
   :ref:`AcqItemSetSubfieldsWhenReceived`
   preference. If you have the system set to enter default values when
   you receive you will want to have those values revert back if reeipt
   is cancelled. This preference allows you to do that.

`AcqItemSetSubfieldsWhenReceived`
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Upon receiving items, update their subfields if they were created
when placing an order (e.g. o=5\|a="foo bar"). \_\_\_

Description:

-  This preference allows you to set default values for items that you
   receive via acquisitions. Enter the data as subfield=value and split
   your values with a bar ( \| ). For example you can remove the Ordered
   status on the item automatically when you receive it just by entering
   7=0 in this preference. That will set the Not for Loan status
   (subfield 7) to 0 which is available.

.. _acqviewbaskets-label:

AcqViewBaskets
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: created by staff member

Asks: Show baskets \_\_\_

Values:

-  created by staff member

-  from staff member's branch

-  in system, regardless of owner

Description:

-  When in acquisitions this preference allows you to control whose
   baskets you can see when looking at a vendor. The default value of
   'created by staff member' makes it so that you only see the baskets
   you created. Choosing to see baskets 'from staff member's branch'
   will show you the baskets created by anyone at the branch you're
   logged in at. Finally, you can choose to set this preference to show
   you all baskets regardless of who created it ('in system, regardless
   of owner). Regardless of which value you choose for this preference,
   superlibrarians can see all baskets created in the system.

.. _acqwarnonduplicateinvoice-label:

AcqWarnOnDuplicateInvoice
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Do not warn

Asks: \_\_\_ when the librarian tries to create an invoice with a
duplicate number.

Values:

-  Do not warn

-  Warn

.. _basketconfirmations-label:

BasketConfirmations
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: always ask for confirmation

Asks: When closing or reopening a basket, \_\_\_.

Values:

-  always ask for confirmation

-  do not ask for confirmation

Descriptions:

-  This preference adds the option to skip confirmations on closing and
   reopening a basket. If you skip the confirmation, you do not create a
   new basket group.

.. _claimsbcccopy-label:

ClaimsBccCopy
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't send

Asks: \_\_\_ blind copy (BCC) to logged in user when sending serial or
acquisitions claims notices.

Values:

-  Don't send

-  Send

Description:

-  When filing a claim in the :ref:`Claim Late Serials` or
   Acquisitions module this preference will allow for
   the sending of a copy of the email to the librarian.

.. _currencyformat-label:

CurrencyFormat
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 360,000.00 (US)

Asks: Display currencies using the following format \_\_\_

Values:

-  360,000.00 (US)

-  360 000,00 (FR)

.. _gist-label:

gist
^^^^^^^^^^^^^^^^

Default: 0

Asks: The default tax rate is \_\_\_

Description:

-  This preference will allow the library to define a default Goods and
   Services Tax rate. The default of value of 0 will disable this
   preference.

    **Note**

    Enter this value as a number (.06) versus a percent (6%).

.. _marcfieldstoorder-label:

MarcFieldsToOrder
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Set the mapping values for a new order line created from a MARC
record in a staged file.

Description:

-  This preference includes MARC fields to check for order information
   to use when you are trying to :ref:`Order from a staged file` in
   acquisitions. You can use the following fields: price, quantity,
   budget\_code, discount, sort1, sort2.

   For example:

   ::

       price: 947$a|947$c
       quantity: 969$h
       budget_code: 922$a

.. _marcitemfieldstoorder-label:

MarcItemFieldsToOrder
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Set the mapping values for new item records created from a MARC record
in a staged file.

Description:

-  This preference automatically generates items in Koha with populated
   information based on a 9XX field and subfield. You can use the following
   fields: homebranch, holdingbranch, itype, nonpublic_note, public_note, loc,
   ccode, notforloan, uri, copyno, price, replacementprice and itemcallnumber.
   Special fields: quantity and budget_code

For example:

::

       homebranch: 975$a
       holdingbranch: 975$b
       public_note: 975$z
       loc: 975$c

.. _purgesuggestionsolderthan-label:

PurgeSuggestionsOlderThan
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Keep accepted or rejected purchase suggestions for a period of \_\_\_ days.

    **Important**

    WARNING - Leave this field empty if you don't want to activate this automatic feature.

Description:

-  Enter the number of days after which you want to automatically
   delete accepted or rejected purchase suggestions.

-  For example: [30] Sets purgation of suggestions for those older than 30 days.

    **Note**

    This system preference is used when the cronjob purge_suggestions.pl is 
    active and called without a specific number of days.


.. _uniqueitemfields-label:

UniqueItemFields
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: barcode

Asks:\_\_\_ (space-separated list of fields that should be unique for
items, must be valid SQL fields of
`items <http://schema.koha-community.org/tables/items.html>`__ table)

Description:

-  If this preference is left blank when adding items in acquisitions
   there will be no check for uniqueness. This means that a duplicate
   barcode can be created in acquisitions which will cause errors later
   when checking items in and out.

.. _useacqframeworkforbibliorecords-label:

UseACQFrameworkForBiblioRecords
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't use

Asks: \_\_\_ the framework 'ACQ' for bibliographic records fields

Values:

-  Don't use

-  Use

Description:

-  This system preference allows you to use the ACQ framework to customize
   the bibliographic record fields that are shown when ordering from acquisitions

.. _printing-label:

Printing
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _orderpdfformat-label:

OrderPdfFormat
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: pdfformat::layout2pages

Asks: Use \_\_\_ when printing basket groups.

.. _administration-label:

Administration
--------------------------------

These preferences are general settings for your system.

*Get there:* More > Administration > Global System Preferences >
Administration

.. _cas-authentication-label:

CAS Authentication
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Central Authentication Service (CAS) is a single sign-on protocol
for the web. If you don't know what this is, leave these preferences set
to their defaults.

.. _casauthentication-label:

casAuthentication
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't use

Asks: \_\_\_ CAS for login authentication.

.. _caslogout-label:

casLogout
^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Logout of CAS when logging out of Koha: \_\_\_

Default: No

Values:

-  No

-  Yes

Description:

-  CAS single logout means that a user gets logged out not only from the CAS
   server but also from all visited CAS client applications when logged out
   in one of them or after reaching a timeout.

       **Note**
       
       The CAS server has to be set up to allow single logout for this to take
       effect, otherwise the behavior will remain unchanged

.. _casserverurl-label:

casServerUrl
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: The CAS Authentication Server can be found at \_\_\_

.. _google-openid-connect-label:

Google OpenID Connect
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Visit the `Google Developers
Console <https://console.developers.google.com/>`__ to obtain OAuth 2.0
credentials such as a client ID and client secret that are known to both
Google and your application.

   |image1179|

-  Create a project, and give it some details to help you identify it
   later

   |image5|

-  Next search for the Google Identity and Access Management API

   |image6|

-  Enable the Google Identity and Access Management API

   |image7|

-  Go to 'Credentials' and set the OAuth cosent screen values

   |image8|

-  Next choose to 'Create credentials' from the 'Credentials' page

   |image9|

-  Choose 'Web application' from the 'Application type' menu and fill in
   the form presented

   |image10|

   -  Set 'Authorized JavaScript origins' to your OPACBaseURL

   -  Change the 'Authorized Redirect URIs' to
      http://YOUROPAC/cgi-bin/koha/svc/auth/googleopenidconnect

-  You will be presented with your values for your client ID and your
   client secret after saving

   |image11|

.. _googleoauth2clientid-label:

GoogleOAuth2ClientID
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Google OAuth2 Client ID \_\_\_

.. _googleoauth2clientsecret-label:

GoogleOAuth2ClientSecret
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Google OAuth2 Client Secret \_\_\_

.. _googleopenidconnect-label:

GoogleOpenIDConnect
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: No

Asks: Use Google OpenID Connect login: \_\_\_

    **Important**

    You will need to select OAuth2 when creating an app in the google
    cloud console, and set the web origin to your\_opac\_url and the
    redirect url to
    your\_opac\_url/cgi-bin/koha/svc/auth/googleopenidconnect .

    |image12|

Values:

-  No

-  Yes

.. _googleopenidconnectautoregister-label:

GoogleOpenIDConnectAutoRegister
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't Allow

Asks: \_\_\_ users logging in with Google Open ID to automatically register.

Values:

-  Don't Allow

-  Allow

.. _googleopenidconnectdefaultbranch-label:

GoogleOpenIDConnectDefaultBranch
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


Asks: \_\_\_ Use this branchcode when automatically registering a Google
Open ID patron.

.. _googleopenidconnectdefaultcategory-label:

GoogleOpenIDConnectDefaultCategory
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: \_\_\_ Use this category when automatically registering a Google
Open ID patron.

.. _googleopenidconnectdomain-label:

GoogleOpenIDConnectDomain
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Google OpenID Connect Restrict to domain (or subdomain of this
domain) \_\_\_.

    **Note**

    Leave blank for all google domains

.. _interface-options-label:

Interface options
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These preference are related to your Koha interface

.. _debuglevel-label:

DebugLevel
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: lots of

Asks: Show \_\_\_ debugging information in the browser when an internal
error occurs.

Values:

-  lots of - will show as much information as possible

-  no - will only show basic error messages

-  some - will show only some of the information available

Description:

-  This preference determines how much information will be sent to the
   user's screen when the system encounters an error. The most detail
   will be sent when the value level is set at 2, some detail will be
   sent when the value is set at 1, and only a basic error message will
   display when the value is set at 0. This setting is especially
   important when a system is new and the administration is interested
   in working out the bugs (errors or problems) quickly. Having detailed
   error messages makes quick fixes more likely in problem areas.

.. _defaulttologgedinlibrarycircrules-label:

DefaultToLoggedInLibraryCircRules
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: all libraries

Asks: When editing circulation rules show \_\_\_ the rules by default.

Values:

-  all libraries

-  logged in library's

Description:

-  This preference controls the default value in the branch pull down
   found at the top of the :ref:`Circulation and fines rules`.

.. _defaulttologgedinlibrarynoticesslips-label:

DefaultToLoggedInLibraryNoticesSlips
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: all libraries

Asks: When editing notices and slips show the \_\_\_ notices and slips
by default.

Values:

-  all libraries

-  logged in library's

Description:

-  This preference controls the default value in the branch pull down
   found at the top of the :ref:`Notices & Slips` tool.

.. _defaulttologgedinlibraryoverduetriggers-label:

DefaultToLoggedInLibraryOverdueTriggers
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: all libraries

Asks: When editing overdue notice/status triggers show the \_\_\_ rules
by default.

Values:

-  all libraries

-  logged in library's

Description:

-  This preference controls the default value in the branch pull down
   found at the top of the :ref:`Overdue Notice/Status Triggers`.

.. _delimiter-label:

delimiter
^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: semicolons

Asks: Separate columns in an exported report file with \_\_\_ by
default.

Values:

-  #'s

-  backslashes

-  commas

-  semicolons

-  slashes

-  tabs

Description:

-  This preference determines how reports exported from Koha will
   separate data. In many cases you will be able to change this option
   when exporting if you'd like.

.. _kohaadminemailaddress-label:

KohaAdminEmailAddress
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This is the default 'From' address for emails unless there is one for
the particular branch, and is referred to when an internal error occurs.

Asks: Use \_\_\_ as the email address for the administrator of Koha.

Description:

-  This preference allows one email address to be used in warning
   messages set to the OPAC. If no email address is set for the branch
   this address will receive messages from patrons regarding
   modification requests, purchase suggestions, and questions or
   information regarding overdue notices. It is recommended that a email
   address that can be accessed by multiple staff members be used for
   this purpose so that if one librarian is out the others can address
   these requests. This email address can be changed when needed.

.. _noitemtypeimages-label:

noItemTypeImages
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Show

Asks: \_\_\_ itemtype icons in the catalog.

Values:

-  Shows

-  Don't show

Description:

-  This preference allows the system administrator to determine if users
   will be able to set and see an item type icon in 
   the catalog on both the OPAC and the Staff Client. The images will
   display in both the OPAC and the Staff Client/Intranet. If images of
   item types are disabled, text labels for item types will still appear
   in the OPAC and Staff Client.

.. _replytodefault-label:

ReplytoDefault
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Use \_\_\_ as the email address that will be set as the replyto in
emails

Description:

-  By default replies to notice emails will go to the `library email
   address <#libraries-groups>`__, if you would like to specify a default
   email address for all replies to notices you can do that here.

.. _returnpathdefault-label:

ReturnpathDefault
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Use \_\_\_ as the email address set as the return path, if you
leave this empty the KohaAdminEmailAddress will be used.

Description:

-  The return path is the email address that bounces will be delivered
   to. By default bounced notices will go to the `library email
   address <#libraries-groups>`__, if you would like to specify a default
   email address for bounces to go to then fill in this preference.

.. _virtualshelves-label:

virtualshelves
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ staff and patrons to create and view saved lists of books.

Values:

-  Allow

-  Don't Allow

Description:

-  This preference controls whether the lists functionality will be
   available in the staff client and OPAC. If this is set to "Don't
   allow" then no one will be able to save items to public or private
   lists.

.. _login-options-label:

Login options
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These preferences are related to logging into your Koha system

.. _autolocation-label:

AutoLocation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't require

Asks: \_\_\_ staff to log in from a computer in the IP address range
specified by their library (if any).

-  Set IP address range in the library administration area

   -  *Get there:* More > Administration > Basic Parameters > :ref:`Libraries <libraries-label>`

Values:

-  Don't require

-  Require

Description:

-  This preference protects the system by blocking unauthorized users
   from accessing the staff client program and settings. Authorized and
   unauthorized users are determined by their computer's IP addresses.
   When the preference is set to 'Require', IP authorization is in
   effect and unauthorized IP addresses will be blocked. This means that
   staff cannot work from home unless their IP address has been
   authorized. When set to 'Don't require', anyone with a staff client
   login will have access no matter which IP address they are using.

.. _independentbranches-label:

IndependentBranches
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't prevent

Asks: \_\_\_ staff (but not superlibrarians) from modifying objects
(holds, items, patrons, etc.) belonging to other libraries.

Values:

-  Don't prevent

-  Prevent

Description:

-  This preference should only be used by library systems which are
   sharing a single Koha installation among multiple branches but are
   considered independent organizations, meaning they do not share
   material or patrons with other branches and do not plan to change
   that in the future. If set to 'Prevent' it increases the security
   between library branches by: prohibiting staff users from logging
   into another branch from within the staff client, filtering out
   patrons from patron searches who are not a part of the login branch
   conducting the search, limiting the location choices to the login
   branch when adding or modifying an item record, preventing users from
   other branch locations from placing holds or checking out materials
   from library branches other than their own, and preventing staff from
   editing item records which belong to other library branches. All of
   these security safeguards can be overridden only by the
   superlibrarian, the highest level of privileges.

    **Important**

    It is important that this value be set before going live and that it
    NOT be changed

.. _independentbranchespatronmodifications-label:

IndependentBranchesPatronModifications
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: No

Asks: Prevent staff (but not superlibrarians) from viewing and
approving/denying patron modification requests for patrons
belonging to other libraries. \_\_\_

Values:

-  No

-  Yes

.. _sessionrestrictionbyip-label:

SessionRestrictionByIP
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Enable

Asks: \_\_\_ check for change in remote IP address for session security.
Disable only when remote IP address changes frequently.

Values:

-  Disable

-  Enable

Description:

-  When this preference is set to 'Enable' Koha will log you out of the
   staff client if your IP address changes as a security measure. For
   some systems the IP address changes frequently so you'll want to set
   this preference to 'Disable' to prevent Koha from logging you out of
   the staff client every time that happens.

    **Important**

    This is meant to help those whose IP address changes several times
    during the day, setting this preference to 'Disable' is not
    recommended otherwise because it is removing important security
    features from your staff client.

.. _sessionstorage-label:

SessionStorage
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: in the MySQL database

Asks: Store login session information \_\_\_

Values:

-  as temporary files

-  in the MySQL database

-  in the PostgreSQL database

   -  **Important**

          PostgreSQL is not yet supported

Description:

-  This preference allows administrators to choose what format session
   data is stored in during web sessions.

.. _timeout-label:

timeout
^^^^^^^^^^^^^^^^^^^^^^

Default: 12000000

Asks: Automatically log out users after \_\_\_ seconds of inactivity.

Description:

-  This preference sets the length of time the Staff Client or OPAC
   accounts can be left inactive before re-logging in is necessary. The
   value of this preference is in seconds. At this time, the amount of
   time before a session times out must be the same for both the Staff
   Client and the OPAC.

.. _ssl-client-certificate-authentication-label:

SSL client certificate authentication
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _allowpkiauth-label:

AllowPKIAuth
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: no

Asks: Use \_\_\_ field for SSL client certificate authentication

Values:

-  no

-  the common name

-  the email address

.. _search-engine-label:

Search Engine
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _searchengine-label:

SearchEngine
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Zebra

Asks: Use following search engine: \_\_\_

Values:

-  Elasticsearch

-  Zebra

.. _share-anonymous-usage-statistics-label:

Share anonymous usage statistics
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

As an open source project Koha is used all over the world. These
preference will help us keep more accurate statistics on where Koha is
being used. If you choose to share your information, it will be
published on the `Hea Koha community
website <http://hea.koha-community.org>`__. You will need to enable the
:ref:`Share Usage Stats` cronjob to send this information at regular
intervals to the community.

.. _usagestats-label:

UsageStats
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't share

Asks: \_\_\_ anonymous Koha usage data with the Koha community.

Values:

-  Don't share

-  Share

Description:

-  This data is stored to help track usage of Koha around the world. If
   you choose to share your information, it will be published on the
   `Hea Koha community website <http://hea.koha-community.org>`__. This
   information is sent using the :ref:`Share Usage Stats` cronjob.

.. _usagestatscountry-label:

UsageStatsCountry
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: The country where your library is located: \_\_\_

Description:

-  This data is stored to help track usage of Koha around the world. If
   you choose to share your information, it will be published on the
   `Hea Koha community website <http://hea.koha-community.org>`__. This
   information is sent using the :ref:`Share Usage Stats` cronjob.

    **Important**

    This preference depends on the `UsageStats <#usagestats>`__
    preference. Set that to 'Share' to share your information.

.. _usagestatsgeolocation-label:

UsageStatsGeolocation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: blank

Asks: Geolocation of the main library: \_\_\_ Note that this value has no effect
if the :ref:`UsageStats` systemp preference is set to "Don't share"

.. _usagestatslibrariesinfo-label:

UsageStatsLibrariesInfo
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Do not Share

Asks: \_\_\_ libraries information (name, url, country) Note that this value
has no effect if the :ref:`UsageStats` system preference is set to
"Don't share"

Values:

-  Do not Share

-  Share

.. _usagestatslibraryname-label:

UsageStatsLibraryName
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: The library name \_\_\_ will be shown on the `Hea Koha community
website <http://hea.koha-community.org>`__.

Description:

-  This data is stored to help track usage of Koha around the world. If
   you choose to share your information, it will be published on the
   `Hea Koha community website <http://hea.koha-community.org>`__. This
   information is sent using the :ref:`Share Usage Stats` cron job.

    **Important**

    This preference depends on the `UsageStats <#usagestats>`__
    preference. Set that to 'Share' to share your information. If this
    field is empty data will be sent anonymously if you choose 'Share'
    for the `UsageStats <#usagestats>`__ preference.

.. _usagestatslibrarytype-label:

UsageStatsLibraryType
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: public

Asks: The library type \_\_\_ will be shown on the `Hea Koha community
website <http://hea.koha-community.org>`__.

Values:

-  academic

-  corporate

-  government

-  private

-  public

-  religious organization

-  research

-  school

-  society or association

-  subscription

Description:

-  This data is stored to help track usage of Koha around the world. If
   you choose to share your information, it will be published on the
   `Hea Koha community website <http://hea.koha-community.org>`__. This
   information is sent using the :ref:`Share Usage Stats` cronjob.

    **Important**

    This preference depends on the `UsageStats <#usagestats>`__
    preference. Set that to 'Share' to share your information.

.. _usagestatslibraryurl-label:

UsageStatsLibraryUrl
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: The library URL \_\_\_ will be shown on the `Hea Koha community
website <http://hea.koha-community.org>`__.

Description:

-  This data is stored to help track usage of Koha around the world. If
   you choose to share your information, it will be published on the
   `Hea Koha community website <http://hea.koha-community.org>`__. This
   information is sent using the :ref:`Share Usage Stats` cronjob.

    **Important**

    This preference depends on the `UsageStats <#usagestats>`__
    preference. Set that to 'Share' to share your information.

.. _authorities-label:

Authorities
----------------------------

*Get there:* More > Administration > Global System Preferences >
Authorities

.. _general-label:

General
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _authdisplayhierarchy-label:

AuthDisplayHierarchy
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't display

Asks: \_\_\_ broader term/narrower term hierarchies when viewing
authorities.

Values:

-  Display

   |image14|

-  Don't display

Description:

-  If your authority records includes 5xx fields with linked references
   to broader and/or narrower see also references this preference will
   turn on a display of those authorities at the top of the record.

.. _authoritycontrolledindicators-label:

AuthorityControlledIndicators
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Use the following text to edit how authority records control indicators
of attached biblio fields (and possibly subfield $2). Lines starting with a
comment symbol (#) are skipped. Each line should be of the form: (marc21|unimarc),
tag, ind1:(auth1|auth2|some_value), ind2:(auth1|auth2|thesaurus|some_value).
Here auth1 and auth2 refer to the indicators of the authority record, tag is a
biblio field number or an asterisk (*), and some_value is a fixed value
(one character). The MARC21 option thesaurus refers to indicators controlled by
authority field 008/11 and 040$f.

Description:

-  Used when merging authorities.

-  Controls how the indicators of linked authority records affect the
   corresponding biblio indicators. Currently, the default value is fine-tuned
   for MARC21 and copies the authority indicators for UNIMARC.

-  For example, a MARC21 field 100 in a biblio record should pick its first
   indicator from the linked authority record. The second indicator is not
   controlled by the authority. This report supports such MARC conventions.

.. _authoritymergelimit-label:

AuthorityMergeLimit
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 50

Asks: When modifying an authority record, do not update attached biblio
records if the number exceeds \_\_\_ records. (Above this limit, the merge_authority
cron job will merge them.)

.. _authoritymergemode-label:

AuthorityMergeMode
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: loose

Asks: When updating biblio records from an attached authority record ("merging"),
handle subfields of relevant biblio record fields in \_\_\_ mode. In strict mode
subfields that are not found in the authority record, are deleted. Loose mode
will keep them. Loose mode is the historical behavior and still the default.

Values:

-  loose

-  strict

.. _autocreateauthorities-label:

AutoCreateAuthorities
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: do not generate

Asks: When editing records, \_\_\_ authority records that are missing.

Values:

-  do not generate

-  generate

    **Important**

    `BiblioAddsAuthorities <#biblioaddsauthorities>`__ must be set to
    "allow" for this to have any effect

Description:

-  When this and `BiblioAddsAuthorities <#biblioaddsauthorities>`__ are
   both turned on, automatically create authority records for headings
   that don't have any authority link when cataloging. When
   BiblioAddsAuthorities is on and AutoCreateAuthorities is turned off,
   do not automatically generate authority records, but allow the user
   to enter headings that don't match an existing authority. When
   BiblioAddsAuthorities is off, this has no effect.

.. _biblioaddsauthorities-label:

BiblioAddsAuthorities
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: allow

Asks: When editing records, \_\_\_ them to automatically create new
authority records if needed, rather than having to reference existing
authorities.

Values:

-  allow

   -  This setting allows you to type values in the fields controlled by
      authorities and then adds a new authority if one does not exist

-  don't allow

   -  This setting will lock the authority controlled fields, forcing
      you to search for an authority versus allowing you to type the
      information in yourself.

.. _marcauthoritycontrolfield008-label:

MARCAuthorityControlField008
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: \|\| aca\|\|aabn \| a\|a d

Asks: Use the following text for the contents of MARC21 authority
control field 008 position 06-39 (fixed length data elements).

    **Important**

    Do not include the date (position 00-05) in this preference, Koha
    will calculate automatically and put that in before the values in
    this preference.

Description:

-  This preference controls the default value in the 008 field on
   Authority records. It does not effect bibliographic records.

.. _unimarcauthorityfield100-label:

UNIMARCAuthorityField100
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: afrey50 ba0

Asks: Use the following text for the contents of UNIMARC authority field
100 position (fixed length data elements).

    **Important**

    Do not include the date (position 00-07) in this preference, Koha
    will calculate automatically and put that in before the values in
    this preference.

Description:

-  This preference controls the default value in the 100 field on
   Authority records cataloged in UNIMARC. It does not effect
   bibliographic records.

.. _useauthoritiesfortracings-label:

UseAuthoritiesForTracings
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't use

Asks: \_\_\_ authority record numbers instead of text strings for
searches from subject tracings.

Values:

-  Don't use

   -  Search links look for subject/author keywords (example:
      opac-search.pl?q=su:Business%20networks)

-  Use

   -  Search links look for an authority record (example:
      opac-search.pl?q=an:354)

Description:

-  For libraries that have authority files, they may want to make it so
   that when a link to an authorized subject or author is clicked on the
   OPAC or staff client it takes the searcher only to a list of results
   with that authority record. Most libraries do not have complete
   authority files and so setting this preference to 'Don't use' will
   allow searchers to click on links to authors and subject headings and
   perform a keyword search against those fields, finding all possible
   relevant results instead.

.. _linker-label:

Linker
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These preferences will control how Koha links bibliographic records to
authority records. All bibliographic records added to Koha after these
preferences are set will link automatically to authority records, for
records added before these preferences are set there is a script
(misc/link\_bibs\_to\_authorities.pl) that your system administrator can
run to link records together.

.. _catalogmodulerelink-label:

CatalogModuleRelink
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Do not

Asks: \_\_\_ automatically relink headings that have previously been
linked when saving records in the cataloging module.

Values:

-  Do

-  Do not

Description:

-  Longtime users of Koha don't expect the authority and bib records to
   link consistently. This preference makes it possible to disable
   authority relinking in the cataloging module only (i.e. relinking is
   still possible if link\_bibs\_to\_authorities.pl is run). Note that
   though the default behavior matches the previous behavior of Koha
   (retaining links to outdated authority records), it does not match
   the intended behavior (updating biblio/authority link after
   bibliographic record is edited). Libraries that want the intended
   behavior of authority control rather than the way Koha used to handle
   linking should set CatalogModuleRelink to 'Do'. Once setting this to
   'Do' the following preferences can also be set.

.. _linkerkeepstale-label:

LinkerKeepStale
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Do not

Asks: \_\_\_ keep existing links to authority records for headings where
the linker is unable to find a match.

Values:

-  Do

-  Do not

Description:

-  When set to 'Do', the linker will never remove a link to an authority
   record, though, depending on the value of
   :ref:`LinkerRelink`, it may change the link.

.. _linkermodule-label:

LinkerModule
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Default

Asks: Use the \_\_\_ linker module for matching headings to authority
records.

Values:

-  Default

   -  Retains Koha's previous behavior of only creating links when there
      is an exact match to one and only one authority record; if the
      :ref:`LinkerOptions` preference is set to
      'broader\_headings', it will try to link headings to authority
      records for broader headings by removing subfields from the end of
      the heading

-  First match

   -  Creates a link to the first authority record that matches a given
      heading, even if there is more than one authority record that
      matches

-  Last match

   -  Creates a link to the last authority record that matches a given
      heading, even if there is more than one record that matches

Description:

-  This preference tells Koha which match to use when searching for
   authority matches when saving a record.

.. _linkeroptions-label:

LinkerOptions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Set the following options for the authority linker \_\_\_

    **Important**

    This feature is experimental and shouldn't be used in a production
    environment until further expanded upon.

Description:

-  This is a pipe separated (\|) list of options. At the moment, the
   only option available is "broader\_headings." With this option set to
   "broader\_headings", the linker will try to match the following
   heading as follows:

   ::

       =600 10$aCamins-Esakov, Jared$xCoin collections$vCatalogs$vEarly works to 1800.

   First: Camins-Esakov, Jared--Coin collections--Catalogs--Early works
   to 1800

   Next: Camins-Esakov, Jared--Coin collections--Catalogs

   Next: Camins-Esakov, Jared--Coin collections

   Next: Camins-Esakov, Jared (matches! if a previous attempt had
   matched, it would not have tried this)

.. _linkerrelink-label:

LinkerRelink
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Do

Asks: \_\_\_ relink headings that have previously been linked to
authority records.

Values:

-  Do

-  Do not

Description:

-  When set to 'Do', the linker will confirm the links for headings that
   have previously been linked to an authority record when it runs,
   correcting any incorrect links it may find. When set to 'Do not', any
   heading with an existing link will be ignored, even if the existing
   link is invalid or incorrect.

.. _cataloging-label:

Cataloging
--------------------------

*Get there:* More > Administration > Global System Preferences >
Cataloging

.. _display-label:

Display
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _acquisitiondetails-label:

AcquisitionDetails
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Display

Asks: \_\_\_ acquisition details on the biblio detail page.

Values:

-  Display

-  Don't display

Description:

-  This preference controls whether a tab will show on the detail page
   in the staff client that includes detailed acquisitions information
   for the title. This tab will include links to order information
   stored in the acquisitions module.

   |image1180|

.. _authorityseparator-label:

AuthoritySeparator
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: --

Asks: Separate multiple displayed authors, series or subjects with
\_\_\_.

.. _hide\_marc-label:

hide\_marc
^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Display

Asks: \_\_\_ MARC tag numbers, subfield codes and indicators in MARC
views.

Values:

-  Display -- shows the tag numbers on the cataloging interface

   |image15|

-  Don't display -- shows just descriptive text when cataloging

   |image16|

.. _intranetbibliodefaultview-label:

IntranetBiblioDefaultView
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: ISBD form

Asks: By default, display biblio records in \_\_\_

Values:

-  ISBD form -- displays records in the staff client in the old card
   catalog format

   -  See :ref:`ISBD` preference for more information

-  Labelled MARC form -- displays records in the staff client in MARC
   with text labels to explain the different fields

-  MARC form -- displays records in the staff client in MARC

-  normal form -- visual display in the staff client (for the average
   person)

Description:

-  This setting determines the bibliographic record display when
   searching the catalog on the staff client. This setting does not
   affect the display in the OPAC which is changed using the
   :ref:`BiblioDefaultView` preference under the OPAC
   preference tab. This setting changes the look of the record when
   first displayed. The MARC and ISBD views can still be seen by
   clicking in the sidebar.

.. _isbd-label:

ISBD
^^^^^^^^^^^^^^^^^^^^

Default: See `ISBD view configuration
<https://wiki.koha-community.org/wiki/ISBD_view_configuration>` on the wiki.

Asks: Use the following as the ISBD template:

Description:

-  This determines how the ISBD information will display in the staff
   client. Elements in the list can be reordered to produce a different
   ISBD view. ISBD, the International Standard Bibliographic
   Description, was first introduced by IFLA (International Federation
   of Library Associations) in 1969 in order to provide guidelines for
   descriptive cataloging. The purpose of ISBD is to aid the
   international exchange of bibliographic records for a variety of
   materials.

.. _labelmarcview-label:

LabelMARCView
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't

Asks: \_\_\_ collapse repeated tags of the same type into one tag entry.

Values:

-  Do -- will combine all identical tag numbers under one heading in the
   MARC view in the OPAC and Staff Client

   |image17|

-  Don't -- will list all of the tags individually in the MARC view in
   the OPAC and Staff Client

   |image18|

.. _marcfielddocurl-label:

MARCFieldDocURL
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: blank

Asks: Use \_\_\_ as the URL for MARC field documentation. Possible substitutions are {MARC} (marc flavour, eg. "MARC21" or "UNIMARC"), {FIELD} (field number, eg. "000" or "048"), {LANG} (user language, eg. "en" or "fi-FI"). If left empty, the format documentation on http://loc.gov (MARC21) or http://archive.ifla.org (UNIMARC) is used. For example http://fielddoc.example.com/?marc={MARC}&field={FIELD}&language={LANG}

Description:

-  This preference lets you choose the source of the MARC documentation available through the "?" next to MARC fields.

.. _mergereportfields-label:

MergeReportFields
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: \_\_\_ fields to display for deleted records after merge

Description:

-  When merging records together you can receive a report of the merge
   process once it's done, this preference lets you set the default
   values for this report.

Example: '001,245ab,600' displays:

-  value of 001

-  subfields a and b of fields 245

-  all subfields of fields 600

.. _notesblacklist-label:

NotesBlacklist
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Don't show these \_\_\_ note fields in title notes separator (OPAC
record details) and in the description separator (Staff client record
details).

Description:

-  This preference lets you define which of your note fields are hidden
   from the title notes (OPAC) and descriptions (Staff) tabs. Enter the
   values as a comma separated list. For example to hide the local note
   and the bibliography note in MARC21 enter 504, 590.

.. _opacsuppression,-opacsuppressionbyiprange,-opacsuppressionredirect,-and-opacsuppressionmessage-label:

OpacSuppression, OpacSuppressionByIPRange, OpacSuppressionRedirect, and OpacSuppressionMessage
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

OpacSuppression Default: Don't hide

Asks: \_\_\_ items marked as suppressed from OPAC search results.
Restrict the suppression to IP addressesoutside of the IP range \_\_\_
(Leave blank if not used. Define a range like 192.168..) Redirect the opac detail
page for suppressed records to \_\_\_ Display the following message on
the redirect page for suppressed biblios \_\_\_.

OpacSuppression Values:

-  Don't hide

   -  Will show records in OPAC search results if they are marked
      suppressed

-  Hide

   -  Will not show records in OPAC search results if they're marked as
      suppressed

OpacSuppressionRedirect Values:

-  an explanatory page ('This record is blocked').

-  the 404 error page ('Not found').

Description:

-  These preferences control hiding of bibliographic records from
   display in the OPAC. Each bibliographic record you want to hide from
   the OPAC simply needs to have the value "1" in the field mapped with
   Suppress index (942$n field in MARC21, no official field in UNIMARC).
   The indexer then hides it from display in OPAC but will still display
   it in the Staff Client. If you want to further control suppression
   you can set an IP address range to still show suppressed items to.
   Define a range like 192.168.. If you don't want to limit suppression
   in this way, leave the IP field blank. You can also decide what the
   patrons will see in the OPAC when a title is suppressed by setting
   the OpacSuppressionRedirect and OpacSuppressionMessage preferences.
   You can either show the patron a 404 page if they try to see a
   suppressed record or you can create a custom page by entering the
   HTML in the OpacSuppressionMessage part of this preference.

       **Note**

       An :ref:`authorized value <authorized-values-label>` for the MARC21 942$n
       field (or the equivalent UNIMARC field) should be set to
       eliminate errors. One example would be to create an authorized
       value titled SUPPRESS with a value of 0 for don't suppress and 1
       for suppress.

    **Important**

    If this preference is set to 'hide' and you have the 942n field set
    to 1, it will hide the entire bib record - not just an individual
    item.

    **Note**

    Suppressed records will show a note in the staff client indicating
    that they are suppressed from view in the OPAC.

    |image1181|

    This note can be styled by using the
    :ref:`IntranetUserCSS` preference to stand out more
    if you'd like.

    |image1182|

.. _separateholdings-&-separateholdingsbranch-label:

SeparateHoldings & SeparateHoldingsBranch
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

SeparateHoldings default: Don't separate

SeparateHoldingsBranch default: home library

Asks: \_\_\_ items display into two tabs, where the first tab contains
items whose \_\_\_ is the logged in user's library. The second tab will
contain all other items.

SeparateHoldings values:

-  Don't separate

-  Separate

SeparateHoldingsBranch values:

-  holding library

-  home library

Description:

-  This preference lets you decide if you would like to have the holding
   information on the bibliographic detail page in the staff client
   split in to multiple tabs. The default is to show all holdings on one
   tab.

   |image19|

.. _urllinktext-label:

URLLinkText
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Online Resource

Asks: Show \_\_\_ as the text of links embedded in MARC records.

Description:

-  If the 856 field does not have a subfield 3 or y defined, the OPAC
   will say 'Click here to access online.^ If you would like the field
   to say something else enter that in this field.

.. _usecontrolnumber-label:

UseControlNumber
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't use

Asks: \_\_\_ record control number ($w subfields) and control number
(001) for linking of bibliographic records.

Values:

-  Don't use

   -  When clicking on links to titles that appear next to 'Continues'
      and 'Continued by' in the detail display Koha will perform a title
      search

-  Use

   -  When clicking on links to titles that appear next to 'Continues'
      and 'Continued by' in the detail display Koha will perform a
      control number (MARC field 001) search

    **Important**

    Unless you are going in and manually changing 773$w to match your
    rigorously-defined bibliographic relationships, you should set this
    preference to "Don't use" and instead set
    :ref:`EasyAnalyticalRecords` to "Display"

Description:

-  If you have a serial called "Journal of Interesting Things" which has
   a separate record from when it was called "Transactions of the
   Interesting Stuff Society," you could add linking fields to indicate
   the relationship between the two records. UseControlNumber allows you
   to use your local accession numbers for those links. In MARC21, the
   relevant sections of the two records might look like this:

   ::

           =001    12345
           =110  2_$aInteresting Stuff Society.
           =245  10$aTransactions of the Interesting Stuff Society.
           =785  00$aInteresting Stuff Society$tJournal of Interesting Things.$w12346

           =001    12346
           =110  2_$aInteresting Stuff Society.
           =245  10$aJournal of Interesting Things.
           =780  00$aInteresting Stuff Society$tTransactions of the Interesting Stuff Society.$w12345

   With UseControlNumber set to 'Use', the 78x links will use the
   Control Numbers is subfield $w, instead of doing a title search on
   "Journal of Interesting Things" and "Transactions of the Interesting
   Stuff Society" respectively.

.. _exporting-label:

Exporting
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _bibtexexportadditionalfields-label:

BibtexExportAdditionalFields
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Include following fields when exporting BibTeX

Description:

-  Use one line per tag in the format BT\_TAG: TAG$SUBFIELD ( e.g. lccn:
   010$a )

-  To specify multiple marc tags/subfields as targets for a repeating
   BibTex tag, use the following format: BT\_TAG: [TAG2$SUBFIELD1,
   TAG2$SUBFIELD2] ( e.g. notes: [501$a, 505$g] )

-  All values of repeating tags and subfields will be printed with the
   given BibTeX tag.

-  Use ^@^ ( with quotes ) as the BT\_TAG to replace the bibtex record
   type with a field value of your choosing.

.. _risexportadditionalfields-label:

RisExportAdditionalFields
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Include following fields when exporting RIS

Description:

-  Use one line per tag in the format RIS\_TAG: TAG$SUBFIELD ( e.g. LC:
   010$a )

-  To specificy multiple marc tags/subfields as targets for a repeating
   RIS tag, use the following format: RIS\_TAG: [TAG2$SUBFIELD1,
   TAG2$SUBFIELD2] ( e.g. NT: [501$a, 505$g] )

-  All values of repeating tags and subfields will be printed with the
   given RIS tag.

-  Use of TY ( record type ) as a key will *replace* the default TY with
   the field value of your choosing.

.. _importing-label:

Importing
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _aggressivematchonisbn-label:

AggressiveMatchOnISBN
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: don't

Asks: When matching on ISBN with the record import tool, \_\_\_ attempt
to match aggressively by trying all variations of the ISBNs in the
imported record as a phrase in the ISBN fields of already cataloged
records.

Values:

-  do

-  don't

Description:

-  This preference allows you to choose to alter the ISBN matching rule
   used when staging records for import to be more aggressive. This
   means that all text will be stripped from the ISBN field so that a
   pure number match is possible. If this preference is set to "Don't"
   then Koha will find a match only if the ISBN fields are identical.

    **Important**

    Note that this preference has no effect if
    :ref:`UseQueryParser` is on.

.. _aggressivematchonissn-label:

AggressiveMatchOnISSN
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: don't

Asks: When matching on ISSN with the record import tool, \_\_\_ attempt
to match aggressively by trying all variations of the ISSNs in the imported
record as a phrase in the ISSN fields of already cataloged records. Note that
this preference has no effect if :ref:`UseQueryParser` is on.

.. _interface-label:

Interface
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _advancedmarceditor-label:

advancedMARCeditor
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't display

Asks: \_\_\_ descriptions of fields and subfields in the MARC editor.

Description:

-  This preference determines whether or not MARC field names will be
   present when editing or creating MARC records.

Values:

-  Display

   |image20|

-  Don't display

   |image21|

.. _defaultclassificationsource-label:

DefaultClassificationSource
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Dewey Decimal System

Asks: Use \_\_\_ as the default classification source.

Values:

-  ANSCR (Sound Recordings)

-  Dewey Decimal Classification

-  Library of Congress Classification

-  Other/Generic Classification Scheme

-  SuDoc Classification (U.S. GPO)

-  Universal Decimal Classification

    **Note**

    Adding another classification under Administration > Classification Sources
    will make it show up in this list as well.

.. _easyanalyticalrecords-label:

EasyAnalyticalRecords
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't Display

Asks: \_\_\_ easy ways to create analytical record relationships

Values:

-  Display

-  Don't Display

    **Important**

    If you decide to use this feature you'll want to make sure that your
    :ref:`UseControlNumber` preference is set to "Don't
    use" or else the "Show analytics" links in the staff client and the
    OPAC will be broken.

Description:

-  An analytic entry in a catalog is one that describes a part of a
   larger work that is also described in the catalog. In bibliographic
   cataloging, analytic entries may be made for chapters in books or
   special issues of articles in periodicals. In archival cataloging,
   analytic entries may be made for series or items within a collection.
   This feature in Koha allows for an easy way of linking analytic
   entries to the host records, and this system preference adds several
   new menu options to the staff cataloging detail pages to allow that
   to happen.

.. _enableadvancedcatalogingeditor-label:

EnableAdvancedCatalogingEditor
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Default: Don't enable

Asks: \_\_\_ the advanced cataloging editor.

Description:

-  This preference will allow you to choose between a basic editor and a
   advanced editor for cataloging.

    **Note**

    This feature does not currently include any support for
    UNIMARC or NORMARC fixed fields.

.. _record-structure-label:

Record Structure
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _alternateholdingsfield-&-alternateholdingsseparator-label:

AlternateHoldingsField & AlternateHoldingsSeparator
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Display MARC subfield \_\_\_ as holdings information for records
that do not have items, with the subfields separated by \_\_\_.

Description:

-  Sometimes libraries migrate to Koha with their holding info in the
   852 field (OCLC holdings information field) and choose not to
   transfer that information into the 952 (Koha holdings information
   field) because they don't plan on circulating those items. For those
   libraries or other libraries that have data in the 852 fields of
   their records that they want to display, these preferences let you
   choose to display holdings info from a field other than the 952
   field. The AlternateHoldingsField preference can contain multiple
   subfields to look in; for instance 852abhi would look in 852
   subfields a, b, h, and i.

-  With AlternateHoldingsField set to 852abhi and
   AlternateHoldingsSeparator set to a space the holdings would look
   like the following:

   |image22|

.. _autobarcode-label:

autoBarcode
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: generated in the form <branchcode>yymm0001

Asks: Barcodes are \_\_\_

Values:

-  generated in the form <branchcode>yymm0001

-  generated in the form <year>-0001, <year>-0002

-  generated in the form 1, 2, 3

-  incremental EAN-13 barcodes

-  not generated automatically

Description:

-  This setting is for libraries wishing to generate barcodes from
   within Koha (as opposed to scanning in pre-printed barcodes or
   manually assigning them). The default behavior makes it so that when
   you click in the barcode field (952$p in MARC21) it will populate
   with the automatic barcode you have chosen. If you would rather it
   only enter an automatic barcode when you click on the plugin (the ...
   to the right of the field) you can change the plugin used for that
   field in the framework. Set the plugin for 952$p (if using MARC21 or
   equivalent field mapped to items.barcode in your local MARC format)
   for your frameworks to barcode\_manual.pl instead of barcode.pl.
   Learn more about editing frameworks under the :ref:`MARC Bibliographic
   Frameworks <marc-bibliographic-frameworks-label>` section of this manual.

.. _defaultcountryfield008-label:

DefaultCountryField008
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Empty defaults to xxu for United States

Asks: Fill in the default country code for field 008 Range 15-17 of MARC21 -
Place of publication, production, or execution. \_\_\_.

Description:

-  This preference will allow you to set the country code for your MARC21
   008 field by default. If this is left empty it will default to
   United States (xxu). See the `MARC Code List for
   Countries <http://www.loc.gov/marc/countries/countries_code.html>`__
   for additional values for this preference.

    **Note**

    This preference won't have any effect if your records are in
    UNIMARC.

.. _defaultlanguagefield008-label:

DefaultLanguageField008
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Empty defaults to eng

Asks: Fill in the default language for field 008 Range 35-37 of MARC21
records \_\_\_.

Description:

-  This preference will allow you to set the language for your MARC21
   008 field by default. If this is left empty it will default to
   English (eng). See the `MARC Code List for
   Languages <http://www.loc.gov/marc/languages/language_code.html>`__
   for additional values for this preference.

    **Note**

    This preference won't have any effect if your records are in
    UNIMARC.

.. _item-level\_itypes-label:

item-level\_itypes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: specific item

Asks: Use the item type of the \_\_\_ as the authoritative item type
(for determining circulation and fines rules, etc).

Values:

-  biblio record

-  specific item

Description:

-  This preference determines whether the item type Koha uses for
   issuing rules will be an attribute of the bibliographic record or the
   item record. Most libraries refer to the item record for item types.
   It also determines if the item type icon appears on the OPAC search
   results. If you have the preference set to 'biblio record' then Koha
   displays the item type icon on the search results to the left of the
   result info.

   |image23|

.. _itemcallnumber-label:

itemcallnumber
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 082ab

Asks: Map the MARC subfield to an item's callnumber.

    **Note**

    This can contain multiple subfields to look in; for instance 082ab
    would look in 082 subfields a and b.

Description:

-  This setting determines which MARC field will be used to determine
   the call number that will be entered into item records automatically
   (952$o). The value is set by providing the MARC field code (050, 082,
   090, 852 are all common in MARC21) and the subfield codes without the
   delimiters ($a, $b would be ab).

Examples:

-  Dewey: 082ab or 092ab; LOC: 050ab or 090ab; from the item record:
   852hi

.. _marcflavour-label:

marcflavour
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: MARC21

Asks: Interpret and store MARC records in the \_\_\_ format.

Values:

-  MARC21

   -  The standard style for the US, Canada, Australia, New Zealand,
      United Kingdom, Germany and other countries

-  UNIMARC

   -  The standard style used in France, Italy, Portugal, Russia, and
      other countries

-  NORMARC

   -  The standard style for Norway

Description:

-  This preference defines global MARC style (MARC21, UNIMARC or
   NORMARC) used for encoding.

    **Important**

    Changing the value of this preference will not convert your records
    from one MARC style to an other.

.. _marcorgcode-label:

MARCOrgCode
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: OSt

Asks: Fill in the MARC organization code \_\_\_ by default in new MARC21
records (leave blank to disable).

Description:

-  The MARC Organization Code is used to identify libraries with
   holdings of titles and more.

Learn more and find your library's MARC21 code on the `MARC Code list
for
Organizations <http://www.loc.gov/marc/organizations/orgshome.html>`__
or in Canada on the `Canadian Symbols
Directory <http://www.collectionscanada.gc.ca/illcandir-bin/illsear/l=0/c=1>`__.

    **Note**

    This preference won't have any effect if your records are in
    UNIMARC.

.. _newitemsdefaultlocation-label:

NewItemsDefaultLocation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: When items are created, give them the temporary location of \_\_\_
(should be a location code, or blank to disable).

.. _prefillitem-label:

PrefillItem
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: the new item is not prefilled with last created item values.

Asks: When a new item is added \_\_\_

Values:

-  the new item is not prefilled with last created item values.

-  the new item is prefilled with last created item values.

Description:

-  This preference controls the behavior used when adding new items.
   Using the options here you can choose to have your next new item
   prefill with the values used in the last item was added to save time
   typing values or to have the item form appear completely blank. Using
   :ref:`SubfieldsToUseWhenPrefill` you can
   control specifically which fields are prefilled.

.. _subfieldstoallowforrestrictedbatchmod-label:

SubfieldsToAllowForRestrictedBatchmod
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Define a list of subfields for which editing is authorized when
`items\_batchmod\_restricted <#items_batchmod_restricted>`__ permission
is enabled, separated by spaces. \_\_\_

Examples:

-  UNIMARC: "995$f 995$h 995$j"

-  MARC21: "952$a 952$b 952$c"

Description:

-  This preference lets you define what fields can be edited via the
   :ref:`batch item modification tool <batch-item-modification-label>` if the
   items\_batchmod\_restricted permission is enabled.

       **Note**

       The FA framework is excluded from the permission. If the pref is
       empty, no fields are restricted.

.. _subfieldstoallowforrestrictedediting-label:

SubfieldsToAllowForRestrictedEditing
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Define a list of subfields for which editing is authorized when
edit\_items\_restricted permission is enabled, separated by spaces.
\_\_\_

Examples:

-  UNIMARC: "995$f 995$h 995$j"

-  MARC21: "952$a 952$b 952$c"

Description:

-  This preference lets you define what fields can be edited via
   cataloging if the
   `edit\_items\_restricted <#edit_items_restricted>`__ permission is
   enabled

       **Note**

       The Fast Add (FA) framework is excluded from the permission. If
       the pref is empty, no fields are restricted.

.. _subfieldstousewhenprefill-label:

SubfieldsToUseWhenPrefill
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Define a list of subfields to use when prefilling items \_\_\_

    **Important**

    Separate values with a space.

Description:

-  When the :ref:`PrefillItem` preference is set to prefill
   item values with those from the last added item, this preference can
   control which fields are prefilled (and which are not). Enter a space
   separated list of fields that you would like to prefill when adding a
   new item.

.. _unimarcfield100language-label:

UNIMARCField100Language
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: fre

Asks: Use the language (ISO 690-2) \_\_\_ as default language in the
UNIMARC field 100 when creating a new record or in the field plugin.

.. _z3950normalizeauthor-&-z3950authorauthfields-label:

z3950NormalizeAuthor & z3950AuthorAuthFields
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Defaults: Don't copy & 701,702,700

Asks: \_\_\_ authors from the UNIMARC \_\_\_ tags (separated by commas)
to the correct author tags when importing a record using Z39.50.

Description for z3950NormalizeAuthor:

-  This preference allows for 'Personal Name Authorities' to replace
   authors as the bibliographic authority. This preference should only
   be considered by libraries using UNIMARC.

Values for z3950NormalizeAuthor:

-  Copy

-  Don't copy

Description for z3950AuthorAuthFields:

-  This preference defines which MARC fields will be used for 'Personal
   Name Authorities' to replace authors as the bibliographic
   authorities. This preference only applies to those using UNIMARC
   encoding. The MARC fields selected here will only be used if
   'z3950NormalizeAuthor' is set to "Copy". The default field are 700,
   701, and 702.

.. _spine-labels-label:

Spine Labels
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _spinelabelautoprint-label:

SpineLabelAutoPrint
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: don't

Asks: When using the quick spine label printer, \_\_\_ automatically pop
up a print dialog.

Values:

-  do

-  don't

.. _spinelabelformat-label:

SpineLabelFormat
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: <itemcallnumber><copynumber>

Asks: Include the following fields on a quick-printed spine label:
(Enter in columns from the biblio, biblioitems or items tables,
surrounded by < and >.)

.. _spinelabelshowprintonbibdetails-label:

SpineLabelShowPrintOnBibDetails
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't display

Asks: \_\_\_ buttons on the bib details page to print item spine labels.

Values:

-  Display

   |image24|

-  Don't display

.. _circulation-label:

Circulation
----------------------------

*Get there:* More > Administration > Global System Preferences >
Circulation




.. _article-requests-sysprefs-label:

Article Requests
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _articlerequests-label:

ArticleRequests
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't enable

Asks: \_\_\_ patrons to place article requests.

Values:

-  Enable

-  Don't enable

Description:

-  This preference controls whether or not article requests are allowed to be placed by patrons in the OPAC.

.. _articlerequestslinkcontrol-label:

ArticleRequestsLinkControl 
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Use algorithm to show or hide

Asks: \_\_\_ article request link on search results.

Values:

-  Always show

-  Use algorithm to show or hide
   
Description:

-  On the OPAC results page, either always show the 'Request article' link 
   or check the branch, patron and item type combination to determine 
   whether or not an article can be requested from this particular record 
   before displaying the link. 

.. _articlerequestsmandatoryfields-label:

ArticleRequestsMandatoryFields
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: None selected

Asks: For records that are record level or item level requestable, make the following fields mandatory \_\_\_

Values:

-  [Select all]

-  Author

-  Chapters

-  Date

-  Issue

-  Pages

-  Title

-  Volume

Description:

-  This preference controls what fields must be filled in before an article request can be placed
   for either a record level or item level request. Choosing [Select all] indicates that all fields
   listed (Author, Chapters, Date, Issue, Pages, Title, Volume) must be completed before the article
   request can be placed.

.. _articlerequestsmandatoryfieldsitemsonly-label:

ArticleRequestsMandatoryFieldsItemsOnly
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: None selected

Asks: For records that are only item level requestable, make the following fields mandatory \_\_\_

Values:

-  [Select all]

-  Author

-  Chapters

-  Date

-  Issue

-  Pages

-  Title

-  Volume

Description:

-  This preference controls what fields must be filled in before an article request can be placed
   for an item level request only. Choosing [Select all] indicates that all fields
   listed (Author, Chapters, Date, Issue, Pages, Title, Volume) must be completed before the article
   request can be placed.

.. _articlerequestsmandatoryfieldsrecordonly-label:

ArticleRequestsMandatoryFieldsRecordOnly
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: None selected

Asks: For records that are only record level requestable, make the following fields mandatory \_\_\_

Values:

-  [Select all]

-  Author

-  Chapters

-  Date

-  Issue

-  Pages

-  Title

-  Volume

Description:

-  This preference controls what fields must be filled in before an article request can be placed
   for a record level request only. Choosing [Select all] indicates that all fields
   listed (Author, Chapters, Date, Issue, Pages, Title, Volume) must be completed before the article
   request can be placed.


.. _batch-checkout-label:

Batch Checkout
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _batchcheckouts-label:

BatchCheckouts
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't allow

Asks: \_\_\_ batch checkouts

Values:

-  Allow

-  Don't allow

.. _batchcheckoutsvalidcategories-label:

BatchCheckoutsValidCategories
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Patron categories allowed to checkout in a batch \_\_\_ (list of
patron categories separated with a pipe ^\|^)

.. _checkin-policy-label:

Checkin Policy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _blockreturnoflostitems-label:

BlockReturnOfLostItems
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't block

Asks: \_\_\_ returning of items that have been lost.

Values:

-  Block

-  Don't block

Description:

-  This preference controls whether and item with a lost status
   (952$1 in MARC21) can be checked in or not.

.. _blockreturnofwithdrawnitems-label:

BlockReturnOfWithdrawnItems
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Block

Asks: \_\_\_ returning of items that have been withdrawn.

Values:

-  Block

-  Don't block

Description:

-  This preference controls whether and item with a withdrawn status
   (952$0 in MARC21) can be checked in or not.

.. _calculatefinesonreturn-label:

CalculateFinesOnReturn
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Do

Asks: \_\_\_ calculate and update overdue charges when an item is
returned.

Values:

-  Do

-  Don't

Description:

-  If this preference is set to "Do" and the :ref:`fines cron
   job <fines-label>` is off then Koha will calculate fines only
   when items are returned. If you have the fines cron job on and this
   preference set to "Do" then this preference will calculate fines
   based on the cron (usually run nightly) and then again when you check
   the item in. This option is best for those who are doing hourly
   loans. If this preference is set to "Don't" then fines will only be
   accrued if the fines cron job is running.

    **Important**

    If you are doing hourly loans then you should have this set to 'Do'.

.. _cumulativerestrictionperiods-label:

CumulativeRestrictionPeriods
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't cumulate

Asks: \_\_\_ the restriction periods.

Values:

-  Don't cumulate

-  Cumulate

.. _hidepersonalpatrondetailoncirculation-label:

HidePersonalPatronDetailOnCirculation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't

Asks: \_\_\_ hide patrons phone number, email address, street address 
and city in the circulation page 

Values:

-  Don't

-  Do

Description:

-  This preference controls the display of the patron's phone number, 
   email address, and physical address from the left side of the screen 
   (under their picture, if they have one). 

-  Set to 'Do' these informations will only be visible on the patron's 
   detail page.

.. _holdsautofill-label:

HoldsAutoFill
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't

Asks: \_\_\_ automatically fill holds instead of asking the librarian.

Values:

-  Do
   
-  Don't
   
Description:

-  If set to 'Do', the holds confirmation pop-up will not appear upon checking 
   in a reserved item.

.. _holdsautofillprintslip-label:

HoldsAutoFillPrintSlip 
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't

Asks: \_\_\_ automatically display the holds slip dialog for auto-filled holds.

Values:

-  Do

-  Don't
   
Description:

-  If set to 'Do', the holds slip print pop-up will appear automatically 
   upon checking in a reserved item.

-  :ref:`HoldsAutoFill` must be set to 'do' for this preference to have any 
   effect. 

.. _updatenotforloanstatusoncheckin-label:

UpdateNotForLoanStatusOnCheckin
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: This is a list of value pairs. When an item is checked in, if the
not for loan value on the left matches the items not for loan value it
will be updated to the right-hand value. E.g. ^-1: 0' will cause an item
that was set to 'Ordered' to now be available for loan. Each pair of
values should be on a separate line.

.. _checkout-policy-label:

Checkout Policy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _agerestrictionmarker-label:

AgeRestrictionMarker
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Restrict patrons with the following target audience values from
checking out inappropriate materials: \_\_\_

Description:

-  This preference defines certain keywords that will trigger Koha to
   restrict checkout based on age. These restrictions can be overridden
   by the :ref:`AgeRestrictionOverride`
   preference. Enter in this field a series of keywords separated by bar
   (\|) with no spaces. For example PG\|R\|E\|EC\|Age\| will look for PG
   followed by an age number, R folllowed by an age number, Age followed
   by an age number, and so on. These values can appear in any MARC
   field, but Library of Congress recommends the 521$a (Target Audience
   Note). Whatever field you decide to use you must map the word
   agerestriction in the biblioitems table to that field in the :ref:`Koha to
   MARC Mapping <koha-to-marc-mapping-label>`. When cataloging you can enter
   values like PG 13 or E 10 in the 521$a and Koha will then notify
   circulation librarians that the material may not be recommended for
   the patron based on their age.

       **Important**

       You must map the word agerestriction in the biblioitems table to
       the MARC field where this information will appear via the :ref:`Koha
       to MARC Mapping <koha-to-marc-mapping-label>` administration area.

.. _agerestrictionoverride-label:

AgeRestrictionOverride
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't allow

Asks: \_\_\_ staff to check out an item with age restriction.

Values:

-  Allow

   |image25|

-  Don't allow

   |image26|

Description:

-  When the :ref:`AgeRestrictionMarker` preference
   is set, Koha will try to warn circulation librarians before checking
   out an item that might have an age restriction listed in the MARC
   record. This preference asks if you would like the staff to be able
   to still check out these items to patrons under the age limit.

.. _allfinesneedoverride-label:

AllFinesNeedOverride
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Require

Asks: \_\_\_ staff to manually override all fines, even fines less than
:ref:`noissuescharge`.

Values:

-  Don't require

-  Require

Description:

-  This preference let's you decide if you want to always be warned that
   the patron has fines when checking out. If you have it set to
   'Require' then no matter how much money the patron owes a message
   will pop up warning you that the patron owes money.

.. _allowfineoverride-label:

AllowFineOverride
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't allow

Asks: \_\_\_ staff to manually override and check out items to patrons
who have more than :ref:`noissuescharge` in fines.

Values:

-  Allow

-  Don't allow

Description:

-  This preference lets you decide if you staff can check out to patrons
   who owe more money than you usually let them carry on their account.
   If set to 'Allow' staff will be warned that the patrons owes money,
   but it won't stop the staff from checking out to the patron.

.. _allowitemsonholdcheckout-label:

AllowItemsOnHoldCheckout
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't allow

Asks: \_\_\_ checkouts of items reserved to someone else. If allowed do
not generate RESERVE\_WAITING and RESERVED warning. This allows self
checkouts for those items.

Values:

-  Allow

-  Don't allow

    **Important**

    This system preference relates only to SIP based self checkout, not
    Koha's web based self checkout.

Description:

-  When this preference is set to 'Allow' patrons will be able to use
   your external self check machine to check out a book to themselves
   even if it's on hold for someone else. If you would like Koha to
   prevent people from checking out books that are on hold for someone
   else set this preference to "Don't allow."

.. _allowitemsonholdcheckoutsco-label:

AllowItemsOnHoldCheckoutSCO
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't allow

Asks: \_\_\_ checkouts of items reserved to someone else in the SCO module.
If allowed do not generate RESERVE_WAITING and RESERVED warning. This
allows self checkouts for those items.

Values:

-  Allow

-  Don't allow

    **Important**

    This system preference relates only to Koha's web based self checkout.

Description:

-  When this preference is set to 'Allow' patrons will be able to use
   Koha's web based self checkout to check out a book to themselves
   even if it's on hold for someone else. If you would like Koha to
   prevent people from checking out books that are on hold for someone
   else set this preference to "Don't allow".

.. _allowmultipleissuesonabiblio-label:

AllowMultipleIssuesOnABiblio
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ patrons to check out multiple items from the same record.

Values:

-  Allow

-  Don't allow

Description:

-  If this preference is set to 'Allow' then patrons will be able to
   check out multiple copies of the same title at the same time. If it's
   set to "Don't allow" then patrons will only be allowed to check out
   one item attached to a record at a time. Regardless of the option
   chosen in this preference records with subscriptions attached will
   allow multiple check outs.

       **Important**

       This will only effect records without a subscription attached.

.. _allownotforloanoverride-label:

AllowNotForLoanOverride
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ staff to override and check out items that are marked as
not for loan.

Values:

-  Allow

-  Don't allow

Description:

-  This parameter is a binary setting which controls the ability of
   staff (patrons will always be prevented from checking these items
   out) to check out items that are marked as "not for loan". Setting it
   to "Allow" would allow such items to be checked out, setting it to
   "Don't allow" would prevent this. This setting determines whether
   items meant to stay in the library, such as reference materials, and
   other library resources can be checked out by patrons.

.. _allowrenewallimitoverride-label:

AllowRenewalLimitOverride
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ staff to manually override the renewal limit and renew a
checkout when it would go over the renewal limit.

Values:

-  Allow

-  Don't allow

Description:

-  This preference is a binary setting which controls the ability of
   staff to override the limits placed on the number of times an item
   can be renewed. Setting it to "Allow" would allow such limits to be
   overridden, setting it to "Don't allow" would prevent this. This is a
   preference in which if it is set to "allow" it would allow the
   library staff to use their judgment for overriding the renew limit
   for special cases, setting it to "Don't allow" prevents an
   opportunity for abuse by the library staff.

.. _allowreturntobranch-label:

AllowReturnToBranch
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: to any library

Asks: Allow materials to be returned to \_\_\_

Values:

-  either the library the item is from or the library it was checked out
   from.

-  only the library the item is from.

-  only the library the item was checked out from.

-  to any library.

Description:

-  This preference lets the library system decide how they will accept
   returns. Some systems allow for items to be returned to any library
   in the system (the default value of this preference) others want to
   limit item returns to only specific branches. This preference will
   allow you to limit item returns (checkins) to the branch(es) set in
   the value.

.. _allowtoomanyoverride-label:

AllowTooManyOverride
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ staff to override and check out items when the patron has
reached the maximum number of allowed checkouts.

Values:

-  Allow

   |image27|

-  Don't allow

   |image28|

Description:

-  If this preference is set to "Allow" then staff all will be presented
   with an option to checkout more items to a patron than are normally
   allowed in the :ref:`Circulation and fines rules`. If
   this preference is set to "Don't allow" then no staff member will be
   able to check out more than the circulation limit.

.. _automaticitemreturn-label:

AutomaticItemReturn
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Do

Asks: \_\_\_ automatically transfer items to their home branch when they
are returned.

Values:

-  Do

-  Don't

Description:

-  This preference is a binary setting which determines whether an item
   is returned to its home branch automatically or not. If set to
   "Don't", the staff member checking an item in at a location other
   than the item's home branch will be asked whether the item will
   remain at the non-home branch (in which case the new location will be
   marked as a holding location) or returned. Setting it to "Do" will
   ensure that items checked in at a branch other than their home branch
   will be sent to that home branch.

.. _autoremoveoverduesrestrictions-label:

AutoRemoveOverduesRestrictions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Do not

Asks: \_\_\_ allow OVERDUES restrictions triggered by sent notices to be
cleared automatically when all overdue items are returned by a patron.

Values:

-  Do

-  Do not

Description:

-  Using the :ref:`Overdue Notice/Status Triggers` you
   can restrict patrons after they receive an overdue notice. This
   preference lets you define whether Koha will automatically remove
   that restriction once the overdue items in question are returned or
   not.

.. _circcontrol-label:

CircControl
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: the library the item is from

Asks: Use the checkout and fines rules of \_\_\_

Values:

-  the library the item is from

   -  The :ref:`circulation and fines policies <circulation-and-fine-rules-label>` will be
      determined by the item's library where
      :ref:`HomeOrHoldingBranch` chooses if item's
      home library is used or holding library is used.

-  the library the patron is from

   -  The :ref:`circulation and fines policies <circulation-and-fine-rules-label>` will be
      determined the patron's home library

-  the library you are logged in at

   -  The :ref:`circulation and fines policies <circulation-and-fine-rules-label>` will be
      determined by the library that checked the item out to the patron

.. _consideronsitecheckoutsasnormalcheckouts-label:

ConsiderOnSiteCheckoutsAsNormalCheckouts
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Consider

Asks: \_\_\_ on-site checkouts as normal checkouts. If enabled, the
number of checkouts allowed will be normal checkouts + on-site
checkouts. If disabled, both values will be checked separately.

Values:

-  Consider

-  Don't consider

Description:

-  This preference allows you to decide if checkouts that are
   :ref:`OnSiteCheckouts` are counted toward the total
   checkouts a patron can have. You can also set your :ref:`circulation and
   fine rules <circulation-and-fine-rules-label>` to allow only a certain number of
   normal and OnSite checkouts.

.. _defaultlongoverduechargevalue-label:

DefaultLongOverdueChargeValue
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Charge a lost item to the borrower's account when the LOST value
of the item changes to \_\_\_

Description:

-  Leave this field empty if you don't want to charge the user for lost
   items. If you want the user to be charged enter the `LOST authorized
   value <#lost>`__ you are using in the
   :ref:`DefaultLongOverdueLostValue <defaultlongoverduelostvalue-&-defaultlongoverduedays-label>`
   preference. This preference is used when the :ref:`longoverdue cron
   job <long-overdues-label>` is called without the --charge parameter.

.. _defaultlongoverduelostvalue-&-defaultlongoverduedays-label:

DefaultLongOverdueLostValue & DefaultLongOverdueDays
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: By default, set the LOST value of an item to \_\_\_ when the item
has been overdue for more than \_\_\_ days.

Description:

-  These preferences are used when the :ref:`longoverdue cron
   job <long-overdues-label>` is called without the --lost parameter. It
   allows users to set the values of the :ref:`longoverdue
   cron <long-overdues-label>` without having to edit the crontab.
   Setting the values to 1 and 30 for example will mark the item with
   the `LOST authorized value <#lost>`__ of 1 after the item is 30 days
   overdue.

.. _holdsinnoissuescharge-label:

HoldsInNoissuesCharge
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't include

Asks: \_\_\_ hold charges when summing up charges for noissuescharge.

Values:

-  Don't include

-  Include

.. _homeorholdingbranch-label:

HomeOrHoldingBranch
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: the library the item was checked out from

Asks: Use the checkout and fines rules of \_\_\_

Values:

-  the library the item is from

   -  This is equivalent to 'home library'

-  the library the item was checked out from

   -  This is equivalent to 'holding library'

Description:

-  This preference does several things.

   -  If :ref:`CircControl` is set to 'the library the item
      is from' then the :ref:`circulation and fines
      policies <circulation-and-fine-rules-label>` will be determined by the item's
      library where HomeOrHoldingBranch chooses if item's home library
      is used or holding library is used.

   -  If :ref:`IndependentBranches` is set to
      'Prevent' then the value of this preference is used in figuring
      out if the item can be checked out. If the item's home library
      does not match the logged in library, the item cannot be checked
      out unless you are a :ref:`superlibrarian <patron-permissions-defined-label>`.

    **Important**

    It is not recommend that this setting be changed after initial setup
    of Koha because it will change the behavior of items already checked
    out.

.. _inprocessingtoshelvingcart-label:

InProcessingToShelvingCart
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't move

Asks: \_\_\_ items that have the location PROC to the location CART when
they are checked in.

Values:

-  Don't move

-  Move

Description:

-  This preference is used to manage automatically changing item
   locations from processing (PROC) to the book cart (CART). A :ref:`cron
   job <in-processing/book-cart-label>` needs to be set to run at specified intervals
   to age items from CART to the permanent shelving location. (For
   example, an hourly cron entry of cart\_to\_shelf.pl --hours 3 where
   --hours is the amount of time an item should spend on the cart before
   aging to its permanent location.) More information can be found in
   the :ref:`related chapter <in-processing-/-book-cart-locations-label>` in this manual.

   -  **Note**

          If the :ref:`ReturnToShelvingCart` system
          preference is turned on, any newly checked-in item is also
          automatically put into the shelving cart, to be covered by the
          same script run.

   -  **Important**

          Checkins with confirmed holds will not go into the shelving
          cart. If items on the shelving cart are checked out, the cart
          location will be cleared.

.. _issuelostitem-label:

IssueLostItem
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: display a message

Asks: When issuing an item that has been marked as lost, \_\_\_.

Values:

-  display a message

   |image29|

-  do nothing

   -  This option will just check the item out without notifying you
      that the item was marked lost.

-  require confirmation

   |image30|

Description:

-  This preference lets you define how library staff are notified that
   an item with a lost status is being checked out. This will help staff
   mark items as 'available' if you choose to 'display a message' or
   'require confirmation.^ If you choose to 'do nothing,^ there will be
   no notification that the item being checked out is marked as 'lost.^

.. _issuinginprocess-label:

IssuingInProcess
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't prevent

Asks: \_\_\_ patrons from checking out an item whose rental charge would
take them over the limit.

Values:

-  Don't prevent

-  Prevent

Description:

-  This preference determines if a patron can check items out if there
   is an overdue fine on the account and any of the materials the patron
   wishes to check out will potentially tip the account balance over the
   maximum fines policy the library has in place.

Example: Your library has a $5 limit set for 'fines' (ie, after
incurring $5 in fines, a patron can no longer check out items). A patron
comes to the desk with 5 items to check out (4 books and a video) The
patron has $4 in charges already on their account. One of the videos has
a rental charge of $1, therefore making the total fines on the patron's
account suddenly $5 (the limit).

.. _maninvinnoissuescharge-label:

ManInvInNoissuesCharge
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Include

Asks: \_\_\_ MANUAL\_INV charges when summing up charges for
noissuescharge.

Values:

-  Don't include

-  Include

Description:

-  This preference lets you decide if charges entered as manual invoices
   are included when calculating the
   :ref:`noissuescharge`. If this is set to include then
   Koha will include all manual invoices when deciding if the patron
   owes too much money to check anything else out of the library. If
   it's set to Don't include then Koha will ignore all manual invoice
   charges when figuring out if the patron owes too much money to
   checkout additional materials.

.. _marklostitemsasreturned-label:

MarkLostItemsAsReturned
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Disable

Asks: \_\_\_ items as returned when flagged as lost.

Values:

-  [Select All]

-  From the batch item modification tool

-  From the items tab of the catalog module

-  From the longoverdue cronjob

-  When cataloging an item

Description:

-  The library can choose which of these actions or all of these actions, does an 
item gets automatically returned from the patron's account or not. 


.. _maxoutstanding-label:

maxoutstanding
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 5

Asks: Prevent patrons from making holds on the OPAC if they owe more
than \_\_\_ USD in fines.

.. _noissuescharge-label:

noissuescharge
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 5

Asks: Prevent patrons from checking out books if they have more than
\_\_\_ USD in fines.

Description:

-  This preference is the maximum amount of money owed to the library
   before the user is banned from borrowing more items. Using the
   :ref:`ManInvInNoissuesCharge` and
   :ref:`RentalsInNoissuesCharge` preferences
   you can control which types of charges are considered in this total.
   This also coincides with :ref:`maxoutstanding` that
   limits patrons from placing holds when the maximum amount is owed to
   the library.

.. _noissueschargeguarantees-label:

NoIssuesChargeGuarantees
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Prevent a patron from checking out if the patron has guarantees
owing in total more than \_\_\_ USD in fines.

Description:

-  Allows a library to prevent patrons from checking out items if his or
   her guarantees owe too much in fines.

.. _norenewalbeforeprecision-label:

NoRenewalBeforePrecision
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: date

Asks: Calculate "No renewal before" based on \_\_\_.

Values:

-  date

-  exact time

    **Note**

    Only relevant for loans calculated in days, hourly loans are not
    affected.

Description:

-  This preference allows you to control how the 'No renewal before"
   option in the :ref:`Circulation and fines rules`
   administration area.

.. _noticebcc-label:

NoticeBcc
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Send all notices as a BCC to this email address \_\_\_

This preference makes it so that a librarian can get a copy of every
notice sent out to patrons.

    **Note**

    If you'd like more than one person to receive the blind copy you can
    simply enter in multiple email addresses separated by commas.

.. _onsitecheckouts-label:

OnSiteCheckouts
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Disable

Asks: \_\_\_ the on-site checkouts feature.

Values:

-  Disable

-  Enable

   |image1184|

Description:

-  This preference lets you check out items that are 'not for loan' to
   patrons. A checkbox is added to the checkout screen when this
   preference is set to 'Enable' labeled 'On-site checkout'. This allows
   you to track who's using items that are normally not for loan or are
   in a closed stack setting.

.. _onsitecheckoutsforce-label:

OnSiteCheckoutsForce
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Disable

Asks: \_\_\_ the on-site for all cases (Even if a user is debarred,
etc.).

Values:

-  Disable

-  Enable

   |image31|

Description:

-  This preference lets the staff override any restrictions a patron
   might have and check out items for use within the library. The
   :ref:`OnSiteCheckouts` preference must first be set
   to 'Enable' for this preference to be considered.

.. _opacfinenorenewalsblockautorenew-label:

OPACFineNoRenewalsBlockAutoRenew
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: If a patron owes more than the value of :ref:`OPACFineNoRenewals`,
\_\_\_ his/her auto renewals.

Values:

-  Allow

-  Block

.. _overduenoticecalendar-label:

OverdueNoticeCalendar
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Ignore calendar

Asks: \_\_\_ when working out the period for overdue notices

Values:

-  Ignore calendar

   -  Notices do not take holidays into account, so they will be sent
      even if holidays have meant the item is not actually overdue yet

-  Use calendar

   -  Notices take holidays into account, so they will not be sent if
      holidays mean the item is not actually overdue yet

.. _overduesblockcirc-label:

OverduesBlockCirc
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Ask for confirmation

Asks: \_\_\_ when checking out to a borrower that has overdues
outstanding

Values:

-  Ask for confirmation

   -  Will not let you check an item out to patrons with overdues until
      a librarian confirms that it is okay

-  Block

   -  Block all patrons with overdue items from being able to check out

-  Don't block

   -  Allow all patrons with overdue items to continue to check out

.. _overduesblockrenewing-label:

OverduesBlockRenewing
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: allow renewing

Asks: When a patron's checked out item is overdue, \_\_\_

Values:

-  allow renewing

-  block renewing for all the patron's items

-  block renewing for only this item

.. _printnoticesmaxlines-label:

PrintNoticesMaxLines
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Include up to \_\_\_ item lines in a printed overdue notice.

    **Note**

    If the number of items is greater than this number, the notice will
    end with a warning asking the borrower to check their online account
    for a full list of overdue items.

    **Note**

    Set to 0 to include all overdue items in the notice, no matter how
    many there are.

    **Important**

    This preference only refers to the print notices, not those sent via
    email.

.. _renewalperiodbase-label:

RenewalPeriodBase
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: the old due date of the checkout

Asks: When renewing checkouts, base the new due date on \_\_\_

Values:

-  the old due date of the checkout

-  the current date

.. _renewalsendnotice-label:

RenewalSendNotice
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't send

Asks: \_\_\_\_ a renewal notice according to patron checkout alert
preferences.

Values:

-  Don't send

-  Send

Description:

-  If a patron has chosen to receive a check out notice in their
   messaging preferences and this preference is set to 'Send' then those
   patrons will also receive a notice when they renew materials. You
   will want to set up a :ref:`new notice <adding-notices-&-slips-label>` with the code of
   RENEWAL (if you don't already have it) with custom text for renewing
   items.

       **Important**

       This preference requires that you have
       :ref:`EnhancedMessagingPreferences`
       set to 'Allow'

.. _rentalfeescheckoutconfirmation-label:

RentalFeesCheckoutConfirmation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: do not ask

Asks: When checking out an item with rental fees, \_\_\_ for
confirmation.

Values:

-  ask

  |image1183|

-  do not ask

Description:

-  If you are charging rental fees for items this preference will make
   it so that you can show (or not show) a confirmation before checking
   out an item that will incur a rental charge.

.. _rentalsinnoissuescharge-label:

RentalsInNoissuesCharge
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Include

Asks: \_\_\_ rental charges when summing up charges for noissuescharge.

Values:

-  Don't include

-  Include

Description:

-  This preference lets you decide if rental charges are included when
   calculating the :ref:`noissuescharge`. If this is set
   to include then Koha will include all rental charges when deciding if
   the patron owes too much money to check anything else out of the
   library. If it's set to Don't include then Koha will ignore all
   rental charges when figuring out if the patron owes too much money to
   checkout additional materials.

.. _restrictionblockrenewing-label:

RestrictionBlockRenewing
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: If patron is restricted, \_\_\_ renewing of items.

Values:

-  Allow

-  Block

.. _returnbeforeexpiry-label:

ReturnBeforeExpiry
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't require

Asks: \_\_\_ patrons to return books before their accounts expire (by
restricting due dates to before the patron's expiration date).

Values:

-  Don't require

-  Require

Description:

-  This is preference may prevent a patron from having items checked out
   after their library card has expired. If this is set to "Require",
   then a due date of any checked out item can not be set for a date
   which falls after the patron's card expiration. If the setting is
   left "Don't require" then item check out dates may exceed the
   expiration date for the patron's library card.

.. _returntoshelvingcart-label:

ReturnToShelvingCart
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't move

Asks: \_\_\_ all items to the location CART when they are checked in.

Values:

-  Don't move

-  Move

Description:

-  More information can be found in the :ref:`related
   chapter <in-processing-/-book-cart-locations-label>` in this manual.

.. _staffsearchresultsdisplaybranch-label:

StaffSearchResultsDisplayBranch
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: the library the item is held by

Asks: For search results in the staff client, display the branch of
\_\_\_

Values:

-  the library the item is from

-  the library the items is held by

.. _switchonsitecheckouts-label:

SwitchOnSiteCheckouts
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't switch

Asks: \_\_\_ on-site checkouts to normal checkouts when checked out.

Values:

-  Don't switch

-  Switch

.. _transfersmaxdayswarning-label:

TransfersMaxDaysWarning
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 3

Asks: Show a warning on the "Transfers to Receive" screen if the
transfer has not been received \_\_\_ days after it is sent.

Description:

-  The TransferMaxDaysWarning preference is set at a default number of
   days. This preference allows for a warning to appear after a set
   amount of time if an item being transferred between library branches
   has not been received. The warning will appear in the :ref:`Transfers to
   Receive <transfers-to-receive-label>` report.

.. _usebranchtransferlimits-&-branchtransferlimitstype-label:

UseBranchTransferLimits & BranchTransferLimitsType
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Defaults: Don't enforce & collection code

Asks: \_\_\_ branch transfer limits based on \_\_\_

UseBranchTransferLimits Values:

-  Don't enforce

-  Enforce

BranchTransferLimitsType Values:

-  collection code

-  item type

BranchTransferLimitsType Description:

-  This parameter is a binary setting which determines whether items are
   transferred according to item type or collection code. This value
   determines how the library manager is able to restrict what items can
   be transferred between the branches.

.. _usedaysmode-label:

useDaysMode
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't include

Asks: Calculate the due date using \_\_\_.

Values:

-  circulation rules only.

-  the calendar to push the due date to the next open day.

-  the calendar to skip all days the library is closed.

Description:

-  This preference controls how scheduled library closures affect the
   due date of a material. The 'the calendar to skip all days the
   library is closed' setting allows for a scheduled closure not to
   count as a day in the loan period, the 'circulation rules only'
   setting would not consider the scheduled closure at all, and 'the
   calendar to push the due date to the next open day' would only effect
   the due date if the day the item is due would fall specifically on
   the day of closure.

Example:

-  The library has put December 24th and 25th in as closures on the
   calendar. A book checked out by a patron has a due date of December
   25th according to the circulation and fine rules. If this preference
   is set to 'circulation rules only' then the item will remain due on
   the 25th. If the preference is set to 'the calendar to push the due
   date to the next open day' then the due date will be December 26th.
   If the preference is set to 'the calendar to skip all days the
   library is closed' then the due date will be pushed to the 27th of
   December to accommodate for the two closed days.

The calendar is defined on a branch by branch basis. To learn more about
the calendar, check out the ^:ref:`Calendar & Holidays <calendar-label>`^
section of this manual.

.. _usetransportcostmatrix-label:

UseTransportCostMatrix
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't use

Asks: \_\_\_ Transport Cost Matrix for calculating optimal holds filling
between branches.

Values:

-  Don't use

-  Use

Description:

-  If the system is configured to use the :ref:`Transport cost
   matrix <transport-cost-matrix-label>` for filling holds, then when
   attempting to fill a hold, the system will search for the lowest cost
   branch, and attempt to fill the hold with an item from that branch
   first. Branches of equal cost will be selected from randomly. The
   branch or branches of the next highest cost shall be selected from
   only if all the branches in the previous group are unable to fill the
   hold.

   The system will use the item's current holding branch when
   determining whether the item can fulfill a hold using the Transport
   Cost Matrix.

.. _course-reserves-label:

Course Reserves
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _usecoursereserves-label:

UseCourseReserves
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't use

Asks: \_\_\_ course reserves

Values:

-  Don't use

-  Use

Description:

-  The `Course Reserves <#coursereserves>`__ module in Koha allows you
   to temporarily move items to 'reserve' and assign different
   circulation rules to these items while they are being used for a
   specific course.

.. _fines-policy-label:

Fines Policy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _finescalendar-label:

finesCalendar
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: not including the days the library is closed

Asks: Calculate fines based on days overdue \_\_\_

Values:

-  directly

-  not including the days the library is closed

Description:

-  This preference will determine whether or not fines will be accrued
   during instances when the library is closed. Examples include
   holidays, library in-service days, etc. Choosing "not including the
   days the library is closed" setting will enable Koha to access its
   :ref:`Calendar` module and be considerate of dates when
   the library is closed. To make use of this setting the administrator
   must first access Koha's calendar and mark certain days as "holidays"
   ahead of time.

The calendar is defined on a branch by branch basis. To learn more about
the calendar, check out the ^:ref:`Calendar & Holidays <calendar-label>`
section of this manual.

.. _finesincludegraceperiod-label:

FinesIncludeGracePeriod
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Include

Asks: \_\_\_ the grace period when calculating the fine for an overdue
item.

Values:

-  Don't include

-  Include

Description:

-  This preference lets you control how Koha calculates fines when there
   is a grace period. If you choose to include the grace period when
   calculating fines then Koha will charge for the days in the grace
   period should the item be overdue more than those days. If you choose
   not to include the grace period then Koha will only charge for the
   days overdue after the grace period.

.. _finesmode-label:

finesMode
^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Calculate (but only for mailing to the admin)

Asks: \_\_\_ fines

Values:

-  Calculate (but only for mailing to the admin)

-  Calculate and charge

-  Don't calculate

    **Important**

    Requires that you have the fines cron job running
    (misc/cronjobs/fines.pl)

.. _holdfeemode-label:

HoldFeeMode
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: only if all items are checked out and the record has at least one hold already.

Asks: Charge a hold fee \_\_\_

Values:

-  any time a hold is collected.

-  any time a hold is placed.

-  only if all items are checked out and the record has at least one hold already.

.. _processingfeenote-label:

ProcessingFeeNote
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Set the text to be recorded in the column 'note', table 'accountlines' when the processing fee (defined in item type) is applied.

.. _refundlostonreturncontrol-label:

RefundLostOnReturnControl
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: check-in library.

Asks: If a lost item is returned, apply the refunding rules defined
in the \_\_\_

Values:

-  check-in library.

-  item holding branch.

-  item home branch.

.. _usedefaultreplacementcost-label:

useDefaultReplacementCost
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't use

Asks: \_\_\_ the default replacement cost defined in item type.

Values:

-  Don't use

-  Use

Description:

-  This preference enables the use of the replacement cost set on the item type level

.. _whenlostchargereplacementfee-label:

WhenLostChargeReplacementFee
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Charge

Asks: \_\_\_ the replacement price when a patron loses an item.

Values:

-  Charge

-  Don't charge

Description:

-  This preference lets you tell Koha what to do with an item is marked
   lost. If you want Koha can 'Charge' the patron the replacement fee
   listed on the item they lost or it can do nothing in reference to the
   patron and just mark the item lost in the catalog.

.. _whenlostforgivefine-label:

WhenLostForgiveFine
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't forgive

Asks: \_\_\_ the fines on an item when it is lost.

Values:

-  Don't forgive

-  Forgive

Description:

-  This preference allows the library to decide if fines are charged in
   addition to the replacement fee when an item is marked as lost. If
   this preference is set to 'Forgive' then the patron won't be charged
   fines in addition to the replacement fee.

.. _holds-policy-label:

Holds Policy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _allowholddateinfuture-label:

AllowHoldDateInFuture
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ hold requests to be placed that do not enter the waiting
list until a certain future date.

Values:

-  Allow

-  Don't allow

.. _allowholditemtypeselection-label:

AllowHoldItemTypeSelection
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't allow

Asks: \_\_\_ hold fulfillment to be limited by itemtype.

Values:

-  Allow

-  Don't allow

.. _allowholdpolicyoverride-label:

AllowHoldPolicyOverride
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ staff to override hold policies when placing holds.

Values:

-  Allow

-  Don't allow

Description:

-  This preference is a binary setting which controls whether or not the
   library staff can override the circulation and fines rules as they
   pertain to the placement of holds. Setting this value to "Don't
   allow" will prevent anyone from overriding, setting it to "Allow"
   will allow it. This setting is important because it determines how
   strict the libraries rules for placing holds are. If this is set to
   "Allow", exceptions can be made for patrons who are otherwise
   normally in good standing with the library, but there is opportunity
   for the staff to abuse this function. If it is set to "Don't allow",
   no abuse of the system is possible, but it makes the system entirely
   inflexible in respect to holds.

.. _allowholdsondamageditems-label:

AllowHoldsOnDamagedItems
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ hold requests to be placed on damaged items.

Values:

-  Allow

-  Don't allow

Description:

-  This parameter is a binary setting which controls whether or not hold
   requests can be placed on items that are marked as "damaged" (items
   are marked as damaged by editing subfield 4 on the item record).
   Setting this value to "Don't allow" will prevent anyone from placing
   a hold on such items, setting it to "Allow" will allow it. This
   preference is important because it determines whether or not a patron
   can place a request for an item that might be in the process of being
   repaired or not in good condition. The library may wish to set this
   to "Don't allow" if they were concerned about their patrons not
   receiving the item in a timely manner or at all (if it is determined
   that the item is beyond repair). Setting it to "Allow" would allow a
   patron to place a hold on an item and therefore receive it as soon as
   it becomes available.

.. _allowholdsonpatronspossessions-label:

AllowHoldsOnPatronsPossessions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_\_ a patron to place a hold on a record where the patron
already has one or more items attached to that record checked out.

Values:

-  Allow

-  Don't allow

Description:

-  By setting to "Don't allow," you can prevent patrons from placing
   holds on items they already have out, thus preventing them from
   blocking anyone else from getting an item.

.. _allowrenewalifotheritemsavailable-label:

AllowRenewalIfOtherItemsAvailable
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't allow

Asks: \_\_\_ a patron to renew an item with unfilled holds if other
available items can fill that hold.

Values:

-  Allow

-  Don't allow

.. _autoresumesuspendedholds-label:

AutoResumeSuspendedHolds
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ suspended holds to be automatically resumed by a set date.

Values:

-  Allow

-  Don't allow

Description:

-  If this preference is set to 'Allow' then all suspended holds will be
   able to have a date at after which they automatically become
   unsuspended. If you have this preference set to 'Allow' you will also
   need the :ref:`Unsuspend Holds` cron job running.

    **Important**

    The holds will become unsuspended the date after that entered by the
    patron.

.. _canmarkholdstopullaslost-label:

CanMarkHoldsToPullAsLost
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Do not allow to mark items as lost

Asks: \_\_\_ from the 'Holds to pull' screen

Values:

-  Allow to mark items as lost

-  Allow to mark items as lost and notify the patron

-  Do not allow to mark items as lot

Description:

-  This preference lets you choose whether the staff can mark items
   as lost directly from the 'Holds to pull' list if they can't
   find the item on the shelf.

.. _canreservefromotherbranches-label:

canreservefromotherbranches
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ a user from one library to place a hold on an item from
another library

Description:

-  This preference is a binary setting which determines whether patrons
   can place holds on items from other branches. If the preference is
   set to "Allow" patrons can place such holds, if it is set to "Don't
   allow" they cannot. This is an important setting because it
   determines if users can use Koha to request items from another
   branch. If the library is sharing an installation of Koha with other
   independent libraries which do not wish to allow interlibrary
   borrowing it is recommended that this parameter be set to "Don't
   allow".

Values:

-  Allow

-  Don't allow (with :ref:`independent branches <independentbranches-label>`)

.. _confirmfutureholds-label:

ConfirmFutureHolds
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 0

Asks: Confirm future hold requests (starting no later than \_\_\_ days
from now) at checkin time.

Description:

-  When confirming a hold at checkin time, the number of days in this
   preference is taken into account when deciding which holds to show
   alerts for. This preference does not interfere with renewing,
   checking out or transferring a book.

    **Note**

    This number of days will be used too in calculating the default end
    date for the Holds to pull-report. But it does not interfere with
    issuing, renewing or transferring books.

    **Important**

    This preference is only looked at if you're allowing hold dates in
    the future with :ref:`AllowHoldDateInFuture`
    or :ref:`OPACAllowHoldDateInFuture`

.. _decreaseloanhighholds,-decreaseloanhighholdsduration,-decreaseloanhighholdsvalue,-decreaseloanhighholdscontrol,-and-decreaseloanhighholdsignorestatuses-label:

decreaseLoanHighHolds, decreaseLoanHighHoldsDuration, decreaseLoanHighHoldsValue, decreaseLoanHighHoldsControl, and decreaseLoanHighHoldsIgnoreStatuses
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: \_\_\_ the reduction of loan period \_\_\_ to days for items with
more than \_\_\_ holds \_\_\_ . Ignore items with the following statuses
when counting items \_\_\_

decreaseLoanHighHolds default: Don't enable

decreaseLoanHighHoldsControl default: on the record

decreaseLoanHighHolds values:

-  Enable

decreaseLoanHighHoldsControl values:

-  over the number of holdable items on the records

-  on the record

decreaseLoanHighHoldsIgnoreStatuses values:

-  [Select All]

-  Damages

-  Lost

-  Not for loan

-  Withdrawn

Description:

-  These preferences let you change the loan length for items that have
   many holds on them. This will not effect items that are already
   checked out, but items that are checked out after the
   decreaseLoanHighHoldsValue is met will only be checked out for the
   number of days entered in the decreaseLoanHighHoldsDuration
   preference.

   |image32|

.. _displaymultiplacehold-label:

DisplayMultiPlaceHold
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't enable

Asks: \_\_\_ the ability to place holds on multiple biblio from the
search results

Values:

-  Don't enable

-  Enable

.. _emaillibrarianwhenholdisplaced-label:

emailLibrarianWhenHoldIsPlaced
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't enable

Asks: \_\_\_ sending an email to the Koha administrator email address
whenever a hold request is placed.

Values:

-  Don't enable

-  Enable

Description:

-  This preference enables Koha to email the library staff whenever a
   patron requests an item to be held. While this function will
   immediately alert the librarian to the patron's need, it is extremely
   impractical in most library settings. In most libraries the hold
   lists are monitored and maintained from a separate interface. That
   said, many libraries that allow on shelf holds prefer to have this
   preference turned on so that they are alerted to pull an item from
   the shelf.

    **Important**

    In order for this email to send you must have a
    :ref:`notice <notices-&-slips-label>` template with the code of HOLDPLACED

    **Important**

    This notice will only be sent if the :ref:`process\_message\_queue.pl
    cronjob <message-queue-label>` being run periodically to send the
    messages.

.. _excludeholidaysfrommaxpickupdelay-label:

ExcludeHolidaysFromMaxPickUpDelay
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't allow

Asks: \_\_\_ Closed days to be taken into account in reserves max pickup delay.

Values:

-  Don't allow

-  Allow

.. _expirereservesmaxpickupdelay-label:

ExpireReservesMaxPickUpDelay
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't allow

Asks: \_\_\_ holds to expire automatically if they have not been picked
by within the time period specified in
:ref:`ReservesMaxPickUpDelay`

Values:

-  Allow

-  Don't allow

Description:

-  If set to 'allow' this will cancel holds that have been waiting for
   longer than the number of days specified in the
   :ref:`ReservesMaxPickUpDelay` system
   preference. Holds will only be cancelled if the :ref:`Expire Holds cron
   job <expired-holds-label>` is runnning.

.. _expirereservesmaxpickupdelaycharge-label:

ExpireReservesMaxPickUpDelayCharge
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 0

Asks: If using
:ref:`ExpireReservesMaxPickUpDelay`, charge
a borrower who allows his or her waiting hold to expire a fee of \_\_\_
USD

Description:

-  If you are expiring holds that have been waiting too long you can use
   this preference to charge the patron for not picking up their hold.
   If you don't charge patrons for items that aren't picked up you can
   leave this set to the default which is 0. Holds will only be
   cancelled and charged if the :ref:`Expire Holds cron
   job <expired-holds-label>` is running.

.. _expirereservesonholidays-label:

ExpireReservesOnHolidays
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ expired holds to be cancelled on days the library is
closed.

Values:

-  Allow

-  Don't allow
   
.. _holdssplitqueue-label:

HoldsSplitQueue
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: nothing

Asks: In the staff client, split the holds queue into separate tables by \_\_\_

Values:

-  pickup library
   
-  pickup library & itemtype
   
-  hold itemtype
   
-  nothing
   
Description: 

-  This feature allows to separate holds by pickup library or itemtype in the 
   holds page of a record (not in the global holds queue found on the circuation 
   page).

-  When using the up and down arrows, the priorities will be changed only in 
   in the group the holds belongs to.

.. _holdssplitqueuenumbering-label:

HoldsSplitQueueNumbering
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: the actual priority, which may be out of order

Asks: If the holds queue is split, show librarians \_\_\_

Values:

-  the actual priority, which may be out of order

-  'virtual' priorities, where each group is numbered separately
   
Description:

-  This system preference is only effective if :ref:`HoldsSplitQueue` is set to 
   any value except 'nothing'.

-  This system preference controls the priority numbering on the holds page 
   of a record (not in the global holds queue found on the circulation page). 

.. _localholdspriority,-localholdsprioritypatroncontrol,-localholdspriorityitemcontrol-label:

LocalHoldsPriority, LocalHoldsPriorityPatronControl, LocalHoldsPriorityItemControl
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: \_\_\_ priority for filling holds to patrons whose \_\_\_ matches
the item's \_\_\_

LocalHoldsPriority Values:

-  Don't give

-  Give

LocalHoldsPriorityPatronControl Values:

-  home library

-  pickup library

LocalHoldsPriorityItemControl Values:

-  holding library

-  home library

Description:

-  This feature will allow libraries to specify that, when an item is
   returned, a local hold may be given priority for fulfillment even
   though it is of lower priority in the list of unfilled holds.

.. _maxreserves-label:

maxreserves
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 50

Asks: Patrons can only have \_\_\_ holds at once.

.. _opacallowholddateinfuture-label:

OPACAllowHoldDateInFuture
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ patrons to place holds that don't enter the waiting list
until a certain future date.

Values:

-  Allow

   -  :ref:`AllowHoldDateInFuture` must also be
      enabled for this to work

-  Don't allow

.. _opacallowusertochoosebranch-label:

OPACAllowUserToChooseBranch
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ a user to choose the branch to pick up a hold from.

Values:

-  Allow

-  Don't allow

Description:

-  Changing this preference will not prevent staff from being able to
   transfer titles from one branch to another to fill a hold, it will
   only prevent patrons from saying they plan on picking a book up at a
   branch other than their home branch.

.. _opacholdsifavailableatpickup-label:

OPACHoldsIfAvailableAtPickup
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ to pickup holds at libraries where the item is available.

Values:

-  Don't allow

-  Allow

Description:

-  Prevents borrowers from requesting items that are on the shelf
   at the same branch at which they wish to pick up those items.

.. _opacholdsifavailableatpickupexceptions-label:

OPACHoldsIfAvailableAtPickupExceptions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: blank

Asks: Patron categories not affected by :ref:`OPACHoldsIfAvailableAtPickup`
\_\_\_ (list of patron categories separated with a pipe ^|^)

Description:

-  Patron category codes listed here separated by a pipe ^|^ are unaffected by
   :ref:`OPACHoldsIfAvailableAtPickup`.

.. _reservescontrolbranch-label:

ReservesControlBranch
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: item's home library

Asks: Check the \_\_\_ to see if the patron can place a hold on the
item.

Values:

-  item's home library.

-  patron's home library.

.. _reservesmaxpickupdelay-label:

ReservesMaxPickUpDelay
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 7

Asks: Mark a hold as problematic if it has been waiting for more than
\_\_\_ days.

Description:

-  This preference (based on calendar days, not the :ref:`Koha holiday
   calendar <calendar-label>`) puts an expiration date on an item a
   patron has on hold. After this expiration date the staff will have
   the option to release the unclaimed hold which then may be returned
   to the library shelf or issued to the next patron on the item's hold
   list. Items that are 'expired' by this preference are moved to the
   'Holds Over' tab on the ^:ref:`Holds Awaiting Pickup <holds-awaiting-pickup-label>`^
   report.

.. _reservesneedreturns-label:

ReservesNeedReturns
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't automatically

Asks: \_\_\_ mark holds as found and waiting when a hold is placed
specifically on them and they are already checked in.

Values:

-  Automatically

-  Don't automatically

Description:

-  This preference refers to 'item specific' holds where the item is
   currently on the library shelf. This preference allows a library to
   decide whether an 'item specific' hold is marked as "Waiting" at the
   time the hold is placed or if the item will be marked as "Waiting"
   after the item is checked in. This preference will tell the patron
   that their item is 'Waiting' for them at their library and ready for
   check out.

.. _staticholdsqueueweight,-holdsqueueskipclosed-&-randomizeholdsqueueweight-label:

StaticHoldsQueueWeight, HoldsQueueSkipClosed & RandomizeHoldsQueueWeight
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

StaticHoldsQueueWeight Default: 0

HoldsQueueSkipClosed Default: open or closed

RandomizeHoldsQueueWeight Default: in that order

Asks: Satisfy holds using items from the libraries \_\_\_ (as
branchcodes, separated by commas; if empty, uses all libraries) when
they are \_\_\_ \_\_\_.

HoldsQueueSkipClosed Values:

-  open or closed

-  open

RandomizeHoldsQueueWeight Values:

-  in random order

   -  If StaticHoldsQueueWeight is left at the default Koha will
      randomize all libraries, otherwise it will randomize the libraries
      listed.

-  in that order

   -  If StaticHoldsQueueWeight is left at the default then this will
      use all of your branches in alphabetical order, otherwise it will
      use the branches in the order that you entered them in the
      StaticHoldsQueueWeight preference.

Descriptions:

-  These preferences control how the :ref:`Holds Queue
   report <holds-queue-label>` is generated using :ref:`a cron
   job <holds-queue-label>`.

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

    **Important**

    The :ref:`Transport Cost Matrix <transport-cost-matrix-label>` takes
    precedence in controlling where holds are filled from, if the matrix
    is not used then Koha checks the StaticHoldsQueueWeight. To use the
    Transport Cost Matrix simply set your
    :ref:`UseTransportCostMatrix` preference to
    'Use'

.. _suspendholdsintranet-label:

SuspendHoldsIntranet
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ holds to be suspended from the intranet.

Values:

-  Allow

-  Don't allow

Description:

-  The holds suspension feature can be turned on and off in the staff
   client by altering this system preference. If this is set to 'allow'
   you will want to set the
   :ref:`AutoResumeSuspendedHolds` system
   preference.

.. _suspendholdsopac-label:

SuspendHoldsOpac
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ holds to be suspended from the OPAC.

Values:

-  Allow

-  Don't allow

Description:

-  The holds suspension feature can be turned on and off in the OPAC by
   altering this system preference. If this is set to 'allow' you will
   want to set the
   :ref:`AutoResumeSuspendedHolds` system
   preference.

.. _transferwhencancelallwaitingholds-label:

TransferWhenCancelAllWaitingHolds
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't transfer

Asks: \_\_\_ items when cancelling all waiting holds.

Values:

-  Don't transfer

-  Transfer

Description:

-  When TransferWhenCancelAllWaitingHolds is set to "Don't transfer", no
   branch transfer records are created. Koha will not allow the holds to
   be transferred, because that would orphan the items at the library
   where the holds were awaiting pickup, without any further instruction
   to staff as to what items are at the library or where they need to
   go. When that system preference set to "Transfer", branch transfers
   are created, so the holds may be cancelled.

.. _updateitemwhenlostfromholdlist-label:

UpdateItemWhenLostFromHoldList
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Update item's values when marked as lost from the hold to pull screen. 

Description:

-  This is a list of values to update an item when it is marked as lost from 
   the holds to pull screen. For example, write "itemlost: 1" to set the items.
   itemlost value to 1 when the item is marked as lost. This will use the authorized
   value 1 from the LOST authorized value list. 

.. _housebound-module-label:

Housebound module
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _houseboundmodule-label:

HouseboundModule
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Disable

Asks: \_\_\_ housebound module

Values:

-  Disable

-  Enable

Description:

-  This preference enables or disables the Housebound module which
   handles management of circulation to Housebound readers.

.. _housebound-interface-label:

Interface
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _allowallmessagedeletion-label:

AllowAllMessageDeletion
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't allow

Asks: \_\_\_ staff to delete messages added from other libraries.

Values:

-  Allow

-  Don't allow

.. _allowcheckoutnotes-label:

AllowCheckoutNotes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't allow

Asks: \_\_\_ patrons to submit notes about checked out items.

Values:

-  Don't allow

-  Allow

This preference if set to allow will give your patrons the option to add
a note to an item they have checked out on the OPAC side.  This note will be
seen on the staff side when the item is checked in.

.. _allowofflinecirculation-label:

AllowOfflineCirculation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Do not enable

Asks: \_\_\_ offline circulation on regular circulation computers.

Values:

-  Do not enable

-  Enable

Description:

-  Setting this preference to 'Enable' allows you to use the Koha
   interface for :ref:`offline circulation <offline-circulation-utilities-label>`. This system
   preference does not affect the :ref:`Firefox
   plugin <firefox-plugin-label>` or the :ref:`desktop
   application <offline-circ-tool-for-windows-label>`, any of these three options can
   be used for offline circulation without effecting the other.

.. _autoswitchpatron-label:

AutoSwitchPatron
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't enable

Asks: \_\_\_ the automatic redirection to another patron when a patron
barcode is scanned instead of a book. This should not be enabled if you
have overlapping patron and book barcodes.

Values:

-  Don't enable

-  Enable

Description:

-  Enabling this system preference allows staff to scan a patron barcode instead
   of an item barcode in the checkout box to switch patron records.

.. _circautocompl-label:

CircAutocompl
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Try

Asks: \_\_\_ to automatically fill in the member when entering a patron
search on the circulation screen.

Description:

-  This preference is a binary setting which determines whether
   auto-completion of fields is enabled or disabled for the circulation
   input field. Setting it to "Try" would enable a staff member to begin
   typing a name or other value into the field and have a menu pop up
   with suggestions for completing it. Setting it to "Don't try" would
   disable this feature. This preference can make staff members' jobs
   easier or it could potentially slow down the page loading process.

Values:

-  Don't try

-  Try

   |image33|

.. _circautoprintquickslip-label:

CircAutoPrintQuickSlip
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: open a print quick slip window

Asks: When an empty barcode field is submitted in circulation \_\_\_

Values:

-  clear the screen

-  open a print quick slip window

-  open a print slip window

Description:

-  If this preference is set to open a quick slip
   (:ref:`ISSUEQSLIP <existing-notices-&-slips-label>`) or open a slip
   (:ref:`ISSUESLIP <existing-notices-&-slips-label>`) for printing it will eliminate the
   need for the librarian to click the print button to generate a
   checkout receipt for the patron they're checking out to. If the
   preference is set to clear the screen then "checking out" an empty
   barcode will clear the screen of the patron you were last working
   with.

.. _circsidebar-label:

CircSidebar
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Deactivate

Asks: \_\_\_ the navigation sidebar on all Circulation pages.

Values:

-  Deactivate

-  Activate

.. _displayclearscreenbutton-label:

DisplayClearScreenButton
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Show

Asks: \_\_\_ a button to clear the current patron from the screen on the
circulation screen.

Values:

-  Don't show

   |image36|

-  Show

   |image37|

.. _exportcirchistory-label:

ExportCircHistory
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ the export patron checkout history options.

Values:

-  Don't show

-  Show

.. _exportremovefields-label:

ExportRemoveFields
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: The following fields should be excluded from the patron checkout
history CSV or iso2709 export \_\_\_

Description:

-  This space separated list of fields (e.g. 100a 245b) will
   automatically be excluded when exporting the patron's current
   checkout history.

   |image38|

.. _filterbeforeoverduereport-label:

FilterBeforeOverdueReport
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't require

Asks: \_\_\_ staff to choose which checkouts to show before running the
overdues report.

Description:

-  Koha's overdue report shows you all of the overdue items in your
   library system. If you have a large library system you'll want to set
   this preference to 'Require' to force those running the report to
   first limit the data generated to a branch, date range, patron
   category or other such filter. Requiring that the report be filtered
   before it's run prevents your staff from running a system heavy
   report and slowing down other operations in the system.

   |image34|

Values:

-  Don't require

-  Require

.. _finenotifyatcheckin-label:

FineNotifyAtCheckin
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't notify

Asks: \_\_\_ librarians of overdue fines on the items they are checking
in.

Values:

-  Don't notify

-  Notify

Description:

-  With this preference set to 'Notify' all books that have overdue
   fines owed on them will pop up a warning when checking them in. This
   warning will need to acknowledged before you can continue checking
   items in. With this preference set to 'Don't notify,^ you will still
   see fines owed on the patron record, you just won't have an
   additional notification at check in.

   |image35|

.. _holdstopullstartdate-label:

HoldsToPullStartDate
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 2

Asks: Set the default start date for the Holds to pull list to \_\_\_
day(s) ago.

Description:

-  The :ref:`Holds to Pull <holds-to-pull-label>` report in circulation defaults to
   filtering holds placed 2 days ago. This preference allows you to set
   this default filter to any number of days.

.. _itembarcodefallbacksearch-label:

itemBarcodeFallbackSearch
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't enable

Asks: \_\_\_ the automatic use of a keyword catalog search if the phrase
entered as a barcode on the checkout page does not turn up any results
during an item barcode search.

Values:

-  Don't enable

-  Enable

   |image40|

Description:

-  Sometimes libraries want to checkout using something other than the
   barcode. Enabling this preference will do a keyword search of Koha to
   find the item you're trying to check out. You can use the call
   number, barcode, part of the title or anything you'd enter in the
   keyword search when this preference is enabled and Koha will ask you
   which item you're trying to check out.

    **Important**

    While you're not searching by barcode a barcode is required on every
    title you check out. Only titles with barcodes will appear in the
    search results.

.. _itembarcodeinputfilter-label:

itemBarcodeInputFilter
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't filter

Asks: \_\_\_ scanned item barcodes.

Values:

-  Convert from CueCat format

-  Convert from Libsuite8 form

-  Don't filter

-  EAN-13 or zero-padded UPC-A from

-  Remove spaces from

-  Remove the first number from T-prefix style

   -  This format is common among those libraries migrating from Follett
      systems

.. _noticecss-label:

NoticeCSS
^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Include the stylesheet at \_\_\_ on Notices.

    **Important**

    This should be a complete URL, starting with http://

Description:

-  If you would like to style your notices with a consistent set of
   fonts and colors you can use this preference to point Koha to a
   stylesheet specifically for your notices.

.. _numreturneditemstoshow-label:

numReturnedItemsToShow
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 20

Asks : Show the \_\_\_ last returned items on the checkin screen.

.. _previousissuesdefaultsortorder-label:

previousIssuesDefaultSortOrder
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: earliest to latest

Asks: Sort previous checkouts on the circulation page from \_\_\_ due
date.

Values:

-  earliest to latest

-  latest to earliest

.. _recordlocaluseonreturn-label:

RecordLocalUseOnReturn
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't record

Asks: \_\_\_ local use when an unissued item is checked in.

Values:

-  Don't record

-  Record

Description:

-  When this preference is set to "Don't record" you can record local
   use of items by checking items out to the statistical patron. With
   this preference set to "Record" you can record local use by checking
   out to the statistical patron and/or by checking in a book that is
   not currently checked out.

.. _showallcheckins-label:

ShowAllCheckins
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Do not show

Asks: \_\_\_ all items in the "Checked-in items" list, even items that
were not checked out.

Values:

-  Do not show

-  Show

Description:

-  When items that are not currently checked out are checked in they
   don't show on the list of checked in items. This preference allows
   you to choose how you'd like the log of checked in items displays.

.. _specifyduedate-label:

SpecifyDueDate
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ staff to specify a due date for a checkout.

Due dates are calculated using your circulation and fines rules, but
staff can override that if you allow them to specify a due date at
checkout.

Description:

-  This preference allows for circulation staff to change a due date
   from the automatic due date to another calendar date. This option
   would be used for circumstances in which the due date may need to be
   decreased or extended in a specific circumstance. The "Allow" setting
   would allow for this option to be utilized by staff, the "Don't
   allow" setting would bar staff from changing the due date on
   materials.

Values:

-  Allow

   |image41|

-  Don't allow

   |image42|

.. _specifyreturndate-label:

SpecifyReturnDate
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't allow

Asks: \_\_\_ staff to specify a return date for a check in.

Values:

-  Allow

  |image1185|

-  Don't allow

  |image1186|

Description:

-  This preference lets you decide if staff can specify an arbitrary
   return date when checking in items. If an arbitrary return date is
   specified then fines are recalculated accordingly.

.. _todaysissuesdefaultsortorder-label:

todaysIssuesDefaultSortOrder
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: latest to earliest

Asks: Sort today's checkouts on the circulation page from \_\_\_ due
date.

Values:

-  earliest to latest

-  latest to earliest

.. _updatetotalissuesoncirc-label:

UpdateTotalIssuesOnCirc
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Do not

Asks: \_\_\_ update a bibliographic record's total issues count whenever
an item is issued

Values:

-  Do

       **Important**

       This increases server load significantly; if performance is a
       concern, use the :ref:`cron job <track-total-checkouts-label>` to update the
       total issues count instead.

-  Do not

Description:

-  Koha can track the number of times and item is checked out and store
   that on the item record in the database. This information is not
   stored by default. Setting this preference to 'Do' will tell Koha to
   track that info everytime the item is checked out in real time.
   Otherwise you could use the :ref:`cron job <track-total-checkouts-label>` to have
   Koha update that field nightly.

.. _waitingnotifyatcheckin-label:

WaitingNotifyAtCheckin
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't notify

Asks: \_\_\_ librarians of waiting holds for the patron whose items they
are checking in.

Values:

-  Don't notify

-  Notify

   |image43|

Description:

-  When checking in books you can choose whether or not to have a notice
   pop up if the patron who returned the book has a hold waiting for
   pick up. If you choose 'Notify' for WaitingNotifyAtCheckin then every
   time a hold is found for the patron who had the book out last a
   message will appear on your check in screen.

.. _interlibrary-loans-label:

Interlibrary Loans
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _illmodule-label:

ILLModule
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Disable

Asks: \_\_\_ the interlibrary loans module (master switch).

Values:

-  Disable

-  Enable

Description:

-  This preference is used to enable Koha's ILL module which is used to manage ILL requests.

.. _illmodule-label:

ILLModuleCopyrightClearance
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Adding text will enable the copyright clearance stage in request creation.
The text you enter will be the text displayed.


Self Checkout
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _allowselfcheckreturns-label:

AllowSelfCheckReturns
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't allow

Asks: \_\_\_ patrons to return items through web-based self checkout
system.

Values:

-  Allow

-  Don't allow

Description:

-  This preference is used to determine if you want patrons to be
   allowed to return items through your self check machines. By default
   Koha's self check interface is simply for checking items out.

.. _autoselfcheckallowed-autoselfcheckid-&-autoselfcheckpass-label:

AutoSelfCheckAllowed, AutoSelfCheckID & AutoSelfCheckPass
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

    **Important**

    Most libraries will want to leave this set to 'Don't allow.^ This
    preference turns off the requirement to log into the self checkout
    machine with a staff username and password by storing the username
    and password for automatic login.

AutoSelfCheckAllowed Default: Don't allow

Asks: \_\_\_ the web-based self checkout system to automatically login
with this staff login \_\_\_ and this password \_\_\_ .

AutoSelfCheckAllowed Values:

-  Allow

-  Don't allow

AutoSelfCheckID Value:

-  The username of a staff patron with 'circulate'
   :ref:`permissions <patron-permissions-label>`.

AutoSelfCheckPass Value:

-  The password of a staff patron with 'circulate'
   :ref:`permissions <patron-permissions-label>`.

.. _scomainuserblock-label:

SCOMainUserBlock
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Include the following HTML on the web-based self checkout screen:

Description:

-  The HTML entered in this preference will be used on the self chekcout screen.

.. _scousercss-label:

SCOUserCSS
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Include the following CSS on all pages in the web-based self
checkout

Description:

-  The CSS entered in this preference will be used on all of your Koha
   self checkout screens.

.. _scouserjs-label:

SCOUserJS
^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Include the following JavaScript on all pages in the web-based
self checkout

Description:

-  The JavaScript entered in this preference will effect all of your
   Koha self checkout screens.

.. _selfcheckhelpmessage-label:

SelfCheckHelpMessage
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Include the following HTML in the Help page of the web-based self
checkout system

Description:

-  Clicking the 'Help' link in the top right of the self checkout
   interface opens up a three step process for using the self check
   interface. Adding HTML to this system preference will print that
   additional help text above what's already included.

.. _selfcheckoutbylogin-label:

SelfCheckoutByLogin
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Cardnumber

Asks: Have patrons login into the web-based self checkout system with
their \_\_\_

Values:

-  Cardnumber

   |image44|

-  Username and password

   |image45|

Description:

-  This preference lets you decide how your patrons will log in to the
   self checkout machine. Barcode is the patron's card number and their
   username and password is set using the opac/staff username and
   password fields on the patron record.

.. _selfcheckreceiptprompt-label:

SelfCheckReceiptPrompt
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Show

Asks: \_\_\_ the print receipt popup dialog when self checkout is
finished.

Values:

-  Don't show

-  Show

Description:

-  This preference controls whether a prompt shows up on the web based
   self check out when the patron clicks the 'Finish' button.

.. _selfchecktimeout-label:

SelfCheckTimeout
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 120

Asks: Time out the current patron's web-based self checkout system login
after \_\_\_ seconds.

Description:

-  After the machine is idle for the time entered in this preference the
   self check out system will log out the current patron and return to
   the starting screen.

.. _showpatronimageinwebbasedselfcheck-label:

ShowPatronImageInWebBasedSelfCheck
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ the patron's picture (if one has been added) when they use
the web-based self checkout.

Values:

-  Don't show

-  Show

.. _webbasedselfcheck-label:

WebBasedSelfCheck
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't enable

Asks: \_\_\_ the web-based self checkout system.

Values:

-  Don't enable

-  Enable

Enabling this preference will allow access to the :ref:`self
checkout <self-checkout-label>` module in Koha.

Self Checkin
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _selfcheckinmainuserblock-label:

SelfCheckInMainUserBlock 
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Include the following HTML on the self check-in screen

Description:

-  HTML entered in this field will appear in the center of the main page
   of your self checkin screen

.. _selfscheckinmodule-label:

SelfCheckInModule 
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't enable

Asks: \_\_\_ the standalone self check-in module (available at:
/cgi-bin/koha/sci/sci-main.pl

Values:

-  Don't enable

-  Enable

Description:

-  This system preference will activate (or deactivate) the self check-
   in module

.. _selfcheckintimeout-label:

SelfCheckInTimeout
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 120

Asks: Reset the current self check-in screen after \_\_\_ seconds

Description:

-  Enter the number of seconds after which you want the self check-in 
   screen to refresh and go back to the main page (for example, if a
   patron forgot to log out).

.. _selfcheckinusercss-label:

SelfCheckInUserCSS
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Include the following CSS on all the self check-in screens

Description:

-  The CSS code entered here will override any CSS on the self check-in
   screens

.. _selfcheckinuserjs-label:

SelfCheckInUserJS
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Include the following JavaScript on all the self check-in screens

Description: 

-  The JavaScript entered here will override any other JavaScript on
   the self check-in screens


.. _enhanced-content-label:

Enhanced Content
---------------------------------------

*Get there:* More > Administration > Global System Preferences >
Enhanced Content

    **Important**

    Always read the terms of service associated with external data
    sources to be sure that you are using the products within the
    allowed limits.

    **Note**

    You cannot have more than one service for cover images (including
    local cover images) set up. If you set up more than one you will get
    multiple cover images. Instead choose only one source for cover
    images.

.. _all-label:

All
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _frbrizeeditions-label:

FRBRizeEditions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ other editions of an item on the staff client

Values:

-  Don't show

-  Show

   |image46|

Description:

-  Using the rules set forth in the Functional Requirements for
   Bibliographic records, this option, when enabled, pulls all editions
   of the same title available in your collection regardless of material
   type. Items will appear under an 'Editions' tab on the detail page
   for the title in question.. According to *Libraries Unlimited's
   Online Dictionary for Library and Information Science*
   (http://lu.com/odlis/), FRBRizing the catalog involves collating MARC
   records of similar materials. FRBRization brings together entities
   (sets of Works, Expressions, or Manifestations), rather than just
   sets of Items. It can aid patrons in selecting related items,
   expressions, and manifestations that will serve their needs. When it
   is set to "Show", the OPAC will query one or more ISBN web services
   for associated ISBNs and display an Editions tab on the details
   pages. Once this preference is enabled, the library must select one
   of the ISBN options (:ref:`ThingISBN` and/or
   :ref:`XISBN`). This option is only for the Staff Client; the
   :ref:`OPACFRBRizeEditions` option must be enabled
   to have the Editions tab appear on the OPAC.

    **Important**

    Requires that you turn on one or more of the ISBN services
    (:ref:`ThingISBN` and/or :ref:`XISBN`)

.. _opacfrbrizeeditions-label:

OPACFRBRizeEditions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ other editions of an item on the OPAC.

Description:

-  Using the rules set forth in the Functional Requirements for
   Bibliographic records, this option, when enabled, pulls all editions
   of the same title available in your collection regardless of material
   type. Items will appear under an 'Editions' tab on the detail page
   for the title in question.. According to *Libraries Unlimited's
   Online Dictionary for Library and Information Science*
   (http://lu.com/odlis/), FRBRizing the catalog involves collating MARC
   records of similar materials. FRBRization brings together entities
   (sets of Works, Expressions, or Manifestations), rather than just
   sets of Items. It can aid patrons in selecting related items,
   expressions, and manifestations that will serve their needs. When it
   is set to "Show", the OPAC will query one or more ISBN web services
   for associated ISBNs and display an Editions tab on the details
   pages. Once this preference is enabled, the library must select one
   of the ISBN options (:ref:`ThingISBN` and/or
   :ref:`XISBN`). This option is only for the OPAC; the
   :ref:`FRBRizeEditions` option must be turned "On" to
   have the Editions tab appear on the Staff Client.

Values:

-  Don't show

-  Show

   |image47|

This preference pulls all editions of the same title available in your
collection regardless of material type. Items will appear under an
'Editions' tab on the detail page for the title in question.

    **Important**

    Requires that you turn on one or more of the ISBN services
    (:ref:`ThingISBN` and/or :ref:`XISBN`)

.. _amazon-label:

Amazon
~~~~~~~~~~~~~~~~~~~~~~~~~

.. _amazonassoctag-label:

AmazonAssocTag
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Put the associate tag \_\_\_ on links to Amazon.

    **Note**

    This can net your library referral fees if a patron decides to buy
    an item after clicking through to Amazon from your site.

Description:

-  An Amazon Associates Tag allows a library to earn a percentage of all
   purchases made on Amazon when a patron accesses Amazon's site via
   links on the library's website. More information about the Amazon
   Associates program is available at Amazon's Affiliate Program's
   website, https://affiliate-program.amazon.com/. Before a tag can be
   obtained, however, the library must first apply for an Amazon Web
   Services (AWS) account. Applications are free of charge and can be
   made at http://aws.amazon.com. Once an AWS account has been
   established, the library can then obtain the Amazon Associates Tag.

Sign up at: https://affiliate-program.amazon.com/

.. _amazoncoverimages-label:

AmazonCoverImages
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ cover images from Amazon on search results and item detail
pages on the staff interface.

Values:

-  Don't show

-  Show

Description:

-  This preference makes it possible to either allow or prevent Amazon
   cover images from being displayed in the Staff Client. Cover images
   are retrieved by Amazon, which pulls the content based on the first
   ISBN number in the item's MARC record. Amazon offers this service
   free of charge. If the value for this preference is set to "Show",
   the cover images will appear in the Staff Client, and if it is set to
   "Don't show", the images will not appear. Finally, if you're using
   Amazon cover images, all other cover image services must be disabled.
   If they are not disabled, they will prevent AmazonCoverImages from
   functioning properly.

.. _amazonlocale-label:

AmazonLocale
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: American

Asks: Use Amazon data from its \_\_\_ website.

Value:

-  American

-  British

-  Canadian

-  French

-  German

-  Japanese

.. _opacamazoncoverimages-label:

OPACAmazonCoverImages
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ cover images from Amazon on search results and item detail
pages on the OPAC.

Values:

-  Don't show

-  Show

Description:

-  This preference makes it possible to either allow or prevent Amazon
   cover images from being displayed in the OPAC. Cover images are
   retrieved by Amazon, which pulls the content based on the first ISBN
   number in the item's MARC record. Amazon offers this service free of
   charge. If the value for this preference is set to "Show", the cover
   images will appear in the OPAC, and if it is set to "Don't show", the
   images will not appear. Finally, if you're using Amazon cover images,
   all other cover image services must be disabled. If they are not
   disabled, they will prevent AmazonCoverImages from functioning
   properly.


Babelthèque
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _babeltheque-label:

Babelthèque
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't

Asks: \_\_\_ include information (such as reviews and citations) from
Babelthèque in item detail pages on the OPAC.

Description:

-  This preference makes it possible to display a Babelthèque tab in the
   OPAC, allowing patrons to access tags, reviews, and additional title
   information provided by Babelthèque. The information which
   Babelthèque supplies is drawn from the French language-based
   `Babelio.com <http://www.babelio.com/>`__, a French service similar
   to LibraryThing for Libraries. More information about Babelthèque is
   available through its website,
   `http://www.babeltheque.com <http://www.babeltheque.com/>`__.
   Libraries that wish to allow access to this information must first
   register for the service at http://www.babeltheque.com. Please note
   that this information is only provided in French.

Values:

-  Do

   |image48|

-  Don't

.. _babeltheque\_url\_js-label:

Babeltheque\_url\_js
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: \_\_\_ Defined the url for the Babelthèque javascript file (eg.
http://www.babeltheque.com/bw\_XX.js)

.. _babeltheque\_url\_update-label:

Babeltheque\_url\_update
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: \_\_\_ Defined the url for the Babelthèque update periodically
(eq. http://www.babeltheque.com/.../file.csv.bz2).

.. _baker-&-taylor-label:

Baker & Taylor
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    **Important**

    This is a pay service, you must contact Baker & Taylor to subscribe
    to this service before setting these options.

.. _bakertaylorbookstoreurl-label:

BakerTaylorBookstoreURL
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Baker and Taylor "My Library Bookstore" links should be accessed
at https:// \_\_\_ isbn

Description:

-  Some libraries generate additional funding for the library by selling
   books and other materials that are purchased from or have been
   previously leased from Baker & Taylor. These materials can be
   accessed via a link on the library's website. This service is often
   referred to as "My Library Bookstore." In order to participate in
   this program, the library must first register and pay for the service
   with Baker & Taylor. Additional information about this and other
   services provided by Baker & Taylor is available at the Baker &
   Taylor website, http://www.btol.com. The BakerTaylorBookstoreURL
   preference establishes the URL in order to link to the library's
   Baker & Taylor-backed online bookstore, if such a bookstore has been
   established. The default for this field is left blank; if no value is
   entered, the links to My Library Bookstore will remain inactive. If
   enabling this preference, enter the library's Hostname and Parent
   Number in the appropriate location within the URL. The "key" value
   (key=) should be appended to the URL, and https:// should be
   prepended.

This should be filled in with something like
koha.mylibrarybookstore.com/MLB/actions/searchHandler.do?nextPage=bookDetails&parentNum=10923&key=

    **Note**

    Leave it blank to disable these links.

    **Important**

    Be sure to get this information from Baker & Taylor when
    subscribing.

.. _bakertaylorenabled-label:

BakerTaylorEnabled
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't add

Asks: \_\_\_ Baker and Taylor links and cover images to the OPAC and
staff client. This requires that you have entered in a username and
password (which can be seen in image links).

Values:

-  Add

-  Don't add

Description:

-  This preference makes it possible to display Baker & Taylor content
   (book reviews, descriptions, cover images, etc.) in both the Staff
   Client and the OPAC. Libraries that wish to display Baker & Taylor
   content must first register and pay for this service with Baker &
   Taylor (http://www.btol.com). If Baker & Taylor content is enabled be
   sure to turn off other cover and review services to prevent
   interference.

    **Important**

    To use this you will need to also set the :ref:`BakerTaylorUsername &
    BakerTaylorPassword <bakertaylorusername-&-bakertaylorpassword-label>` system preferences

.. _bakertaylorusername-&-bakertaylorpassword-label:

BakerTaylorUsername & BakerTaylorPassword
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Access Baker and Taylor using username \_\_\_ and password \_\_\_

Descriptions:

-  This setting in only applicable if the library has a paid
   subscription to the external Content CafÃ© service from Baker &
   Taylor. Use the box provided to enter in the library's Content CafÃ©
   username and password. Also, ensure that the
   :ref:`BakerTaylorBookstoreURL` and
   :ref:`BakerTaylorEnabled` settings are properly
   set. The Content CafÃ© service is a feed of enhanced content such as
   cover art, professional reviews, and summaries that is displayed
   along with Staff Client/OPAC search results. For more information on
   this service please see the Baker & Taylor website:
   http://www.btol.com

    **Important**

    Be sure to get this information from Baker & Taylor when
    subscribing.

.. _coce-cover-images-cache-label:

Coce Cover images cache
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Coce is a remote image URL cache. With this option, cover images are not
fetched directly from Amazon, Google, and so on. Their URLs are
requested via a web service to Coce which manages a cache of URLs.

.. _coce-label:

Coce
^^^^^^^^^^^^^^^^

Default: Don't enable

Asks: \_\_\_ a Coce image cache service.

Values:

-  Don't enable

-  Enable

Description:

-  Coce has many benefits when it comes to choosing and displaying cover
   images in Koha:

   -  If a book cover is not available from a provider, but is available
      from another one, Koha will be able to display a book cover, which
      isn't the case now

   -  Since URLs are cached, it isn't necessary for each book cover to
      request, again and again, the provider, and several of them if
      necessary.

   -  Amazon book covers are retrieved with Amazon Product Advertising
      API, which means that more covers are retrieved (ISBN13).

       **Important**

       Coce does not come bundled with Koha. Your Koha install will not
       already have a Coce server set up. Before enabling this
       functionality you will want to be sure to have a Coce server set
       up. Instructions on installing and setting up Coce can be found
       on the official github page at https://github.com/fredericd/coce.

.. _cocehost-label:

CoceHost
^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Coce server URL \_\_\_

Description:

-  This will be the full URL (starting with http://) to your Coce
   server.

.. _coceproviders-label:

CoceProviders
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Use the following providers to fetch the covers \_\_\_

Values:

-  [Select all]

-  Amazon Web Services

-  Google Books

-  Open Library

Description:

-  The providers chosen here will be used to gather cover images for
   display in your Koha catalog.

.. _google-label:

Google
~~~~~~~~~~~~~~~~~~~~~~~~~

.. _googlejackets-label:

GoogleJackets
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't add

Asks: \_\_\_ cover images from Google Books to search results and item
detail pages on the OPAC.

Values:

-  Add

-  Don't add

Description:

-  This setting controls the display of applicable cover art from the
   free Google Books database, via the Google Books API. Please note
   that to use this feature, all other cover services should be turned
   off.

.. _html5-media-label:

HTML5 Media
~~~~~~~~~~~~~~~~~~~~~~~~

.. _html5mediaenabled-label:

HTML5MediaEnabled
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: not at all

Asks: Show a tab with a HTML5 media player for files catalogued in field
856 \_\_\_

Values:

-  in OPAC and staff client

-  in the OPAC

   |image49|

-  in the staff client

   |image50|

-  not at all

Description:

-  If you have media elements in the 856 of your MARC record this
   preference can run/show those media files in a separate tab using
   HTML5.

.. _html5mediaextensions-label:

HTML5MediaExtensions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: webm\|ogg\|ogv\|oga\|vtt

Asks: Media file extensions \_\_\_

Description:

-  Enter in file extensions separated with bar (\|)

.. _html5mediayoutube-label:

HTML5MediaYouTube
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't embed

    **Important**

    To turn this on first enable
    :ref:`HTML5MediaEnabled`

Asks: \_\_\_ YouTube links as videos.

Values:

-  Don't embed

-  Embed

Description:

-  This preference will allow MARC21 856$u that points to YouTube to
   appear as a playable video on the pages defined in
   :ref:`HTML5MediaEnabled`.

.. _idreamlibraries-label:

IDreamLibraries
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`IDreamBooks.com <http://idreambooks.com/>`__ aggregates book reviews by
critics to help you discover the very best of what's coming out each
week. These preferences let you integrated content from
`IDreamBooks.com <http://IDreamBooks.com>`__ in to your Koha OPAC.

    **Note**

    This is a new website and has limited content, so you may only see
    these features on new popular titles until the database grows some
    more.

.. _idreambooksreadometer-label:

IDreamBooksReadometer
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't add

Asks: \_\_\_ a "Readometer" that summarizes the reviews gathered by
IDreamBooks.com to the OPAC details page.

Values:

-  Add

   |image51|

-  Don't add

.. _idreambooksresults-label:

IDreamBooksResults
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't add

Asks: \_\_\_ the rating from IDreamBooks.com to OPAC search results.

Values:

-  Add

   |image52|

-  Don't add

.. _idreambooksreviews-label:

IDreamBooksReviews
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't add

Asks: \_\_\_ a tab on the OPAC details with book reviews from critics
aggregated by IDreamBooks.com.

Values:

-  Add

   |image53|

-  Don't add

.. _librarything-label:

LibraryThing
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

LibraryThing for Libraries is a pay service. You must first contact
LibraryThing directly for pricing and subscription information. Learn
more at http://www.librarything.com/forlibraries. Also, for further
configuration instructions please see the LibraryThing Wiki:
http://www.librarything.com/wiki/index.php/Koha

.. _librarythingforlibrariesenabled-label:

LibraryThingForLibrariesEnabled
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ reviews, similar items, and tags from Library Thing for
Libraries on item detail pages on the OPAC.

Values:

-  Don't show

-  Show

Description:

-  This setting is only applicable if the library has a paid
   subscription to the external LibraryThing for Libraries service. This
   service can provide patrons with the display of expanded information
   on catalog items such as book recommendations. It also can offer
   advanced features like tagged browsing, patron written reviews, and a
   virtual library display accessed from the details tab.

    **Important**

    If this is set to 'show' you will need to enter a value in the
    ^:ref:`LibraryThingForLibrariesID`^
    system preference.

.. _librarythingforlibrariesid-label:

LibraryThingForLibrariesID
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Access Library Thing for Libraries using the customer ID \_\_\_

Description:

-  This setting is only applicable if the library has a paid
   subscription to the external LibraryThing for Libraries service. Use
   the box provided to enter in the library's LibraryThing for Libraries
   ID as provided to the library by LibraryThing. The ID number is a
   series of numbers in the form ###-#########, and can be found on the
   library's account page at LibraryThing for Libraries. This service
   can provide patrons with the display of expanded information on
   catalog items such as book recommendations and cover art. It also can
   offer advanced features like tagged browsing, patron written reviews,
   and a virtual library display accessed from the details tab.

.. _librarythingforlibrariestabbedview-label:

LibraryThingForLibrariesTabbedView
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: in line with bibliographic information

Asks: Show Library Thing for Libraries content \_\_\_

Values:

-  in line with bibliographic information

-  in tabs

Description:

-  This setting is only applicable if the library has a paid
   subscription to the external LibraryThing for Libraries service. This
   service can provide patrons with the display of expanded information
   on catalog items such as book recommendations and cover art. It also
   can offer advanced features like tagged browsing, patron written
   reviews, and a virtual library display accessed from the details tab.

.. _thingisbn-label:

ThingISBN
^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't use

Asks: \_\_\_ the ThingISBN service to show other editions of a title

Values:

-  Don't use

-  Use

Description:

-  Set to 'Use' to display an "Editions" tab on the item's detail page.
   Editions are listed, complete with cover art (if you have one of the
   cover services enabled) and bibliographic information. The feed comes
   from LibraryThing's ThingISBN web service. This is a free service to
   non-commercial sites with fewer than 1,000 requests per day.

    **Important**

    Requires :ref:`FRBRizeEditions` and/or
    :ref:`OPACFRBRizeEditions` set to 'show'

    **Important**

    This is separate from Library Thing for Libraries and does not have
    a cost associated with it.

.. _local-cover-images-label:

Local Cover Images
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _allowmultiplecovers-label:

AllowMultipleCovers
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't allow

Asks: \_\_\_ multiple images to be attached to each bibliographic
record.

Values:

-  Allow

-  Don't allow

Description:

-  If this preference is set to 'Allow' then you can upload multiple
   images that will appear in the images tab on the bib record in the
   OPAC and the staff client. This preference requires that either one
   or both :ref:`LocalCoverImages` and
   :ref:`OPACLocalCoverImages` are set to
   'Display.^

   |image54|

.. _localcoverimages-label:

LocalCoverImages
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't display

Asks: \_\_\_ local cover images on intranet search and details pages.

Values:

-  Display

-  Don't display

Description:

-  Setting this preference to 'Display' allows you to upload your own
   cover images to bib records and display them on the detail page in
   the staff client. At this time the cover will only show under the
   'Images' tab on the holdings table on the detail display, not next to
   the title at the top left or on the search results.

.. _opaclocalcoverimages-label:

OPACLocalCoverImages
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't display

Asks: \_\_\_ local cover images on OPAC search and details pages.

Values:

-  Display

-  Don't display

Description:

-  Setting this preference to 'Display' allows you to upload your own
   cover images to bib records and display them on the detail page and
   search results in the OPAC.

.. _manual-sysprefs-label:

Manual 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _kohamanualbaseurl-label:

KohaManualBaseURL
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: https://koha-community.org/manual/

Asks: Location of the Koha manual \_\_\_

Description:

-  You can specify the location of the Koha manual to use. This is the 
   URL that will be used for the help pages when you click 'Help' at 
   the top right corner of the page.

-  By default, the Koha manual is used, but you can use this system 
   preference to substitute for your own help pages.

-  If the URL starts with '/', the value of :ref:`staffClientBaseURL` 
   will be used as a prefix. 

-  Note that it will be suffixed by the version / the language / the 
   format (/17.11/en/html) 

.. _kohamanuallanguage-label:

KohaManualLanguage
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: English

Asks: Language of the online manual ­\_\_\_

Description: 

-  By default, the language of the Koha interface will be used 
   as the manual language. However, if the manual is not translated 
   in that language, this system preference specifies the fallback 
   language.


.. _novelist-select-label:

Novelist Select
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Novelist Select is not a free service. Contact your Ebsco representative
to get your log in information to embed this content in the OPAC.

    **Important**

    Novelist Select does not include cover images for the search results
    and bibliographic detail pages. You can choose any other cover image
    service for this content or you can contract with Ebsco to get
    access to the :ref:`Baker & Taylor Content Cafe <baker-&-taylor-label>` for
    an added fee.

.. _novelistselectenabled-label:

NovelistSelectEnabled
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't add

Asks: \_\_\_ Novelist Select content to the OPAC.

Values:

-  Add

-  Don't add

    **Important**

    Enabling this requires that you have entered in a user profile and
    password in the :ref:`NovelistSelectProfile &
    NovelistSelectPassword <novelistselectprofile-&-novelistselectpassword-label>` preferences

Description:

-  Novelist Select from Ebsco is a subscription service that can provide
   additional content in the OPAC.

.. _novelistselectprofile-&-novelistselectpassword-label:

NovelistSelectProfile & NovelistSelectPassword
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Access Novelist Select using user profile \_\_\_ and password
\_\_\_.

    **Important**

    This information will be visible if someone views the source code on
    your OPAC.

Description:

-  Novelist Select from Ebsco is a subscription service that can provide
   additional content in the OPAC.

.. _novelistselectstaffenabled-label:

NovelistSelectStaffEnabled
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't add

Asks: \_\_\_ Novelist Select content to the Staff client (requires that
you have entered in a user profile and password, which can be seen in
image links).

Values:

-  Don't add

-  Add

.. _novelistselectstaffprofile-label:

NovelistSelectStaffProfile
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Access Novelist Select using user profile \_\_\_ on the staff client

Description:

-  Without this value being set, Novelist features will be disabled on the staff
   client until a correct profile is obtained from Novelist and entered into
   the field.
   
      **Note**
      
      This value must be set independently of the OPAC profile for Novelist

.. _novelistselectstaffview-label:

NovelistSelectStaffView
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: in a tab

Asks: Display Novelist Select staff content \_\_\_.

Values:

-  above the holdings table

-  below the holdings table

-  in a tab

.. _novelistselectview-label:

NovelistSelectView
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: in an OPAC tab

Asks: Display Novelist Select content \_\_\_

Description:

-  Novelist Select provides a lot of content, for that reason you have
   four choices of where to display this content. The default view is in
   a tab in the holdings table.

   |image55|

   The content is the same if you choose to show it above the holdings
   table or below it. If shown in the right column of the page it's the
   same content, but displays a bit differently since space is limited.

   |image56|

Values:

-  above the holdings table

-  below the holdings table

-  in an OPAC tab

-  under the Save Record dropdown on the right

.. _open-library-label:

Open Library
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _openlibrarycovers-label:

OpenLibraryCovers
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't add

Asks: \_\_\_ cover images from Open Library to search results and item
detail pages on the OPAC.

Values:

-  Add

-  Don't add

Description:

-  This setting controls the display of applicable cover art from the
   free Open Library database, via the Open Library API. Please note
   that to use this feature, all other cover services should be turned
   off.

.. _openlibrarysearch-label:

OpenLibrarySearch
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ search results from Open Library on the OPAC.

Values:

-  Don't show

-  Show

  |image1187|

.. _overdrive-label:

Overdrive
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

OverDrive is an pay service. You must first contact OverDrive directly
for pricing and subscription information. Enabling this service will
integrate Overdrive results in to your OPAC searches. You will have to
apply for these 3 pieces of information through an application as an API
developer. Overdrive API applications are evaluated once a week so you
may not be able to use this feature immediately after signing up. To
learn more please contact your OverDrive representative.

|image57|

.. _overdrivecirculation-label:

OverDriveCirculation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't enable

Asks: \_\_\_ users to access their OverDrive circulation history, and circulate
items. If you enable access, you must register auth return url of
http(s)://my.opac.hostname/cgi-bin/koha/external/overdrive/auth.pl with OverDrive.

Values:

-  Don't enable

-  Enable

.. _overdriveclientkey-and-overdriveclientsecret-label:

OverDriveClientKey and OverDriveClientSecret
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Include OverDrive availability information with the client key
\_\_ and client secret \_\_\_

Description:

-  OverDrive customers can get this information by visiting the
   `OverDrive Developer
   Portal <https://developer.overdrive.com/docs/getting-started>`__ and
   following the instructions found there to apply as an API developer.
   Once this data and the :ref:`OverDriveLibraryID`
   are populated you will see OverDrive results on your OPAC searches.

.. _overdrivelibraryid-label:

OverDriveLibraryID
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Show items from the OverDrive catalog of library # \_\_\_

Description:

-  OverDrive customers can get this information by visiting the
   `OverDrive Developer
   Portal <https://developer.overdrive.com/docs/getting-started>`__ and
   following the instructions found there to apply as an API developer.
   Once this data and the :ref:`OverDriveClientKey and
   OverDriveClientSecret <overdriveclientkey-and-overdriveclientsecret-label>` are populated you will
   see OverDrive results on your OPAC searches.

.. _plugins-label:

Plugins
~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _usekohaplugins-label:

UseKohaPlugins
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't enable

Asks: \_\_\_ the ability to use Koha Plugins.

Values:

-  Don't enable

-  Enable

    **Note**

    The plugin system must also be enabled in the Koha configuration
    file to be fully enabled. Learn more in the `Plugins
    chapter <#pluginsystem>`__.

.. _syndetics-label:

Syndetics
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Syndetics is a pay service. You must first contact Syndetics directly
for pricing and subscription information.

.. _syndeticsauthornotes-label:

SyndeticsAuthorNotes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ notes about the author of a title from Syndetics on item
detail pages on the OPAC.

Values:

-  Don't show

-  Show

Description:

-  When this option is set to "Show", Syndetics provides notes and short
   author biographies for more that 300,000 authors, in both fiction and
   nonfiction. With this option enabled the library can display
   Syndetics Author Notes on the OPAC. According to the Syndetics
   Solutions website (http://www.bowker.com/syndetics/), Author Notes
   include lists of contributors for many multi-author texts and
   compilations. The :ref:`SyndeticsClientCode` must
   be entered and the :ref:`SyndeticsEnabled` option
   must be activated before this service can be used.

.. _syndeticsawards-label:

SyndeticsAwards
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ information from Syndetics about the awards a title has won
on item detail pages on the OPAC.

Values:

-  Don't show

-  Show

Description:

-  When this option is set to "Show", Syndetics provides its clients
   with a list of awards that any title has won. With this service
   enabled the library can display those awards for each book on its
   website. For each book or item that comes up during a user search,
   the list of awards for that title will be displayed. When a user
   clicks on a given award, information about that award is presented
   along with a list of the other titles that have won that award. If
   the user clicks on any title in the list, they will see holdings
   information about that title in their region. This option is a paid
   subscription service. The
   :ref:`SyndeticsClientCode` must be entered and
   the :ref:`SyndeticsEnabled` option must be activated
   before this service can be used.

.. _syndeticsclientcode-label:

SyndeticsClientCode
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Use the client code \_\_\_ to access Syndetics.

Description:

-  Once the library signs up for Syndetics' services, Syndetics will
   provide the library with an access code. (Visit the Syndetics
   homepage at http://www.bowker.com/syndetics/ for more information.)
   This is the code that must be entered to access Syndetics'
   subscription services. Syndetics is a paid subscription service. This
   value must be entered before
   :ref:`SyndeticsEditions` can be enabled. If the
   code is lost, corrupted, or forgotten, a new one can be obtained from
   http://www.bowker.com/syndetics/.

    **Important**

    You will need to get your client code directly from Syndetics.

.. _syndeticscoverimages-&-syndeticscoverimagesize-label:

SyndeticsCoverImages & SyndeticsCoverImageSize
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

SyndeticsCoverImages Default: Don't show

SyndeticsCoverImageSize Default: medium

Asks: \_\_\_ cover images from Syndetics on search results and item
detail pages on the OPAC in a \_\_\_ size.

Descriptions:

-  When enabled, SyndeticsCoverImages, allows libraries to display
   Syndetics' collection of full-color cover images for books, videos,
   DVDs and CDs on their OPAC. For each book or item that comes up
   during a user search, the cover image for that title will be
   displayed. Since these cover images come in three sizes, the optimum
   size must be selected using the SyndeticsCoverImageSize preference
   after SyndeticsCoverImages are enabled. Syndetics cover images come
   in two sizes: mid-size (187 x 187 pixels), and large (400 x 400
   pixels). Syndetics is a paid subscription service. The
   :ref:`SyndeticsClientCode` must be entered and
   the :ref:`SyndeticsEnabled` option must be activated
   before this service can be used. Other cover image preferences should
   also be disabled to avoid interference.

SyndeticsCoverImages Values:

-  Don't show

-  Show

SyndeticsCoverImageSize Values:

-  medium

-  large

.. _syndeticseditions-label:

SyndeticsEditions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ information about other editions of a title from Syndetics
on item detail pages on the OPAC

Description:

-  When enabled this option shows information on other editions of a
   title from Syndetics on the item detail pages of the OPAC. Syndetics
   is a paid subscription service. The
   :ref:`SyndeticsClientCode` must be entered and
   the :ref:`SyndeticsEnabled` option must be activated
   before this service can be used.

Values:

-  Don't show

-  Show

    **Important**

    Requires :ref:`OPACFRBRizeEditions` set to
    'show'

.. _syndeticsenabled-label:

SyndeticsEnabled
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't use

Asks: \_\_\_ content from Syndetics.

Values:

-  Don't use

-  Use

Description:

-  When this option is enabled any of the Syndetics options can be used.

    **Important**

    Requires that you enter your
    :ref:`SyndeticsClientCode` before this content
    will appear.

.. _syndeticsexcerpt-label:

SyndeticsExcerpt
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ excerpts from of a title from Syndetics on item detail
pages on the OPAC.

Values:

-  Don't show

-  Show

Description:

-  This preference allows Syndetics to display excerpts given to them
   from selected publishers. The excerpts are available from prominently
   reviewed new titles, both fiction and non-fiction. The excerpts
   include poems, essays, recipes, forwards and prefaces. Automatic
   links provided by the ISBNs within local MARC records are required to
   integrate Syndetics secured, high-speed Internet servers to the
   library OPACs. For more information see
   (http://www.bowker.com/syndetics/).

.. _syndeticsreviews-label:

SyndeticsReviews
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ reviews of a title from Syndetics on item detail pages on
the OPAC.

Values:

-  Don't show

-  Show

Description:

-  Syndetics Reviews is an accumulation of book reviews available from a
   variety of journals and serials. The reviews page displays colored
   images of reviewed books dust jackets, partnered with the names of
   the journal or serial providing the review. Clicking on an icon opens
   a window revealing the book title, author's name, book cover icon and
   the critic's opinion of the book. Automatic links provided by the
   ISBNs within local MARC records are required to integrate Syndetics
   secured, high-speed Internet servers to the library OPACs. For more
   information see (http://www.bowker.com/syndetics/).

.. _syndeticsseries-label:

SyndeticsSeries
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ information on other books in a title's series from
Syndetics on item detail pages on the OPAC.

Values:

-  Don't show

-  Show

Description:

-  Each fiction title within a series is linked to the complete series
   record. The record displays each title in reading order and also
   displays the publication order, if different. Alternate series titles
   are also displayed. Automatic links provided by the ISBNs within
   local MARC records are required to integrate Syndetics secured, high-
   speed Internet servers to the library OPACs. For more information see
   (http://www.bowker.com/syndetics/).

.. _syndeticssummary-label:

SyndeticsSummary
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ a summary of a title from Syndetics on item detail pages on
the OPAC.

Values:

-  Don't show

-  Show

Description:

-  Providing more than 5.6 million summaries and annotations derived
   from book jackets, edited publisher copy, or independently written
   annotations from Book News, Inc. Covering fiction and non-fiction,
   this summaries option provides annotations on both trade and
   scholarly titles. For more information see
   (http://www.bowker.com/syndetics/).

.. _syndeticstoc-label:

SyndeticsTOC
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ the table of contents of a title from Syndetics on item
detail pages on the OPAC.

Values:

-  Don't show

-  Show

Description:

-  This preference allows staff and patrons to review the Table of
   Contents from a wide variety of publications from popular self-help
   books to conference proceedings. Specific Information access is the
   main purpose for this option, allowing patrons guidance to their
   preferred section of the book. Special arrangements with selected
   book services is used to obtain the table of contents for new
   publications each year. Automatic links provided by the ISBNs within
   local MARC records are required to integrate Syndetics secured,
   high-speed Internet servers to the library OPACs. For more
   information see (http://www.bowker.com/syndetics/).

.. _tagging-label:

Tagging
~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _tagsenabled-label:

TagsEnabled
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ patrons and staff to put tags on items.

Values:

-  Allow

-  Don't allow

Description:

-  Set to 'Allow' enable tagging. A tag is metadata, a word added to
   identify an item. Tags allow patrons to classify materials on their
   own. TagsEnabled is the main switch that permits the tagging
   features. TagsEnable must be set to 'Allow' to allow for other
   tagging features.

.. _tagsexternaldictionary-label:

TagsExternalDictionary
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Allow tags in the dictionary of the ispell executable \_\_\_ on
the server to be approved without moderation.

Description:

-  The dictionary includes a list of accepted and rejected tags. The
   accepted list includes all the tags that have been pre-allowed. The
   rejected list includes tags that are not allowed. This preference
   identifies the "accepted" dictionary used. Ispell is an open source
   dictionary which can be used as a list of accepted terms. Since the
   dictionary allows for accurately spelled obscenities, the libraries
   policy may dictate that modifications are made to the Ispell
   dictionary if this preference is use. For more information about
   Ispell http://www.gnu.org/software/ispell/ispell.html. Enter the path
   on your server to a local ispell executable, used to set
   $Lingua::Ispell::path.

.. _tagsinputondetail-label:

TagsInputOnDetail
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ patrons to input tags on item detail pages on the OPAC.

Values:

-  Allow

   |image59|

-  Don't allow

.. _tagsinputonlist-label:

TagsInputOnList
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ patrons to input tags on search results on the OPAC.

Values:

-  Allow

   |image58|

-  Don't allow

.. _tagsmoderation-label:

TagsModeration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't require

Asks: \_\_\_ that tags submitted by patrons be reviewed by a staff
member before being shown.

Values:

-  Don't require

-  Require

Description:

-  When set to 'Require,^ all tags to be first filtered by the tag
   moderator. Only approved tags will be visible to patrons. When set to
   'Don't require' tags will bypass the tag moderator and patrons' tags
   to be immediately visible. When this preference is enabled the
   moderator, a staff member, would approve the tag in the Staff Client.
   The moderator will have the option to approve or reject each pending
   tag suggestion.

When moderation is required all tags go through the tag moderation tool
before becoming visible.

-  *Get there:* More > Tools > :ref:`Tags <tag-moderation-label>`

.. _tagsshowondetail-label:

TagsShowOnDetail
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 10

Asks: Show \_\_\_ tags on item detail pages on the OPAC.

    **Note**

    Set the value to 0 (zero) to turn this feature off.

.. _tagsshowonlist-label:

TagsShowOnList
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 6

Asks: Show \_\_\_ tags on search results on the OPAC.

    **Note**

    Set the value to 0 (zero) to turn this feature off.

.. _i18n/l10n-label:

I18N/L10N
--------------------------

These preferences control your Internationalization and Localization
settings.

*Get there:* More > Administration > Global System Preferences >
I18N/L10N

.. _addressformat-label:

AddressFormat
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Default: US style ([Street number], [Address] - [City], [Zip/Postal
Code], [Country])

Asks: Format postal addresses using \_\_\_

Values:

-  German style ([Address] [Street number] - [Zip/Postal Code] [City] -
   [Country])

-  French style ([Street number] [Address] - [ZIP/Postal Code] [City] -
   [Country])

-  US style ([Street number], [Address] - [City], [Zip/Postal Code],
   [Country])

Description:

-  This preference will let you control how Koha displays patron
   addresses given the information entered in the various fields on
   their record.

.. _alphabet-label:

alphabet
~~~~~~~~~~~~~~~~~~~~~~~~

Default: A B C D E F G H I J K L M N O P Q R S T U V W X Y Z

Asks: Use the alphabet \_\_\_ for lists of browsable letters. This
should be a space separated list of uppercase letters.

Description:

-  This preference allows you define your own alphabet for browsing
   patrons in Koha.

   |image60|

.. _calendarfirstdayofweek-label:

CalendarFirstDayOfWeek
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Default: Sunday

Asks: Use \_\_\_ as the first day of week in the calendar.

Values:

-  Sunday

-  Monday

-  Tuesday

-  Wednesday

-  Thursday

-  Friday

-  Saturday

Description:

-  Using this preference you can control what day shows as the first day
   of the week in the calendar pop ups throughout Koha and on the
   Calendar tool. If you change this preference and don't see a change
   in your browser try clearing your cache since it makes changes to the
   Javascript on these pages.

.. _dateformat-label:

dateformat
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Default: mm/dd/yyyy

Asks: Format dates like \_\_\_

Values:

-  dd.mm.yyyy

-  dd/mm/yyyy

-  mm/dd/yyyy

-  yyyy/mm/dd

Description:

-  This preference controls how the date is displayed. The options are
   the United States method, mm/dd/yyyy (04/24/2010), the metric method,
   dd/mm/yyyy (24/04/2010) or ISO, which is the International Standard
   of Organization, yyyy/mm/dd (2010/04/24). The International Standard
   of Organization would primarily be used by libraries with locations
   in multiple nations that may use different date formats, to have a
   single display type, or if the library would be in a region that does
   not use the United States or metric method. More information
   regarding the ISO date format can be found at
   http://www.iso.org/iso/iso_catalogue.htm.

.. _language-label:

language
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Default: English

Asks: Enable the following languages on the staff interface

Values:

-  English

To install additional languages please refer to
http://wiki.koha-community.org/wiki/Installation_of_additional_languages_for_OPAC_and_INTRANET_staff_client

.. _opaclanguages-label:

opaclanguages
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Default: English

Asks: Enable the following languages on the OPAC

Values:

-  English

    **Note**

    To install additional languages you need to run
    misc/translation/install-code.pl. For example, to install French you
    would run the following command install-code.pl fr-FR to make the
    templates, once they exist and are in the right place then they will
    show up as an option in this preference.

.. _opaclanguagesdisplay-label:

opaclanguagesdisplay
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Default: Don't allow

Asks: \_\_\_ patrons to change the language they see on the OPAC.

Values:

-  Allow

   -  Patrons can choose their language from a list at the bottom of the
      public catalog

      |image61|

-  Don't allow

   -  The public catalog will not give an option to choose a language

Description:

-  Using the :ref:`OpacLangSelectorMode` preference
   you can decide where these language options will appear in the public
   catalog.

.. _timeformat-label:

TimeFormat
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Default: 24 hour format

Asks: Format times in \_\_\_

Values:

-  12 hour format (eg 02:18PM)

-  24 hour format (eg 14:18)

.. _translatenotices-label:

TranslateNotices
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Default: Don't allow

Asks: \_\_\_ notices to be translated. If set, notices will be translatable from
the "Notices and Slips" interface. The language used to send a notice to a patron
will be the one defined for the patron.

Values:

-  Don't allow

-  Allow

.. _local-use-label:

Local Use
---------------------------

These preferences are defined locally.

*Get there:* More > Administration > Global System Preferences > Local
Use

    **Note**

    Sometimes preferences which are either new or outdated will appear
    in this tab, if you didn't add any preferences to this tab then it's
    best to ignore preferences listed here.

.. _intradidyoumean-label:

INTRAdidyoumean
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Default: blank

Asks: Did you mean? configuration for the Intranet. Do not change, as this is
controlled by /cgi-bin/koha/admin/didyoumean.pl.

.. _opacdidyoumean-label:

OPACdidyoumean
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Default: blank

Asks: Did you mean? configuration for the OPAC. Do not change, as this is
controlled by /cgi-bin/koha/admin/didyoumean.pl.

.. _printcirculationships-label:

printcirculationships
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Default: ON

Asks: If ON, enable printing circulation receipts

Values:

-  ON

-  OFF

.. _usagestatsid-label:

UsageStatsID
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Default: blank

Asks: This preference is part of Koha but it should not be deleted or
updated manually.

.. _usagestatslastupdatetime-label:

UsageStatsLastUpdateTime
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Default: blank

Asks: This preference is part of Koha but it should not be deleted or
updated manually.

.. _usagestatspublicid-label:

UsageStatsPublicID
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Default: blank

Asks: Public ID for Hea website

.. _version-label:

Version
~~~~~~~~~~~~~~~~~~~~~~

Default: automatically generated

Asks: The Koha database version. WARNING: Do not change this value
manually. It is maintained by the webinstaller

.. _logs-label:

Logs
----------------

Logs keep track of transaction on the system. You can decide which
actions you want to log and which you don't using these preferences.
Logs can then be viewed in the :ref:`Log Viewer` under Tools.

*Get there:* More > Administration > Global System Preferences > Logs

.. _debugging-label:

Debugging
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _dumptemplatevarsintranet-label:

DumpTemplateVarsIntranet
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't

Asks: \_\_\_ dump all Template Toolkit variable to a comment in the HTML
source for the staff intranet.

Value:

-  Don't

-  Do

.. _dumptemplatevarsopac-label:

DumpTemplateVarsOpac
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't

Asks: \_\_\_ dump all Template Toolkit variable to a comment in the HTML
source for the OPAC.

Value:

-  Don't

-  Do

.. _logging-label:

Logging
~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _authoritieslog-label:

AuthoritiesLog
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't log

Asks: \_\_\_ changes to authority records.

Values:

-  Don't log

-  Log

.. _borrowerslog-label:

BorrowersLog
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Log

Asks: \_\_\_ changes to patron records.

Values:

-  Don't log

-  Log

       **Note**
       
       Enabling this preference allows the tracking of cardnumber changes for patrons 

.. _cataloguinglog-label:

CataloguingLog
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't log

Asks: \_\_\_ any changes to bibliographic or item records.

Values:

-  Don't log

-  Log

    **Important**

    Since this occurs whenever a book is cataloged, edited, or checked
    in or out it can be very resource intensive - slowing down your
    system.

.. _cronjoblog-label:

CronjobLog
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't log

Asks: \_\_\_ information from cron jobs.

Values:

-  Don't log

-  Log

.. _fineslog-label:

FinesLog
^^^^^^^^^^^^^^^^^^^^^^^^

Default: Log

Asks: \_\_\_ when overdue fines are charged or automatically forgiven.

Values:

-  Don't log

-  Log

.. _holdslog-label:

HoldsLog
^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't log

Asks: \_\_\_ any actions on holds (create, cancel, suspend, resume, etc.).

Values:

-  Don't log

-  Log

.. _issuelog-label:

IssueLog
^^^^^^^^^^^^^^^^^^^^^^^^

Default: Log

Asks: \_\_\_ when items are checked out.

Values:

-  Don't log

-  Log

.. _letterlog-label:

LetterLog
^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Log

Asks: \_\_\_ when an automatic claim notice is sent.

Values:

-  Don't log

-  Log

    **Note**

    This log tracks all notices that go to patrons including the overdue
    notices.

.. _renewallog-label:

RenewalLog
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default:  Don't log

Asks: \_\_\_ when items are renewed.

Values:

- Don't log

- Log

.. _reportslog-label:

ReportsLog
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't log

Asks: \_\_\_ when reports are added, deleted or changed.

Values:

-  Don't log

-  Log

.. _returnlog-label:

ReturnLog
^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Log

Asks: \_\_\_ when items are returned.

Values:

-  Don't log

-  Log

.. _subscriptionlog-label:

SubscriptionLog
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Log

Asks: \_\_\_ when serials are added, deleted or changed.

Values:

-  Don't log

-  Log

.. _opac-label:

OPAC
---------------------

*Get there:* More > Administration > Global system preferences > OPAC

.. _advanced-search-options-label:

Advanced search options
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _opacadvsearchmoreoptions-label:

OpacAdvSearchMoreOptions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Select all

Asks: Show search options for the expanded view \_\_\_

Values:

-  [Select all]

-  Item types

-  Language

-  Location and availability

-  Publication date

-  Sorting

-  Subtypes

Description:

-  The settings in this preference will determine which search fields
   will show when the patron is using the 'More options' mode on the
   advanced search page.

.. _opacadvsearchoptions-label:

OpacAdvSearchOptions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Item types, Language, Location and availability, Publication
date, Sorting

Asks: Show search options \_\_\_

Values:

-  [Select all]

-  Item types

-  Language

-  Location and availability

-  Publication date

-  Sorting

-  Subtypes

Description:

-  The settings in this preference will determine which search fields
   will show when the patron is using the 'Fewer options' mode on the
   advanced search page.

.. _appearance-label:

Appearance
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These preferences control how things appear in the OPAC.

.. _authorisedvalueimages-label:

AuthorisedValueImages
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ images for authorized values (such as lost statuses and
locations) in search results and item detail pages on the OPAC.

Values:

-  Don't show

-  Show

*Get there:* More > Administration > :ref:`Authorized
values <authorized-values-label>`

.. _bibliodefaultview-label:

BiblioDefaultView
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: in simple form

Asks: By default, show bib records \_\_\_

Values:

-  as specified in the ISBD template.

   -  See :ref:`ISBD` preference for more information

-  in simple form.

-  in their MARC format.

Description:

-  This preference determines the level of bibliographic detail that the
   patron will see on the OPAC detail page. The simple form displays the
   graphical interface; MARC format displays the MARC21 cataloging view;
   ISBD displays the ISBD (International Standard Bibliographic
   Description, AACR2) view.

.. _coinsinopacresults-label:

COinSinOPACResults
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Include

Asks: \_\_\_ COinS / OpenURL / Z39.88 in OPAC search results.

Values:

-  Don't include

   -  If you choose not to include COinS on the search results, it will
      still be loaded on the individual bibliographic records.

-  Include

   -  Enabling this feature will slow OPAC search response times.

Description:

-  COinS stands for ContextObjects in Spans. COinS is a method to embed
   bibliographic metadata in the HTML code of web pages. This allows
   bibliographic software to publish machine-readable bibliographic
   items and client reference management software (such as Zotero) to
   retrieve bibliographic metadata. The metadata can also be sent to an
   OpenURL resolver. This allows, for instance, searching for a copy of
   a book in one's own library.

.. _displayopaciconsxslt-label:

DisplayOPACiconsXSLT
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: On pages displayed with XSLT stylesheets on the OPAC, \_\_\_ icons
for itemtype and authorized values.

    **Important**

    :ref:`OPACXSLTResultsDisplay` and/or
    :ref:`OPACXSLTDetailsDisplay` must be set to
    use an XSLT stylesheet for this to show (default or custom)

Values:

-  Don't show

-  Show

   |image62|

    **Note**

    See the :ref:`XSLT material type icons <material-type-cataloging-guide-label>`
    for more information on these icons.

.. _googleindictransliteration-label:

GoogleIndicTransliteration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ GoogleIndicTransliteration on the OPAC.

Values:

-  Don't show

-  Show

  |image1188|

.. _hidelostitems-label:

hidelostitems
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ lost items on search and detail pages.

Description:

-  Items that are marked lost by the library can either be shown or not
   shown on the OPAC. By setting the value to "Don't show," the lost
   item is not shown on the OPAC. By setting the value "Show," the lost
   item is shown on the OPAC for patrons to view with a status of
   'lost.^

Values:

-  Don't show

-  Show

   |image63|

.. _highlightownitemsonopac-&-highlightownitemsonopacwhich-label:

HighlightOwnItemsOnOPAC & HighlightOwnItemsOnOPACWhich
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

HighlightOwnItemsOnOPAC Default: Don't emphasize

HighlightOwnItemsOnOPACWhich Default: patron's home library

Asks: \_\_\_ results from the \_\_\_ by moving the results to the front
and increasing the size or highlighting the rows for those results.

HighlightOwnItemsOnOPAC Values:

-  Don't emphasize

-  Emphasize

HighlightOwnItemsOnOPACWhich Values:

-  OPAC's branch based via the URL

   -  The library is chosen based on the Apache environment variable
      BRANCHCODE. For example, this could be added to the OPAC section
      of koha-httpd.conf: SetEnv BRANCHCODE "CPL"

-  patron's home library

   -  The items emphasized will be those of the same library as the
      patron's library. If no one is logged into the OPAC, no items will
      be highlighted.

    **Important**

    This preference will only effect sites that are not using an XSLT
    stylesheet. XSLT stylesheets are defined in the
    :ref:`OPACXSLTResultsDisplay` and
    :ref:`OPACXSLTDetailsDisplay` preferences.

.. _libraryname-label:

LibraryName
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Show \_\_\_ as the name of the library on the OPAC.

    **Note**

    This value will appear in the title bar of the browser

    **Note**

    Edit :ref:`opacheader` if you'd like to add a library
    name above your search box on the OPAC

|image64|

.. _opacadditionalstylesheet-label:

OpacAdditionalStylesheet
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Include the additional CSS stylesheet \_\_\_ to override specified
settings from the default stylesheet.

Description:

-  The preference can look for stylesheets in the template directory for
   your OPAC language, for instance: /koha-tmpl/opac-tmpl/prog/en/css.
   If you upload a custom file, opac-mystyles.css to this directory, you
   can specify it by entering opac-mystyles.css in your
   opaccolorstylesheet system preference. This adds your custom
   stylesheet as a linked stylesheet alongside the OPAC's default CSS
   files. This method is preferable because linked stylesheets are
   cached by the user's browser, meaning upon repeat visits to your site
   the user's browser will not have to re-download the stylesheet,
   instead using the copy in the browser's cache.

-  If you would rather, you can upload your CSS to another server and
   enter the full URL pointing to it's location remember to begin the
   URL with http://

    **Note**

    Leave this field blank to disable it

    **Note**

    This file will add a linked CSS, not replace the existing default
    CSS.

.. _opacaddmastheadlibrarypulldown-label:

OpacAddMastheadLibraryPulldown
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't add

Asks: \_\_\_ a library select pulldown menu on the OPAC masthead.

Values:

-  Add

   |image65|

-  Don't Add

   |image66|

.. _opacbaseurl-label:

OPACBaseURL
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: The OPAC is located at \_\_\_

Description:

-  This preference is looking for the URL of your public catalog (OPAC)
   with the http:// in front of it (enter http://www.mycatalog.com
   instead of www.mycatalog.com). Once it is filled in Koha will use it
   to generate permanent links in your RSS feeds, for your social
   network share buttons and in your staff client when generating links
   to bib records in the OPAC.

    **Important**

    Do not include a trailing slash in the URL this will break links
    created using this URL. (example: http://www.google.com not
    http://www.google.com/)

    **Important**

    This must be filled in with the URL of your public catalog for RSS,
    unAPI, and search plugins to work.

    **Important**

    This must be filled in with the URL of your public catalog to show
    'OPAC View' links from bib records in the staff client:

|image67|

.. _opaccredits-label:

opaccredits
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Include the following HTML in the footer of all pages in the OPAC:

    **Note**

    Click the 'Click to edit; link to enter HTML to appear at the bottom
    of every page in the OPAC

|image68|

|image69|

Description:

-  This setting is for credits that will appear at the bottom of your
   OPAC pages. Credits traditionally encompass copyright information,
   last date updated, hyperlinks or other information represented in an
   HTML format. This is static information and any updates must be
   entered manually.

Learn more in the :ref:`OPAC editable regions <editable-opac-regions-label>` section.

.. _opaccustomsearch-label:

OpacCustomSearch
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Replace the search box at the top of OPAC pages with the following
HTML

Description:

-  This preference allows you to replace the default search box at the
   top of the OPAC :

    |image1190|

   with any HTML you would like :

    |image1191|

.. _opacdisplay856uasimage-label:

OPACDisplay856uAsImage
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Neither details or results page

Asks: Display the URI in the 856u field as an image on: \_\_\_

Values:

-  Both results and details pages

   -  **Important**

          Both :ref:`OPACXSLTDetailsDisplay` and 
          :ref:`OPACXSLTResultsDisplay` need to
          have values in order for this preference to work.

   -  **Important**

          This is only implemented for MARC21 and NORMARC.

-  Detail page only

   -  **Important**

          :ref:`OPACXSLTDetailsDisplay` needs to
          have a value in it for this preference to work.

   -  **Important**

          This is only implemented for MARC21 and NORMARC.

   |image70|

-  Neither details or results page

-  Results page only

   -  **Important**

          :ref:`OPACXSLTResultsDisplay` needs to
          have a value in it for this preference to work.

   -  **Important**

          This is only implemented for MARC21 and NORMARC.

Description:

-  In addition to this option being set, the corresponding XSLT option
   must be turned on. Also, the corresponding 856q field must have a
   valid MIME image extension (e.g., "jpg") or MIME image type (i.e.
   starting with "image/"), or the generic indicator "img" entered in
   the field. When all of the requirements are met, an image file will
   be displayed instead of the standard link text. Clicking on the image
   will open it in the same way as clicking on the link text. When you
   click on the image it should open to full size, in the current window
   or in a new window depending on the value in the system pref
   :ref:`OPACURLOpenInNewWindow`.

   |image71|

.. _opacexportoptions-label:

OpacExportOptions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default:

    |image1192|

Asks: Select export options that should be available from OPAC detail 
page: \_\_\_

Description:

-  In the OPAC on the right of each bib record there is a menu that
   allows for saving the record in various formats. This patch will
   allow you to define which options are in the pull down menu.
   Available options are: BIBTEX (bibtex), Dublin Core (dc), MARCXML
   (marcxml), MARC-8 encoded MARC (marc8), Unicode/UTF-8 encoded MARC
   (utf8), Unicode/UTF-8 encoded MARC without local use -9xx, x9x, xx9-
   fields and subfields (marcstd), MODS (mods), and RIS (ris).

.. _opacfallback-label:

OPACFallback
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: bootstrap

Asks: Use the \_\_\_ theme as the fallback theme on the OPAC.

Description:

-  The purpose of this preference is to provide a way to choose to what
   theme to fallback on when you have a partial theme in place.

.. _opacfavicon-label:

OpacFavicon
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Use the image at \_\_\_ for the OPAC's favicon.

    **Important**

    This should be a complete URL, starting with http://

    **Note**

    Turn your logo into a favicon with the `Favicon
    Generator <http://antifavicon.com/>`__.

Description:

-  The favicon is the little icon that appears next to the URL in the
   address bar in most browsers. The default value for this field (if
   left blank) is the small 'K' in the Koha logo.

   |image72|

.. _opacheader-label:

opacheader
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Include the following HTML in the header of all pages in the OPAC

|image73|

    **Note**

    This value will appear above the main content of your page

|image74|

    **Note**

    Edit ^:ref:`LibraryName`^ if you'd like to edit the
    contents of the <title> tag

Learn more in the :ref:`OPAC editable regions <editable-opac-regions-label>` section.

.. _opachighlightedwords-&-nothighlightedwords-label:

OpacHighlightedWords & NotHighlightedWords
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

OpacHighlightedWords Default: Don't highlight

NotHighlightedWords Default: and\|or\|not

Asks: \_\_\_ words the patron searched for in their search results and
detail pages; To prevent certain words from ever being highlighted,
enter a list of stopwords here \_\_\_ (separate columns with \|)

OpacHighlightedWords Values:

-  Don't highlight

-  Highlight

.. _opacholdingsdefaultsortfield-label:

OPACHoldingsDefaultSortField
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: First column of the table

Asks: \_\_\_ is the default sort field for the holdings table

Values:

-  First column of the table

-  Holding library

-  Home library

.. _opackohaurl-label:

OpacKohaUrl
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Values:

-  Don't show

-  Show

Description:

-  When this preference is set to 'Show' text will appear in the bottom
   right of the OPAC footer stating 'Powered by Koha' and linking to the
   official Koha website.

   |image75|

.. _opaclangselectormode-label:

OpacLangSelectorMode
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: only footer

Asks: Display language selector on \_\_\_.

Values:

-  both top and footer

-  only footer

-  top

Description:

-  If you have the :ref:`opaclanguagesdisplay`
   preference set to display language options in the public catlaog,
   then this preference will allow you to control where the language
   selector shows. You can choose to show it only on the top or bottom
   or in both places.

.. _opaclayoutstylesheet-label:

opaclayoutstylesheet
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: opac.css

Asks: Use the CSS stylesheet /css/ \_\_\_ on all pages in the OPAC,
instead of the default

Description:

-  This setting's function is to point to the \*.css file used to define
   the OPAC layout. A \*.css file is a cascading stylesheet which is
   used in conjunction with HTML to set how the HTML page is formatted
   and will look on the OPAC. There are two stylesheets that come with
   the system; opac.css and opac2.css. A custom stylesheet may also be
   used. The stylesheets listed in the opaclayoutstylesheet preference
   are held on the Koha server.

    **Note**

    Leave this field blank to disable it and let Koha use the default
    file instead

    **Important**

    Using a custom value in this preference causes Koha to completely
    ignore the default layout stylesheet.

.. _opaclocationbranchtodisplay-label:

OpacLocationBranchToDisplay
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: holding library

Asks: Display the \_\_\_ for items on the OPAC record details page.

Values:

-  holding library

-  home and holding library

-  home library

Description:

-  Defines whether to display the holding library, the home library, or
   both for the opac details page.

.. _opaclocationondetail-label:

OpacLocationOnDetail
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: below the holding library

Asks: Display the shelving location \_\_\_ for items on the
OPAC record details page.

Values:

-  below both home and holding libraries

-  on a separate column

-  below the holding library

-  below the home library

Description:

-  Defines where the shelving location should be displayed, under the
   home library, the holding library, or both, or in a separate column.

.. _opaclogininstructions-label:

OpacLoginInstructions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Show the following HTML on the OPAC login form when a patron is not logged in:

Description:

-  HTML entered in this field will appear under the login form on the main page
   of your OPAC, when the user is not logged in

|image1344|

Learn more in the :ref:`OPAC editable regions <editable-opac-regions-label>` section.


.. _opacmaintenance-label:

OpacMaintenance
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ a warning that the OPAC is under maintenance, instead of
the OPAC itself.

    **Note**

    this shows the same warning as when the database needs to be
    upgraded, but unconditionally.

Description:

-  This preference allows the system administrator to turn off the OPAC
   during maintenance and display a message to users. When this
   preference is switched to "Show" the OPAC is not usable. The text of
   this message is not editable at this time.

Values:

-  Don't show

-  Show

   -  When this preference is set to show the maintenance message the
      ability to search the OPAC is disabled and a message appears. The
      default message can be altered by using the
      :ref:`OpacMaintenanceNotice` preference.

      |image76|

.. _opacmaintenancenotice-label:

OpacMaintenanceNotice
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Show the following HTML when OpacMaintenance is enabled

Descritpion:

-  This preference will allow you to set the text the OPAC displays when
   the :ref:`OpacMaintenance` preference is set to
   'Show.^

.. _opacmainuserblock-label:

OpacMainUserBlock
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Welcome to Koha... <hr>

Asks: Show the following HTML in its own column on the main page of the
OPAC

Description:

-  HTML entered in this field will appear in the center of the main page
   of your OPAC

|image77|

Learn more in the :ref:`OPAC editable regions <editable-opac-regions-label>` section.

.. _opacmaxitemstodisplay-label:

OpacMaxItemsToDisplay
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 50

Asks: Display up to \_\_\_ items on the biblio detail page

Description:

-  This preference will help with slow load times on the bibliographic
   detail pages by limiting the number of items to display by default.
   If the biblio has more items than this, a link is displayed instead
   that allows the user to choose to display all items.

.. _opacmysummaryhtml-label:

OPACMySummaryHTML
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Include a "Links" column on the "your summary" tab when a user is
logged in to the OPAC, with the following HTML (leave blank to disable).

Description:

-  In this preference you can enter HTML that will appear on the
   'Checked Out' tab on the 'your summary' section when logged in to the
   OPAC. The placeholders {BIBLIONUMBER}, {TITLE}, {ISBN} and {AUTHOR}
   will be replaced with information from the displayed record. This can
   be used to enter in 'share' links for social networks or generate
   searches against other library catalogs.

   |image78|

Sample Data:

::

    <p><a href="http://www.facebook.com/sharer.php?u=http://YOUROPAC.ORG/cgi-bin/koha/opac-detail.pl?biblionumber={BIBLIONUMBER}">Share on Facebook</a>
    <br />TITLE: {TITLE}
    <br />AUTHOR: {AUTHOR}
    <br />ISBN: {ISBN}
    <br />BIBLIONUMBER: {BIBLIONUMBER}</p>

.. _opacmysummarynote-label:

OPACMySummaryNote
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Note to display on the patron summary page.

Description:

-  This preference will display text above the patron's summary and
   below the welcome message when the patron logs in to the OPAC and
   view their 'your summary' tab.

    |image1193|

.. _opacnav-label:

OpacNav
^^^^^^^^^^^^^^^^^^^^^^

Default: Important links here.

Asks: Show the following HTML on the left hand column of the main page
and patron account on the OPAC (generally navigation links)

|image79|

Learn more in the :ref:`OPAC editable regions <editable-opac-regions-label>` section.

.. _opacnavbottom-label:

OpacNavBottom
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Show the following HTML on the left hand column of the main page
and patron account on the OPAC, after :ref:`OpacNav`, and before
patron account links if available:

Description: 

-  When a patron is logged in to their account they see a
   series of tabs to access their account information.
   :ref:`OpacNav` appears above this list of tabs and OpacNavBottom
   will appear below them. When not on the patron account pages the HTML in
   OpacNavBottom will just appear right below :ref:`OpacNav`.

|image80|

.. _opacnavright-label:

OpacNavRight
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Show the following HTML in the right hand column of the main page
under the main login form.

Description: 

-  HTML entered in this preference will appear on the right
   hand side of the OPAC under the log in form. If the log in form is not
   visible this content will move up on the right column.

|image81|

.. _opacnoresultsfound-label:

OPACNoResultsFound
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

No Default

Asks: Display this HTML when no results are found for a search in the
OPAC

This HTML will display below the existing notice that no results were
found for your search.

|image82|

    **Note**

    You can insert placeholders {QUERY\_KW} that will be replaced with
    the keywords of the query.

.. _opacpublic-label:

OpacPublic
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Enable

Asks: \_\_\_ Koha OPAC as public. Private OPAC requires authentication
before accessing the OPAC.

Values:

-  Don't enable

-  Enable

Description:

-  This preference determines if your OPAC is accessible and searchable
   by anyone or only by members of the library. If set to 'Don't enable'
   only members who are logged into the OPAC can search. Most libraries
   will leave this setting at its default of 'Enable' to allow their
   OPAC to be searched by anyone and only require login for access to
   personalized content.

.. _opacresultslibrary-label:

OPACResultsLibrary
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: home library

Asks: For search results in the OPAC, show the item's \_\_\_. Please
note that this feature is currently available for MARC21 and UNIMARC.

Values:

-  current location

-  home library

.. _opacresultssidebar-label:

OPACResultsSidebar
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Include the following HTML under the facets in OPAC search results

Description:

-  The HTML entered in this preference will appear on the search results
   pages below the list of facets on the left side of the screen.

.. _opacsearchfortitlein-label:

OPACSearchForTitleIn
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: <li><a href="http://worldcat.org/search?q={TITLE}"
target="\_blank">Other Libraries (WorldCat)</a></li> <li><a
href="http://www.scholar.google.com/scholar?q={TITLE}"
target="\_blank">Other Databases (Google Scholar)</a></li> <li><a
href="http://www.bookfinder.com/search/?author={AUTHOR}&title={TITLE}&st=xl&ac=qr"
target="\_blank">Online Stores (Bookfinder.com)</a></li>

Asks: Include a "More Searches" box on the detail pages of items on the
OPAC, with the following HTML (leave blank to disable)

    **Note**

    The placeholders {BIBLIONUMBER}, {CONTROLNUMBER}, {TITLE}, {ISBN},
    {ISSN} and {AUTHOR} will be replaced with information from the
    displayed record.

.. _opacseparateholdings-&-opacseparateholdingsbranch-label:

OpacSeparateHoldings & OpacSeparateHoldingsBranch
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

OpacSeparateHoldings default: Don't separate

OpacSeparateHoldingsBranch default: home library

Asks: \_\_\_ items display into two tabs, where the first tab contains
items whose \_\_\_ is the logged in user's library. The second tab will
contain all other items.

OpacSeparateHoldings values:

-  Don't separate

-  Separate

OpacSeparateHoldingsBranch values:

-  holding library

-  home library

Description:

-  This preference lets you decide if you would like to have the holding
   information on the bibliographic detail page in the OPAC split in to
   multiple tabs. The default is to show all holdings on one tab.

   |image83|

.. _opacshowcheckoutname-label:

OPACShowCheckoutName
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ the name of the patron that has an item checked out on item
detail pages on the OPAC.

Values:

-  Don't show

-  Show

Description:

-  This preference allows all patrons to see who has the item checked
   out if it is checked out. In small corporate libraries (where the
   OPAC is behind a firewall and not publicly available) this can be
   helpful so coworkers can just contact the patron with the book
   themselves. In larger public and academic libraries setting this to
   'Show' would pose serious privacy issues.

.. _opacshowholdqueuedetails-label:

OPACShowHoldQueueDetails
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show any hold details

Asks: \_\_\_ to patrons in the OPAC.

Values:

-  Don't show any hold details

-  Show holds

   |image86|

-  Show holds and priority level

-  Show priority level

   |image87|

   -  :ref:`opacuserlogin` needs to be set to 'allow'

.. _opacshowrecentcomments-label:

OpacShowRecentComments
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ a link to recent comments in the OPAC masthead.

Values:

-  Don't show

-  Show

Description:

-  If you have chosen to allow comments in your OPAC by setting
   :ref:`reviewson` to 'Allow' you can include a link to the
   recent comments under the search box at the top of your OPAC with
   this preference.

   |image88|

.. _opacshowunusedauthorities-label:

OPACShowUnusedAuthorities
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Show

Asks: \_\_\_ unused authorities in the OPAC authority browser.

Values:

-  Do not show

-  Show

   -  **Important**

          Requires that the :ref:`OpacAuthorities`
          preference is set to 'Allow'

Description:

-  When patrons search your authority file via the OPAC they will see
   all authorities in your system even if you don't have them linked to
   any bibliographic records. This preference lets you determine what
   the default behavior is when searching authorities via the OPAC. If
   you choose 'Do not show' it will only show patrons authority records
   that are linked to bib records in the search results. Otherwise the
   system will show all authority records even if they aren't linked to
   records.

.. _opacstarratings-label:

OpacStarRatings
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: no

Asks: Show star-ratings on \_\_\_ pages.

Values:

-  no

-  only details

   |image89|

-  results and details

   |image90|

Description:

-  Star ratings are a way for your patrons to leave ratings without
   having to leave a full review. Patrons who are not logged in will
   only be able to see the stars, once logged in patrons can click on
   the stars on the details page to leave their own rating. Clicking on
   the stars on the search results will not submit a rating.

.. _opacsuggestionmanagedby-label:

OpacSuggestionManagedBy
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Show

Asks: \_\_\_ the name of the staff member who managed a suggestion in
OPAC.

Values:

-  Don't show

-  Show

Description:

-  If you're :ref:`allowing patrons to make purchase
   suggestions <suggestion-label>` then they will see the 'your purchase
   suggestions' tab when logged in. This tab shows the patron the
   librarian who approved or rejected the purchase suggestion. This
   preference controls if the patron sees the librarian's name or not.

.. _opacthemes-label:

opacthemes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: bootstrap

Asks: Use the \_\_\_ theme on the OPAC.

Values:

-  bootstrap

   Bootstrap Theme

   This theme is completely responsive

.. _opacurlopeninnewwindow-label:

OPACURLOpenInNewWindow
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: don't

Asks: When patrons click on a link to another website from your OPAC
(like Amazon or OCLC), \_\_\_ open the website in a new window.

Values:

-  do

-  don't

Description:

-  This preference determines if URLs in the OPAC will open in a new
   window or not. When clicking on a link in the OPAC, a patron does not
   need to worry about navigating away from their search results.

.. _opacusercss-label:

OPACUserCSS
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Include the following CSS on all pages in the OPAC

Description:

-  OPACUserCSS allows the administrator to enter styles that will
   overwrite the OPAC's default CSS as defined in 'opaclayoutstylesheet'
   or 'opacstylesheet'. Styles may be entered for any of the selectors
   found in the default style sheet. The default stylesheet will likely
   be found at
   http://your\_koha\_address/opac-tmpl/bootstrap/css/opac.css. Unlike
   :ref:`OpacAdditionalStylesheet` and
   :ref:`opaclayoutstylesheet` this preference will
   embed the CSS directly on your OPAC pages.

.. _opacuserjs-label:

OPACUserJS
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Include the following JavaScript on all pages in the OPAC

|image91|

|image92|

|image93|

Description:

-  This preference allows the administrator to enter JavaScript or
   JQuery that will be embedded across all pages of the OPAC.
   Administrators may use this preference to customize some of the
   interactive sections of Koha, customizing the text for the login
   prompts, for example. Sample JQuery scripts used by Koha libraries
   can be found on the wiki:
   http://wiki.koha-community.org/wiki/JQuery_Library.

.. _opacusersummary-label:

OPACUserSummary
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Show

Asks: \_\_\_ a summary of a logged in user's checkouts, overdues, holds and fines on the mainpage

Description:

-  When activated, this preference system replaces the login form on the OPAC main page by a summary when the user is logged in.

.. _opacxsltdetailsdisplay-label:

OPACXSLTDetailsDisplay
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: default

Asks: Display OPAC details using XSLT stylesheet at \_\_\_

Values:

-  leave empty to not use the XSLT stylesheet

   -  In previous versions of Koha this was the setting that read
      'normally'

-  enter "default" for the default one

-  put a path to define a XSLT file

   -  ex: /path/to/koha/and/your/stylesheet.xsl

   -  If in a multi-language system you can enter {langcode} in the path
      to tell Koha to look in the right language folder

      -  ex:
         /home/koha/src/koha-tmpl/opac-tmpl/bootstrap/{langcode}/xslt/MARC21slim2OPACDetail.xsl

      -  ex. http://mykohaopac.org/{langcode}/stylesheet.xsl

-  put an URL for an external specific stylesheet

   -  ex: http://mykohaopac.org/stylesheet.xsl

Description:

-  XSLT stylesheets allow for the customization of the details shows on
   the screen when viewing a bib record. This preference will allow you
   either use the default look that comes with Koha or design your own
   stylesheet.

.. _opacxsltlistsdisplay-label:

OPACXSLTListsDisplay
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: default

Asks: Display lists in the OPAC using XSLT stylesheet at \_\_\_

Values:

-  leave empty to not use the XSLT stylesheet

   -  In previous versions of Koha this was the setting that read
      'normally'

-  enter "default" for the default one

-  put a path to define a XSLT file

   -  ex: /path/to/koha/and/your/stylesheet.xsl

   -  If in a multi-language system you can enter {langcode} in the path
      to tell Koha to look in the right language folder

      -  ex:
         /home/koha/src/koha-tmpl/opac-tmpl/bootstrap/{langcode}/xslt/MARC21slim2OPACResults.xsl

      -  ex. http://mykohaopac.org/{langcode}/stylesheet.xsl

-  put an URL for an external specific stylesheet

   -  ex: http://mykohaopac.org/stylesheet.xsl

Description:

-  XSLT stylesheets allow for the customization of the details shows on
   the screen when viewing lists. This preference will
   allow you either use the default look that comes with Koha or design
   your own stylesheet.

.. _opacxsltresultsdisplay-label:

OPACXSLTResultsDisplay
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: default

Asks: Display OPAC results using XSLT stylesheet at \_\_\_

Values:

-  leave empty to not use the XSLT stylesheet

   -  In previous versions of Koha this was the setting that read
      'normally'

-  enter "default" for the default one

-  put a path to define a XSLT file

   -  ex: /path/to/koha/and/your/stylesheet.xsl

   -  If in a multi-language system you can enter {langcode} in the path
      to tell Koha to look in the right language folder

      -  ex:
         /home/koha/src/koha-tmpl/opac-tmpl/bootstrap/{langcode}/xslt/MARC21slim2OPACResults.xsl

      -  ex. http://mykohaopac.org/{langcode}/stylesheet.xsl

-  put an URL for an external specific stylesheet

   -  ex: http://mykohaopac.org/stylesheet.xsl

Description:

-  XSLT stylesheets allow for the customization of the details shows on
   the screen when viewing the search results. This preference will
   allow you either use the default look that comes with Koha or design
   your own stylesheet.

.. _opacfeatures-label:

Features
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _numsearchrssresults-label:

numSearchRSSResults
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 50

Asks: Display \_\_\_ search results in the RSS feed.

Description:

-  By default the RSS feed that is automatically generated for every
   search results page will list 50 items. This can sometimes be too
   much for some RSS feed readers and for some people this isn't enough.
   This preference allows you to adjust this number to show the best
   number of results for your patrons.

.. _opacacquisitiondetails-label:

OPACAcquisitionDetails
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't display

Asks: \_\_\_ the acquisition details on OPAC detail pages.

Values:

-  Display

    |image1194|

-  Don't display

Description:

-  This preference shows the patrons how many items are on order in the
   Holdings tab if you have the :ref:`AcqCreateItem` set
   to 'cataloging the record'

.. _opacauthorities-label:

OpacAuthorities
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ patrons to search your authority records.

Description:

-  This preference displays the link on the OPAC for the authority
   search. By setting the preference to "Allow" patrons can use this
   search link of the OPAC.

Values:

-  Allow

   -  A link labeled 'Authority search' will appear at the top of your
      OPAC under the search box

      |image94|

-  Don't allow

.. _opacbookbag-label:

opacbookbag
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ patrons to store items in a temporary "Cart" on the OPAC.

Values:

-  Allow

-  Don't allow

Description:

-  This preference allows the user to temporarily save a list of items
   found on the catalog. By using the book bag, or cart, the user can
   print out or email a list of items found. The user does not need to
   be logged in. This list is temporary and will be emptied, or cleared,
   at the end of the session.

.. _opacbrowser-label:

OpacBrowser
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

    **Important**

    This preference only applies to installations using UNIMARC at this time.

Default: Don't allow

Asks: \_\_\_ patrons to browse subject authorities on OPAC

Values:

-  Allow

-  Don't allow

    **Important**

    run the :ref:`authorities browser cron job <authorities-browser-label>` to
    create the browser list

.. _opacbrowseresults-label:

OpacBrowseResults
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: enable

Asks: \_\_\_ browsing and paging search results from the OPAC detail
page.

Values:

-  disable

-  enable

   |image95|

Description:

-  This preference will control the option to return to your results
   and/or browse them from the detail page in the OPAC.

.. _opaccloud-label:

OpacCloud
^^^^^^^^^^^^^^^^^^^^^^^^^^

    **Important**

    This preference only applies to French systems at this time.

Default: Don't show

Asks: \_\_\_ a subject cloud on OPAC

Values:

-  Don't show

-  Show

    **Important**

    run the :ref:`authorities browser cron job <authorities-browser-label>` to
    create the browser list

.. _opacfinestab-label:

OPACFinesTab
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ patrons to access the Fines tab on the 'your summary' page on
the OPAC.

Values:

-  Allow

   -  :ref:`opacuserlogin` needs to be set to 'allow'

-  Don't allow

.. _opacholdnotes-label:

OpacHoldNotes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Do not allow

Asks: \_\_\_ users to add a note when placing a hold.

Values:

-  Allow

   |image96|

-  Do not allow

.. _opacisbd-label:

OPACISBD
^^^^^^^^^^^^^^^^^^^^^^^^

Default: See `ISBD view configuration
<https://wiki.koha-community.org/wiki/ISBD_view_configuration>` on the wiki.

Asks: Use the following as the OPAC ISBD template:

Description:

-  This determines how the ISBD information will display in the OPAC.
   Elements in the list can be reordered to produce a different ISBD
   view. ISBD, the International Standard Bibliographic Description, was
   first introduced by IFLA (International Federation of Library
   Associations) in 1969 in order to provide guidelines for descriptive
   cataloging. The purpose of ISBD is to aid the international exchange
   of bibliographic records for a variety of materials.

.. _opacitemlocation-label:

OpacItemLocation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: call number only

Asks: Show \_\_\_ for items on the OPAC search results.

Values:

-  call number only

-  collection code

-  location

Description:

-  This setting allows users of the OPAC results XSLT stylesheet to
   choose to display collection code or location in addition to call
   number.

.. _opacnewslibraryselect-label:

OpacNewsLibrarySelect
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't display

Asks: \_\_\_ a branch selection list for news items in the OPAC.

Values:

-  Don't display

-  Display

.. _opacpasswordchange-label:

OpacPasswordChange
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ patrons to change their own password on the OPAC.

Values:

-  Allow

   -  :ref:`opacuserlogin` needs to be set to 'allow'

-  Don't allow

    **Important**

    Enabling this will break LDAP authentication.

.. _opacpatrondetails-label:

OPACPatronDetails
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ patrons to notify the library of changes to their contact
information from the OPAC.

Values:

-  Allow

   -  :ref:`opacuserlogin` needs to be set to 'allow'

-  Don't allow

Description:

-  If patrons are allowed to notify the library of changes to their
   account then staff will need to approve the changes via the staff
   client. Notification of patron account requests will appear on the
   dashaboard below the list of modules with other pending actions.

   |image97|

   Once you click the notification you will be presented with the
   changes the patron would like to make to their account and from there
   you can choose how to proceed.

   |image98|

       **Note**

       You can control what fields patrons see and can modify via the
       OPAC by setting the
       :ref:`PatronSelfRegistrationBorrowerMandatoryField`
       :ref:`PatronSelfRegistrationBorrowerUnwantedField`
       preferences.

.. _opacpatronimages-label:

OPACpatronimages
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ patron images on the patron information page in the OPAC.

Values:

-  Don't show

-  Show

Description:

-  If :ref:`patronimages` is set to allow the upload of
   patron images via the staff client, then setting this preference to
   'show' will show the patron what image you have on file for them when
   they view their personal information on their account in the OPAC.

.. _opacpopupauthorssearch-label:

OPACPopupAuthorsSearch
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't display

Asks: \_\_\_ the list of authors/subjects in a popup for a combined
search on OPAC detail pages.

Values:

-  Display

   Subject search pop up

   -  **Important**

          This will only display the pop up if you are not using an XSLT
          stylesheet. Review your
          :ref:`OPACXSLTDetailsDisplay` to find
          out what stylesheet you're using.

-  Don't display

   -  Authors and subjects will display as search links instead of pop
      up menus.

Description:

-  If this preference is set to 'Display' then clicking a subject or
   author from the details page in the OPAC will present the searcher
   with a pop up box. From this box you can check off any of the
   subjects or authors listed and search them all at once by clicking
   'Search' at the bottom of the pop up. The default behavior is for
   Koha to search just the clicked author or subject.

.. _opacresetpassword-label:

OpacResetPassword
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: not allowed

Asks: Library users are \_\_\_ to recover their password via e-mail in
the OPAC.

Values:

-  allowed

    |image1195|

-  not allowed

Description:

-  This preference controls whether you present users of the public
   catalog with a 'Forgot your password' link or not. Learn more in the
   :ref:`OPAC section <resetting-your-password-label>` of this manual.

.. _opactopissue-label:

OpacTopissue
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't allow

Asks: \_\_\_ patrons to access a list of the most checked out items on
the OPAC.

Values:

-  Allow

   -  A link to 'Most Popular' will appear at the top of your OPAC

      |image99|

-  Don't allow

Description:

-  This preference allows the administrator to choose to show the "Most
   Popular" link at the top of the OPAC under the search box. The "Most
   Popular" page shows the top circulated items in the library, as
   determined by the number of times a title has been circulated. This
   allows users to see what titles are popular in their community. It is
   recommended that you leave this preference set to 'Don't allow' until
   you have been live on Koha for a couple of months, otherwise the data
   that it shows will not be an accurate portrayal of what's popular in
   your library.

   |image100|

.. _opacuserlogin-label:

opacuserlogin
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ patrons to log in to their accounts on the OPAC.

Values:

-  Allow

-  Don't allow

   -  The OPAC will still be searchable if patrons can't log in, this
      just disables the patron account access via the OPAC

.. _quoteoftheday-label:

QuoteOfTheDay
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Disable

Asks: \_\_\_ Quote of the Day display on OPAC home page

Values:

-  Disable

-  Enable

Description:

-  This feature will allow you to enter a series of quotes that will
   then show on the OPAC homepage in random order. To add/edit quotes,
   visit the :ref:`Quote of the Day editor <quote-of-the-day-(qotd)-editor-label>` under Tools.

.. _requestonopac-label:

RequestOnOpac
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ patrons to place holds on items from the OPAC.

Values:

-  Allow

   -  :ref:`opacuserlogin` needs to be set to 'allow'

-  Don't allow

.. _reviewson-label:

reviewson
^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ patrons to make comments on items on the OPAC.

Values:

-  Allow

   -  Patrons comments/reviews all require moderation before they appear
      in the OPAC

   -  :ref:`opacuserlogin` needs to be set to 'Allow'

-  Don't allow

Description:

-  This button allows the patrons to submit comments on books they have
   read via the OPAC. If this preference is set to "Allow" reviews are
   first sent to the staff client for staff approval before the review
   is displayed in the OPAC. The staff member who reviews and approves
   comments may find the pending comments on the
   :ref:`Comments` tool. The staff member can then choose to
   approve or delete the comments.

.. _showreviewer-label:

ShowReviewer
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: full name

Asks: Show \_\_\_ of commenter with comments in OPAC.

Values:

-  first name

-  first name and last initial

-  full name

-  last name

-  no name

-  username

Description:

-  If you would like to protect your patron's privacy in the OPAC you
   can choose to hide their names or parts of their names from any of
   the comments they leave on bib records in your system.
   :ref:`reviewson` needs to be set to 'Allow' for this to
   preference to come in to play

.. _showreviewerphoto-label:

ShowReviewerPhoto
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Show

Asks: \_\_\_ reviewer's photo beside comments in OPAC.

Values:

-  Hide

-  Show

   -  :ref:`reviewson` needs to be set to 'Allow' and
      :ref:`ShowReviewer` needs to be set to 'Show' for
      this to preference to come in to play

      |image101|

Description:

-  This system preference allows libraries to show avatars next to
   patron's comments in the OPAC. These avatars are pulled from the
   `Libravatar <https://www.libravatar.org>`__ library, an open source
   powered product that allows Internet users to choose a small icon to
   display next to their name on various different websites. The library
   has no control over the images the patron chooses to display.

.. _socialnetworks-label:

SocialNetworks
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Disable

Asks: \_\_\_ social network links in opac detail pages

Values:

-  Disable

-  Enable

   |image102|

Description:

-  This preference will enable a line of social network share buttons
   below the right hand column on the detail pages of records in the
   OPAC.

    **Important**

    In order for these share buttons to work when clicked you must have
    filled in your :ref:`OPACBaseURL` preference.

.. _suggestion-label:

suggestion
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ patrons to make purchase suggestions on the OPAC.

Values:

-  Allow

   -  :ref:`opacuserlogin` needs to be set to 'allow'
      unless :ref:`AnonSuggestions` is set to 'allow'

-  Don't allow

.. _payments-label:

Payments
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These preferences will allow you control the tools you use to accept
online payments from your patrons via the OPAC.

.. _enablepaypalopacpayments-&-paypalsandboxmode-label:

EnablePayPalOpacPayments & PayPalSandboxMode
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

EnablePayPalOpacPayments Default: Don't allow

PayPalSandboxMode Default: Sandbox

Asks: \_\_\_ patrons to make payments from the OPAC via PayPal in \_\_\_
mode.

EnablePayPalOpacPayments values:

-  Allow

-  Don't allow

PayPalSandboxMode values:

-  Production

   -  Visit https://developer.paypal.com/ to get information for
      accepting payments in production

-  Sandbox

   -  Visit https://developer.paypal.com/developer/accounts/ to get
      information for your sandbox account

Description:

-  This preference will allow you to accept credit card payments via the
   OPAC for fines via PayPal. You will need to set up your PayPal
   account and it is recommended that you run tests before using this in
   production.

    **Important**

    PayPayl's terms of service state that you cannot charge your patrons
    for the processing fees and so this plugin will not add additional
    fees to the charges.

.. _paypalchargedescription-label:

PayPalChargeDescription
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Koha fee payment

Asks: The patron should see the charge description as \_\_\_

Description

-  This preference controls what the patron will see on their PayPal
   account/bank account for this charge.

.. _paypalpwd-label:

PayPalPwd
^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: The password for the PayPal account to receive payments is \_\_\_

.. _paypalsignature-label:

PayPalSignature
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: The signature for the PayPal account to receive payments is \_\_\_

.. _paypaluser-label:

PayPalUser
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: The email address to receive PayPal payments is \_\_\_

.. _policy-label:

Policy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _allowpurchasesuggestionbranchchoice-label:

AllowPurchaseSuggestionBranchChoice
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't allow

Asks: \_\_\_ patrons to select branch when making a purchase suggestion

Values:

-  Allow

-  Don't allow

Description:

-  If your library system lets patrons make purchase suggestions for a
   specific branch you can set this preference to 'Allow' to add a
   branch selection option to the purchase suggestion form.

.. _blockexpiredpatronopacactions-label:

BlockExpiredPatronOpacActions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't block

Asks: \_\_\_ expired patrons from OPAC actions such as placing a hold or
renewing.

Values:

-  Block

-  Don't block

Description:

-  This preference lets you set a default value for how Koha handles
   permissions for patrons who are expired. This preference can be
   overwritten by the setting on :ref:`individual patron
   categories <patron-categories-label>`.

.. _maxopensuggestions-label:

MaxOpenSuggestions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: blank

Asks: Limit patrons to \_\_\_ open suggestions. Leave empty for no limit.

    **Note**

    This setting does not affect anonymous suggestions.

.. _opacallowpubliclistcreation-label:

OpacAllowPublicListCreation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ opac users to create public lists.

Values:

-  Allow

-  Don't allow

Description:

-  Public lists are visible to anyone who visits your OPAC. With this
   preference you can control whether or now patrons are allowed to
   create these public lists. If this is set to "Don't allow" then only
   staff will be able to create public lists.

    **Important**

    This preference will only be taken in to account if you have
    :ref:`virtualshelves` set to 'Allow'

.. _opacallowsharingprivatelists-label:

OpacAllowSharingPrivateLists
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't allow

Asks: \_\_\_ opac users to share private lists with other patrons.

Values:

-  Allow

-  Don't allow

Description:

-  This feature will add the option for patrons to share their lists
   with other patrons. When this is set to 'Allow' patrons will see a
   share link at the top of their list. When they click that link it
   will ask for the email of the patron they would like to share with.
   Koha will then email the patron an invitation to see the list.

.. _opacfinenorenewals-label:

OPACFineNoRenewals
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 99999

Asks: Only allow patrons to renew their own books on the OPAC if they
have less than \_\_\_ USD in fines

    **Note**

    Leave this field blank to disable

    **Important**

    To allow renewals in the OPAC, :ref:`opacuserlogin`
    needs to be set to 'allow'

.. _opachiddenitems-label:

OpacHiddenItems
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Allows to define custom rules for hiding specific items at opac.

    **Note**

    See docs/opac/OpacHiddenItems.txt in your Koha install directory for
    more information

Description:

-  In this field you can enter criteria for items you would like to hide
   from display in the OPAC. This field takes any combination of item
   fields (from the items table in the Koha database) for blocking. For
   example a value of:

   ::

       itype: [07, 10]
       location: [STAFF, ISO]

   Will block items with an itype code of 07 or 10 as well as items that
   have a shelving location of STAFF or ISO.

   In items my items.itype 07 is defined in Item Types Administration as
   Staff Assigned My items.itype 10 in Item Types is Archival Copy The
   locations STAFF and ISO are in Authorized Values for category=LOC
   STAFF means it's assigned to the staff reading room and ISO means it
   is in the isolation room.

.. _opacrenewalallowed-label:

OpacRenewalAllowed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't allow

Asks: \_\_\_ patrons to renew their own books on the OPAC.

Values:

-  Allow

   -  :ref:`opacuserlogin` needs to be set to 'allow'

-  Don't allow

   -  Staff will still be able to renew items for patrons via the staff
      client

Description:

-  This preference allows the administration to choose if patrons can
   renew their checked out materials via their checked out history in
   the OPAC. It allows patrons to renew their materials without having
   to contact the library or having to return to the library.

.. _opacrenewalbranch-label:

OpacRenewalBranch
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: the branch the item was checked out from

Asks: Use \_\_\_ as branchcode to store in the statistics table

Values:

-  NULL

-  'OPACRenew'

-  the item's home branch

-  the patron's home branch

-  the branch the item was checked out from

Description:

-  This value is used in the statistics table to help with reporting.
   The statistics table in Koha keeps track of all checkouts and
   renewals, this preference defines which branch is entered in to the
   table when a patron renews an item for themselves via the OPAC.

.. _opacsuggestionmandatoryfields-label:

OPACSuggestionMandatoryFields
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: blank

Asks: Fields that should be mandatory for patron purchase suggestions:
\_\_\_ Note: if none of the above options are selected, 'Title' field
would be mandatory anyway, by default.

Values:

-  [Select all]

-  Author

-  Collection title

-  Copyright or publication date

-  ISBN, ISSN or other standard number

-  Item type

-  Library or branch

-  Note

-  Patron reason

-  Publication place

-  Publisher name

-  Title

.. _opacviewotherssuggestions-label:

OPACViewOthersSuggestions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ purchase suggestions from other patrons on the OPAC.

Values:

-  Don't show

-  Show

   -  :ref:`opacuserlogin` needs to be set to 'allow'

.. _searchmylibraryfirst-label:

SearchMyLibraryFirst
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't limit

Asks: \_\_\_ patrons' searches to the library they are registered at.

Values:

-  Don't limit

   -  Searching the OPAC will show results from all libraries

   -  If you're a one branch system, choose 'Don't limit'

-  Limit

   -  Patrons will still be able to search other libraries via the
      Advanced search page - but will be limited to searches for their
      library only from the basic search box

   -  :ref:`opacuserlogin` needs to be set to 'allow'

.. _privacy-label:

Privacy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _allowpatrontosetcheckoutsvisibilityforguarantor-label:

AllowPatronToSetCheckoutsVisibilityForGuarantor
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't allow

Asks: \_\_\_ patrons to choose their own privacy settings for showing
the patron's checkouts to the patron's guarantor".

Values:

-  Allow

-  Don't allow

Description:

-  By default staff can see checkouts to family members via the staff
   client. This preference will allow guarantees (children) to grant
   permission to guarantors (guardians) to view their current checkouts
   via the public catalog. This preference requires that you allow
   patrons to se their own privacy with the
   :ref:`OPACPrivacy` preference.

.. _anonsuggestions-label:

AnonSuggestions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't allow

Asks: \_\_\_ patrons that aren't logged in to make purchase suggestions.

    **Important**

    If set to 'Allow', suggestions are connected to the
    :ref:`AnonymousPatron`

Values:

-  Allow

-  Don't allow

.. _anonymouspatron-label:

AnonymousPatron
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 0

Asks: Use borrowernumber \_\_\_ as the Anonymous Patron (for anonymous
suggestions and reading history)

    **Note**

    Before setting this preference :ref:`create a patron <add-a-new-patron-label>`
    to be used for all anonymous suggestions and/or reading history
    items. This patron can be any type and should be named something to
    make it clear to you that they're anonymous (ex. Anonymous Patron).

    **Important**

    Remember to use the borrowernumber note the patron's cardnumber for
    this value. The borrowernumber can be found on the patron record
    under 'Library use' on the right.

    |image1196|

.. _enableopacsearchhistory-label:

EnableOpacSearchHistory
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Keep

Asks: \_\_\_ patron search history in the OPAC.

Values:

-  Don't keep

-  Keep

.. _opacprivacy-label:

OPACPrivacy
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't allow

Asks: \_\_\_ patrons to choose their own privacy settings for their
reading history.

    **Important**

    This requires :ref:`opacreadinghistory` set to
    'Allow' and :ref:`AnonymousPatron` to be set to your
    anonymous patron's borrowernumber.

Values:

-  Allow

-  Don't allow

Description:

-  The default privacy setting for each patron category can be set in
   the :ref:`patrons categories <patron-categories-label>` area. If you set this
   preference to 'allow' then patrons can change that for themselves via
   the OPAC.

    **Important**

    If patron has chosen to have their reading history anonymized and
    you have :ref:`StoreLastBorrower` set to "Don't
    store" then as soon as the item is checked in the last borrower will
    be anonymized.

.. _opacreadinghistory-label:

opacreadinghistory
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ patrons to see what books they have checked out in the
past.

    **Important**

    Enabling this will make it so that patrons can view their
    circulation history in the OPAC unless you have
    :ref:`OPACPrivacy` set to 'Allow'.

    **Important**

    This data is stored in the system regardless of your choice, unless
    your patrons have chosen to never have their reading history kept.

.. _storelastborrower-label:

StoreLastBorrower
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't store

Asks: \_\_\_ the last patron to return an item.

Values:

-  Don't store

-  Store

Description:

-  This preference allows you to store the last patron to borrow an item
   even if the patron has chosen to have their reading history
   anonymized.

    **Note**

    This setting is independent of
    :ref:`opacreadinghistory` and/or
    :ref:`AnonymousPatron`.

.. _trackclicks-label:

TrackClicks
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't track

Asks: \_\_\_ links that patrons click on.

Values:

-  Don't track

-  Track

-  Track anonymously

Description:

-  By setting this preference to one of the track options you will allow
   Koha to track every link clicked in Koha. This data will be stored in
   a database table so that you can run reports against that data. If
   you choose to 'Track' clicks then Koha will record both the link
   clicked and the logged in user who clicked the link. If you choose to
   'Track anonymously' then the borrowernumber will not be recorded, but
   the rest of the data will.

       **Note**

       Remember to update your local privacy policies and link to them
       from the OPAC to notify your users that you are tracking their
       information.

.. _restricted-page-label:

Restricted Page
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Using the following preference you can create a page within your Koha
system that is accessible by only specific IP addresses. This can be
used to house links to databases that can only be accessed from with the
library or other licensed content.

.. _restrictedpagecontent-label:

RestrictedPageContent
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: HTML content of your restricted page.

.. _restrictedpagelocalips-label:

RestrictedPageLocalIPs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Access from IP addresses beginning with \_\_\_ do not need to be
authenticated

Description:

-  You can enter individual IPs as a comma separated list (ex:
   '127.0.0,127.0.1') or just the beginning of the IP range allowed (ex:
   '127.0.^)

.. _restrictedpagetitle-label:

RestrictedPageTitle
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Use \_\_\_ as title of your restricted page

Description:

-  This title will appear in the breadcrumb and on the top of the
   restricted page.

.. _self-registration-label:

Self Registration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _patronselfmodificationborrowerunwantedfield-label:

PatronSelfModificationBorrowerUnwantedField
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: password

Asks: The following `database
columns <http://schema.koha-community.org/tables/borrowers.html>`__ will
not appear on the patron self-modification screen: \_\_\_

Description:

-  This preference allows you to define what fields patrons can edit if
   you're allowing them to update their personal information via the
   public catalog with the :ref:`OPACPatronDetails`
   preference.

    **Important**

    Separate columns with \|

.. _patronselfregistration-label:

PatronSelfRegistration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't allow

Asks: \_\_\_ library patrons to register an account via the OPAC.

Values:

-  Allow

-  Don't allow

Description:

-  Setting this preference to 'Allow' will provide a link on the OPAC to
   register for a new account. Using the other :ref:`self
   registration <self-registration-label>` system preferences you
   can control how this preference will function.

   |image103|

    **Important**

    Patrons registering via the OPAC will not need to be approved by a
    librarian. For this reason it is recommended that you set up a
    provisional :ref:`patron category <patron-categories-label>` with no :ref:`circulation
    rights <circulation-and-fine-rules-label>`. That way patrons will have to come in to
    the library to verify their identity before given circulation rights
    at the library. Once the patron confirms their identity the library
    staff can change the category to one with permissions to check items
    out and place holds.

.. _patronselfregistrationadditionalinstructions-label:

PatronSelfRegistrationAdditionalInstructions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Display the following additional instructions for patrons who self
register via the OPAC ( HTML is allowed ):

Description:

-  This preference takes any HTML you'd like to display on the page the
   patron sees after successfully registering for their library card.

.. _patronselfregistrationborrowermandatoryfield-label:

PatronSelfRegistrationBorrowerMandatoryField
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: surname\|firstname

Asks: The following database columns must be filled in on the patron
entry screen: \_\_\_

Description:

-  This preference allows you to define what fields patrons must fill in
   on their self registration form. If any of the required fields are
   blank Koha will not let the patron register.

    **Important**

    Separate columns with \|

    **Note**

    For help with field names, ask your system administrator or `view
    the database
    structure <http://schema.koha-community.org/tables/borrowers.html>`__
    associated with the borrowers table.

    **Note**

    If you're going to require that patrons verify their accounts via
    email with the
    :ref:`PatronSelfRegistrationVerifyByEmail`
    preference the email field will automatically be marked as required.

.. _patronselfregistrationborrowerunwantedfield-label:

PatronSelfRegistrationBorrowerUnwantedField
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: password

Asks: The following database columns will not appear on the patron entry
screen: \_\_\_

Description:

-  Using this preference you can hide fields from the patron registration
   and update form in the OPAC.

    **Important**

    Separate columns with \|

    **Note**

    For help with field names, ask your system administrator or `view
    the database
    structure <http://schema.koha-community.org/tables/borrowers.html>`__
    associated with the borrowers table.

.. _patronselfregistrationdefaultcategory-label:

PatronSelfRegistrationDefaultCategory
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Use the patron category code \_\_\_ as the default patron category
for patrons registered via the OPAC.

Description:

-  Enter in the patron category code for the category that all new
   patrons registered via the OPAC will be put in to.

    **Important**

    Patrons registering via the OPAC will not need to be approved by a
    librarian. For this reason it is recommended that you set up a
    provisional :ref:`patron category <patron-categories-label>` with no :ref:`circulation
    rights <circulation-and-fine-rules-label>`. That way patrons will have to come in to
    the library to verify their identity before given circulation rights
    at the library. Once the patron confirms their identiy the library
    staff can change the category to one with permissions to check items
    out and place holds.

    **Important**

    If you leave this blank or enter in an invalid code your patrons
    will still be able to register but will not be given a username.
    There will be no errors on the page to explain this, so be sure to
    enter a valid patron category code.

.. _patronselfregistrationemailmustbeunique-label:

PatronSelfRegistrationEmailMustBeUnique
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Do not consider

Asks: \_\_\_ patron's email (borrowers.email) as unique on self registering.
An email won't be accepted if it already exists in the database.

Values:

-  Do not consider

-  Consider

.. _patronselfregistrationexpiretemporaryaccountsdelay-label:

PatronSelfRegistrationExpireTemporaryAccountsDelay
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 0

Asks: Delete patrons registered via the OPAC, but not yet verified after
\_\_\_ days.

Description:

-  This preference links to the :ref:`delete\_expired\_opac\_registrations.pl
   cron job <unverified-registrations-label>`. If that cron is set to
   run nightly it will clean up any registrations that have not been
   verified via email in the number of days entered on this preference.
   This is dependent on
   :ref:`PatronSelfRegistrationVerifyByEmail`
   preference.

.. _patronselfregistrationlibrarylist-label:

PatronSelfRegistrationLibraryList
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: blank

Asks: Enable the self registration for the following libraries: \_\_\_
(separate branchcode with \|). If empty, all libraries will be listed.

.. _patronselfregistrationprefillform-label:

PatronSelfRegistrationPrefillForm
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Display and prefill

Asks: \_\_\_ password and login form after a patron has self registered.

Values:

-  Do not display and prefill

-  Display and prefill

.. _patronselfregistrationverifybyemail-label:

PatronSelfRegistrationVerifyByEmail
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't require

Asks: \_\_\_ that a self-registering patron verify his or herself via
email.

Values:

-  Don't require

-  Require

Description:

-  If you require patrons to verify their accounts via email they will
   not be able to log in to the OPAC until they acknowledge the email
   sent by Koha. If you don't require this then patrons will be able to
   log in as soon as they fill in the registration form. You can set the
   :ref:`PatronSelfRegistrationExpireTemporaryAccountsDelay`
   preference to delete the un-verified self registrations after a
   certain number of days.

    **Note**

    If you're going to require that patrons verify their accounts via
    email then the email field will automatically be marked as required.

.. _shelf-browser-label:

Shelf Browser
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _opacshelfbrowser-label:

OPACShelfBrowser
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Show

Asks: \_\_\_ a shelf browser on item details pages, allowing patrons to
see what's near that item on the shelf.

Values:

-  Don't show

-  Show

   |image104|

Description:

-  This preference allows patrons to view what is located on the shelf
   near the item they looked up. The shelf browser option appears on the
   details page to the right of each items' call number. Clicking the
   'Browse Shelf' link allows for a virtual shelf browsing experience
   via the OPAC and lets patrons see other books that may relate to
   their search and items that sit on the shelf near the item they are
   looking at.

    **Important**

    This uses up a fairly large amount of resources on your server, and
    should be avoided if your collection has a large number of items.

.. _shelfbrowserusesccode-label:

ShelfBrowserUsesCcode
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't use

Asks: \_\_\_ the item collection code when finding items for the shelf
browser.

Values:

-  Don't use

-  Use

Description:

-  If your library uses collection codes then you might want the shelf
   browser to take into consideration what collection the books belong
   to when populating the virtual shelf browser.

.. _shelfbrowseruseshomebranch-label:

ShelfBrowserUsesHomeBranch
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Use

Asks: \_\_\_ the item home branch when finding items for the shelf
browser.

Values:

-  Don't use

-  Use

Description:

-  If you have a multiple branch system you may want to make sure that
   Koha takes into consideration what branch owns the books when
   populating the virtual shelf browser for accuracy.

.. _shelfbrowseruseslocation-label:

ShelfBrowserUsesLocation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Use

Asks: \_\_\_ the item location when finding items for the shelf browser.

Values:

-  Don't use

-  Use

Description:

-  If your library uses shelving locations then you might want the shelf
   browser to take into consideration what shelving location the books
   belong to when populating the virtual shelf browser.

.. _patrons-label:

Patrons
--------------------------

*Get there:* More > Administration > Global System Preferences > Patrons

.. _patronsgeneral-label:

General
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _allowstafftosetcheckoutsvisibilityforguarantor-label:

AllowStaffToSetCheckoutsVisibilityForGuarantor
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't allow

Asks: \_\_\_ staff to set the ability for a patron's checkouts to be
viewed by linked patrons in the OPAC.

Values:

-  Don't allow

-  Allow

.. _autoemailopacuser-label:

AutoEmailOpacUser
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't send

Asks: \_\_\_ an email to newly created patrons with their account
details.

Description:

-  AutoEmailOpacUser allows library users to be notified by email of
   their account details when a new account is opened at the email
   address specified in the
   :ref:`AutoEmailPrimaryAddress` preference.
   The email contains the username and password given to or chosen by
   the patron when signing up for their account and can be customized by
   editing the `ACCTDETAILS <#ACCTDETAILS>`__ notice.

Values:

-  Don't send

-  Send

.. _autoemailprimaryaddress-label:

AutoEmailPrimaryAddress
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: alternate

Asks: Use \_\_\_ patron email address for sending out emails.

Values:

-  alternate

-  first valid

-  home

-  work

Description:

-  If you choose 'first valid' as the value for AutoEmailPrimaryAddress
   the system will check the email fields in this order: home, work,
   then alternate. Otherwise the system will use the email address you
   specify.

.. _automembernum-label:

autoMemberNum
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Do

Asks: \_\_\_ default the card number field on the patron addition screen
to the next available card number

Values:

-  Do

   -  If the largest currently used card number is 26345000012941, then
      this field will default to 26345000012942 for the next patron

-  Don't

Description:

-  This preference determines if the patron's barcode is automatically
   calculated. This prevents the person setting up the library card
   account from having to assign a number to the new card. If set to
   'Do' the system will calculate a new patron barcode by adding 1 to
   the maximum barcode already present in the database.

.. _borrowermandatoryfield-label:

BorrowerMandatoryField
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: surname\|cardnumber\|barcode

Asks: The following database columns must be filled in on the patron
entry screen: \_\_\_

Description:

-  This preference enables the system administrator to choose which
   fields your library would like required for patron accounts. Enter
   field names separated by \| (bar). This ensures that basic
   information is included in each patron record. If a patron leaves one
   of the required fields blank an error message will issue and the
   account will not be created.

    **Important**

    Separate columns with \|

    **Note**

    For help with field names, ask your system administrator or `view
    the database
    structure <http://schema.koha-community.org/tables/borrowers.html>`__
    associated with the borrowers table.
    
    **Note**
    
    If either :ref:`PatronQuickAddFields` or :ref:`BorrowerMandatoryField`
    (or both) is set, a button labeled "Quick add new patron" will be displayed
    in the "Patrons" toolbar.

.. _borrowerrelationship-label:

borrowerRelationship
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: father\|mother

Asks: Guarantors can be the following of those they guarantee \_\_\_

Description:

-  This preference enables the system administrator to define valid
   relationships between a guarantor (usually a parent) & a guarantee
   (usually a child). Defining values for this field does not make the
   guarantor field required when adding a guarantee type patron. This
   preference creates a drop down list identifying the relationship of
   the guarantor to the guarantee. To disable the ability to add
   children types in Koha you can leave this field blank.

    **Important**

    Input multiple choices separated by \|

.. _borrowerrenewalperiodbase-label:

BorrowerRenewalPeriodBase
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: current date

Asks: When renewing borrowers, base the new expiry date on \_\_\_

Values:

-  current date.

-  current membership expiry date.

Description:

-  This preference controls what the patron's new expiration date will
   be when you renew their card. Using the 'current date' will add the
   subscription period to today's date when calculating the new
   expiration date. Using 'current membership expiry date' will add the
   subscription period to the old expiration date for the patron when
   renewing their account.

.. _borrowerstitles-label:

BorrowersTitles
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Mr\|Mrs\|Miss\|Ms

Asks: Borrowers can have the following titles \_\_\_

Description:

-  This preference allows the staff to choose the titles that can be
   assigned to patrons. The choices present as a drop down list when
   creating a patron record.

    **Important**

    Input multiple choices separated by \|

.. _borrowerunwantedfield-label:

BorrowerUnwantedField
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: The following database columns will not appear on the patron entry
screen: \_\_\_

Description:

-  This preference enables the system administrator to choose which
   fields your library doesn't need to see on the patron entry form.
   Enter field names separated by \| (bar).

    **Important**

    Separate columns with \|

    **Note**

    For help with field names, ask your system administrator or `view
    the database
    structure <http://schema.koha-community.org/tables/borrowers.html>`__
    associated with the borrowers table.

.. _cardnumberlength-label:

CardnumberLength
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Card numbers for patrons must be \_\_\_ characters long.

Description:

-  The length can be a single number to specify an exact length, a range
   separated by a comma (i.e., 'Min,Max'), or a maximum with no minimum
   (i.e., ^,Max'). If 'cardnumber' is included in the
   :ref:`BorrowerMandatoryField` list, the
   minimum length, if not specified here, defaults to one.

.. _checkprevcheckout-label:

CheckPrevCheckout
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Do not

Asks: \_\_\_ check borrower checkout history to see if the current item has been checked out before.

Values:

-  Do

-  Do not

-  Unless overridden, do

-  Unless overridden, do not

Description:

-  When the value of this system preference is set to 'do', Koha will look at the
   patron's circulation history to see if they have checked this item out before.
   An alert will show up on the screen indicating that patron has indeed checked
   this item out. Staff will be prompted to allow the checkout to occur.

   |image1390|

-  If the value is set to 'do not', Koha will not check the patron's circulation
   history.

-  When the value is set to 'Unless overridden, do', this will check the
   patron's circulation history unless the patron's :ref:`personal setting 
   <add-a-new-patron>` or the :ref:`patron category setting <adding-a-patron-category>` 
   specifically say not to.
   
-  Lastly, if the value is set to 'Unless overridden, do not',
   Koha will not check circulation history unless the patron's :ref:`personal 
   setting <add-a-new-patron>` or the :ref:`patron category setting <adding-a-
   patron-category>` specifically say to check.

     **Note**

This system preference will not work for patrons that have chosen to anonymize
their reading history.

.. _defaultpatronsearchfields-label:

DefaultPatronSearchFields
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: surname,firstname,othernames,cardnumber,userid

Asks: \_\_\_ Comma separated list defining the default fields to be used during a patron search

    **Important** possible values can be found in the borrowers table of Koha's schema
    located at http://schema.koha-community.org/

.. _enableborrowerfiles-label:

EnableBorrowerFiles
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't

Asks: \_\_\_ enable the ability to upload and attach arbitrary files to
a borrower record.

Values:

-  Do

-  Don't

Description:

-  When enabled this will add a 'Files' tab to the left of the patron
   detail page where you can view and upload files to the patron record.

.. _enhancedmessagingpreferences-label:

EnhancedMessagingPreferences
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ staff to manage which notices patrons will receive and when
they will receive them.

Values:

-  Allow

-  Don't allow

    **Important**

    This only applies to certain kinds of notices, overdue notices will
    be sent based on the library's rules, not the patron's choice.

    **Note**

    To manage if patrons have also access to these settings, use
    :ref:`EnhancedMessagingPreferencesOPAC`.

Description:

-  These messages are in addition to the overdue notices that the
   library sends. The difference between these notices and overdues is
   that the patron can opt-in and out of these. Setting this preference
   to 'Allow' will allow staff to choose for patrons to receive any one
   of the following messages:

   -  Item Checkout : A notice that lists all the of the items the
      patron has just checked out and/or renewed, this is an electronic
      form of the checkout receipt

   -  Item Due : A notice on the day and item is due back at the library

   -  Hold Filled : A notice when you have confirmed the hold is waiting
      for the patron

   -  Item Checkin : A notice that lists all the of the items the patron
      has just checked in

   -  Advanced Notice : A notice in advance of the patron's items being
      due (Staff can choose the number of days in advance)

.. _enhancedmessagingpreferencesopac-label:

EnhancedMessagingPreferencesOPAC
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Show

Asks: \_\_\_ patron messaging setting on the OPAC

Values:

-  Don't show

-  Show

    **Important**

    :ref:`EnhancedMessagingPreferences`
    must be enabled for messaging options to show in the OPAC

Description:

-  These messages are in addition to the overdue notices that the
   library sends. The difference between these notices and overdues is
   that the patron can opt-in and out of these. Setting this preference
   to 'Allow' will allow patrons to choose to receive any one of the
   following messages:

   -  Item Checkout : A notice that lists all the of the items the
      patron has just checked out and/or renewed, this is an electronic
      form of the checkout receipt

   -  Item Due : A notice on the day and item is due back at the library

   -  Hold Filled : A notice when you have confirmed the hold is waiting
      for the patron

   -  Item Checkin : A notice that lists all the of the items the patron
      has just checked in

   -  Advanced Notice : A notice in advance of the patron's items being
      due (The patron can choose the number of days in advance)

.. _extendedpatronattributes-label:

ExtendedPatronAttributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Enable

Asks: \_\_\_ searching, editing and display of custom attributes on
patrons.

Values:

-  Don't enable

-  Enable

   -  Define attributes in Koha administration

   -  Get there: More > Administration > :ref:`Patron Attribute
      Types <patron-attribute-types-label>`

Description:

-  Patron attributes are library-defined custom fields that can be
   applied to patron records.

    **Note**

    Use custom attributes for fields that the default patron record does
    not support such as driver's license number or student ID number.

.. _feeonchangepatroncategory-label:

FeeOnChangePatronCategory
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Do

Asks: \_\_\_ charge a fee when a patron changes to a category with an
enrollment fee.

Values:

-  Do

-  Don't

.. _intranetreadinghistory-label:

intranetreadinghistory
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ staff to access a patron's checkout and hold history.

    **Important**

    If you have the :ref:`OPACPrivacy` preference set to
    'Allow' and the patron has decided to not have their history kept
    staff will only see currently checked out items.

Values:

-  Allow

-  Don't allow

    **Important**

    Reading history is still stored, regardless of staff being allowed
    access or not unless the patron has chosen to have their history
    anonymized via their :ref:`privacy page <your-privacy-label>`.

.. _maxfine-label:

MaxFine
^^^^^^^^^^^^^^^^^^^^^^

Default: 9999

Asks: The late fine for all checkouts will only go up to \_\_\_ USD.

Description:

-  This preference controls the default cap on fines accrued by the
   patron. Leaving this preference blank means that there is no cap on
   the amount of fines a patron can accrue. If you'd like, single item
   caps can be specified in the :ref:`circulation rules
   matrix <circulation-and-fine-rules-label>`.

.. _membershipexpirydaysnotice-label:

MembershipExpiryDaysNotice
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Send an account expiration notice when a patron's card will expire
in \_\_\_ days.

Description:

-  If you would like to notify patrons that their accounts are about to
   expire then you can enter a number of days before expiration in this
   preference. The notice text can be customized in the :ref:`Notices &
   Slips <notices-&-slips-label>` tool.

    **Important**

    You will need to enable the :ref:`membership expiry cron
    job <notify-patrons-of-expiration-label>` for this notice to send.

.. _minpasswordlength-label:

minPasswordLength
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 3

Asks: Login passwords for staff and patrons must be at least \_\_\_
characters long.

    **Important**

    This applies to both the staff login and the patron OPAC login.

.. _notifyborrowerdeparture-label:

NotifyBorrowerDeparture
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 30

Asks: Show a notice that a patron is about to expire \_\_\_ days
beforehand.

Description:

-  When the patron attempts to check out materials, a warning will
   appear in the check out window of the Staff Client telling the
   librarian that the patrons account is about to expire.

    **Important**

    This notice will appear on the patron's record in the staff client.

.. _patronimages-label:

patronimages
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ images to be uploaded and shown for patrons on the staff
client.

Values:

-  Allow

-  Don't allow

Description:

-  If this preference is set to 'Allow' the staff will be able to upload
   images of patrons either :ref:`one by one <add-patron-images-label>` or :ref:`in
   bulk <upload-patron-images-label>`. Patrons images will show on the detail
   page to the left of the patron information. They can also show in the
   OPAC if you set the :ref:`OPACpatronimages` preference
   or in the self check out module if you set the
   :ref:`ShowPatronImageInWebBasedSelfCheck`
   preference.

.. _patronquickaddfields-label:

PatronQuickAddFields
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: blank

Asks: \_\_\_ (separate columns with \|) add these fields to the patron
quick add form when entering a new patron. Displays only mandatory fields
and fields specified here. If applicable, the guarantor form will be shown
as well, individual fields in that form will be ignored.

    **Note**

    See the :ref:`database schema (borrowers table) <http://schema.koha-
    community.org/>`_ to know the field names.

    **Note**
    If either :ref:`PatronQuickAddFields` or :ref:`BorrowerMandatoryField`
    (or both) is set, a button labeled "Quick add new patron" will be displayed
    in the "Patrons" toolbar.

    **Note**

    It is possible to add custom :ref:`patron attributes <patron-attribute-types-
    label>` in the quick add form with the following syntax: patron_attr_N 
    (for example patron_attr_2). The N refers to the id of the attribute and 
    requires a bit of guesswork (normally it will be the order in which you
    entered them in the :ref:`patron attribute types section of the administration 
    module <patron-attribute-types-label>`).


.. _patronsperpage-label:

PatronsPerPage
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 20

Asks: By default, show \_\_\_ results per page in the staff client.

Description:

-  This preference will let you define how many patrons to show on
   patron search results pages.

ProtectSuperLibrarianPrivileges
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow only superlibrarians

Asks: \_\_\_ to access/change superlibrarian privileges. Note: A permitted user
      needs to have the 'permissions' flag (if no superlibrarian)
      
Values:

-  Allow all permitted users

-  Allow only superlibrarians

.. _requirestrongpassword-label:

RequireStrongPassword
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't require

Asks: \_\_\_ a strong password for staff and patrons

Values:

-  Don't require

-  Require

Description:

-  If set to 'require' this system preference will require patron and staff passwords to contain at least one digit, one lowercase and one uppercase.

.. _smssenddriver,-smssendusername,-and-smssendpassword-label:

SMSSendDriver, SMSSendUsername, and SMSSendPassword
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Use the SMS::Send:: \_\_\_ driver to send SMS messages. Define a
username/login \_\_\_ and a password \_\_\_.

    **Note**

    This may not work with all providers.

    **Important**

    Please refer to your national laws concerning the sending of bulk
    SMS messages before enabling this feature.

Description:

-  There are two options for using SMS in Koha. You can use the Email
   protocol for free by entering 'Email' as the SMSSendDriver or you can
   pay for a SMS driver. Some examples of values for the driver are:

   -  SMS::Send::Us::Ipipi

   -  SMS::Send::US::TMobile

   -  SMS::Send::US::Verizon

   -  SMS::Send::IN::Unicel

   Additional values can be found here:
   http://search.cpan.org/search?query=sms%3A%3Asend&mode=all

       **Important**

       Only drivers available as Perl modules will work in this
       preference, so make sure a Perl module is available before
       choosing an SMS service.

   Once a driver is entered in the preference an option will appear in
   the staff client and the OPAC on the patron messaging form to choose
   to receive messages as SMS

   |image105|

    **Important**

    You must allow
    :ref:`EnhancedMessagingPreferences` for
    this to work.

.. _statisticsfields-label:

StatisticsFields
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: location\|itype\|ccode

Asks: Show the following fields from the items database table as columns
on the statistics tab on the patron record: \_\_\_

|image106|

    **Important**

    Enter the values separated by bars (\|)

Description:

-  This preference lets you set which fields will show on the patron
   record on the Statistics tab.

.. _talkingtechitivaphonenotification-label:

TalkingTechItivaPhoneNotification
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Disable

Asks: \_\_\_ patron phone notifications using Talking Tech i-tiva
(overdues, predues and holds notices currently supported).

Values:

-  Disable

-  Enable

Description:

-  To learn more about setting up this third party product view the
   :ref:`Talking Tech <talking-tech-label>` chapter.

    **Important**

    Requires that you have
    :ref:`EnhancedMessagingPreferences` set
    to Allow to use.

.. _tracklastpatronactivity-label:

TrackLastPatronActivity
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't

Asks: \_\_\_ track last patron activity. Everytime a patron will connect,
the borrowers.lastseen will be updated with the current time.

Values:

-  Don't

-  Do

.. _uppercasesurnames-label:

uppercasesurnames
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't

Asks: \_\_\_ store and display surnames (last names) in upper case.

Values:

-  Do

-  Don't
   
.. _useemailreceipts-label:

UseEmailReceipts
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't send

Asks: \_\_\_ email receipts to patrons for payments and writeoffs.

Values:

-  Don't send
   
-  Send
   
Description:

-  If set to 'Send', Koha will send emails to the patrons for each 
   payment or writeoff done in their account.

     **Note**

     -  The letters used are ACCOUNT\_PAYMENT and ACCOUNT\_WRITEOFF
        
     -  You can edit them in the :ref:`Notices and slips<notices-&-slips-label>` 
        tool.

.. _usedischarge-label:

useDischarge
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't allow

Asks: \_\_\_ librarians to discharge borrowers and borrowers to request
a discharge.

Values:

-  Allow

-  Don't allow

Description:

-  A discharge is a certificate that says the patron has no current
   checkouts, no holds and owe no money.

       **Note**

       In France a "quitus" ("discharge") is needed if you want to
       register for an account in a library or a university).

       **Note**

       Academic libraries often require that you have a clear record at
       the library before you can graduate.

.. _norwegian-patron-database-label:

Norwegian patron database
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _failedloginattempts-label:

FailedLoginAttempts
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: blank

Asks: Block a patron's account if it reaches \_\_\_ failed login attempts.

.. _norwegianpatrondbenable-&-norwegianpatrondbendpoint-label:

NorwegianPatronDBEnable & NorwegianPatronDBEndpoint
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

NorwegianPatronDBEnable Default: Disable

Asks: \_\_\_ the ability to communicate with the Norwegian national
patron database via the \_\_\_ endpoint.

Values:

-  Disable

-  Enable

.. _norwegianpatrondbsearchnlafterlocalhit-label:

NorwegianPatronDBSearchNLAfterLocalHit
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't

Asks: \_\_\_ search the Norwegian national patron database after a local
search result was found.

Values:

-  Do

-  Don't

.. _norwegianpatrondbusername-&-norwegianpatrondbpassword-label:

NorwegianPatronDBUsername & NorwegianPatronDBPassword
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Communicate with the Norwegian national patron database using the
username \_\_\_ and the password \_\_\_.

Description:

-  You can get these from "Base Bibliotek", which is maintained by the
   Norwegian National Library.

.. _searching-label:

Searching
-------------------------------

*Get there:* More > Administration > Global System Preferences >
Searching

.. _searchingfeatures-label:

Features
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _browseresultselection-label:

BrowseResultSelection
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Disable

Asks: \_\_\_ browsing search results fromt the bibliographic record detail page in staff client.

Values:

-  Disable

-  Enable

Description:

-  Enabling this system preference makes a button appear in the intranet search
   results page to browse the selected records.

.. _enablesearchhistory-label:

EnableSearchHistory
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't keep

Asks: \_\_\_ patron search history in the staff client.

Values:

-  Don't keep

-  Keep

    |image1197|

Description:

-  This preference controls whether the staff client keeps search
   history for logged in users. Search history will be accessible under
   the link to your account in the top right of the staff client.

.. _includeseefrominsearches-label:

IncludeSeeFromInSearches
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't include

Asks: \_\_\_ *see from* (non-preferred form) headings in bibliographic
searches.

Values:

-  Don't include

-  Include

Description:

-  When this preference is set to include the search engine indexer will
   insert *see from* headings from authority records into bibliographic
   records when indexing, so that a search on an obsolete term will turn
   up relevant records. For example when you search for cookery (the old
   term) you get titles with the heading of cooking (the new term).

    **Important**

    You will need to reindex your bibliographic database when changing
    this preference.

.. _opacgroupresults-label:

OpacGroupResults
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't use

Asks: \_\_\_ PazPar2 to group similar results on the OPAC.

Values:

-  Don't use

-  Use

    **Important**

    This requires that `PazPar2 <http://www.indexdata.com/pazpar2>`__ is
    set up and running.

.. _queryautotruncate-label:

QueryAutoTruncate
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: automatically

Asks: Perform wildcard searching (where, for example, Har would match
Harry and harp) \_\_\_ (The \* character would be used like so: Har\* or
\*logging.)

Values:

-  automatically

-  only if \* is added

Description:

-  This setting allows for searches to be automatically truncated or for
   additional characters to be added to the end of a search string. When
   set to "automatically" the search string automatically ends with a
   wildcard function. For example, a search for the word "invent" with
   auto truncation enabled will also retrieve results for inventor,
   invention, inventory, etc. If you don't want this to happen
   automatically you can still be perform wildcard searches manually by
   adding an asterisk (\*). Typing "invent\*" even with auto truncation
   disabled will retrieve the same inventor, invention, inventory
   results. Auto truncation bypasses the necessity to type long search
   strings in their entirety.

.. _queryfuzzy-label:

QueryFuzzy
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Try

Asks: \_\_\_ to match similarly spelled words in a search (for example,
a search for flang would also match flange and fang)

Values:

-  Don't try

-  Try

Description:

-  This preference enables "fuzzy" searching, in which the search engine
   returns results that are similar to, but not exactly matching, the
   word or words entered by the user. This preference enables the search
   function to compensate for slightly misspelled names or phrases.

    **Important**

    Requires that :ref:`UseICU` set to 'Not using'

.. _querystemming-label:

QueryStemming
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Try

Asks: \_\_\_ to match words of the same base in a search

Values:

-  Don't try

-  Try

   -  A search for enabling would also match enable and enabled

Description:

-  This preference enables word stemming. Stemming allows the search
   function to return multiple versions of the same word, as well as
   related terms (i.e., both fish and fishing would be returned).

.. _queryweightfields-label:

QueryWeightFields
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Enable

Asks: \_\_\_ ranking of search results by relevance

Values:

-  Disable

-  Enable

.. _tracecompletesubfields-label:

TraceCompleteSubfields
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Force

Asks: \_\_\_ subject tracings in the OPAC and Staff Client to search
only for complete-subfield matches.

Values:

-  Don't force

   -  Searches for subject keywords (example:
      opac-search.pl?q=su:World%20Wide%20Web)

-  Force

   -  Searches for complete subject fields (example:
      opac-search.pl?q=su,complete-subfield:World%20Wide%20Web)

Description:

-  When TraceCompleteSubfields is set to "force," clicking on links in
   non-authority controlled subject tracings will only find other
   records where the entire subfields match. Leaving it at "don't force"
   does a keyword search of the subject indexes.

    **Important**

    This preference assumes that you're using XSLT stylesheets as set in
    the :ref:`OPACXSLTDetailsDisplay` preference.

.. _tracesubjectsubdivisions-label:

TraceSubjectSubdivisions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Include

Asks: \_\_\_ subdivisions for searches generated by clicking on subject
tracings.

Values:

-  Don't include

   -  Searches for subject keywords (example:
      opac-search.pl?q=su,complete-subfield:%22Web%20sites%22)

-  Include

   -  Searches for complete subject fields (example:
      opac-search.pl?q=(su,complete-subfield:%22Web%20sites%22)%20and%20(su,complete-subfield:%22Design.%22))

Description:

-  When TraceSubjectSubdivisions is set to "Include," if you click on a
   subject with subdivisions (subfields other than 'a') they will be
   searched along with the subject heading (subfield 'a'). To have only
   the subject heading (subfield 'a') searched, set this preference to
   "Don't include."

    **Important**

    This preference assumes that you're using XSLT stylesheets as set in
    the :ref:`OPACXSLTDetailsDisplay` preference.

.. _useicu-label:

UseICU
^^^^^^^^^^^^^^^^^^^^

Default: Not using

Asks: \_\_\_ ICU Zebra indexing.

Values:

-  Not using

-  Using

Description:

-  ICU is a set of code libraries providing Unicode and Globalization
   support for software applications. What this means is ICU Zebra
   indexing is only necessary if you use non-roman characters in your
   cataloging. If using ICU Zebra indexing you will want to not use
   :ref:`QueryFuzzy`.

    **Important**

    This setting will not affect Zebra indexing, it should only be used
    to tell Koha that you have activated ICU indexing if you have
    actually done so, since there is no way for Koha to figure this out
    on its own.

    **Important**

    Talk to your system administrator when changing this preference to
    make sure that your system is set up properly for this to work.

.. _usequeryparser-label:

UseQueryParser
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Do not try

Asks: \_\_\_ to use the QueryParser module for parsing queries.

    **Note**

    Enabling this will have no impact if you do not have QueryParser
    installed, and everything will continue to work as usual.

Values:

-  Do not try

-  Try

Description:

-  This preference enables an experimental new query parser which opens
   the door for a more expressive and more-effective search syntax.

.. _results-display-label:

Results Display
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _defaultsortfield-&-defaultsortorder-label:

defaultSortField & defaultSortOrder
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

defaultSortField Default: author

defaultSortOrder Default: ascending

Asks: By default, sort search results in the staff client by \_\_\_,
\_\_\_

Description:

-  These preferences set the default sort field and sort order for
   searches on the staff side. Regardless of your choice, the other sort
   options are still available in the drop down list on the advanced
   search page.

defaultSortField Values:

-  author

-  call number

-  date added

-  date of publication

-  relevance

-  title

-  total number of checkouts

defaultSortOrder Values:

-  ascending

-  descending

-  from A to Z

-  from Z to A

.. _displayfacetcount-label:

displayFacetCount
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ facet counts.

Description:

-  This preference lets you decide if you show how many times a facet is
   used in your search results in the OPAC and the staff client. The
   relevance of these numbers highly depends on the value of the
   :ref:`maxRecordsForFacets` preference. Showing
   these numbers can potentially effect the performance of your
   searching, so test your system with different values for this
   preference to see what works best.

Values:

-  Don't show

-  Show

   |image107|

.. _displaylibraryfacets-label:

DisplayLibraryFacets
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: holding library

Asks: Show facets for \_\_\_

Values:

-  both home and holding library

-  holding library

-  home library

Description:

-  This preferenc controls the libraries facet that displays on search
   results in the staff and opac. The value selected here will determine
   which library(s) show in the facets when a search is run.

.. _facetlabeltruncationlength-label:

FacetLabelTruncationLength
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 20

Asks: Truncate facets length to \_\_\_ characters, in OPAC/staff
interface.

Description:

-  In the OPAC and the staff client your facets are cut off at 20
   characters by default. Depending on your layout this may be too many
   or two few letters, this preference lets you decide what number is
   best for your library's design.

.. _facetmaxcount-label:

FacetMaxCount
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 20

Asks: Show up \_\_\_ to facets for each category.

Description:

-  This preference allows you to control how many possible limits show
   under each heading (Author, Series, Topics, etc) on the facets in the
   OPAC.

.. _maxitemsinsearchresults-label:

maxItemsInSearchResults
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 20

Asks: Show up to \_\_\_ items per biblio in the search results

Description:

-  This preference will let you set how many results display by default
   when a search is run on the Staff Client.

.. _maxrecordsforfacets-label:

maxRecordsForFacets
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 20

Asks: Build facets based on \_\_\_ records from the search results.

Description:

-  By default Koha only bases facets on the first page of results
   (usually 20 results). This preference lets you tell Koha to based the
   facet descriptions and numbers on any number of search results
   returned. The higher this number the longer it will take for your
   search results to return, so test with various different values to
   find the best balance for your library.

.. _maxsearchresultsitemsperrecordstatuscheck-label:

MaxSearchResultsItemsPerRecordStatusCheck
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 20

Asks: For records with many items, only check the availability status
for the first \_\_\_ items.

Description:

-  Availability statuses may show incorrectly in search results if a
   record has more items than the limit set. Statuses will display
   correctly in the record details. Leave empty for no limit.

.. _numsearchresults-label:

numSearchResults
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 20

Asks: By default, show \_\_\_ results per page in the staff client.

.. _opacdefaultsortfield-and-opacdefaultsortorder-label:

OPACdefaultSortField & OPACdefaultSortOrder
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

OPACdefaultSortField Default: relevance

OPACdefaultSortOrder Default: ascending

Asks: By default, sort search results in the OPAC by \_\_\_, \_\_\_

Description:

-  These preferences set the default sort field and sort order for
   searches on the OPAC. Regardless of your choice, the other sort
   options are still available in the drop down list on the advanced
   search page.

OPACdefaultSortField Values:

-  author

-  call number

-  date added

-  date of publication

-  relevance

-  title

-  total number of checkouts

OPACdefaultSortOrder Values:

-  ascending

-  descending

-  from A to Z

-  from Z to A

.. _opacitemsresultsdisplay-label:

OPACItemsResultsDisplay
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ an item's library, location and call number in OPAC search results.
results.

Values:

-  Don't show

-  Show

Description:

-  This setting selects the information about an item that will display
   in the search results page of the OPAC. The results can display the
   status of an item and/or full details including branch, location, and
   call number. While the 'Show' option allows for more information to
   be displayed on the search results page, the information can be
   overwhelming for large collections with multiple branches.

.. _opacnumsearchresults-label:

OPACnumSearchResults
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 20

Asks: By default, show \_\_\_ results per page in the OPAC.

.. _searchwithisbnvariations-label:

SearchWithISBNVariations
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: don't search

Asks: When searching on the ISBN index, \_\_\_ on all variations of the
ISBN.

Values:

-  don't search

-  search

Descriptions:

-  With this preference set to search you'll be able to search for ISBNs
   even if there are dashes or spaces in the field. So if you search for
   9781843345855 but the ISBN was cataloged as 978-1843345855 you'll
   still be able to find it if this preference is set to 'search'.

    **Important**

    This preference has no effect if
    :ref:`UseQueryParser` is on

.. _unimarcauthorsfacetsseparator-label:

UNIMARCAuthorsFacetsSeparator
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: , (comma)

Asks: Use the following text as separator for UNIMARC authors facets \_\_\_

.. _search-form-label:

Search Form
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _advancedsearchlanguages-label:

AdvancedSearchLanguages
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Limit the languages listed in the advanced search drop-down to the
\_\_\_ ISO 639-2 language codes (separate values with \| or ,).

Description:

-  This preference will allow you to decide what languages show in the
   pull down menu on the advanced search page in the OPAC and the staff
   client. If this preference is left blank, all languages will show. To
   limit the languages that are shown enter their `ISO 639-2 language
   codes <http://www.loc.gov/standards/iso639-2/php/code_list.php>`__
   separated by comma ( , ) or bar ( \| ). For example to limit listing
   to French and Italian, enter ita\|fre.

.. _advancedsearchtypes-label:

AdvancedSearchTypes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: itemtype

Asks: Show tabs in OPAC and staff-side advanced search for limiting
searches on the \_\_\_ fields (separate values with \|).

Description:

-  On the advanced search page you can choose to allow filters on one or
   all of the following: Item types (itemtypes), Collection Codes
   (ccode) and Shelving Location (loc). If you would like to be able to
   limit searches on item type and shelving location for example you
   would enter itemtypes\|loc in the preference input box. The order of
   these fields will determine the order of the tabs in the OPAC and
   staff client advanced search screens. Values within the search type
   are OR'ed together, while each different search type is AND'ed
   together in the query limits. The current stored values are supported
   without any required modification.Each set of advanced search fields
   are displayed in tabs in both the OPAC and staff client. The first
   value in the AdvancedSearchTypes syspref is the selected tab; if no
   values are present, "itemtypes" is used. For non-itemtype values, the
   value in AdvancedSearchTypes must match the Authorised Value name,
   and must be indexed with 'mc-^ prefixing that name.

   |image108|

.. _expandedsearchoption-label:

expandedSearchOption
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: don't show

Asks: By default, \_\_\_ "More options" on the OPAC and staff advanced
search pages.

Values:

-  don't show

-  show

.. _intranetnumberspreferphrase-label:

IntranetNumbersPreferPhrase
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: don't use

Asks: By default, \_\_\_ the operator "phr" in the callnumber and
standard number staff client searches

Values:

-  don't use

-  use

Description:

-  When searching by call number and standard number (biblionumber) in
   Koha Staff Client you can choose to force the search to be a phrase
   search by setting this preference to 'use.^ This will allow for more
   accurate results over doing a general keyword field search.

.. _loadsearchhistorytothefirstloggeduser-label:

LoadSearchHistoryToTheFirstLoggedUser
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Load

Asks: Load the unlogged history to the next user. \_\_\_ history to the next client.

Values:

-  Don't load

-  Load

.. _opacnumberspreferphrase-label:

OPACNumbersPreferPhrase
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: don't use

Asks: By default, \_\_\_ the operator "phr" in the callnumber and
standard number OPAC searches

Values:

-  don't use

-  use

Description:

-  When searching by call number and standard number (biblionumber) in
   the Koha OPAC you can choose to force the search to be a phrase
   search by setting this preference to 'use.^ This will allow for more
   accurate results over doing a general keyword field search.

.. _serials-label:

Serials
---------------------------

*Get there:* More > Administration > Global System Preferences > Serials

.. _makepreviousserialavailable-label:

makePreviousSerialAvailable
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Default: Do not make

Asks: \_\_\_ previous serial automatically available when receiving a
new serial issue. The previous issue can also be set to another item
type when receiving a new one. Please note that the :ref:`item-level\_itypes <item-level\_itypes-label>`
syspref must be set to specific item.

Values:

-  Do not make

-  Make

.. _opacserialdefaulttab-label:

opacSerialDefaultTab
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Default: Subscriptions tab

Asks: Show \_\_\_ as default tab for serials in OPAC.

Values:

-  Holdings tab

-  Serial Collection tab

       **Important**

       Please note that the Serial Collection tab is currently available
       only for systems using the UNIMARC standard.

   |image109|

-  Subscriptions tab

   |image110|

.. _opacserialissuedisplaycount-label:

OPACSerialIssueDisplayCount
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Default: 3

Asks: Show the \_\_\_ previous issues of a serial on the OPAC.

Description:

-  This preference allows the administrator to select the number of
   recent issues for each serial which appear in the OPAC when the
   serial is accessed. This is just the default value, patrons can
   always click to see a full list of serials.

.. _renewserialaddssuggestion-label:

RenewSerialAddsSuggestion
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Default: Don't add

Asks: \_\_\_ a suggestion for a biblio when its attached serial is
renewed.

Values:

-  Add

-  Don't add

Description:

-  If set to "Add", this preference will automatically add a serial to
   the Acquisitions Purchase Suggestions menu when clicking the 'renew'
   option. If you don't use the Acquisitions module to manage serials
   purchases it's best to leave this set as 'Don't add.^

.. _routinglistaddreserves-label:

RoutingListAddReserves
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Default: Place

Asks: \_\_\_ received serials on hold if they are on a routing list.

Values:

-  Place

-  Don't place

.. _routinglistnote-label:

RoutingListNote
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Asks: Include following note on all routing lists

Description:

-  Text entered in this box will appear below the routing list
   information.

.. _routingserials-label:

RoutingSerials
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Default: Don't add

Asks: \_\_\_ received serials to the routing list.

Description:

-  This preference determines if serials routing lists are enabled or
   disabled for the library. When set to "Add", serials routing is
   enabled and a serial can be directed through a list of people by
   identifying who should receive it next. The list of people can be
   established for each serial to be passed using the Serials module.
   This preference can be used to ensure each person who needs to see a
   serial when it arrives at the library will get it. Learn more in the
   :ref:`routing list <create-a-routing-list-label>` section of this manual.

Values:

-  Add

-  Don't add

.. _staffserialissuedisplaycount-label:

StaffSerialIssueDisplayCount
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Default: 3

Asks: Show the \_\_\_ previous issues of a serial on the staff client.

Description:

-  This preference allows the administrator to select the number of
   recent issues for each serial which appear in the Staff Client when
   the serial is accessed. This is just the default value, staff members
   can always click to see a full list of serials.

.. _subscriptionduplicatedroppedinput-label:

SubscriptionDuplicateDroppedInput
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Asks: List of fields which must not be rewritten when a subscription is
duplicated (Separated by pipe \|) \_\_\_

Description:

-  When duplicating a subscription sometimes you don't want all of the
   fields duplicated, using this preference you can list the fields that
   you don't want to be duplicated. These field names come from the
   subscription table in the Koha database. Learn what fields are in
   that table on the `Koha DB
   Schema <http://schema.koha-community.org/tables/subscription.html>`__
   site.

.. _subscriptionhistory-label:

SubscriptionHistory
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Default: full history

Asks: When showing the subscription information for a bibliographic
record, preselect \_\_\_ view of serial issues.

Values:

-  brief history

   |image111|

-  full history

   |image112|

Description:

-  This preference determines what information appears in the OPAC when
   the user clicks the More Details option. The 'brief' option displays
   a one-line summary of the volume and issue numbers of all issues of
   that serial held by the library. The 'full' option displays a more
   detailed breakdown of issues per year, including information such as
   the issue date and the status of each issue.

.. _staff-client-label:

Staff client
------------------------------

*Get there:* More > Administration > Global system preferences > Staff
client

.. _staffappearance-label:

Appearance
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _display856uasimage-label:

Display856uAsImage
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Neither details or results page

Asks: Display the URI in the 856u field as an image on: \_\_\_

Values:

-  Both results and details pages

   -  **Important**

          Both :ref:`XSLTDetailsDisplay` and 
          :ref:`XSLTResultsDisplay` need to
          have values in order for this preference to work.

   -  **Important**

          This is only implemented for MARC21.

-  Detail page only

   -  **Important**

          :ref:`XSLTDetailsDisplay` needs to
          have a value in it for this preference to work.

   -  **Important**

          This is only implemented for MARC21 and UNIMARC.

   |image113|

-  Neither details or results page

-  Results page only

   -  **Important**

          :ref:`XSLTResultsDisplay` needs to
          have a value in it for this preference to work.

   -  **Important**

          This is only implemented for MARC21 and NORMARC.

Description:

-  In addition to this option being set, the corresponding XSLT option
   must be turned on. Also, the corresponding 856q field must have a
   valid MIME image extension (e.g., "jpg") or MIME image type (i.e.
   starting with "image/"), or the generic indicator "img" entered in
   the field. When all of the requirements are met, an image file will
   be displayed instead of the standard link text. Clicking on the image
   will open it in the same way as clicking on the link text. When you
   click on the image it should open to full size, in the current window.

   |image114|

.. _displayiconsxslt-label:

DisplayIconsXSLT
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Show

Asks: \_\_\_ the format, audience, and material type icons in XSLT
MARC21 results and detail pages in the staff client.

    **Important**

    :ref:`XSLTResultsDisplay` and/or
    :ref:`XSLTDetailsDisplay` must be set to use an
    XSLT stylesheet (default or custom) for these icons to show.

Values:

-  Don't show

-  Show

   |image115|

    **Note**

    See the :ref:`XSLT material type icons <material-type-cataloging-guide-label>`
    for more information on these icons.

.. _intranet\_includes-label:

intranet\_includes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: includes

Asks: Use include files from the \_\_\_ directory in the template
directory, instead of includes/. (Leave blank to disable)

.. _intranetcirculationhomehtml-label:

IntranetCirculationHomeHTML
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Show the following HTML in its own div on the bottom of the home
page of the circulation module:

    |image1198|

.. _intranetcolorstylesheet-label:

intranetcolorstylesheet
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Include the additional CSS stylesheet \_\_\_ to override specified
settings from the default stylesheet

Description:

-  This preference is used to set the background color and style of the
   staff client. The value is a .css file. The system administrator
   should determine which file is appropriate. Enter just a filename, a
   full local path or a complete URL starting with http:// (if the file
   lives on a remote server). Please note that if you just enter a
   filename, the file should be in the css subdirectory for each active
   theme and language within the Koha templates directory. A full local
   path is expected to start from your HTTP document root.

    **Important**

    Leave this field blank to disable.

.. _intranetfavicon-label:

IntranetFavicon
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Use the image at \_\_\_ for the staff client's favicon.

    **Important**

    This should be a complete URL, starting with http://

    **Note**

    Turn your logo into a favicon with the `Favicon
    Generator <http://antifavicon.com/>`__.

Description:

-  The favicon is the little icon that appears next to the URL in the
   address bar in most browsers. The default value for this field (if
   left blank) is the small 'K' in the Koha logo.

   |image116|

.. _intranetmainuserblock-label:

IntranetmainUserblock
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Show the following HTML in its own column on the main page of the
staff client

|image117|

|image118|

.. _intranetnav-label:

IntranetNav
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Show the following HTML in the More menu at the top of each page
on the staff client (should be a list of links or blank)

.. _intranetreportshomehtml-label:

IntranetReportsHomeHTML
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Show the following HTML in its own div on the bottom of the home
page of the reports module:

    |image1199|

.. _intranetslipprinterjs-label:

IntranetSlipPrinterJS
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Use the following JavaScript for printing slips.

Description:

-  The most logical use of this preference is in conjunction with the
   `jsPrintSetup <http://jsprintsetup.mozdev.org/>`__ Firefox add-on.
   Learn more about this preference and the add-on setup on the Koha
   wiki at
   http://wiki.koha-community.org/wiki/Setting_up_slip_printer_to_print_silently.

.. _intranetstylesheet-label:

intranetstylesheet
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Use the CSS stylesheet \_\_\_ on all pages in the staff interface,
instead of the default css (used when leaving this field blank).

Description:

-  The Intranetstylesheet preference is a layout and design feature for
   the intranet or staff client. This preference allows a library to
   customize the appearance of the Staff Client. Enter just a filename,
   a full local path or a complete URL starting with http:// (if the
   file lives on a remote server). Please note that if you just enter a
   filename, the file should be in the css subdirectory for each active
   theme and language within the Koha templates directory. A full local
   path is expected to start from your HTTP document root.

.. _intranetusercss-label:

IntranetUserCSS
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Include the following CSS on all pages in the staff client

.. _intranetuserjs-label:

IntranetUserJS
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Include the following JavaScript on all pages in the staff
interface

Description:

-  This preference allows the administrator to enter JavaScript or
   JQuery that will be embedded across all pages of the staff client.
   Administrators may use this preference to customize some of the
   interactive sections of Koha, customizing the text for the login
   prompts, for example. Sample JQuery scripts used by Koha libraries
   can be found on the wiki:
   http://wiki.koha-community.org/wiki/JQuery_Library.

.. _slipcss-label:

SlipCSS
^^^^^^^^^^^^^^^^^^^^^^

Asks: Include the stylesheet at \_\_\_ on Issue and Reserve Slips.

    **Important**

    This should be a complete URL, starting with http://

Description:

-  If you would like to style your receipts or slips with a consistent
   set of fonts and colors you can use this preference to point Koha to
   a stylesheet specifically for your slips.

.. _staffclientbaseurl-label:

staffClientBaseURL
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: The staff client is located at \_\_\_

    **Important**

    This should be a complete URL, starting with http:// or https://. 
    Do not include a trailing slash in the URL.

    **Note**

    This must be filled in correctly for CAS, svc, and load_testing to work.

.. _stafflangselectormode-label:

StaffLangSelectorMode
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: only footer

Asks: Display language selector on \_\_\_

Values:

-  both top and footer

-  only footer

-  top

.. _stafflogininstructions-label:

StaffLoginInstructions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Show the following HTML on the staff client login page

Description:

-  HTML entered in this field will appear above the login form 
   of your staff client

|image1345|

.. _template-label:

template
^^^^^^^^^^^^^^^^^^^^^^^^

Default: prog

Asks: Use the \_\_\_ theme on the staff interface.

Values:

-  prog

    **Important**

    Do not include a trailing slash in the URL this will break links
    created using this URL. (example: www.google.com not
    www.google.com/)

.. _xsltdetailsdisplay-label:

XSLTDetailsDisplay
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: default

Asks: Display details in the staff client using XSLT stylesheet at
\_\_\_

Values:

-  leave empty to not use the XSLT stylesheet

   -  In previous versions of Koha this was the setting that read
      'normally'

      |image119|

-  enter "default" for the default one

   |image120|

-  put a path to define a XSLT file

   -  ex: /path/to/koha/and/your/stylesheet.xsl

   -  If in a multi-language system you can enter {langcode} in the path
      to tell Koha to look in the right language folder

      -  ex:
         /home/koha/src/koha-tmpl/intranet-tmpl/prog/{langcode}/xslt/intranetDetail.xsl

      -  ex. http://mykoha.org/{langcode}/stylesheet.xsl

-  put an URL for an external specific stylesheet

   -  ex: http://mykoha.org/stylesheet.xsl

Description:

-  XSLT stylesheets allow for the customization of the details shown on
   the screen when viewing a bib record. This preference will allow you
   either use the default look that comes with Koha or design your own
   stylesheet.

.. _xsltlistsdisplay-label:

XSLTListsDisplay
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: default

Asks: Display lists in the staff client using XSLT stylesheet at
\_\_\_

Values:

-  leave empty to not use the XSLT stylesheet

   -  In previous versions of Koha this was the setting that read
      'normally'

-  enter "default" for the default one

-  put a path to define a XSLT file

   -  ex: /path/to/koha/and/your/stylesheet.xsl

   -  If in a multi-language system you can enter {langcode} in the path
      to tell Koha to look in the right language folder

      -  ex:
         /home/koha/src/koha-tmpl/intranet-tmpl/prog/{langcode}/xslt/intranetDetail.xsl

      -  ex. http://mykoha.org/{langcode}/stylesheet.xsl

-  put an URL for an external specific stylesheet

   -  ex: http://mykoha.org/stylesheet.xsl

Description:

-  XSLT stylesheets allow for the customization of the details shown on
   the screen when viewing a list. This preference will allow you
   either use the default look that comes with Koha or design your own
   stylesheet.

.. _xsltresultsdisplay-label:

XSLTResultsDisplay
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: default

Asks: Display results in the staff client using XSLT stylesheet at
\_\_\_

Values:

-  leave empty to not use the XSLT stylesheet

   -  In previous versions of Koha this was the setting that read
      'normally'

-  enter "default" for the default one

-  put a path to define a XSLT file

   -  ex: /path/to/koha/and/your/stylesheet.xsl

   -  If in a multi-language system you can enter {langcode} in the path
      to tell Koha to look in the right language folder

      -  ex:
         /home/koha/src/koha-tmpl/intranet-tmpl/prog/{langcode}/xslt/intranetDetail.xsl

      -  ex. http://mykoha.org/{langcode}/stylesheet.xsl

-  put an URL for an external specific stylesheet

   -  ex: http://mykoha.org/stylesheet.xsl

Description:

-  XSLT stylesheets allow for the customization of the details shown on
   the screen when viewing the search results. This preference will
   allow you either use the default look that comes with Koha or design
   your own stylesheet.

.. _options-label:

Options
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _audioalerts-label:

AudioAlerts
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't enable

Asks: \_\_\_ audio alerts for events defined in the audio alerts section
of administration.

Values:

-  Don't enable

-  Enable

    **Important**

    This feature is not supported by all browsers. Requires an HTML5
    compliant browser.

.. _hidepatronname-label:

HidePatronName
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Show

Asks: \_\_\_ the names of patrons that have items checked out or on hold
on detail pages or the "Place Hold" screen.

Values:

-  Don't show

-  Show

.. _intranetbookbag-label:

intranetbookbag
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Show

Asks: \_\_\_ the cart option in the staff client.

Values:

-  Don't show

-  Show

.. _intranetcatalogsearchpulldown-label:

IntranetCatalogSearchPulldown
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ a search field pulldown for 'Search the catalog' boxes.

Values:

-  Don't show

-  Show

.. _staffdetailitemselection-label:

StaffDetailItemSelection
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Enable

Asks: \_\_\_ item selection in record detail page.

Values:

-  Disable

-  Enable

Description:

-  This preference lets you choose to show (or not show) checkboxes to
   the left of every item in the holdings tab on the detail display of a
   record in the staff client. Showing these checkboxes allows the staff
   members to select multiple items to edit or delete at once.

   |image121|

.. _usewysiwyginsystempreferences-label:

UseWYSIWYGinSystemPreferences
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Don't show

Asks: \_\_\_ WYSIWYG editor when editing certain HTML system
preferences.

Values:

-  Don't show

-  Show

    |image1200|

Description:

-  This preference allows you to chang system preferences with HTML in
   them to WYSIWYG editors instead of plain text boxes.

.. _viewisbd-label:

viewISBD
^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ staff to view records in ISBD form on the staff client.

Values:

-  Allow

-  Don't allow

.. _viewlabeledmarc-label:

viewLabeledMARC
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ staff to view records in labeled MARC form on the staff
client.

Values:

-  Allow

-  Don't allow

.. _viewmarc-label:

viewMARC
^^^^^^^^^^^^^^^^^^^^^^^^

Default: Allow

Asks: \_\_\_ staff to view records in plain MARC form on the staff
client.

Values:

-  Allow

-  Don't allow

.. _tools-label:

Tools
-----------------------

*Get there:* More > Administration > Global System Preferences > Tools

.. _batch-item-label:

Batch Item
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These preferences are in reference to the :ref:`Batch Item
Modification <batch-item-modification-label>` tool.

.. _maxitemsforbatchdel-label:

MaxItemsForBatchDel
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 1000

Asks: Display up to \_\_\_ items in a single deletion batch.

Description:

-  In the :ref:`batch item delete tool <batch-item-deletion-label>` this will
   prevent the display of more than the items you entered in this
   preference, but you will be able to delete more than the number you
   enter here.

.. _maxitemsforbatchmod-label:

MaxItemsForBatchMod
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 1000

Asks: Process up to \_\_\_ items in a single modification batch.

Description:

-  In the :ref:`batch item modification
   tool <batch-item-modification-label>` this preference will prevent the editing
   of more than the number entered here.

.. _news-label:

News
~~~~~~~~~~~~~~~~~~~~~~~~~

.. _newsauthordisplay-label:

NewsAuthorDisplay
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: not at all

Asks: Show the author for news items: \_\_\_

Values:

-  Both OPAC and staff client

-  Not at all

-  OPAC only

-  Staff client only

.. _patron-cards-label:

Patron Cards
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These preferences are in reference to the :ref:`Patron Card
Creator <patron-card-creator-label>` tool.

.. _imagelimit-label:

ImageLimit
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Limit the number of creator images stored in the database to
\_\_\_ images.

.. _reports-label:

Reports
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These preferences are in reference to the Reports module.

.. _numsavedreports-label:

NumSavedReports
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 20

Asks: By default, show \_\_\_ reports on the Saved Reports page.

.. _upload-label:

Upload
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _uploadpurgetemporaryfilesdays-label:

UploadPurgeTemporaryFilesDays
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: blank

Asks: Automatically delete temporary uploads older than \_\_\_ days in
cleanup_database cron job.

.. _web-services-label:

Web services
-----------------------------------

*Get there:* More > Administration > Global system preferences > Web
services

.. _ils-di-label:

ILS-DI
~~~~~~~~~~~~~~~~~~~~~~~~

.. _ils-di-pref-label:

ILS-DI
^^^^^^^^^^^^^^^^^^^^

Default: Disable

Asks: \_\_\_ ILS-DI services for OPAC users

Values:

-  Disable

-  Enable

.. _ils-di:authorizedips-label:

ILS-DI:AuthorizedIPs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Asks: Allow IP addresses \_\_\_ to use the ILS-DI services (when enabled).

    **Note**

    Separate the IP addresses with commas and without spaces.
    For example: 15.78.193.62,197.85.10.1

    **Important**

    Leave the field blank to allow any IP address. 

.. _idref-pref-label:

IdRef
~~~~~~~~~~~~~~~~~~~~~~~

.. _idref-label:

IdRef
^^^^^^^^^^^^^^^^^^

Default: Disable

Asks: \_\_\_ the IdRef webservice from the opac detail page. IdRef
allows to request authorities from the Sudoc database.

Values:

-  Disable

-  Enable

Description:

-  IdRef is a French service for Sudoc autorities. Using the `Sudoc
   database <http://www.sudoc.abes.fr/>`__, it allows to request /
   modify / add authorities. If a record comes from the Sudoc (so 009 is
   filled with an integer), at the OPAC you will see "Author: Idref" if
   a 7..$3 (unimarc author) if filled with a ppn. On clicking on the
   Idref link, a popup will display.

    |image1201|

   The Idref webservice is requested and all records (by roles) for this
   author will be displayed

   |image1202|

   There is 1 line / record and 2 links at the end. 1 will request Koha
   (cgi-bin/koha/opac-search.pl?q=ident:003381862), the other one will
   redirect to the sudoc page (http://www.sudoc.fr/003381862).

-  **Important**

       Please note that this feature is available only for libraries
       using UNIMARC.

-  **Note**

       The French Sudoc database should not be confused with the US
       Superintendent of Documents (SuDocs) Classification Scheme.

.. _oai-pmh-label:

OAI-PMH
~~~~~~~~~~~~~~~~~~~~~~~

.. _oai-pmh-pref-label:

OAI-PMH
^^^^^^^^^^^^^^^^^^^^^^

Default: Disable

Asks: \_\_\_ Koha's OAI-PMH server.

Values:

-  Disable

-  Enable

Description:

-  Once enabled you can visit http://YOURKOHACATALOG/cgi-bin/koha/oai.pl
   to see your file. For the Open Archives Initiative-Protocol for
   Metadata Harvesting (OAI-PMH) there are two groups of 'participants':
   Data Providers and Service Providers. Data Providers (open archives,
   repositories) provide free access to metadata, and may, but do not
   necessarily, offer free access to full texts or other resources.
   OAI-PMH provides an easy to implement, low barrier solution for Data
   Providers. Service Providers use the OAI interfaces of the Data
   Providers to harvest and store metadata. Note that this means that
   there are no live search requests to the Data Providers; rather,
   services are based on the harvested data via OAI-PMH. Koha at present
   can only act as a Data Provider. It can not harvest from other
   repositories. The biggest stumbling block to having Koha harvest from
   other repositories is that MARC is the only metadata format that Koha
   indexes natively. Visit
   http://www.oaforum.org/tutorial/english/page3.htm for diagrams of how
   OAI-PMH works.

Learn more about OAI-PMH at: http://www.openarchives.org/pmh/

.. _oai-pmh:archiveid-label:

OAI-PMH:archiveID
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: KOHA-OAI-TEST

Asks: Identify records at this site with the prefix \_\_\_ :

.. _oai-pmh:autoupdatesets-label:

OAI-PMH:AutoUpdateSets
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Disable

Asks: \_\_\_ automatic update of OAI-PMH sets when a bibliographic
record is created or updated.

Values:

-  Disable

-  Enable

.. _oai-pmh:conffile-label:

OAI-PMH:ConfFile
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If this preference is left empty, Koha's OAI Server operates in normal
mode, otherwise it operates in extended mode. In extended mode, it's
possible to parameter other formats than marcxml or Dublin Core.
OAI-PMH:ConfFile specify a YAML configuration file which list available
metadata formats and XSL file used to create them from marcxml records.

For more information, see the :ref:`sample conf file <sample-oai-conf-file-label>`
section.

.. _oai-pmh:deletedrecord-label:

OAI-PMH:DeletedRecord
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: will never be emptied or truncated (persistent)

Asks: Koha's deletedbiblio table \_\_\_

Values:

-  will never have any data in it (no)

-  will never be emptied or truncated (persistent)

-  might be emptied or truncated at some point (transient)

.. _oai-pmh:maxcount-label:

OAI-PMH:MaxCount
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 50

Asks: Only return \_\_\_ records at a time in response to a ListRecords
or ListIdentifiers query.

Description:

-  This is the maximum number of records that would be returned based on
   ListRecord or ListIdentifier queries from harvesters. ListRecords
   harvest the entire records while the ListIdentifier is an abbreviated
   form of ListRecords, retrieving only headers rather than records.

.. _rest-api-prefs-label:

REST API
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _restdefaultpagesize-label:

RESTdefaultPageSize
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 20

Asks: Set the default number of results returned by the REST API endpoints 
to \_\_\_ per page.

Description:

-  This preference lets you choose the number of results per page you want

.. _restoauth2clientcredentials-label:

RESTOAuth2ClientCredentials 
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: Disable

Asks: \_\_\_ the OAuth2 client credentials grant for the REST API. 

    **Note**
 
    Requires Net::OAuth2::AuthorizationServer installed. 

    **Important**

    This system preference is experimental. 

.. _reporting-label:

Reporting
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _svcmaxreportrows-label:

SvcMaxReportRows
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Default: 10

Asks: Only return \_\_\_ rows of a report requested via the reports web
service.

Description:

-  This value will be used to limit the number of results returned by
   `public reports <#publicreport>`__.
