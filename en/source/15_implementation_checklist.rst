.. include:: images.rst


Implementation Checklist
========================

The following guide will walk you through the areas of Koha you need to
look at in order to prepare to start using the system.

`Data Migration <#imp-migration>`__
-----------------------------------

Before you can start using Koha you'll need to have some data. This can
be done by entering it all by hand, but most people already have their
data in electronic format of some sort and just need to reformat it a
bit for importing into Koha.

-  Create a list of libraries and enter their info and codes into
   `Libraries & Groups <#libsgroups>`__

-  Define your list of `Item Types <#itemtypeadmin>`__

-  Define your patron categories and enter the categories and their
   codes into `Patron Categories <#patcats>`__

-  Enter any additional patron information fields you use in your
   library in the `Patron Attributes <#patronattributetypes>`__

   -  Requires that you first set the
      `ExtendedPatronAttributes <#ExtendedPatronAttributes>`__ system
      preference if you have custom fields

-  Define all of your `Authorized Values <#authorizedvalues>`__

   -  `Collection codes <#ccode>`__

   -  `Shelving locations <#shelvelocvals>`__

   -  Item statuses (`lost <#lost>`__, `not for loan <#notforloan>`__,
      `damaged <#damageauth>`__, `withdrawn <#withdrawnauth>`__)

   -  Plus any others that are needed in your library

-  Optionally define `City/State/Postal Code <#citytowns>`__ combos

-  `Map your bibliographic data <#kohamarcmapping>`__ from your legacy
   system to Koha fields and migrate (remembering to use the collection,
   shelving, item type and library codes you entered in the above
   setting areas)

-  `Map your patron data <#patronimport>`__ from your legacy system to
   the Koha fields and migrate (remembering to use the patron and
   library codes you defined above)

-  Test your migrated data to be sure that everything is as you expect
   it to be, some things to test include:

   -  Check some of your titles with diacritics and make sure that they
      migrated properly.

   -  Check titles in a series and make sure that series information
      migrated properly.

   -  Make sure that your patrons have their contact information in the
      right fields.

   -  If your serials data was migrated search for these records in the
      catalog and confirm that they look right.

   -  If your serials data was migrated search for these records in the
      serials module and confirm that they look right.

   -  Check marc records to verify a variety of items are cataloged
      correctly

   -  Check cataloging process to see if all necessary fields are
      available

   -  If fines are migrated, check to see that they are applied
      correctly

   -  If holds are migrated, check to see they are accurate in catalog
      and patron record

`Admin Configuration <#impadmin>`__
-----------------------------------

Most of these preferences won't need to be changed to use your Koha
system, but there are a few that you might want to customize.

-  If your library uses CAS Authentication, you'll want to set the
   various `CAS system preferences <#casauthentication>`__

-  Administration System Preferences

   -  `KohaAdminEmailAddress <#KohaAdminEmailAddress>`__ : This is the
      email address that will be used by the system in 'from' lines and
      to send errors to if there is no email set for the branch

   -  `noItemTypeImages <#noItemTypeImages>`__ : Decide if you want to
      show item type icons in the staff client and opac

   -  `delimiter <#delimiter>`__ : This value will be put in between
      fields when exporting data from Koha

   -  `virtualshelves <#virtualshelves>`__ : Decide if you want the
      staff and/or patrons to use lists in Koha

   -  `AutoLocation <#AutoLocation>`__ : Require staff to log in to the
      staff client from a specific IP range

   -  `IndependentBranches <#IndependentBranches>`__ : Prevent
      librarians from editing content that belongs to other branches

-  Go through the `Log System Preferences <#logs>`__ and decide which
   actions you want to keep track of in the logs

-  Decide if you'd like to share your library's information with the
   Koha community by setting the `Sharing system
   preferences <#heaprefs>`__.

-  Decide what `cron jobs <#cronjobsch>`__ you need to run and when.

   -  If you're using the long overdue cron job be sure to set your
      `DefaultLongOverdueChargeValue <#DefaultLongOverdueChargeValue>`__,
      `DefaultLongOverdueLostValue <#DefaultLongOverdueLostValue>`__ &
      `DefaultLongOverdueDays <#DefaultLongOverdueLostValue>`__
      preferences.

`Localization Configuration <#implocal>`__
------------------------------------------

Koha is used worldwide and so you need to make sure you set your
localization preferences so that options throughout Koha appear properly
for your location/language.

-  Localization/Internationalization System Preferences

   -  `dateformat <#dateformat>`__ : Decide how dates are displayed
      throughout Koha

   -  `opaclanguagesdisplay <#opaclanguagesdisplay>`__ : Decide if
      patrons can choose what language the OPAC appears in

      -  `opaclanguages <#opaclanguages>`__ : Decide which languages the
         patrons can choose from

   -  `language <#languagepref>`__ : Decide which languages appear in
      the staff client

   -  `CalendarFirstDayOfWeek <#CalendarFirstDayOfWeek>`__ : Define your
      first day of the week

`Circulation Configuration <#impcirc>`__
----------------------------------------

Before you start circulating your collection you'll need to set up your
rules and preferences for circulation.

-  Define your `Circulation/Fine rules <#circfinerules>`__

-  Enter the `days your library is closed <#calholidays>`__ for fines
   and due date calculations

-  Circulation System Preferences

   -  `CircControl <#CircControl>`__ : Define whether circ rules are
      based on item's location, patron's location or transaction
      location

   -  `useDaysMode <#useDaysMode>`__ : Define how due dates are
      calculated

   -  `finesCalendar <#finesCalendar>`__ : Define how fines are
      calculated (for every late date or only for days the library is
      open)

   -  `SpecifyDueDate <#SpecifyDueDate>`__ : Decide if staff are allowed
      to override due dates on checkout

   -  `SpecifyReturnDate <#SpecifyReturnDate>`__ : Decide if you want to
      let the staff specify an arbitrary return date on checkin

   -  `itemBarcodeFallbackSearch <#itemBarcodeFallbackSearch>`__ :
      Decide if you want staff to be able to checkout using a keyword
      search (title, call number, etc)

   -  `AutomaticItemReturn <#AutomaticItemReturn>`__ : Decide if items
      are sent back to the owning branch when checked in

   -  `todaysIssuesDefaultSortOrder <#todaysIssuesDefaultSortOrder>`__ :
      Decide how items checked out today display on the patron record

   -  `previousIssuesDefaultSortOrder <#previousIssuesDefaultSortOrder>`__
      : Decide how items checked out prior to today display on the
      patron record

   -  `noissuescharge <#noissuescharge>`__ : Define the maximum amount a
      patron can owe before checkouts are blocked

   -  `ReturnBeforeExpiry <#ReturnBeforeExpiry>`__ : Decide if patrons
      need to return items before their accounts expire

   -  `AllowHoldsOnDamagedItems <#AllowHoldsOnDamagedItems>`__ : Decide
      if patrons can place holds on items that are marked as damaged

      -  `AllowHoldPolicyOverride <#AllowHoldPolicyOverride>`__ : Decide
         if you want the staff to be able to override the setting for
         the above at checkout

   -  `maxreserves <#maxreserves>`__ : Decide how many items a patron
      can have on hold at once

      -  `AllowHoldPolicyOverride <#AllowHoldPolicyOverride>`__ : Decide
         if you want the staff to be able to override the setting for
         the above at checkout

   -  `maxoutstanding <#maxoutstanding>`__ : Define the maximum amount a
      patron can owe before holds are blocked

      -  `AllowHoldPolicyOverride <#AllowHoldPolicyOverride>`__ : Decide
         if you want the staff to be able to override the setting for
         the above at checkout

   -  `ReservesMaxPickUpDelay <#ReservesMaxPickUpDelay>`__ : Define the
      number of days before a hold expires

   -  `WebBasedSelfCheck <#WebBasedSelfCheck>`__ : Decide if you want to
      use the built in web-based self-checkout system

      -  `AutoSelfCheckAllowed <#AutoSelfCheckAllowed>`__ : Decide if
         the self-checkout system requires login

      -  `ShowPatronImageInWebBasedSelfCheck <#ShowPatronImageInWebBasedSelfCheck>`__
         : Decide if you want patron images to show on the self checkout
         screen

   -  `AllowNotForLoanOverride <#AllowNotForLoanOverride>`__ : Decide if
      you want the staff to be able to checkout items marked as 'not for
      loan'

   -  `AllowRenewalLimitOverride <#AllowRenewalLimitOverride>`__ :
      Decide if you want staff to override the limit put on renewals

   -  `AllowFineOverride <#AllowFineOverride>`__ : Decide if you want
      staff to be able to override fine limits

   -  `AllowTooManyOverride <#AllowTooManyOverride>`__ : Descide if you
      want staff to be able to check out more than the limit to a patron

   -  `RenewalPeriodBase <#RenewalPeriodBase>`__ : Decide what date
      renewals are based on

   -  `finesMode <#finesMode>`__ : Switch to 'Calculate and Charge'
      before go live if you charge fines

   -  `OverdueNoticeBcc <#OverdueNoticeBcc>`__ : If you want to receive
      a copy of every overdue notice sent out, enter your email address
      here

   -  `emailLibrarianWhenHoldIsPlaced <#emailLibrarianWhenHoldIsPlaced>`__
      : Decide if you want an email every time a hold is placed

   -  `ReservesControlBranch <#ReservesControlBranch>`__ : Decide which
      branch's hold rules are considered first

   -  `soundon <#AudioAlerts>`__ : Decide if you want to have sounds on
      for circulation actions

   -  `FilterBeforeOverdueReport <#FilterBeforeOverdueReport>`__ : If
      you have a large amount of overdues, you might want to turn this
      preference on so as to allow you to filter before results appear

   -  `DisplayClearScreenButton <#DisplayClearScreenButton>`__ : If you
      have a lot of staff members sharing one circ computer you might
      want to enable this so that staff can clear the screen in between
      checkouts to protect patron's privacy

   -  `CircAutoPrintQuickSlip <#CircAutoPrintQuickSlip>`__ : Decide how
      you want Koha to react if you scan in a blank barcode on the
      checkout screen

   -  `SuspendHoldsIntranet <#SuspendHoldsIntranet>`__ and/or
      `SuspendHoldsOpac <#SuspendHoldsOpac>`__ : Decide if you want
      patrons and/or staff to be able to suspend holds

      -  `AutoResumeSuspendedHolds <#AutoResumeSuspendedHolds>`__ : If
         you allow holds to be suspended decide if you want them to
         automatically resume on the date entered by the staff and/or
         patron

   -  `OnSiteCheckouts <#OnSiteCheckouts>`__ : Decide if you want to
      allow items to be checked out for use within the library

   -  `RecordLocalUseOnReturn <#RecordLocalUseOnReturn>`__ : Set this to
      record local use of items when you check them in

-  Customize your `Notices & Slips <#notices>`__

-  Define your `Overdue Notice Triggers <#noticetriggers>`__

-  Set up your `cron jobs <#cronjobs>`__

   -  Populate `your holds queue <#buildholdscron>`__ (every 1-4 hours)

   -  Decide `when holds expire <#expiredholdscron>`__ (daily)

   -  `Calculate fines due <#finescronjob>`__ (daily)

      -  Fines on hourly loans will calculate when you check the items
         in

   -  `Mark long overdue items as lost <#longoverduecron>`__ (daily)

   -  Decide when the system `sends out messages <#msgqueuecron>`__ (1-4
      hours)

   -  Decide when the system `queues overdue
      notices <#overduenoticecron>`__ (daily)

   -  Set up `hold notices that didn't send for
      printing <#printholdcron>`__ (daily after overdues and message
      queue)

   -  Decide when the system `queues the advanced notice of items
      due <#advnoticecron>`__ (daily)

   -  Find holds that need to be `resumed and remove
      suspension <#unsuspendholdcron>`__ (daily)

   -  If you're allowing automatic renewal of items `set them to
      renew <#autorenewcron>`__ (nightly)

`Patron Configuration <#imppratrons>`__
---------------------------------------

You have already imported patron data from your old system, but there
are plenty of options available to you regarding patrons and their
accounts.

-  Enter your `staff members as patrons <#addstaffpatron>`__

   -  Define `staff members access permissions <#patronpermissions>`__

-  Patron System Preferences

   -  `autoMemberNum <#autoMemberNum>`__ : Decide if the patrons
      barcodes are auto-generated or if you enter them yourself

   -  `MaxFine <#MaxFine>`__ : Determine the maximum amount that people
      can owe in fines

   -  `NotifyBorrowerDeparture <#NotifyBorrowerDeparture>`__ : Decide
      when to warn staff that the patron account is about to expire

   -  `intranetreadinghistory <#intranetreadinghistory>`__ : Decide if
      the staff can see the patron's reading/checkout history

   -  `BorrowerMandatoryField <#BorrowerMandatoryField>`__ : List fields
      that you want to appear as mandatory on the patron add/edit form

   -  `BorrowersTitles <#BorrowersTitles>`__ : Add or change the titles
      for your patrons

   -  `borrowerRelationship <#borrowerRelationship>`__ : Add or change
      borrower relationships (child to adult and professional to
      organization)

   -  `AutoEmailPrimaryAddress <#AutoEmailPrimaryAddress>`__ : Determine
      if the patrons get an email confirming the creation of their
      account

   -  `EnhancedMessagingPreferences <#EnhancedMessagingPreferences>`__ :
      Decide if staff can choose from a series of notices (other than
      overdues) for patrons

   -  `EnhancedMessagingPreferencesOPAC <#EnhancedMessagingPreferencesOPAC>`__:
      Decide if patrons can choose from a series of notices (other than
      ovedues) for themselves

   -  `patronimages <#patronimages>`__ : Decide if you want to save
      patron images in your system

   -  `ExtendedPatronAttributes <#ExtendedPatronAttributes>`__ : Decide
      if you want to enable custom patron fields

   -  `minPasswordLength <#minPasswordLength>`__ : Enter the minimum
      number of characters you want passwords to have

   -  `BorrowerUnwantedField <#BorrowerUnwantedField>`__ : Decide what
      fields your library doesn't need to see on the patron entry form

-  Set up your `cron jobs <#cronjobs>`__

   -  Decide if you would like `children to automatically be come
      adults <#j2acron>`__

`Cataloging Configuration <#impcatalog>`__
------------------------------------------

Before you start cataloging in Koha you'll want to set up your
preferences and other rules.

-  Define your cataloging templates aka `MARC Bibliographic
   Frameworks <#marcbibframeworks>`__

   -  Run the `MARC Bibliographic Framework
      Test <#marcbibframeworkstest>`__ to be sure your changes are valid

-  Define any `authorized values <#authorizedvalues>`__ you might want
   to use in cataloging

-  Set up `custom classification sources <#classificationsources>`__ (if
   you use something other than the defaults)

-  Set up `MARC matching rules <#recordmatchingrules>`__ for importing
   records from mrc files or Z39.50

-  Set up `Koha to Keyword mapping <#keywordmapping>`__ for deciding how
   to display marc fields to the screen (still in beta - only one field)

-  Set up the `Z39.50 targets <#z3950admin>`__ you want to search for
   cataloging (and acquisitions)

-  Cataloging System Preferences

   -  `URLLinkText <#URLLinkText>`__ : Enter text to display when 856
      fields do not have pre-defined labels

   -  `hide\_marc <#hide_marc>`__ : If you are unfamiliar with MARC you
      can have the MARC fields number hidden

   -  `LabelMARCView <#LabelMARCView>`__ : Choose how you want duplicate
      fields to appear on the editor

   -  `DefaultClassificationSource <#DefaultClassificationSource>`__ :
      Choose which classification source is the default in your library

   -  `advancedMARCeditor <#advancedMARCeditor>`__ : Decide if you need
      labels to appear on your MARC editor

   -  `marcflavour <#marcflavour>`__ : Choose your MARC format

   -  `itemcallnumber <#itemcallnumber>`__ : Enter which field and
      subfields to look into for the call number

   -  `MARCOrgCode <#MARCOrgCode>`__ : Enter your MARC Organizational
      Code (not the same as your OCLC number)

   -  `autoBarcode <#autoBarcode>`__ : Decide if Koha generates item
      barcodes for you

   -  `OpacSuppression <#OpacSuppression>`__ : Decide if you want to
      hide items marked as suppressed from the OPAC search results

-  Set up your `cron jobs <#cronjobs>`__

   -  Decide when the system `checks URLs in catalog
      records <#checkurlcron>`__ to see if they are still valid

`Authorities Configuration <#impauthorities>`__
-----------------------------------------------

Koha has the ability to keep track of your authority records and how
they're linked to your bibliographic records. Before using authorities
you should configure several preferences.

-  Set `Authority Frameworks <#authoritiesadmin>`__ aka templates

-  Authority System Preferences

   -  `BiblioAddsAuthorities <#BiblioAddsAuthorities>`__ : Decide if
      Koha creates authorities when cataloging

   -  `dontmerge <#dontmerge>`__ : Decide if updates to authorities
      trigger updates to the bibliographic records that link to them

   -  `AutoCreateAuthorities <#AutoCreateAuthorities>`__ : Decide when
      authorities are created

   -  `LinkerModule <#LinkerModule>`__ : Decide which match the
      authority linker should use

   -  `LinkerOptions <#LinkerOptions>`__ : Decide if you want authority
      linking to be broader or more specific

   -  `CatalogModuleRelink <#CatalogModuleRelink>`__ : Decide if you
      want to enable authority linking while cataloging

-  Set up your `cron jobs <#cronjobs>`__

   -  Choose when the system looks for authorities updates to `merge
      changes into bibliographic records <#mergeauthcron>`__

`Searching Configuration <#impsearching>`__
-------------------------------------------

There are several system preferences related to searching, it is not
always recommended to make too many changes to these preferences since
they are set to get you the most relevant results. If you would like to
change the default way that Koha handles searching, view the `Searching
system preferences <#searchingprefs>`__ tab.

-  Set up your `cron jobs <#cronjobs>`__

   -  Decide how often your `system rebuilds the search
      index <#rebuildsearchcron>`__ (4-10 min)

-  Searching System Preferences

   -  `AdvancedSearchTypes <#AdvancedSearchTypes>`__ : Decide which
      authorized value fields you want patrons and staff to be able to
      limit their advanced searches by

   -  `AdvancedSearchLanguages <#AdvancedSearchLanguages>`__ : Decide
      which languages you want people to be able to limit to via the
      search engine

   -  `UseAuthoritiesForTracings <#UseAuthoritiesForTracings>`__ :
      Decide how you want Koha to handle subject searches in the OPAC

      -  `TraceCompleteSubfields <#TraceCompleteSubfields>`__ : Decide
         how you want Koha to handle subject searches in the OPAC

      -  `TraceSubjectSubdivisions <#TraceSubjectSubdivisions>`__ :
         Decide how you want Koha to handle subject searches in the OPAC

   -  `displayFacetCount <#displayFacetCount>`__ : Decide whether to
      show facet counts on search results

`OPAC Configuration <#impopac>`__
---------------------------------

There are a lot of ways you can customize your OPAC in Koha.

-  Decide how you want your OPAC to look & what content you want on the
   main page

-  Create a library branded stylesheet using CSS

   -  **Important**

          Do not edit the default CSS files, instead create a new one,
          that way the system can always fall back on the original CSS.

-  Create a custom XSLT stylesheet to change the way search results and
   bib records appear in the OPAC

-  OPAC System preferences

   -  `OPACBaseURL <#OPACBaseURL>`__ : Enter your library's url

   -  `opacuserlogin <#opacuserlogin>`__ : Decide if you want to allow
      patrons to login to the OPAC to access customized functionality
      (searching will be allowed without logging in)

      -  `RequestOnOpac <#RequestOnOpac>`__ : Decide if patrons can
         place holds via the OPAC

      -  `OpacPasswordChange <#OpacPasswordChange>`__ : Decide if
         patrons can change their password (don't allow this if you're
         using LDAP)

      -  `OpacRenewalAllowed <#OpacRenewalAllowed>`__ : Decide if
         patrons can renew their checked out items via the OPAC

      -  `opacreadinghistory <#opacreadinghistory>`__ : Decide if
         patrons can view their reading/checkout history via the OPAC

      -  `reviewson <#reviewson>`__ : Decide if you want to allow
         patrons to comment on bib records via the OPAC

      -  `OpacStarRatings <#OpacStarRatings>`__ : Decide if patrons can
         leave star ratings

      -  `virtualshelves <#virtualshelves>`__ : Decide if you want
         patrons to be able to create Lists

      -  `OpacAllowPublicListCreation <#OpacAllowPublicListCreation>`__
         : If patrons can create lists then decide if they are allowed
         to create public lists

      -  `suggestion <#suggestionspref>`__ : Decide if you want patrons
         to be able to submit purchase suggestions

      -  `OPACViewOthersSuggestions <#OPACViewOthersSuggestions>`__ :
         Decide if you want patrons to be able to see purchase
         suggestions made by other patrons

   -  `opacbookbag <#opacbookbag>`__ : Decide if patrons can save items
      into their cart

   -  `AnonSuggestions <#AnonSuggestions>`__ : Decide if you want non
      logged in users to be able to make purchase suggestions

   -  `LibraryName <#LibraryName>`__ : Enter your library name for
      display in the <title> tag and on the top of the OPAC

   -  `opaccredits <#opaccredits>`__ : Enter HTML to appear at the
      bottom of every page in the OPAC

   -  `OpacMainUserBlock <#OpacMainUserBlock>`__ : Enter HTML that will
      appear in the center of the main OPAC page

   -  `OpacNav <#OpacNav>`__ : Enter HTML that will appear to the left
      on the main OPAC page

   -  `OpacNavBottom <#OpacNavBottom>`__ : Enter HTML that will appear
      below OpacNav

   -  `OpacNavRight <#OpacNavRight>`__ : Enter HTML that will appear
      below the login box on the right

   -  `opacheader <#opacheader>`__ : Enter the HTML that will appear
      above the search box on the OPAC

   -  `OPACNoResultsFound <#OPACNoResultsFound>`__ : Enter the HTML that
      will appear when no results are found

   -  `OPACResultsSidebar <#OPACResultsSidebar>`__ : Enter the HTML that
      will appear below the facets on your search results

   -  `OPACMySummaryHTML <#OPACMySummaryHTML>`__ : Enter the HTML that
      will appear in the far right of the circulation summary in the
      OPAC

   -  Customize your stylesheets:

      -  `OPACUserCSS <#OPACUserCSS>`__ : Enter any additional fields
         you want to define styles for

      -  `opaclayoutstylesheet <#opaclayoutstylesheet>`__ : Point to a
         CSS file on your Koha server

   -  `OpacHighlightedWords <#OpacHighlightedWords>`__ : Decide if you
      want search terms to be highlighted on the search results

   -  `hidelostitems <#hidelostitems>`__ : Decide if you want to show
      patrons items you have marked as lost

   -  `BiblioDefaultView <#BiblioDefaultView>`__ : Decide what view is
      the default for bib records on the OPAC

   -  `OPACShelfBrowser <#OPACShelfBrowser>`__ : Decide if you want to
      enable the shelf browse functionality

   -  `OPACURLOpenInNewWindow <#OPACURLOpenInNewWindow>`__ : Decide if
      URLs clicked in the OPAC are opened in a new window

   -  `SearchMyLibraryFirst <#SearchMyLibraryFirst>`__ : If you have a
      multi-branch system decide if you want patrons to search their
      library first

   -  `OpacAuthorities <#OpacAuthorities>`__ : Decide if you want
      patrons to be able to search your authority file

   -  `OpacBrowser <#OpacBrowser>`__ : Decide if you want patrons to
      browse your authority file (French libraries only)

   -  `OPACSearchForTitleIn <#OPACSearchForTitleIn>`__ : Choose which
      libraries you want patrons to be able to re-run their search in

   -  `OpacAddMastheadLibraryPulldown <#OpacAddMastheadLibraryPulldown>`__
      : If you're a multi-branch system you can add a pull down to the
      search bar for patrons to search which library to search

   -  `EnableOpacSearchHistory <#EnableOpacSearchHistory>`__ : Decide if
      you want the system to keep a search history

-  Set up your `cron jobs <#cronjobs>`__

   -  If you have the `OpacBrowser <#OpacBrowser>`__ preference set
      decide `when you want the contents to
      rebuild <#authbrowsercron>`__ (French libraries only)

   -  If you have `custom RSS feeds <#customrss>`__, decide when you
      want the `feed to be populated <#customrssfeedcron>`__

`Editable OPAC Regions <#editableopac>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Using the OPAC system preferences you can customize various regions, the
following graphic will define what preferences update each of the
regions in the Bootstrap theme.

OPAC Editable Regions
|image1068|

`Enhanced Content Configuration <#impenhanced>`__
-------------------------------------------------

Koha allows you to pull in content from outside sources to enhance your
bib records. All of this content can be toggled on and off using the
enhanced content system preferences.

-  `FRBR/Editions <#frbrenhancedprefs>`__

   -  If you would like to have your OPAC and/or staff client show an
      'Editions' tab on the bib record, you want to enable one or the
      other FRBR preferences and then either one or both of the ISBN
      services (XISBN and ThingISBN).

-  `Amazon <#amazonprefs>`__ : This service is free and just requires
   that you visit http://aws.amazon.com to sign up

   -  Using the Amazon preferences you can choose to show cover images
      from Amazon.

-  `Babelthèque <#Babelthequeprefs>`__

   -  This is a pay service. Contact Babelthèque to learn how to enable
      this content in the OPAC.

-  `Baker and Taylor <#btcontentprefs>`__

   -  This is a pay service from Baker & Taylor. Contact Baker & Taylor
      for the information to enter into these preferences.

-  `HTML5 Media <#html5>`__

   -  This allows libraries to embed streaming media in their catalog

-  `Google <#googleprefs>`__

   -  This service is free and does not require registration, simply
      enable GoogleJackets and you're set to go.

-  `I Deam Books <#IDreamLibraries>`__

   -  This is a free service that compiles reviews for popular titles
      from many different sources.

-  `LibraryThing <#librarythingprefs>`__

   -  With the exception of ThingISBN, you will need to contact
      LibraryThing for the information to enter into these preferences

   -  Enabling ThingISBN will help to populate the editions tab on the
      bib record display if you have enabled FRBR.

-  `Novelist <#novelistselect>`__

   -  This is a pay service from Ebsco. Contact Ebsco for the
      information to enter into these preferences

-  `OCLC <#oclcprefs>`__

   -  XISBN is used to populate the editions tab on the bib record
      display if you have enabled FRBR. This service is free for up to
      999 queries a day.

-  `Open Library <#OpenLibraryPrefs>`__

   -  Open Library project is an open system that you can pull cover
      images (and in the future additional content) from

-  `Overdrive <#overdriveprefs>`__

   -  This is a pay service that libraries can subscribe to for ebook
      content. If the library subscribes to Overdrive they can integrate
      that content in to Koha for free.

-  `Syndetics <#Syndeticsprefs>`__

   -  This is a pay service from Syndetics to add content for your bib
      records. Contact Syndetics for the information to enter into these
      preferences.

-  `Tagging <#taggingprefs>`__

   -  Choose whether or not you want to allow patrons to add tags to
      records in Koha.

`Acquisitions Configuration <#impacq>`__
----------------------------------------

When using acquisitions in Koha you first need to define some defaults.

-  Set up your `funds & budgets <#budgetplanning>`__

-  Choose your `default currency <#currexchangeadmin>`__ and enter
   others if you order from multiple countries

-  Enter in your `vendor information <#acqvendors>`__

-  Create an `Framework with the code ACQ <#marcbibframeworks>`__ (if
   you're going to enter item records at the time of ordering or
   receiving)

-  Acquisitions System preferences

   -  `AcqCreateItem <#AcqCreateItem>`__ : Decide if an item record is
      created during acquisition

   -  `CurrencyFormat <#CurrencyFormat>`__ : Decide how you want
      monetary amounts to display

   -  `gist <#gist>`__ : Enter your sales tax (if you are billed for
      tax)

   -  `OrderPdfFormat <#OrderPdfFormat>`__ : Decide what format you want
      your print orders to use

`Serials Configuration <#impserials>`__
---------------------------------------

When you use serials there are a few options you can set before hand.

-  Serials System Preferences

   -  `RenewSerialAddsSuggestion <#RenewSerialAddsSuggestion>`__ :
      Decide if you want renewing serials to add a suggestion for easy
      purchasing

   -  `RoutingSerials <#RoutingSerials>`__ : Decide if you want to route
      serials around your library

   -  `RoutingListAddReserves <#RoutingListAddReserves>`__ : Decide if
      holds are placed on serials when there is a routing list in place

-  Cataloging System Preferences

   -  `StaffSerialIssueDisplayCount <#StaffSerialIssueDisplayCount>`__ :
      Decide how many of the most recent issues to display in the staff
      client

   -  `OPACSerialIssueDisplayCount <#OPACSerialIssueDisplayCount>`__ :
      Decide how many of the most recent issues to display in the OPAC

   -  `SubscriptionHistory <#SubscriptionHistory>`__ : Decide how you
      want the subscription information to display in the OPAC

`Planning for Go-Live <#impgolive>`__
-------------------------------------

Once you have all of your settings ready, you need to prepare for making
your system live:

-  Decide if you need training by an outside service or if your staff
   can do the training themselves.

-  Make sure that there is time for your staff to play with your test
   system and get comfortable with it

-  If this is a migration, work with your previous company to extract
   data right before you go live

-  Come up with URLs for your new Koha OPAC & Staff Client

-  Make sure that if you're hosting your own system you have a backup
   plan

SOPAC2 Installation
===================

`Introduction <#sopacintro>`__
------------------------------

This is an installation guide for SOPAC2 and its Koha connector. It has
been tested on Debian Lenny and Ubuntu Jaunty with Drupal 6.12 and Koha
3.0.x. It does not cover the installation of Koha and Drupal, only
SOPAC, its dependencies and the connector.

`Installation of Locum and Insurge <#sopacinstall>`__
-----------------------------------------------------

Locum and Insurge are the two libraries used primarily by SOPAC. They
serve as a layer of abstraction to the data. Insurge manages the social
aspect (tags, reviews, ratings), while Locum manages the connection to
the ILS via the connector. Both libraries use a different database from
that of Drupal.

`Dependencies <#sopacdepend>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There are no packages for Debian MDB2 yet, you can install it via pear:

::

    # apt-get install php-pear
    # pear install MDB2
    # pear install MDB2#mysql

`Download <#sopacdownload>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Download the Locum and Insurge libraries from SVN:

::

    # cd /usr/local/lib
    # svn co http://dobby.darienlibrary.org/svn/locum/trunk/ locum
    # svn co http://dobby.darienlibrary.org/svn/insurge/trunk/ insurge

`Creation of the Database <#sopaccreatedb>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

    $ mysql -u root
    mysql> create database scas;
    mysql> grant all privileges on scas.* to scas_user@'localhost' identified by 'scas_pass';
    mysql> flush privileges;
    mysql> exit

`Sync DSN <#sopacdsn>`__
~~~~~~~~~~~~~~~~~~~~~~~~

This file will provide the connection information to a DB libraries:

::

    # nano /usr/local/etc/locum_insurge_dsn.php

It should contain:

::

    <?php
    $dsn = 'mysql://scas_user:scas_pass@localhost/scas';

`Installation of Insurge <#sopacinstallinsurge>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you customize the name of the database, remember to edit the sql
file:

::

    # nano /usr/local/lib/insurge/sql/scas_insurge.sql

Import Insurge:

::

    $ mysql -u root -p < /usr/local/lib/insurge/sql/scas_insurge.sql

Configure Insurge:

::

    # nano /usr/local/lib/insurge/config/insurge.ini

The variables in insurge.ini are empty. The default values are too long
and cause MySQL errors.

Here is a sample of insurge.ini

::

    ; This is the Locum configuration file
    ; General configuration options for your installation of Insurge.
    [insurge_config]
    dsn_file = "/usr/local/etc/locum_insurge_dsn.php"
    ; This is where you configure your repository membership information.
    ;
    ; parent_server is the server name of the repository parent server you have been
    ; told to use.
    ; group_id = The group ID you have been given by your repository admin.
    ; These configuration points are OPTIONAL and are only necessary if you are
    ; participating in a repository relationship.
    [repository_info]
    parent_server = ""
    group_id = ""
    group_key = ""

`Installation of Locum <#sopacinstallocum>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The same procedure applies to Locum

::

    # nano /usr/local/lib/locum/sql/scas_locum.sql
    # mysql < /usr/local/lib/locum/sql/scas_locum.sql
    # nano /usr/local/lib/locum/sql/locum_init.sql
    # mysql < /usr/local/lib/locum/sql/locum_init.sql
    # nano /usr/local/lib/locum/config/locum.ini
    # mkdir /usr/local/var
    # mkdir /usr/local/var/log

Configure the DSN:

::

    [locum_config]
    dsn_file = "/usr/local/etc/locum_insurge_dsn.php"

And the information for your Koha installation:

::

    [ils_config]
    ils = "koha";
    ils_version = "30x"
    ils_server = "localhost"
    ils_harvest_port = "80"

The rest depends on your Koha configuration.

`Installation of Koha Connector <#sopackoha>`__
-----------------------------------------------

Download the Koha connector using SVN:

::

    # cd /usr/local/lib/locum/connectors/
    # svn co http://dobby.darienlibrary.org/svn/connectors/koha/ locum_koha_30x

`Harvest Records <#sopacharvest>`__
-----------------------------------

Now that the connector is in place, we will be able to launch
harvest.php, a tool that will reap Locum DB Koha and fill the locum.

Start by configuring harvest.php:

::

    # nano /usr/local/lib/locum/tools/harvest.php

Here are the variables you must change:

::

    $first_record = 1;
    $last_record = 30;

These are the minimum and maximum biblionumbers from your Koha install.

Then start the harvest:

::

    # chmod +x /usr/local/lib/locum/tools/harvest.php
    $ /usr/local/lib/locum/tools/harvest.php

`Installation of Sphinx <#sopacphinx>`__
----------------------------------------

Sphinx is the indexer for the database used by Locum and Insurge.

`Dependencies <#sphinxdepend>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There is no Debian package for Sphinx so you'll have to compile the
source directly:

::

    # apt-get install g++ make libmysql++-dev

`Download and Compile <#sphinxdownload>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

    $ wget http://sphinxsearch.com/downloads/sphinx-0.9.8.tar.gz
    $ tar zxvf sphinx-0.9.8.tar.gz
    $ cd sphinx-0.9.8
    $ ./configure --prefix=/usr/local/sphinx
    $ make
    # make install
    # mkdir /usr/local/sphinx
    # mkdir /usr/local/sphinx/lib
    # cp api/sphinxapi.php /usr/local/sphinx/lib/
    $ rm -R sphinx-0.9.8*

`Creation of User and Group <#sphinxuser>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Creating a Sphinx user and change the owner:

::

    # adduser sphinx
    # addgroup sphinx
    # usermod -G sphinx sphinx
    # mkdir /usr/local/sphinx/var/run
    # chown -R sphinx.sphinx /usr/local/sphinx/var

`The Sphinx daemon <#demonsphinx>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Download:

::

    # cd /etc/init.d
    # wget http://www.thesocialopac.net/sites/thesocialopac.net/files/sphinx
    # chmod +x /etc/init.d/sphinx

Add Sphinx to the default boot services:

::

    # update-rc.d sphinx defaults

`Configuration <#sphinxconfig>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Copy the configuration file supplied with the source of Sphinx before
the change:

::

    # cp /usr/local/lib/locum/sphinx/sphinx.conf /usr/local/sphinx/etc/
    # sed 's/locum_db_user/scas_user/g' /usr/local/sphinx/etc/sphinx.conf > tmpfile;
    mv tmpfile /usr/local/sphinx/etc/sphinx.conf
    # sed 's/locum_db_pass/scas_pass/g' /usr/local/sphinx/etc/sphinx.conf > tmpfile; mv tmpfile /usr/local/sphinx/etc/sphinx.conf

And if you personalize the name of the database:

::

    # sed 's/scas/MY_DB/g' /usr/local/sphinx/etc/sphinx.conf > tmpfile; mv tmpfile /usr/local/sphinx/etc/sphinx.conf

`Indexing documents <#sphinxindexing>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Indexing is necessary if you want to use the search features of SOPAC.

You must first complete the Insurge table index

::

    # chmod +x /usr/local/lib/insurge/tools/update-index.php
    $ /usr/local/lib/insurge/tools/update-index.php

Then start indexing Sphinx

::

    $ /usr/local/sphinx/bin/indexer --all

Finally, we must start the daemon:

::

    # /etc/init.d/sphinx start

When the daemon is running, you can update the index with:

::

    $ /usr/local/sphinx/bin/indexer --all --rotate

`Installation of SOPAC2 <#installsopac>`__
------------------------------------------

Now to the SOPAC software itself:

`Download <#downloadsopac>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Download from SVN:

::

    $ cd /chemin/vers/drupal/sites/all/
    $ mkdir modules
    $ cd modules/
    $ svn co http://dobby.darienlibrary.org/svn/sopac/trunk/ sopac

`Installation <#sopacinstallation>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In Drupal's administration settings, activate the module. Also, enable
the dependencies:

-  Profile

-  PHP Filter

-  Path

The Drupal menu should now list these entries.

`Configuration <#configsopac>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Then go into the settings of SOPAC.

-  Configure the paths to the Locum and Insurge libraries

-  Choose a URL prefix SOPAC, in my "catalog". Create a node with
   content like:

::

    <?php
    print sopac_search_form('both');
    print theme('pages_catalog');

-  Check the Input Format "PHP Code"

-  Check Move to front page

-  In URL path settings, set the SOPAC URL prefix you have chosen.

Go to the root of Drupal, a search form will appear.

Remember to empty Drupal's cache when something does not work.

Drupal offers a few blocks, which are not configured by default. You
must specify on which page they should appear.
