
Acquisitions
============

The Koha Acquisitions module provides a way for the library to record
orders placed with vendors and manage purchase budgets.

-  *Get there:* More > Acquisitions

`Setup <#acqsetup>`__
---------------------

Before using the Acquisitions Module you will want to make sure that you
have completed all of the set up.

First, set your `Acquisitions System Preferences <#acqprefs>`__ and
`Acquisitions Administration <#acqadmin>`__ to match your library's
workflow. Before setting your `EDI Accounts <#ediaccounts>`__ and
`Library EANs <#libraryeans>`__ you will need to have `entered your
vendors <#addacqvendor>`__.

On the main acquisitions page you will see your library's funds listed.

Acquisitions Funds Summary
|image781|

    **Note**

    If the total line is confusing for the funds you have set up you can
    hide it by adding

    ::

        #funds_total {display:none;}

    to the `IntranetUserCSS <#IntranetUserCSS>`__ preference.

To see all active funds you can click the checkbox next to 'Show active
and inactive' above the funds table.

To see a history of all orders in a fund you can click on the linked
amount and it will run a search for you.

Breakdown of orders against the FIC Fund
|image782|

Learn more in the `Budget/Fund Tracking <#fundtracking>`__ section of
this manual.

`Vendors <#acqvendors>`__
-------------------------

Before any orders can be places you must first enter at least one
vendor.

`Add a Vendor <#addacqvendor>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To add a vendor click the 'New Vendor' button on the Acquisitions page

New Vendor Button on Acquisitions
|image783|

The vendor add form is broken into three pieces

-  The first section is for basic information about the Vendor

   Basic Vendor Information
   |image784|

   -  Of these fields, only the Vendor name is required, the rest of the
      information should be added to help with generating claim letters
      and invoices

-  The second section is for information regarding your contact at the
   Vendor's office

   Vendor Contact Details
   |image785|

   -  None of these fields are required, they should only be entered if
      you want to keep track of your contact's information within Koha

-  The final section is for billing information

   Vendor Ordering/Billing Information
   |image786|

   -  To be able to order from a vendor you must make them 'Active'

   -  For List Prices and Invoice Prices choose the currency

      -  Currencies are assigned in the `Currencies & Exchange
         Rates <#currexchangeadmin>`__ admin area

   -  If your library is charged tax mark your Tax Number as registered

   -  Note if you list prices and/or invoice prices include tax

   -  If the vendor offers a consistent blank discount, enter that in
      the 'Discount' field

      -  You can enter item specific discounts when placing an order

   -  Enter your tax rate if your library is charged taxes on orders

   -  If you know about how long it usually takes orders to arrive from
      this vendor you can enter a delivery time. This will allow Koha to
      estimate when orders will arrive at your library on the late
      orders report.

   -  Notes are for internal use

`View/Edit a Vendor <#editacqvendor>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To view a vendor's information page you must search for the vendor from
the Acquisitions home page. Your search can be for any part of the
Vendor's name:

Vendor Search Results
|image787|

From the results, click on the name of the vendor you want to view or
edit

Vendor Information Page
|image788|

To make changes to the vendor, simply click the 'Edit vendor' button.

If the vendor has no baskets attached to it then a 'Delete vendor'
button will also be visible and the vendor can be deleted. Otherwise you
will see a 'Receive shipment' button.

Receive shipment button
|image789|

`Vendor Contracts <#vendorcontracts>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can define contracts (with a start and end date) and attach them to
a vendor. This is used so that at the end of the year you can see how
much you spent on a specific contract with a vendor. In some places,
contracts are set up with a minimum and maximum yearly amount.

`Add a Contract <#addvendorcontract>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

At the top of a Vendor Information Page, you will see a 'New Contract'
button.

New Contract Button
|image790|

The contract form will ask for some very basic information about the
contract

New Contract Form
|image791|

    **Important**

    You cannot enter a contract retrospectively. The end date must not
    be before today's date.

Once the contract is saved it will appear below the vendor information.

Vendor with contracts
|image792|

It will also be an option when creating a basket

Contract Pull Down on New Basket Form
|image793|

`Managing Suggestions <#managesuggest>`__
-----------------------------------------

Purchase suggestions can be generated in one of two ways. You can create
suggestions via the staff client either for the library or `on the
patron's behalf <#patronsuggestions>`__ from their record. Depending on
your settings in the `suggestion <#suggestionspref>`__ system
preference, patrons may also be able to make purchase suggestions via
the OPAC. When a suggestion is waiting for library review, it will
appear on the Acquisitions home page under the vendor search.

Pending suggestions on Acquisitions
|image794|

It will also appear on the main staff dashboard under the module labels:

Pending suggestions on main page
|image795|

Clicking 'Manage suggestions' will take you to the suggestion management
tool. If there are no pending suggestions you can access the suggestion
management tool by clicking the 'Manage suggestions' link on the menu on
the left of the Acquisitions page.

Suggestion Management
|image796|

Your suggestions will be sorted into several tabs: Accepted, Pending,
Checked, Ordered and/or Rejected. Each accepted or rejected suggestion
will show the name of the librarian who managed the suggestion and the
reason they gave for accepting or rejecting it (found under 'Status').

An 'Accepted' suggestion is one that you have marked as 'Accepted' using
the form below the suggestions. A 'Pending' suggestion is one that is
awaiting action from the library. A 'Checked' suggestion is one that has
been marked as 'Checked' using the form before the suggestions. An
'Ordered' suggestion is on that has been ordered using the '`From a
purchase suggestion <#orderfromsuggestion>`__' link in your basket. A
'Rejected' suggestion is one that you have marked at 'Rejected' using
the form below the list of suggestions.

For libraries with lots of suggestions, there are filters on the left
hand side of the Manage Suggestions page to assist in limiting the
number of titles displayed on the screen.

Suggestion Filtering
|image797|

Clicking on the blue headings will expand the filtering options and
clicking '[clear]' will clear all filters and show all suggestions.

    **Note**

    The suggestions page will automatically be limited to suggestions
    for your library. To see information for all (or any other)
    libraries click on the 'Acquisition information' filter and change
    the library.

    Branch filter
    |image798|

When reviewing 'Pending' suggestions you can choose to check the box
next to the item(s) you want to approve/reject and then choose the
status and reason for your selection. You can also choose to completely
delete the suggestion by checking the 'Delete selected' box.

Pending Suggestions
|image799|

Another option for libraries with long lists of suggestions is to
approve or reject suggestions one by one by clicking on the title of the
suggestion to open a summary of the suggestion, including information if
the item was purchased.

Suggestion Information
|image800|

Clicking 'edit' to the right of the suggested title or at the to pof the
suggestion detail page will open a suggestion editing page.

Edit Purchase Suggestion
|image801|

From this form you can make edits to the suggestion (adding more details
or updating incorrect information provided by the patron). You can also
choose to accept or reject the suggestion on an individual basis.

-  Choosing to mark a request as 'Pending' will move the request back to
   the 'Pending' tab.

Reasons for accepting and rejecting suggestions are defined by the
`SUGGEST <#suggestauthorized>`__ authorized value.

Reasons for approving or rejecting suggestions
|image802|

If you choose 'Others...' as your reason you will be prompted to enter
your reason in a text box. Clicking 'Cancel' to the right of the box
will bring back the pull down menu with authorized reasons.

Enter reason for 'Others...'
|image803|

You can also assign this suggestion to a fund. Edit suggestion fund

This edit can trigger a notice (defined in the `Notices &
Slips <#notices>`__ tool with the `TO\_PROCESS <#toprocessnotice>`__
notice) to the fund owner that there is a suggestion ready for them to
manage if you have turned on the `cron job to generate these
notices <#emailsuggestfund>`__.

Once you have clicked 'Submit' the suggestion will be moved to the
matching tab. The status will also be updated on the patron's account in
the OPAC and an `email notice <#notices>`__ will be sent to the patron
using the template that matches the status you have chosen.

Purchase suggestions in the OPAC
|image804|

`Placing Orders <#placingacqorder>`__
-------------------------------------

To place an order you must first search for the vendor or bookseller you
want to send the order to.

    **Important**

    If you are planning on using EDIFACT to submit your order you will
    need to first set up your library's `EDI Accounts <#ediaccounts>`__
    and `EANs <#libraryeans>`__.

`Create a basket <#createacqbasket>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    **Note**

    If you're using EDI for ordering you will want to download your
    order record from your vendor before starting the process in Koha.

To create a basket you must first search for the vendor you're ordering
from:

New Basket / Add Basket Options
|image805|

And click the 'New basket' button to the right of the vendor name.

    **Note**

    You can also add to an existing basket by clicking the 'Add to
    basket' link to the far right of each basket's information in the
    results table.

After clicking 'New basket' you will be asked to enter some information
about the order:

Add Basket Form
|image806|

-  When adding a basket you want to give it a name that will help you
   identify it later

-  Enter in the Billing Place and Delivery Place (this will default the
   library you're logged in at)

-  If you would like to change the vendor you're ordering from you can
   use the Vendor pull down menu

-  The notes fields are optional and can contain any type of information

-  If you're ordering standing items (items which arrive regularly) then
   you will want to check the 'Orders are standing' box for this basket

If you have `added contracts <#addvendorcontract>`__ to the vendor
you're ordering from, you will also have an option to choose which
contract you're ordering these items under.

Basket with contract options
|image807|

When finished, click 'Save'

New Empty Basket
|image808|

Once your basket is created you are presented with several options for
adding items to the order.

-  If you are ordering another copy of an existing item, you can simply
   search for the record in your system.

   Search for existing records
   |image809|

   -  From the results, simply click 'Order' to be brought to the order
      form.

      Order form
      |image810|

      -  All of the details associated with the item will already be
         listed under 'Catalog details.'

-  If you allow patrons to make purchase suggestions (learn more in the
   `Managing Suggestions <#managesuggest>`__ section of this manual),
   then you can place orders from those suggestions. In order to keep
   track of suggestions that have been ordered and received you must
   place the order using this link.

   Approved Suggestions to Order From
   |image811|

   -  From the results, click 'Order' next to the item you want to order
      and you will be presented with the order form including a link to
      the suggestion

      Order from a Suggestion
      |image812|

      -  From this form you can make changes to the Catalog Details if
         necessary.

      -  When the item appears in your basket it will include a link to
         the suggestion.

         Suggestion Link in basket
         |image813|

   -  Orders added to the basket in this way will notify the patron via
      email that their suggestion has been ordered and will update the
      patron's '`My purchase suggestions <#opacmysuggestions>`__' page
      in the OPAC.

-  If you're using the `Serials <#serials>`__ module you can link your
   subscription order information to acquisitions by choosing to order
   'From a subscription'

   -  After clicking the order link you will be brought to a search page
      that will help you find your subscription

      Subscription order search
      |image814|

   -  Your results will appear to the right of the form and each
      subscription will have an 'Order' link to the right

      Subscription results
      |image815|

   -  Clicking 'Order' will bring the subscription info in to the order
      form without an 'Add item' section since you are just ordering a
      subscription and an item isn't needed

      Order from subscription
      |image816|

-  To order from a record that can't be found anywhere else, choose the
   'From a new (empty) record.'

   Order a new record
   |image817|

   -  You will be presented with an empty form to fill in all of the
      necessary details about the item you are ordering.

-  If you want to search other libraries for an item to purchase, you
   can use the 'From an external source' option that will allow you to
   order from a MARC record found via a Z39.50 search.

   Search for record to add
   |image818|

   -  From the results, click the Order link next to the item you want
      to purchase.

      Search Results to Order From
      |image819|

   -  If the item you're ordering from an external source looks like it
      might be a duplicate, Koha will warn you and give you options on
      how to proceed.

      Duplicate order warning
      |image820|

      -  From the warning, you can choose to order another copy on the
         existing bib record, create a new bib record, or cancel your
         order of this item.

   -  In the order form that pops up, you will not be able to edit the
      catalog details.

      New order from Z39.50 Search
      |image821|

-  The next option for ordering is to order from a staged record (`learn
   more about staging records <#stagemarc>`__).

       **Note**

       This is the option you will choose if you have an order file from
       your vendor.

   Staged Files to Order From
   |image822|

   -  From the list of files you are presented with, choose the 'Add
      orders' link to add the records in the staged file to your order.
      Staged records

   -  Next to each title is a checkbox, check the items you would like
      to order, or choose 'Check all' at the top. Depending on your
      settings in the `MarcFieldsToOrder <#MarcFieldsToOrder>`__
      preference Koha will populate the next screen with with the
      relevant Quantity, Price, Fund, Statistic 1, and Statistic 2 found
      within the staged file.Add orders from staged file

   -  In the 'Item Information' tab you can enter information that will
      be added to every ordered item such as item type, collection code
      and not for loan status.Item information

   -  If no information is imported from the MARC record regarding fund
      information the 'Default accounting details' tab can be used to
      apply values related to the accounting.Accounting details

-  The final option for ordering is to order from a list of titles with
   the highest hold ratios

   -  This option will take you to the Holds Ratio report where you can
      find items with a high hold ratio and order additional copies.
      Next to each title will be a link with the number of items to
      order, click that and it will add the item to your basket.Holds
      Ratio Order

With any of the above ordering options you're presented with an option
to notify patrons of the new item when it's received. The contents of
that notification can be edited in the `Notices & Slips <#notices>`__
tool and will have the code of ACQ\_NOTIF\_ON\_RECEIV. In the 'Patrons'
section you will see an option to 'Add user'. Click that button to add
patrons who will be notified of the new issue.

Patron notification search

-  In the window that pops up search for the patrons you'd like to
   notify and click 'Select'

-  Once you're done you can close the window and you'll see the list of
   patrons under the 'Patrons' sectionPatrons

After bringing in the bib information (for all import methods except for
the staged file), if your `AcqCreateItem <#AcqCreateItem>`__ system
preference is set to add an item when ordering you will enter the item
info next. You need to fill out at least one item record and then click
the 'Add' button at the bottom left of the item form.

Item order
|image823|

After clicking the 'Add item' button below the item record the item will
appear above the form and then you can enter your next item the same way
(if ordering more than one item).

Item ordered
|image824|

Once you have entered the info about the item, you need to enter the
Accounting information.

Accounting Details
|image825|

-  Quantity is populated by the number of items you've added to the
   order above.

   -  **Important**

          You cannot edit the quantity manually, you must click 'Add'
          below the item form to add as many items as you're ordering.

-  The list of funds is populated by the `funds <#funds>`__ you have
   assigned in the Acquisitions Administration area.

-  The currency pull down will have the
   `currencies <#currexchangeadmin>`__ you set up in the `Acquisitions
   Administration <#acqadmin>`__ area.

-  The vendor price is the price before any taxes or discounts are
   applied.

-  If the price is uncertain, check the uncertain price box.

   -  A basket with at least one uncertain price can't be closed.

-  If you are charged sales tax, choose that from the gstrate field

-  Enter the percentage discount you're receiving on this order, once
   you enter this, hit tab and Koha will populate the rest of the cost
   fields below.

-  If you added Planning Values when `creating the
   Fund <#addbudgetfund>`__, those values will appear in the two
   Planning Value fields.

Once you have filled in all of the fields click 'Save' to add the item
to your basket. If your price goes over the amount availalbe in the fund
you will be presented with a confirmation.

Fund warning
|image826|

The confirmation warning will allow you order past your fund amount if
you so choose.

After an item is added to the basket you will be presented with a basket
summary.

Basket with item info
|image827|

If you would like to see more details you can check the 'Show all
details' checkbox

Show all details
|image828|

From here, you can edit or remove the items that you have added.

-  Choosing to 'Delete the order' will delete the order line but leave
   the record in the catalog.

-  Choosing to 'Delete order and catalog record' removes both the order
   line and the record in the catalog.

   -  The catalog record cannot always be deleted. You might see notes
      explaining why.

      Can't delete order line
      |image829|

On the summary page, you also have the option to edit the information
that you entered about the basket by clicking the 'Edit basket header
information' button, to delete the basket altogether by clicking the
'Delete this basket' button, or to export your basket as a CSV file by
clicking the 'Export this basket as CSV' button.

Basket Buttons
|image830|

If you're using EDI for your order you can click the 'Create EDIFACT
order' button when you're done to send the file to the vendor and close
the basket.EDIFACT Order

Once you're sure your basket is complete, you can click 'Close this
basket' button to indicate that this basket is complete and has been
sent to the vendor.

    **Important**

    You must close the basket to be able to `receive
    items <#receiveacqorder>`__ when they arrive. Only items in closed
    baskets will show as ready to receive.

If you have your `BasketConfirmations <#BasketConfirmations>`__
preference set to show a confirmation, you will be asked if you are sure
about closing the basket.

Basket Closure Confirmation
|image831|

When closing the basket you can choose to add the basket to a group for
easy printing and retrieval. If you check the box to 'Attach this basket
to a new basket group' you will be brought to the group list where you
can print a PDF of the order.

Closed Baskets
|image832|

    **Important**

    A basket with at least one item marked as 'uncertain price' will not
    be able to be closed.

    A basket with items where the price is uncertain
    |image833|

Clicking the 'Uncertain Prices' button will call up a list of items with
uncertain prices to quick editing. From that list, you can quickly edit
the items by entering new prices and quantities.

Uncertain Prices
|image834|

    **Important**

    The Uncertain Prices page is independent of the basket. It is linked
    to the vendor so you will see all items on order with uncertain
    prices for that vendor.

Once your order is entered you can search for it through acquisitions or
view the information on the biblio detail page in the staff client (if
the `AcquisitionDetails <#AcquisitionDetails>`__ preference is set to
'Display).Acquisitions details

`Create a basket group <#acqbasketgroup>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A basket group is simply a group of baskets. In some libraries, you have
several staff members that create baskets, and, at the end of a period
of time, someone then groups them together to send to the vendor in
bulk. That said, it is possible to have one basket in a basket group if
that's the workflow used in your library.

`Printing baskets <#printacqbasket>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When you are finished adding items to your basket, click 'Close this
Basket.'

Close Basket
|image835|

You will be asked if you want to 'Attach this basket to a new basket
group with the same name'. A basket group is necessary if you want to be
able to print PDFs of your orders.

Create Purchase Order
|image836|

Your completed order will be listed on the Basket Grouping page for
printing or further modification.

Basket Grouping
|image837|

If you closed the basket before generating the EDIFACT order you can do
so from the basket grouping page.

Basket Grouping EDIFACT

Clicking the 'Print' button next to your order will generate a PDF for
printing, which will have all of your library information followed by
the items in your order.

Order found on PDF
|image838|

`Receiving Orders <#receiveacqorder>`__
---------------------------------------

    **Important**

    You must close the basket to be able to `receive
    items <#receiveacqorder>`__ when they arrive. Only items in closed
    baskets will show as ready to receive.

Orders can be received from the vendor information page

Receive from Vendor Information
|image839|

or the vendor search results page

Vendor Search Results
|image840|

After clicking 'Receive shipment' you will be asked to enter a vendor
invoice number, a shipment received date, a shipping cost and a budget
to subtract that shipping amount from.

Receive Shipment
|image841|

The receive page will list all items still on order with the vendor
regardless of the basket the item is from.

Receipt Summary
|image842|

To receive a specific item, click the 'Receive' link to the right of the
item.

Receive Item Form
|image843|

From this form you can alter the cost information. You can also choose
to mark only part of the order as received if the vendor didn't send
your entire order by checking only the boxes next to the items on the
left that you want to receive. The values you enter in the 'Replacement
cost' and 'Actual cost' will automatically populate the item record by
filling in subfield v (Cost, replacement price) and subfield g (Cost,
normal purchase price) on the item record after saving.

Item record after receipt
|image844|

You can also make edits to the item record from this form by clicking
the 'Edit' link next to each item. This will allow you to enter in
accurate call numbers and barcodes if you'd like to do that at the point
of receipt. Once you have made any changes necessary (to the order
and/or items, click 'Save' to mark the item(s) as received.

    **Note**

    If you have your
    `AcqItemSetSubfieldsWhenReceived <#AcqItemSetSubfieldsWhenReceived>`__
    preference set to add or change values on received items those
    changes will take place after you hit 'Save'.

Already Received Items
|image845|

If the item is no longer available from this vendor you can transfer the
order to another vendor's basket by clicking the 'Transfer' link to the
right of the title. This will pop up a vendor search box.

Transfer search
|image846|

From the results you can click 'Choose' to the right of the vendor you
would like to reorder this item from.

Transfer vendor
|image847|

You will then be presented with the open baskets for that vendor to
choose from. To move the item simply click 'Choose' to the right of the
basket you would like to add the item to.

Basket choice
|image848|

Once you have chosen you will be presented with a confirmation message.

Confirm transfer
|image849|

When you're finished receiving items you can navigate away from this
page or click the 'Finish receiving' button at the bottom of the screen.

If the item cannot be found anywhere you can cancel the order by
clicking 'Delete order' to the far right. This will prompt you to enter
your reason and confirm cancellation.Cancel order

You will also see that the item is received and/or cancelled if you view
the basket.

One item marked (rcvd) in basket
|image850|

`Invoices <#acqinvoices>`__
---------------------------

When orders are received invoices are generated. Invoices can be
searched by clicking on 'Invoices' in the left of the Acquisitions page.

Invoices page
|image851|

After searching, your results will appear to the right of the search
options.

Invoice search results
|image852|

From the results you can click the 'Details' link to see the full
invoice or 'Close' to note that the invoice is closed/paid for.

Invoice details
|image853|

If you're allowing the uploading of acquisitions files with the
`AcqEnableFiles <#AcqEnableFiles>`__ preference you will see the option
to manage invoice files next to the link to 'Go to receipt
page'AcqEnableFiles

To see or attach new files click the 'Manage invoice files' link

No invoice files
|image854|

From here you can find a file to upload and/or see the files you have
already attached.

Invoice files
|image855|

From the invoice search results you can also merge together two invoices
should you need to. Simply click the checkbox to the left of the
invoices you would like to merge and click the 'Merge selected invoices'
button at the bottom of the page. You will be presented with a
confirmation screen:

Merge invoices
|image856|

Click on the row of the invoice number you would like to keep and it
will be highlighted in yellow. Enter any different billing information
in the fields provided and click 'Merge'. The two invoices will become
one.

`Claims & Late Orders <#acqclaims>`__
-------------------------------------

If you have entered in an email address for the vendors in your system
you can send them claim emails when an order is late. Before you can
send claims you will need to set up an `acquisitions claim
notice <#ACQCLAIM>`__.

Upon clicking on the link to 'Late Orders' from the Acquisitions page
you will be presented with a series of filter options on the left hand
side. These filters will be applied only closed baskets.

Acquisitions Late Order Filters
|image857|

    **Note**

    The vendor pull down only shows vendors with closed baskets that are
    late.

Once you filter your orders to show you the things you consider to be
late you will be presented with a list of these items.

Late Orders
|image858|

To the right of each late title you will be see a checkbox. Check off
the ones you want a claim letter sent to and click 'Claim Order' at the
bottom right of the list. This will automatically send an email to the
vendor at the email address you have on file.

    **Note**

    The Estimated Delivery Date is based on the Delivery time value
    entered on the vendor record.

If you would rather use a different acquisition claim letter (other than
the default) you can `create that in the notices module <#addnotices>`__
and choose it from the menu above the list of late items.

Choose a Claim Letter
|image859|

`Acquisition Searches <#acqsearch>`__
-------------------------------------

At the top of the various Acquisition pages there is a quick search box
where you can perform either a Vendor Search or an Order Search.

Acquisition Searches
|image860|

In the Vendor Search you can enter any part of the vendor name to get
results.

Vendor Search Results
|image861|

Using the Orders Search you can search for items that have been ordered
with or without the vendor.

Order Search Box
|image862|

You can enter info in one or both fields and you can enter any part of
the title and/or vendor name.

Order Search Results
|image863|

Clicking the plus sign to the right of the Vendor search box will expand
the search and allow you to search for additional fields.

Expanded Orders Search
|image864|

Clicking Advanced Search to the right of the search button will give you
all of the order search options available.

Full Order Search
|image865|

`Budget/Fund Tracking <#fundtracking>`__
----------------------------------------

On the main acquisitions page there will be a table showing you all of
your active funds and a breakdown of what has been ordered or spent
against them.

Fund Table
|image866|

Clicking on the linked amounts under spent or ordered will show you a
summary of the titles ordered/received on that budget.

Titles Spent
|image867|

`EDI Process <#ediprocess>`__
-----------------------------

Previous sections explain all ordering options, this section pulls out
the parts related to EDI or EDIFACT ordering to help those who are only
using EDI for ordering.

    **Important**

    Koha uses the EDIFACT standard not the X12 standard for electronic
    ordering.

`EDI Questions for Vendors <#ediquestions>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You will want to gather the following information from your vendors
before beginning the set up process in Koha.

**EDI Accounts:** *This is the basic connection information for your
vendor. This will be used to fill in the `EDI Accounts <#ediaccounts>`__
section.*

-  **Vendor:** The name of the vendor

-  **Description:** A short description if additional explanation is
   needed ( especially if you have multiple accounts for one vendor ).

-  **Transport:** Does the vendor transmit EDI files via FTP, SFTP, or
   something else the requires special processing?

-  **Remote host:** The URL or IP address of the FTP/SFTP server

-  **Username:** The username for the above server

-  **Password:** The password for the above server

-  **Download directory:** The path on the server that contains files
   for Koha to download and process

-  **Upload directory:** The path on the server that Koha will upload
   files to for your vendor to process

-  **Qualifier:** Who assigned the SAN below?

   -  Choose one of the following:

      (14) EAN International

      (31B) US SAN Agency

      (91) Assigned by supplier

      (92) Assigned by buyer

-  **SAN:** The identifier for the vendor

   *Buyer qualifier and SAN are optional. Some vendors require a second
   buyer identifier in addition to the account EAN*.

-  **Buyer qualifier:** Who assigned the SAN below?

   -  Choose one of the following:

      (14) EAN International

      (31B) US SAN Agency

      (91) Assigned by supplier

      (92) Assigned by buyer

-  **Buyer SAN:** The identifier for the library

-  **Quotes enabled:** [y/n] Does this vendor support sending and
   receiving quotes via EDIfact and do you want to send and receive
   quotes via EDIfact?

-  **Orders enabled:** [y/n] Does this vendor support sending and
   receiving orders via EDIfact and do you want to send and receive
   orders via EDIfact?

-  **Invoices enabled:**\ [y/n] Does this vendor support sending and
   receiving invoices via EDIfact and do you want to send and receive
   invoices via EDIfact?

-  **Order file suffix:** The file suffix for order files

-  **Quote file suffix:** The file suffix for quote files

-  **Invoice file suffix:** The file suffix for invoice files

-  **Account number(s):** (list them all)

-  **Account description(s):** (the summary of what this number is for)

**EANs:** *Each library using EDIfact needs to specify a buyer
identifier know as a SAN or EAN. This will fill in the `Library
EANs <#libraryeans>`__ setting.*

-  **Library**

-  **EAN**

   -  Choose one of the following:

      (14) EAN International

      (31B) US SAN Agency

      (91) Assigned by supplier

      (92) Assigned by buyer

**MARC Order Fields or Grid Ordering:** *These values will fill in the
`MarcFieldsToOrder <#MarcFieldsToOrder>`__ preference.*

-  **price:** MARC21 field that contains the item price

-  **quantity:** MARC21 field that contains the number of items for the
   given record

-  **budget\_code:** MARC21 field that contains the Koha budget code to
   be debited

-  **discount:** MARC21 field the contains the discount as a percentage
   the the price will be discounted by

-  **sort2:** MARC21 field that will populate custom field sort1

-  **sort2:** MARC21 field that will populate custom field sort2

`EDI Setup <#edisetup>`__
~~~~~~~~~~~~~~~~~~~~~~~~~

Before you begin ordering using EDI you will want to take the following
steps:

-  Ask your vendor/bookseller/jobber for `connection
   information <#ediquestions>`__

   -  It might also be beneficial to ask for a few sample EDIFACT files
      from the vendor

-  Share with your vendor/bookseller/jobber your `library
   codes <#libsgroups>`__, `item type codes <#itemtypeadmin>`__, `fund
   codes <#funds>`__, and any other codes or `authorized
   values <#authorizedvalues>`__ they might need for creating your MARC
   order records

-  Communicate with your support provider or the community about whether
   you will need a plugin based on your vendor's answers

   -  For example ByWater Solutions has published plugins for specific
      vendors here:
      https://github.com/bywatersolutions/koha-plugin-edifact-enhanced

-  `Enter the vendor/bookseller/jobber <#addacqvendor>`__ in
   Acquisitions

-  Review your `Acquisitions system preferences <#acqprefs>`__

   -  Be sure to fill in the `MarcFieldsToOrder <#MarcFieldsToOrder>`__
      preference with values for order files

-  Enter your `EDI Accounts <#ediaccounts>`__

-  Enter your `Library EANs <#libraryeans>`__

-  Turn on the `EDI Cron <#edicron>`__ so that it can process files

`EDI Ordering <#ediordering>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The first step in ordering using EDI happens on the book vendor's
website. Each seller will use different language, but you will need to
place your order on their site and then download the MARC order file.
Some language that you might see included "basket", "order", "cart",
and/or "MARC order." Once you have this MARC file downloaded to your
computer you will want to log in to Koha and continue the process there.

Visit the `Stage MARC Records for Import <#stagemarc>`__ tool and upload
your file. Once presented with the confirmation screen proceed to
Acquisitions.

In Acquisitions `create a basket <#createacqbasket>`__ for the vendor
you ordered from. From the basket, choose to `order from a staged
file <#orderfromstagedfile>`__ and click 'Order' next to the file you
downloaded from your vendor and staged in Koha.

From the confirmation screen you will see all of the data in the MARC
file related to your order. If you are not seeing fields such as fund
and quanity filled in then be sure to confirm that your
`MarcFieldsToOrder <#MarcFieldsToOrder>`__ preference is set right.

Once you have added all of the items to the basket you can click the
'Create EDIFACT order' button.

EDIFACT Order

This will generate a pending file in the `EDIFACT
Messages <#edifactmsg>`__ in Koha. The pending files will be processed
by the `EDI Cron Job <#edicron>`__ and sent to your vendor.

`EDI Invoicing <#ediinvoice>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When the book vendor is done processing your files they will send an
invoice via EDI as well. The `EDI Cron Job <#edicron>`__ will grab
invoices and mark items found in the invoice as received and update your
funds without any need for manual intervention.

`EDIFACT Messages <#edifactmsg>`__
----------------------------------

A log of all messages sent and received via EDIFACT can be found under
EDIFACT Messages. EDIFACT Messages

Lists & Cart
============

Lists are a way to save a collection of content on a specific topic or
for a specific purpose. The Cart is a session specific storage space.

-  *Get there:* More > Lists

`Lists <#lists>`__
------------------

`Create a List <#createlist>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A list can be created by visiting the Lists page and clicking 'New List'

New List Button
|image868|

The new list form offers several options for creating your list:

New List Form
|image869|

-  The name is what will appear on the list of Lists

-  You can also choose how to sort the list

-  Next decide if your list is going to be private or public

   -  A Private List is managed by you and can be seen only by you
      (depending on your permissions settings below)

   -  A Public List can be seen by everybody, but managed only by you
      (depending on your permissions settings below)

-  Finally decide what your permissions will be on the list. You can all
   or disallow:

   -  anyone else to add entries

   -  anyone to remove his own contributed entries

      -  **Note**

             The owner of a list is always allowed to add entries, but
             needs permission to remove.

   -  anyone to remove other contributed entries    

A list can also be created from the catalog search results

New list from catalog search
|image870|

-  Check the box to the left of the titles you want to add to the new
   list

-  Choose [New List] from the 'Add to:' pull down menu

   New List from Search Results
   |image871|

   -  Name the list and choose what type of list this is

      -  A Private List is managed by you and can be seen only by you

      -  A Public List can be seen by everybody, but managed only by you

Once the list is saved it will accessible from the Lists page and from
the 'Add to' menu at the top of the search results.

`Add to a List <#addtolist>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To add titles to an existing list click on the list name from the page
of lists

List of Lists
|image872|

To open a list you can click the list name.

From that page you can add titles by scanning barcodes into the box at
the bottom of the page

Content of a List
|image873|

A title can also be added to a list by selecting titles on the search
results page and choosing the list from the 'Add to' menu

Add to List
|image874|

`Viewing Lists <#viewlist>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To see the contents of a list, visit the Lists page on the staff client

List of Lists
|image875|

Clicking on the 'List Name' will show the contents of the list

Content of a List
|image876|

From this list of items you can perform several actions

-  'New list' will allow you to create another list

-  'Edit' will allow you to edit the description and permissions for
   this list

-  'Send list' will send the list to the email address you enter (`view
   sample List email <#examplelistemail>`__)

-  'Download list' will allow you to download the cart using one of 3
   default formats or your `CSV Profiles <#csvprofiles>`__

-  'Print list' will present you with a printable version of the list

Using the filters at the top of each column you can find specific items
in your list.

`Merging Bibliographic Records Via Lists <#mergebibrecs>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

One way to merge together duplicate bibliographic records is to add them
to a list and use the Merge Tool from there.

List of Duplicate Records
|image877|

Once you have selected the records to merge together the process is the
same as if you had chosen to `merge via cataloging <#mergebibs>`__.

`Cart <#cart>`__
----------------

The cart is a temporary holding place for items in the OPAC and/or staff
client. The cart will be emptied once the session is ended (by closing
the browser or logging out). The cart is best used for performing batch
operations (holds, printing, emailing) or for getting a list of items to
be printed or emailed to yourself or a patron.

If you would like to enable the cart in the staff client, you need to
set the `intranetbookbag <#intranetbookbag>`__ system preference to
'Show.' To add things to the cart, search the catalog and select the
items you would like added to your cart and choose 'Cart' from the 'Add
to' menu

Add to Cart
|image878|

A confirmation will appear below the cart button at the top of the staff
client

Items added to Cart
|image879|

Clicking on the Cart icon will provide you with the contents of the cart

Cart Contents
|image880|

From this list of items you can perform several actions

-  'More details' will show more information about the items in the cart

-  'Send' will send the list to the email address you enter (`view
   sample Cart email <#examplecartemail>`__)

-  'Download' will allow you to download the cart using one of 3 default
   formats or your `CSV Profiles <#csvprofiles>`__

-  'Print' will present you with a printable version of the cart

-  'Empty and Close' will empty the list and close the window

-  'Hide Window' will close the window

Reports
=======

Reports in Koha are a way to gather data. Reports are used to generate
statistics, member lists, shelving lists, or any list of data in your
database.

-  *Get there:* More > Reports

`Custom Reports <#customreports>`__
-----------------------------------

Koha's data is stored in a MySQL database which means that librarians
can generate nearly any report they would like by either using the
`Guided Reports Wizard <#quidedreportwizard>`__ or writing their own
`SQL query <#reportfromsql>`__.

`Add Custom Report <#customreport>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`Guided Report Wizard <#quidedreportwizard>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The guided report wizard will walk you through a six step process to
generate a report.

Step 1: Choose the module you want to report on. This will determine
what tables and fields are available for you to query.

'Report is public' should be left to the default of 'No' in most cases.
A report can be made public if you intend to allow access to it through
the JSON webservice interface. This is a system that can be used by
developers to make custom presentations of the data from the report, for
example displaying it using a graphing API. To learn more speak to your
local developer.

-  A public report is accessible via a URL that looks like this:
   http://MYOPAC/cgi-bin/koha/svc/report?id=REPORTID

Chose Module for Report
|image881|

    **Note**

    If your system administrator has set up memcache on your server you
    might see one more option for the Cache expiry. This is related to
    your public reports. If you make the report public then it's
    constantly running and will cause a large load on your system.
    Setting this value prevents that.Cache expiry

Step 2: Choose a report type. For now, Tabular is the only option
available.

Report Type
|image882|

Step 3: Choose the fields you want in your report. You can select
multiple fields and add them all at once by using CTRL+Click on each
item you want to add before clicking the Add button.

Select database fields to query
|image883|

Step 4: Choose any limits you might want to apply to your report (such
as item types or branches). If you don't want to apply any limits,
simply click Next instead of making an option.

Choose limits
|image884|

Step 5: Perform math functions. If you don't want to do any
calculations, simply click Next instead of making an option.

Choose math functions
|image885|

Step 6: Choose data order. If you want the data to print out in the
order it's found in the database, simply click Finish.

Choose ordering
|image886|

When you are finished you will be presented with the SQL generated by
the report wizard. From here you can choose to save the report by
clicking 'Save' or copy the SQL and make edits to it by hand.

Custom Report Confirmation
|image887|

If you choose to save the report you will be asked to name your report,
sort it in to groups and subgroups and enter any notes regarding it.

Save custom report
|image888|

Once your report is saved it will appear on the 'Use Saved' page with
all other saved reports.

Saved Reports list
|image889|

From here you can make edits, run the report, or schedule a time to have
the report run. To find the report you created you can sort by any of
the columns by clicking the on the column header (creation date is the
best bet for finding the report you just added). You can also filter
your results using the filter menu on the left or use the tabs to find
reports based on your custom groups.

`Report from SQL <#reportfromsql>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

In addition to the report wizard, you have the option to write your own
queries using SQL. To find reports written by other Koha users, visit
the Koha Wiki: http://wiki.koha-community.org/wiki/SQL_Reports_Library.
You can also find your database structure in
/installer/data/mysql/kohastructure.sql or online at:
`http://schema.koha-community.org <http://schema.koha-community.org/>`__.

To add your query, click the link to 'Create from SQL' on the main
reports module or the 'New report' button at the top of the 'Saved
reports' page.

New SQL Report
|image890|

Fill in the form presented

Create Report from SQL
|image891|

-  The 'Name' is what will appear on the Saved Reports page to help you
   identify the report later. It will also be searchable using the
   filters found the left of the Saved Reports page.

-  You can use the 'Report group' to organize your reports so that you
   can easily filter reports by groups. Report groups are set in the
   `REPORT\_GROUP <#reportgroup>`__ authorized value category or can be
   added on the fly when creating the report by choosing the 'or create'
   radio button.Report group

   -  **Note**

          If you're adding a report group on the fly, remember that you
          code should be fewer than 10 characters and should not include
          special characters or spaces.

-  You can use 'Report subgroup' to further organize your reports so
   that you can easily filter reports by groups and subgroups. Report
   subgroups are set in the `REPORT\_SUBGROUP <#reportsubgroup>`__
   authorized value category or can be added on the fly when creating
   the report by choosing the 'or create' radio button.

   Report subgroup
   |image892|

   -  **Note**

          If you're adding a report subgroup on the fly, remember that
          you code should be fewer than 10 characters and should not
          include special characters or spaces.

-  'Report is public' should be left to the default of 'No' in most
   cases. A report can be made public if you intend to allow access to
   it through the JSON webservice interface. This is a system that can
   be used by developers to make custom presentations of the data from
   the report, for example displaying it using a graphing API. To learn
   more speak to your local developer.

   -  A public report is accessible via a URL that looks like this:
      http://MYOPAC/cgi-bin/koha/svc/report?id=REPORTID

-  'Notes' will also appear on the Saved Reports page, this can be used
   to provide more details about the report or tips on how to enter
   values when it runs

-  The type should always be 'Tabular' at this time since the other
   formats have not been implemented

-  In the 'SQL' box you will type or paste the SQL for the report

-  If you feel that your report might be too resource intensive you
   might want to consider using runtime parameters to your query.
   Runtime parameters basically make a filter appear before the report
   is run to save your system resources.

   There is a specific syntax that Koha will understand as 'ask for
   values when running the report'. The syntax is <<Question to
   ask\|authorized\_value>>.

   -  The << and >> are just delimiters. You must put << at the
      beginning and >> at the end of your parameter

   -  The 'Question to ask' will be displayed on the left of the string
      to enter.

   -  The authorized\_value can be omitted if not applicable. If it
      contains an authorized value category, or branches or itemtype or
      categorycode or biblio\_framework, a list with the Koha authorized
      values will be displayed instead of a free field Note that you can
      have more than one parameter in a given SQL Note that entering
      nothing at run time won't probably work as you expect. It will be
      considered as "value empty" not as "ignore this parameter". For
      example entering nothing for : "title=<<Enter title>>" will
      display results with title='' (no title). If you want to have to
      have something not mandatory, use "title like <<Enter title>>" and
      enter a % at run time instead of nothing

   Examples:

   -  SELECT surname,firstname FROM borrowers WHERE branchcode=<<Enter
      patrons library\|branches>> AND surname like <<Enter filter for
      patron surname (% if none)>>

   -  SELECT \* FROM items WHERE homebranch = <<Pick your
      branch\|branches>> and barcode like <<Partial barcode value here>>

   -  SELECT title , author FROM biblio WHERE frameworkcode=<<Enter the
      frameworkcode\|biblio\_framework>>

       **Note**

       To generate a date picker calendar to the right of the field when
       running a report you can use the 'date' keyword like this:
       <<Enter Date\|date>>

       Date Picker
       |image893|

       **Note**

       You have to put "%" in a text box to 'leave it blank'. Otherwise,
       it literally looks for "" (empty string) as the value for the
       field.

       **Important**

       In addition to using any authorized value code to generate a
       dropdown, you can use the following values as well: Framework
       codes (biblio\_framework), Branches (branches), Item Types
       (itemtypes) and Patron Categories (categorycode). For example a
       branch pull down would be generated like this
       <<Branch\|branches>>

       Branch pull down
       |image894|

    **Note**

    There is a limit of 10,000 records put on SQL statements entered in
    Koha. To get around this you want to add 'LIMIT 100000' to the end
    of your SQL statement (or any other number above 10,000).

    **Note**

    If your system administrator has set up memcache on your server you
    might see one more option for the Cache expiry. This is related to
    your public reports. If you make the report public then it's
    constantly running and will cause a large load on your system.
    Setting this value prevents that.Cache expiry

Once everything is entered click the 'Save Report' button and you'll be
presented with options to run it. Once a report is saved you do not have
to recreate it you can simply find it on the Saved Reports page and
`run <#runcustomreport>`__ or `edit <#editcustomreports>`__ it.

`Duplicate Report <#duplicatereport>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Reports can also be added by duplicating an existing report. Visit the
'Saved reports' page to see all of the reports listed on your system
already.

Saved Reports
|image895|

To the right of every report there is an 'Actions' pull down. Clickin
that and choose 'Duplicate' to use an existing report as the basis for
your new report. That will populate the new report form with the
existing SQL for easy editing and resaving.

`Edit Custom Reports <#editcustomreports>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Every report can be edited from the reports lists. To see the list of
reports already stored in Koha, click 'Use Saved.'

Saved Reports
|image896|

To find the report you'd like to edit you can sort by any of the columns
by clicking the on the column header. You can also filter your results
using the filter menu on the left or use the tabs to find reports based
on your custom groups.

From this list you can edit any custom report by clicking 'Actions' to
the right of the report and choosing 'Edit' from the menu that appears.

Edit Report Option
|image897|

The form to edit the report will appear.

Edit SQL Form
|image898|

`Running Custom Reports <#runcustomreport>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Once custom reports are saved to Koha, you can run them by going to the
Saved Reports page and clicking the 'Actions' button to the right of the
report and choosing 'Run'.

Run Report
|image899|

When you report runs you will either be asked for some values

Enter report parameters
|image900|

or you will see the results right away

Report results
|image901|

From the results you can choose to rerun the report by clicking 'Run
report' at the top, edit the report by clicking the 'Edit' button or
starting over and creating a new report by using the 'New' button. You
can also download your results by choosing a file type at the bottom of
the results next to the 'Download the report' label and clicking
'Download.'

    **Note**

    A Comma Separated Text file is a CSV file and it can be opened by
    any spreadsheet application.

`Statistics Reports <#statsreports>`__
--------------------------------------

Statistic reports will show you counts and sums. These reports are all
about numbers and statistics, for reports that return more detailed
data, use the `Guided Report Wizard <#quidedreportwizard>`__. These
reports are limited in what data they can look at, so it's often
recommended to use `custom reports <#customreports>`__ for official end
of the year statistics.

`Acquisitions Statistics <#acqstats>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    **Note**

    These reports are limited in what data they can look at, so it's
    often recommended to use `custom reports <#customreports>`__ for
    official end of the year statistics.

Using the form provided, choose which value you would like to appear in
the Column and which will appear in the Row.

Acquisitions Statistics
|image902|

If you choose to output to the browser your results will print to the
screen.

Acquisitions Statistics Results
|image903|

You can also choose to export to a file that you can manipulate to your
needs.

When generating your report, note that you get to choose between
counting or summing the values.

Acquisitions Stats Options
|image904|

Choosing amount will change your results to appear as the sum of the
amounts spent.

Acquisitions statistics with totals
|image905|

`Patron Statistics <#patstats>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    **Note**

    These reports are limited in what data they can look at, so it's
    often recommended to use `custom reports <#customreports>`__ for
    official end of the year statistics.

Using the form provided, choose which value you would like to appear in
the Column and which will appear in the Row.

Patron Statistics Options
|image906|

If you choose to output to the browser your results will print to the
screen.

Patron Statistics Results
|image907|

Based on your selections, you may see some query information above your
results table. You can also choose to export to a file that you can
manipulate to your needs.

`Catalog Statistics <#catstats>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    **Note**

    These reports are limited in what data they can look at, so it's
    often recommended to use `custom reports <#customreports>`__ for
    official end of the year statistics.

Using the form provided, choose which value you would like to appear in
the Column and which will appear in the Row.

Catalog Statistics Form
|image908|

If you choose to output to the browser your results will print to the
screen.

Catalog Statistic Results
|image909|

You can also choose to export to a file that you can manipulate to your
needs.

`Circulation Statistics <#circstats>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    **Note**

    These reports are limited in what data they can look at, so it's
    often recommended to use `custom reports <#customreports>`__ for
    official end of the year statistics.

Using the form provided, choose which value you would like to appear in
the Column and which will appear in the Row.

Circulation Statistics
|image910|

If you choose to output to the browser your results will print to the
screen.

Circulation Statistic Results
|image911|

You can also choose to export to a file that you can manipulate to your
needs.

    **Note**

    To get a complete picture of your monthly or daily circulation, you
    can run the report twice, once for 'Type' of 'Checkout' and again
    for 'Renewal.'

    This report uses 'Period,' or date, filtering that allows you to
    limit to a month by simply selecting the first day of the first
    month through the first day of the next month. For example, 10/1 to
    11/1 to find statistics for the month of October.

    -  To find daily statistics, set your date range.</br> Example: "I
       want circulation data starting with date XXX up to, but not
       including, date XXX."

    -  For a whole month, an example range would be: 11/01/2009 to
       12/01/2009

    -  For a whole year, an example range would be: 01/01/2009 to
       01/01/2010

    -  For a single day, an example would be: 11/15/2009 to 11/16/2009
       to find what circulated on the 15th

`Tracking in house use <#inhouseuse>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Using the Circulation statistics reporting wizard you can run reports on
in house usage of items simply by choosing 'Local Use' from the 'Type'
pull down:

In House Use Stats
|image912|

`Serials Statistics <#serialstats>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    **Note**

    These reports are limited in what data they can look at, so it's
    often recommended to use `custom reports <#customreports>`__ for
    official end of the year statistics.

Using the form provided, choose how you would like to list the serials
in your system.

Serials Statistics
|image913|

If you choose to output to the browser your results will print to the
screen.

Serials Results
|image914|

You can also choose to export to a file that you can manipulate to your
needs.

`Holds Statistics <#holdstats>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    **Note**

    These reports are limited in what data they can look at, so it's
    often recommended to use `custom reports <#customreports>`__ for
    official end of the year statistics.

Using the form provided you can see statistics for holds placed, filled,
cancelled and more at your library. From the form choose what value you
want to display in the column and what value to show in the row. You can
also choose from the filters on the far right of the form.

Hold Statistics Form
|image915|

If you choose to output to the browser your results will print to the
screen.

Hold Stats Results
|image916|

You can also choose to export to a file that you can manipulate to your
needs.

`Patrons with the most checkouts <#mostcheckouts>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This report will simply list the patrons who have the most checkouts.

Patrons with the most checkouts form
|image917|

If you choose to output to the browser your results will print to the
screen.

Top checkouts results
|image918|

You can also choose to export to a file that you can manipulate to your
needs.

`Most Circulated Items <#mostcirculated>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This report will simply list the items that have the been checked out
the most.

Most Circulation Items Form
|image919|

If you choose to output to the browser your results will print to the
screen.

Top Circulation Items Results
|image920|

You can also choose to export to a file that you can manipulate to your
needs.

`Patrons with no checkouts <#patnocheckouts>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This report will list for you the patrons in your system who haven't
checked any items out.

Patrons with no Checkouts
|image921|

If you choose to output to the browser your results will print to the
screen.

Results for Patrons with no Checkouts
|image922|

You can also choose to export to a file that you can manipulate to your
needs.

`Items with no checkouts <#itemnocheckouts>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This report will list items in your collection that have never been
checked out.

Items with No Checkouts
|image923|

If you choose to output to the browser your results will print to the
screen.

Items with no checkouts results
|image924|

You can also choose to export to a file that you can manipulate to your
needs.

`Catalog by Item Type <#catbyitem>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This report will list the total number of items of each item type per
branch.

Catalog by Item Type
|image925|

If you choose to output to the browser your results will print to the
screen.

Total of Items by Type and Branch
|image926|

You can also choose to export to a file that you can manipulate to your
needs.

`Lost Items <#lostreport>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This report will allow you to generate a list of items that have been
marked as Lost within the system

Lost Items Report
|image927|

`Average Loan Time <#avloantime>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This report will list the average time items are out on loan based on
the criteria you enter:

Average Checkout Period Form
|image928|

If you choose to output to the browser your results will print to the
screen.

Average Checkout Period Results
|image929|

You can also choose to export to a file that you can manipulate to your
needs.

`Report Dictionary <#reportdic>`__
----------------------------------

The report dictionary is a way to pre-define common filters you'd like
to apply to your reports. This is a good way to add in filters that the
report wizard doesn't include by default. To add a new definition, or
filter, click 'New Definition' on the Reports Dictionary page and follow
the 4 step process.

Step 1: Name the definition and provide a description if necessary

Create a Definition
|image930|

Step 2: Choose the module that the will be queried.

Select Koha Module
|image931|

Step 3: Choose columns to query from the tables presented.

Choose columns
|image932|

Step 4: Choose the value(s) from the field(s). These will be
automatically populated with options available in your database.

Choose fields and values
|image933|

Confirm your selections to save the definition.

Confirm Definition
|image934|

Your definitions will all appear on the Reports Dictionary page

Reports Dictionary Listing
|image935|

Then when generating reports on the module you created the value for you
will see an option to limit by the definition at the bottom of the usual
filters.

Dictionary Limit Option
|image936|

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

Searching
=========

`Advanced Search Prefixes <#searchprefixes>`__
----------------------------------------------

The following prefixes can be added to search terms in the keyword
search box to limit items returned

-  ti: title search

   -  ex. ti:hamlet

-  su: subject search

   -  ex. su:cooking

-  pb: publisher search

   -  ex. pb:penguin

-  au: author search

   -  ex. au:rowling

-  su-geo: geographic subjects

   -  ex. su-geo:wales and kw:description and kw:travel

-  bc: barcode

   -  ex. bc:502326000912

-  lex: lexile

   -  levels lex:510

`Guide to Searching <#searchguide>`__
-------------------------------------

This brief guide will explain a chart that shows a sample of how a
MARC21 database can be configured, as well as a brief introductory
searching guide. The indexing fields described in this document relate
to the bibliographic data and does not address authority database
indexing.

`Indexing and Searching Description <#searchguide-indexing>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Koha's databases are indexed by the Zebra open-source software. The
overview to the documentation describes Zebra as:

    "...Zebra is a high-performance, general-purpose structured text
    indexing and retrieval engine. It reads records in a variety of
    input formats (eg. email, XML, MARC) and provides access to them
    through a powerful combination of Boolean search expressions and
    relevance-ranked free-text queries.

    Zebra supports large databases (tens of millions of records, tens of
    gigabytes of data). It allows safe, incremental database updates on
    live systems. Because Zebra supports the industry-standard
    information retrieval protocol, Z39.50, you can search Zebra
    databases using an enormous variety of programs and toolkits, both
    commercial and free, which understands this protocol..." Zebra -
    User's Guide and Reference, p. 1,
    http://www.indexdata.dk/zebra/doc/zebra.pdf

This brief guide will explain a chart that shows a sample of how a
MARC21 database can be configured, as well as a brief introductory
searching guide. The indexing fields described in this document relate
to the bibliographic data and does not address authority database
indexing.

    **Note**

    The indexing described in this document is the set used by
    SouthEastern University. Your local indexing may vary.

`Indexing Configuration <#searchguide-indexconfig>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There are three configuration files that Koha uses while indexing.

The first configuration file (etc/zebradb/biblios/etc/bib1.att) contains
the Z39.50 bib-1 attribute list, plus the Koha local use attributes for
Biblio Indexes, Items Index, and Fixed Fields and other special indexes.
The Z39.50 Bib-1 profile is made up of several different types of
attributes: Use, Relation, Position, Structure, Truncation, and
Completeness. The bib-1 'Use' attribute is represented on the chart; the
other attributes are used primarily when doing searches. While there are
over 150+ use attributes that could be used to define your indexing set,
it's unlikely that you will choose to use them all. The attributes you
elect to use are those that become the indexing rules for your database.
The other five attribute sets define the various ways that a search can
be further defined, and will not specifically be addressed in this
document. For a complete list of the standard Bib-1 attributes, go to
http://www.loc.gov/z3950/agency/defns/bib1.html.

The second file is
etc/zebradb/marc\_defs/[marc21\|unimarc]/biblios/record.abs if you use
grs1 indexing [the default until 3.16] or
etc/zebradb/marc\_defs/[marc21\|unimarc]/biblios/biblio-koha-indexdefs.xml
if you use dom indexing [the default from 3.18]. Either files contains
the abstract syntax which maps the MARC21 tags to the set of Use
Attributes you choose to use. To be more precise the xml file to be
activate needs to be transform into biblio-zebra-indexdefs.xsl, read the
head of biblio-zebra-indexdefs.xsl to know more about this topic. The
rules established in this file provides a passable Bath level 0 and 1
service, which includes author, title, subject, keyword and exact
services such as standard identifiers (LCCN, ISBN, ISSN, etc.)

The third file (etc/zebradb/ccl.properties) is the Common Command
Language (CCL) field mappings. This file combines the bib-1 attribute
set file and the abstract file and adds the qualifiers, usually known as
index names. The qualifiers, or indexes, for this database are: pn, cpn,
cfn, ti, se, ut, nb, ns, sn, lcn, callnum, su, su-to, su-geo, su-ut,
yr,pubdate, acqdate, ln, pl, ab, nt, rtype, mc-rtype, mus, au, su-na,
kw, pb, ctype, and an.

The `Koha Indexing Chart <#kohasearchindexes>`__ summarizes the contents
of all three of these files in a more readable format. The first two
columns labeled Z39.50 attribute and Z39.50 name matches the Z39.50
bib-1 attributes file. The third column labeled MARC tags indexed is
where you find which MARC tags are mapped to an attribute. The fourth
column labeled Qualifiers identifies the search abbreviations used in
the internal CCL query. The following description provides a definition
for the word 'qualifiers'.

*Qualifiers are used to direct the search to a particular searchable
index, such as title (ti) and author indexes (au). The CCL standard
itself doesn't specify a particular set of qualifiers, but it does
suggest a few shorthand notations. You can customize the CCL parser to
support a particular set of qualifiers to reflect the current target
profile. Traditionally, a qualifier would map to a particular
use-attribute within the BIB-1attribute set. It is also possible to set
other attributes, such as the structure attribute.*

In the MARC tags indexed column, there are some conventions used that
have specific meanings. They are:

-  A three digit tag (100) means that all subfields in the tag can be
   used in a search query. So, if you enter a search for 'Jackson' as an
   author, you will retrieve records where Jackson could be the last
   name or the first name.

-  A three digit tag that has a '$' followed by a letter (600$a) means
   that a search query will only search the 'a' subfield.

-  A three digit tag that is followed by a ':' and a letter (240:w)
   means that a search query can be further qualified. The letter
   following the ':' identifies how to conduct the search. The most
   common values you'll see are 'w' (word), 'p' (phrase), 's' (sort),
   and 'n' (numeric).

The contents of the MARC tags, subfields, and/or fixed field elements
that are listed in this chart are all indexed. You'll see that every
attribute line is not mapped to a specific qualifier (index)-LC card
number, line 9 is one example. However, every indexed word (a string of
characters preceded and succeeded by a space) can be searched using a
keyword (kw) search. So, although an LC card number specific index
doesn't exist, you can still search by the LCCN since tag 010 is
assigned to the LC-card-number attribute. To verify this, enter 72180055
in the persistent search box. You should retrieve The gods themselves,
by Isaac Asimov.

Examples of fixed field elements indexing can be seen on the chart
between Attribute 8822 and Attribute 8703. These attributes are most
commonly used for limiting. The fixed field attributes currently
represent the BK codes. Other format codes, if needed, could be defined.

`Basic Searching <#searchguide-basics>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The search box that library staff and library patrons will see most
often is the persistent search box at the top of the page. Koha
interprets the searches as keyword searches.

Koha search box
|image1037|

To start a search, you enter a word or multiple words in the search box.
When a single word is entered, a keyword search is performed. You can
check this out by typing one word into the form and note the number of
results located. Then, repeat the search with a minor change. In front
of the search word, type 'kw=' followed by the same search term. The
results will be identical.

When you have more than one word in the search box, Koha will still do a
keyword search, but a bit differently. Each word will be searched on its
own, then the Boolean connector 'and' will narrow your search to those
items with all words contained in matching records.

Suppose you want to find material about how libraries are using mashups.
You'll select the major words and enter them into the persistent search
box.

Keyword Search
|image1038|

The response to this search is:

Results
|image1039|

The order of the words does not affect the retrieval results, so you
could also enter the search as "mashups library". The response to this
search is results

Results
|image1040|

Too many words in the search box will find very few matches, as the
following example illustrates:

No results found
|image1041|

`Advanced Searching <#searchguide-advanced>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When you can't find the most appropriate material with a general search,
you can move to the Advanced Search page by clicking on the Search
option on the persistent toolbar.

Koha Menu
|image1042|

The Advanced Search page offers many ways to limit the results of your
search. You can search using the Boolean operators AND, OR, and NOT;
limit by item type; limit by year and language; limit by subtypes
audience, content, format, or additional content types; by location and
by availability.

The first limiting section on the Advanced Search page provides a quick
and simple way to use the Boolean operators in your search. Note that
this display depends on a system preference setting. This option can be
found on the Administration > System Preferences > Searching page. The
option called `expandedSearchOption <#expandedSearchOption>`__ must be
set to 'show' to see the following display.

Advanced Search Options
|image1043|

In this section you can choose among the many indexes by clicking on the
arrow in the first box. The blank box that follows is where you enter
your first search term or terms. On the second line, you can choose the
Boolean operator you want to use in your search. The options are 'and',
'or', and 'not'. Then, you would again choose the index to search,
followed by the second term or terms. If you have more concepts you want
to include in your search, you can click the [+] to add another line for
your search.

A sample search is shown next, followed by its results:

Advanced Search
|image1044|

Results from Advanced Search
|image1045|

When you use the Boolean operators to broaden or narrow a search,
remember the action of each operator. The 'and' operator narrows the
results you'll retrieve because the search will retrieve the records
that include all your search terms. The 'or' operator expands the
results because the search will look for occurrences of all of your
search terms. The 'not' operator excludes records with the term that
follows the operator.

Note: If you leave this `expandedSearchOption <#expandedSearchOption>`__
set to 'don't show', this is the display you will see:

Fewer Search Options
|image1046|

The Advanced Search page then shows the multiple kinds of limits that
can be applied to your search results. Either check a box or select from
the drop down menus to narrow your search. You will type the year, year
range, or a 'greater than (>)' or 'less than (<)' year.

Other Advanced Search Options
|image1047|

Finally, you can choose how the results will be sorted. The pre-defined
sort options are in the final area of the Advanced Search screen.

Sort Results By
|image1048|

The default sort is by relevance, although you can choose to sort by
author, by title, by call number, by dates, or by popularity (which uses
the information on total issues found in the items table). If you would
prefer a different default sort, you can set
`defaultSortField <#defaultSortField>`__ to one of the other choices in
Administration > System Preferences > Searching.

`Item Searching <#searchguide-itemsearch>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you are looking for specific items you can use the item search engine
in the staff client to find them.

-  *Get there:* Search > Go to item search

At the top of the advanced search page in the staff client you will see
a link to 'Go to item search'Item search link

Clicking that link will open up a item specific search engine.Item
search

Using the search form that is presented you can find a list of specific
items that can be output to the screen or to a CSV file. If your results
are printed to the screen you will have the option to narrow your search
further using filters at the top.Item search results

`Common Command Language Searching <#searchguide-ccl>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Koha uses the Common Command Language (CCL) (ISO 8777) as its internal
search protocol. Searches initiated in the graphical interface use this
protocol as well, although the searcher doesn't know which indexes,
operators and limiters are available and being used to conduct their
search. The searcher can use the Advanced Search when more precise
results set are desired and where the search indexes are somewhat known.
However, some library users and many library staff prefer using a
command based structure. This part of the document will present and
explain the use of the Koha command based structure. The indexes,
operators, and limiters used are identical to those used in the
graphical interface.

`Indexes <#searchguide-indexes>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The CCL standard itself doesn't specify a particular set of qualifiers
(indexes), but it does suggest a few short-hand notations such as 'ti',
'au', and 'su'. Koha has a default set of indexes; it's possible to
customize that set by adding needed indexes based on local requirements.
A qualifier (index) maps to a particular use-attribute within the Z39.50
BIB-1 attribute set. The complete Z39.50 Bib-1 Attribute can be viewed
at http://www.loc.gov/z3950/agency/defns/bib1.html.

The standard Koha set of indexes is a fairly common example of MARC21
indexing rules. The indexes that are defined in Koha are indexes
typically used by other integrated library systems. The defined Z39.50
Bib-1 Attribute mapped to the indexes include:

+--------------------------------+----------------------------+
| Bib-1 Attribute                | Qualifier (index)          |
+================================+============================+
| Personal-name                  | pn                         |
+--------------------------------+----------------------------+
| Corporate-name                 | cpn                        |
+--------------------------------+----------------------------+
| Conference-name                | cfn                        |
+--------------------------------+----------------------------+
| Title                          | ti                         |
+--------------------------------+----------------------------+
| Title-series                   | se                         |
+--------------------------------+----------------------------+
| Title-uniform                  | ut                         |
+--------------------------------+----------------------------+
| ISBN                           | nb                         |
+--------------------------------+----------------------------+
| ISSN                           | ns                         |
+--------------------------------+----------------------------+
| Local number                   | sn                         |
+--------------------------------+----------------------------+
| Local-classification           | lcn and callnum            |
+--------------------------------+----------------------------+
| Subject                        | su, su-to, su-geo, su-ut   |
+--------------------------------+----------------------------+
| Pubdate                        | yr,pubdate                 |
+--------------------------------+----------------------------+
| Date-of-Acquisition            | acqdate                    |
+--------------------------------+----------------------------+
| Language                       | ln                         |
+--------------------------------+----------------------------+
| Place-of-publication           | pl                         |
+--------------------------------+----------------------------+
| Abstract                       | ab                         |
+--------------------------------+----------------------------+
| Notes                          | nt                         |
+--------------------------------+----------------------------+
| Record-type                    | rtype, mc-rtype, mus       |
+--------------------------------+----------------------------+
| Author                         | au, aut                    |
+--------------------------------+----------------------------+
| Subject-person-name            | su-na                      |
+--------------------------------+----------------------------+
| Any (keyword)                  | kw                         |
+--------------------------------+----------------------------+
| Publisher                      | pb                         |
+--------------------------------+----------------------------+
| Content-type                   | ctype                      |
+--------------------------------+----------------------------+
| Koha-Auth-Number               | an                         |
+--------------------------------+----------------------------+
| Author-personal-bibliography   | aub                        |
+--------------------------------+----------------------------+
| Author-in-order                | auo                        |
+--------------------------------+----------------------------+

Table: Attributes

Refer to the `Koha Indexing Chart <#kohasearchindexes>`__ for the MARC21
tags mapped to each Bib-1 Attribute and index combination.

`Audience Examples <#search-audexamp>`__
''''''''''''''''''''''''''''''''''''''''

-  aud:a Preschool

-  aud:b Primary

-  aud:c Pre-Adolescent

-  aud:d Adolescent

-  aud:e Adult

-  aud:f Specialized

-  aud:g General

-  aud:j Juvenile

`Contents Examples <#search-contentsexamp>`__
'''''''''''''''''''''''''''''''''''''''''''''

-  fic:1 Fiction

-  fic:0 Non Fiction

-  bio:b Biography

-  mus:j Musical recording

-  mus:I Non musical record

`Search Syntax <#searchguide-syntax>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

In the persistent search box, single words generally retrieve large
sets. To narrow a search, you can use multiple words. Koha automatically
uses the 'and' Boolean operator to create a set of records matching your
input. When you want to narrow the search to an author or a title or a
subject or some other specific field or use a Boolean operator, there
isn't an obvious way to accomplish that specificity. The library user
can, of course, go to the Advanced Search page; however, if you know how
to construct a CCL search, you can achieve more specificity while using
the persistent search box on any page.

There is a specific order to the CCL search syntax. Although it can be
used for simple searches, it is an especially effective way to perform
complex searches, as it affords you a great deal of control over your
search results. To construct a CCL search, first enter a desired index
code, then an equal sign, followed by your search word(s). Following are
examples of simple CCL searches.

-  ti=principles of accounting

-  au=brown joseph

-  su=poetry

-  su-na=Shakespeare

-  kw=marlin

You can refine your search by combining search terms with Boolean
operators 'and', 'or', or 'not'. Following are examples of searches
using Boolean operators.

-  ti=principles of accounting and au=brown joseph

-  su=poetry not su-na=Shakespeare

-  kw=communication and su=debate

You can also choose to search for things that start with a character or
series of characters

-  ti,first-in-subfield=C (will show you all titles that start with the
   letter 'C')

Other string location searches can be performed with the following
keywords:

-  rtrn : right truncation

-  ltrn : left truncation

-  lrtrn : left and right truncation

-  st-date : type date

-  st-numeric : type number (integer)

-  ext : exact search on whole subfield (does not work with icu)

-  phr : search on phrase anywhere in the subfield

-  startswithnt : subfield starts with

Using specific indexes and Boolean operators are not the only way a
search can be refined. You can also refine your search as a phrase when
looking for a title, author, or subject. The syntax for this search is
*index,phr=search words*.

To illustrate the results of various search types, a search was done for
the words 'supreme court'. The results illustrate that the search index
and the word order make a difference in search results. Only the results
count and the search itself is in these examples. The search executed
will always be between the single quotes.

Sample Search 1
|image1049|

Sample Search 2
|image1050|

Sample Search 3
|image1051|

Sample Search 4
|image1052|

Sample Search 5
|image1053|

Sample Search 6
|image1054|

Sample Search 7
|image1055|

Sample Search 8
|image1056|

Sample Search 9
|image1057|

You can also choose to use limiters in your search query. Some common
limiters include dates, languages, record types, and item types. In the
Advance Search, you can either click a box or key in data to limit your
search. You can also apply the same limits with CCL by using the syntax
in the following examples. In all

*By Date: su=supreme court and yr,st-numeric=>2000*

Sample Search 10
|image1058|

When you limit by date, you can use the '>' (greater than), '<' (less
than), '=' (equal), or 'yyyy-yyyy' (range) symbols.

*By Item Type: su=nursing and itype:BK*

Sample Search 11
|image1059|

Each library will have a different set of item types defined in their
circulation configuration. When you set up item types, you define a code
and a name for each one. The name will appear on the Advance Search
page. The code you assigned is used as a CCL search limit, formatted as
'itype:x', where 'x' is the assigned code. The initial set of item types
in Koha will usually be edited to reflect your collections, so your item
type limiters may be different than the initial ones. The initial item
type limiters follow.

-  itype:BKS Books, Booklets, Workbooks

-  itype:SR Audio Cassettes, CDs

-  itype:IR Binders

-  itype:CF CD-ROMs, DVD-ROMs, General Online Resources

-  itype:VR DVDs, VHS

-  itype:KT Kit

-  itype:AR Models

-  itype:SER Serials

*By format: su=supreme court not l-format:sr*

Sample Search 12
|image1060|

The format limiters are derived from a combination of LDR, 006 and 007
positions. The formats that are currently defined are the following.

-  l-format:ta Regular print

-  l-format:tb Large print

-  l-format:fk Braille

-  l-format:sd CD audio

-  l-format:ss Cassette recording

-  l-format:vf VHS tape

-  l-format:vd DVD video

-  l-format:co CD software

-  l-format:cr Website

*By content type: su=supreme court not ctype:l*

Sample Search 13
|image1061|

The content types are taken from the 008 MARC tag, positions 24-27.

There are two other limiter types that are not described in this
document. They are: Audience and Content. The only difference in the
syntax of the CCL is the actual limiter. They are reproduced here just
in case you would like to use these limiters.

`Koha Search Indexes <#kohasearchindexes>`__
--------------------------------------------

By default, not all fields are indexed in the Zebra search engine, but
many are. Below are the MARC21 fields that are indexed in Zebra.

+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Field          | Description                                                                                                                                                                                                                                                                                                                                                                                                                        |
+================+====================================================================================================================================================================================================================================================================================================================================================================================================================================+
| Leader/06      | Record-type, rtype                                                                                                                                                                                                                                                                                                                                                                                                                 |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Leader/07      | Bib-level                                                                                                                                                                                                                                                                                                                                                                                                                          |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Leader/06-07   | Material-type                                                                                                                                                                                                                                                                                                                                                                                                                      |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 001            | Control-number                                                                                                                                                                                                                                                                                                                                                                                                                     |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 005            | Date/time-last-modified, dtlm, date-time-last-modified                                                                                                                                                                                                                                                                                                                                                                             |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 007            | Microform-generation:n:range(data,11,1), Material-type,ff7-00:w:range(data,0,1), ff7-01:w:range(data,1,1), ff7-02:w:range(data,2,1), ff7-01-02:w:range(data,0,2)                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 008            | date-entered-on-file:n:range(data,0,5), date-entered-on-file:s:range(data,0,5), pubdate:w:range(data,7,4), pubdate:n:range(data,7,4), pubdate:y:range(data,7,4), pubdate:s:range(data,7,4), pl:w:range(data,15,3), ta:w:range(data,22,1), ff8-23:w:range(data,23,1), ff8-29:w:range(data,29,1), lf:w:range(data,33,1), bio:w:range(data,34,1), ln:n:range(data,35,3), ctype:w:range(data,24,4), Record-source:w:range(data,39,0)   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 010            | LC-card-number, Identifier-standard                                                                                                                                                                                                                                                                                                                                                                                                |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 011            | LC-card-number, Identifier-standard                                                                                                                                                                                                                                                                                                                                                                                                |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 015            | BNB-card-number, BGF-number, Number-db, Number-natl-biblio, Identifier-standard                                                                                                                                                                                                                                                                                                                                                    |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 017            | Number-legal-deposit, Identifier-standard                                                                                                                                                                                                                                                                                                                                                                                          |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 018            | Identifier-standard                                                                                                                                                                                                                                                                                                                                                                                                                |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 020$a          | ISBN:w, Identifier-standard:w                                                                                                                                                                                                                                                                                                                                                                                                      |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 020            | Identifier-standard                                                                                                                                                                                                                                                                                                                                                                                                                |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 022$a          | ISSN:w, Identifier-standard:w                                                                                                                                                                                                                                                                                                                                                                                                      |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 022            | Identifier-standard                                                                                                                                                                                                                                                                                                                                                                                                                |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 023            | Identifier-standard                                                                                                                                                                                                                                                                                                                                                                                                                |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 024$a          | Identifier-other                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 024            | Identifier-standard                                                                                                                                                                                                                                                                                                                                                                                                                |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 025            | Identifier-standard                                                                                                                                                                                                                                                                                                                                                                                                                |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 027            | Report-number, Identifier-standard                                                                                                                                                                                                                                                                                                                                                                                                 |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 028            | Number-music-publisher, Identifier-standard                                                                                                                                                                                                                                                                                                                                                                                        |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 030            | CODEN, Identifier-standard                                                                                                                                                                                                                                                                                                                                                                                                         |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 034            | Map-scale                                                                                                                                                                                                                                                                                                                                                                                                                          |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 037            | Identifier-standard, Stock-number                                                                                                                                                                                                                                                                                                                                                                                                  |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 040            | Code-institution, Record-source                                                                                                                                                                                                                                                                                                                                                                                                    |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 041$a          | ln-audio                                                                                                                                                                                                                                                                                                                                                                                                                           |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 041$h          | language-original                                                                                                                                                                                                                                                                                                                                                                                                                  |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 041$j          | ln-subtitle                                                                                                                                                                                                                                                                                                                                                                                                                        |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 041            | ln                                                                                                                                                                                                                                                                                                                                                                                                                                 |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 043            | Code-geographic                                                                                                                                                                                                                                                                                                                                                                                                                    |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 050$b          | LC-call-number:w, LC-call-number:p, LC-call-number:s                                                                                                                                                                                                                                                                                                                                                                               |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 050            | LC-call-number:w, LC-call-number:p, LC-call-number:s                                                                                                                                                                                                                                                                                                                                                                               |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 052            | Geographic-class                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 060            | NLM-call-number                                                                                                                                                                                                                                                                                                                                                                                                                    |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 070            | NAL-call-number                                                                                                                                                                                                                                                                                                                                                                                                                    |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 080            | UDC-classification                                                                                                                                                                                                                                                                                                                                                                                                                 |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 082            | Dewey-classification:w, Dewey-classification:s                                                                                                                                                                                                                                                                                                                                                                                     |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 086            | Number-govt-pub                                                                                                                                                                                                                                                                                                                                                                                                                    |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 100$9          | Cross-Reference:w, Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 100$a          | Author,Author:p, Author:s, Editor, Author-personal-bibliography, Author-personal-bibliography:p, Author-personal-bibliography:s                                                                                                                                                                                                                                                                                                    |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 100            | Author, Author-title, Author-name-personal, Name, Name-and-title, Personal-name                                                                                                                                                                                                                                                                                                                                                    |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 110$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 110            | Author, Author-title, Author-name-corporate, Name, Name-and-title, Corporate-name                                                                                                                                                                                                                                                                                                                                                  |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 111$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 111            | Author, Author-title, Author-name-corporate, Name, Name-and-title, Conference-name                                                                                                                                                                                                                                                                                                                                                 |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 130$n          | Thematic-number                                                                                                                                                                                                                                                                                                                                                                                                                    |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 130$r          | Music-key                                                                                                                                                                                                                                                                                                                                                                                                                          |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 130$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 130            | Title, Title-uniform                                                                                                                                                                                                                                                                                                                                                                                                               |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 210            | Title, Title-abbreviated                                                                                                                                                                                                                                                                                                                                                                                                           |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 211            | Title, Title-abbreviated                                                                                                                                                                                                                                                                                                                                                                                                           |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 212            | Title, Title-other-variant                                                                                                                                                                                                                                                                                                                                                                                                         |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 214            | Title, Title-expanded                                                                                                                                                                                                                                                                                                                                                                                                              |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 222            | Title, Title-key                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 240$r          | Music-key                                                                                                                                                                                                                                                                                                                                                                                                                          |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 240$n          | Thematic-number                                                                                                                                                                                                                                                                                                                                                                                                                    |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 240            | Title:w, Title:p, Title-uniform                                                                                                                                                                                                                                                                                                                                                                                                    |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 243$n          | Thematic-number                                                                                                                                                                                                                                                                                                                                                                                                                    |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 243$r          | Music-key                                                                                                                                                                                                                                                                                                                                                                                                                          |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 243            | Title:w, Title:p, Title-collective                                                                                                                                                                                                                                                                                                                                                                                                 |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 245$a          | Title-cover:w, Title-cover:p, Title-cover:s, Title:w, Title:p, Title:s                                                                                                                                                                                                                                                                                                                                                             |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 245$c          | Author, Author-in-order:w, Author-in-order:p, Author-in-order:s                                                                                                                                                                                                                                                                                                                                                                    |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 245$9          | Cross-Reference:w, Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 245            | Title:w, Title:p                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 246            | Title, Title:p, Title-abbreviated, Title-expanded, Title-former                                                                                                                                                                                                                                                                                                                                                                    |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 247            | Title, Title:p, Title-former, Title-other-variant, Related-periodical                                                                                                                                                                                                                                                                                                                                                              |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 260$a          | pl:w, pl:p                                                                                                                                                                                                                                                                                                                                                                                                                         |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 260$b          | Publisher:w, Publisher:p                                                                                                                                                                                                                                                                                                                                                                                                           |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 260$c          | copydate, copydate:s                                                                                                                                                                                                                                                                                                                                                                                                               |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 260            | Provider, pl                                                                                                                                                                                                                                                                                                                                                                                                                       |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 264            | Provider                                                                                                                                                                                                                                                                                                                                                                                                                           |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 300            | Extent:w, Extent:p                                                                                                                                                                                                                                                                                                                                                                                                                 |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 400$a          | Name-and-title                                                                                                                                                                                                                                                                                                                                                                                                                     |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 400$t          | Author-title, Name-and-title, Title, Title-series                                                                                                                                                                                                                                                                                                                                                                                  |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 400$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 400            | Author, Author-name-personal, Name, Personal-name                                                                                                                                                                                                                                                                                                                                                                                  |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 410            | Author, Corporate-name                                                                                                                                                                                                                                                                                                                                                                                                             |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 410$a          | Name-and-title                                                                                                                                                                                                                                                                                                                                                                                                                     |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 410$t          | Author-title, Title, Title-series                                                                                                                                                                                                                                                                                                                                                                                                  |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 410$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 410            | Author-name-corporate, Name                                                                                                                                                                                                                                                                                                                                                                                                        |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 411            | Author, Conference-name                                                                                                                                                                                                                                                                                                                                                                                                            |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 411$a          | Name-and-title                                                                                                                                                                                                                                                                                                                                                                                                                     |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 411$t          | Author-title, Title-series                                                                                                                                                                                                                                                                                                                                                                                                         |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 411            | Author-name-corporate, Name                                                                                                                                                                                                                                                                                                                                                                                                        |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 440$a          | Title-series:w, Title-series:p                                                                                                                                                                                                                                                                                                                                                                                                     |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 440$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 440            | Title-series:w, Title-series:p, Title, Title-series                                                                                                                                                                                                                                                                                                                                                                                |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 490$a          | Title-series:w, Title-series:p                                                                                                                                                                                                                                                                                                                                                                                                     |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 490            | Title, Title-series                                                                                                                                                                                                                                                                                                                                                                                                                |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 490$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 500            | Note:w, Note:p                                                                                                                                                                                                                                                                                                                                                                                                                     |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 502            | Material-type                                                                                                                                                                                                                                                                                                                                                                                                                      |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 505$r          | Author                                                                                                                                                                                                                                                                                                                                                                                                                             |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 505$t          | Title                                                                                                                                                                                                                                                                                                                                                                                                                              |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 505            | Note:w, Note:p                                                                                                                                                                                                                                                                                                                                                                                                                     |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 510            | Indexed-by                                                                                                                                                                                                                                                                                                                                                                                                                         |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 520            | Abstract:w, Abstract:p                                                                                                                                                                                                                                                                                                                                                                                                             |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 521$a          | lex:n                                                                                                                                                                                                                                                                                                                                                                                                                              |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 526$c          | arl, arl:n                                                                                                                                                                                                                                                                                                                                                                                                                         |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 526$d          | arp, arp:n                                                                                                                                                                                                                                                                                                                                                                                                                         |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 590            | Note:w, Note:p                                                                                                                                                                                                                                                                                                                                                                                                                     |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 600$a          | Name-and-title, Name, Personal-name, Subject-name-personal, Subject                                                                                                                                                                                                                                                                                                                                                                |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 600$t          | Name-and-title, Title, Subject                                                                                                                                                                                                                                                                                                                                                                                                     |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 600$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 600            | Name, Personal-name, Subject-name-personal, Subject                                                                                                                                                                                                                                                                                                                                                                                |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 610$a          | Name-and-title                                                                                                                                                                                                                                                                                                                                                                                                                     |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 610$t          | Name-and-title, Title                                                                                                                                                                                                                                                                                                                                                                                                              |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 610$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 610            | Name, Subject, Corporate-name                                                                                                                                                                                                                                                                                                                                                                                                      |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 611            | Conference-name                                                                                                                                                                                                                                                                                                                                                                                                                    |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 611$a          | Name-and-title                                                                                                                                                                                                                                                                                                                                                                                                                     |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 611$t          | Name-and-title, Title                                                                                                                                                                                                                                                                                                                                                                                                              |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 611$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 611            | Name, Subject                                                                                                                                                                                                                                                                                                                                                                                                                      |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 630$n          | Thematic-number                                                                                                                                                                                                                                                                                                                                                                                                                    |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 630$r          | Music-key                                                                                                                                                                                                                                                                                                                                                                                                                          |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 630$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 630            | Subject                                                                                                                                                                                                                                                                                                                                                                                                                            |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 650$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 650            | Subject, Subject:p                                                                                                                                                                                                                                                                                                                                                                                                                 |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 651$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 651            | Name-geographic, Subject,Subject:p                                                                                                                                                                                                                                                                                                                                                                                                 |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 652$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 653$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 653            | Subject, Subject:p                                                                                                                                                                                                                                                                                                                                                                                                                 |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 654$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 654            | Subject                                                                                                                                                                                                                                                                                                                                                                                                                            |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 655$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 655            | Subject                                                                                                                                                                                                                                                                                                                                                                                                                            |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 656$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 656            | Subject                                                                                                                                                                                                                                                                                                                                                                                                                            |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 657$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 657            | Subject                                                                                                                                                                                                                                                                                                                                                                                                                            |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 690$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 690            | Subject, Subject:p                                                                                                                                                                                                                                                                                                                                                                                                                 |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 700$9          | Cross-Reference, Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                  |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 700$a          | Author, Author:p                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 700$n          | Thematic-number                                                                                                                                                                                                                                                                                                                                                                                                                    |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 700$r          | Music-key                                                                                                                                                                                                                                                                                                                                                                                                                          |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 700$t          | Author-title, Name-and-title, Title, Title-uniform                                                                                                                                                                                                                                                                                                                                                                                 |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 700            | Author, Author-name-corporate, Author-name-personal, Name, Editor, Personal-name                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 710            | Author, Corporate-name                                                                                                                                                                                                                                                                                                                                                                                                             |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 710$t          | Author-title, Name-and-title, Title, Title-uniform                                                                                                                                                                                                                                                                                                                                                                                 |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 710$a          | Name-and-title                                                                                                                                                                                                                                                                                                                                                                                                                     |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 710$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 710            | Author, Name                                                                                                                                                                                                                                                                                                                                                                                                                       |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 711$a          | Name-and-title                                                                                                                                                                                                                                                                                                                                                                                                                     |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 711$t          | Author-title, Title, Title-uniform                                                                                                                                                                                                                                                                                                                                                                                                 |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 711$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 711            | Author-name-corporate, Name, Conference-name                                                                                                                                                                                                                                                                                                                                                                                       |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 730$n          | Thematic-number                                                                                                                                                                                                                                                                                                                                                                                                                    |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 730$r          | Music-key                                                                                                                                                                                                                                                                                                                                                                                                                          |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 730$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 730            | Title, Title-uniform                                                                                                                                                                                                                                                                                                                                                                                                               |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 740            | Title, Title-other-variant                                                                                                                                                                                                                                                                                                                                                                                                         |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 773$t          | Host-item                                                                                                                                                                                                                                                                                                                                                                                                                          |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 780$t          | Title                                                                                                                                                                                                                                                                                                                                                                                                                              |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 780$w          | Record-control-number                                                                                                                                                                                                                                                                                                                                                                                                              |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 780            | Title, Title-former, Related-periodical                                                                                                                                                                                                                                                                                                                                                                                            |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 785$w          | Record-control-number                                                                                                                                                                                                                                                                                                                                                                                                              |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 785            | Related-periodical                                                                                                                                                                                                                                                                                                                                                                                                                 |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 787$w          | Record-control-number                                                                                                                                                                                                                                                                                                                                                                                                              |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 800$a          | Name-and-title                                                                                                                                                                                                                                                                                                                                                                                                                     |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 800$t          | Author-title, Name-and-title, Title, Title-series                                                                                                                                                                                                                                                                                                                                                                                  |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 800$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 800            | Author, Author-name-personal, Name, Personal-name                                                                                                                                                                                                                                                                                                                                                                                  |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 810$a          | Name-and-title                                                                                                                                                                                                                                                                                                                                                                                                                     |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 810$t          | Author-title, Name-and-title, Title, Title-series                                                                                                                                                                                                                                                                                                                                                                                  |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 810$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 810            | Author, Corporate-name, Author-name-corporate, Name                                                                                                                                                                                                                                                                                                                                                                                |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 811$a          | Name-and-title                                                                                                                                                                                                                                                                                                                                                                                                                     |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 811$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 811$t          | Author-title, Name-and-title, Title, Title-series                                                                                                                                                                                                                                                                                                                                                                                  |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 811            | Author, Author-name-corporate, Name, Conference-name                                                                                                                                                                                                                                                                                                                                                                               |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 830$9          | Koha-Auth-Number                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 830            | Title, Title-series                                                                                                                                                                                                                                                                                                                                                                                                                |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 840            | Title, Title-series                                                                                                                                                                                                                                                                                                                                                                                                                |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 942$0          | totalissues:n, totalissues:s                                                                                                                                                                                                                                                                                                                                                                                                       |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 942$2          | cn-bib-source                                                                                                                                                                                                                                                                                                                                                                                                                      |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 942$6          | cn-bib-sort:n, cn-bib-sort:s                                                                                                                                                                                                                                                                                                                                                                                                       |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 942$c          | itemtype:w                                                                                                                                                                                                                                                                                                                                                                                                                         |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 942$n          | Suppress:w, Suppress:n                                                                                                                                                                                                                                                                                                                                                                                                             |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 942$h          | cn-class                                                                                                                                                                                                                                                                                                                                                                                                                           |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 942$i          | cn-item                                                                                                                                                                                                                                                                                                                                                                                                                            |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 942$k          | cn-prefix                                                                                                                                                                                                                                                                                                                                                                                                                          |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 942$m          | cn-suffix                                                                                                                                                                                                                                                                                                                                                                                                                          |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$0          | withdrawn:n, withdrawn:w                                                                                                                                                                                                                                                                                                                                                                                                           |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$1          | lost, lost:n                                                                                                                                                                                                                                                                                                                                                                                                                       |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$2          | classification-source                                                                                                                                                                                                                                                                                                                                                                                                              |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$3          | materials-specified                                                                                                                                                                                                                                                                                                                                                                                                                |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$4          | damaged:n, damaged:w                                                                                                                                                                                                                                                                                                                                                                                                               |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$5          | restricted:n, restricted:w                                                                                                                                                                                                                                                                                                                                                                                                         |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$6          | cn-sort:n, cn-sort:s                                                                                                                                                                                                                                                                                                                                                                                                               |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$7          | notforloan:n, notforloan:w                                                                                                                                                                                                                                                                                                                                                                                                         |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$8          | ccode                                                                                                                                                                                                                                                                                                                                                                                                                              |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$9          | itemnumber:n, itemnumber:s                                                                                                                                                                                                                                                                                                                                                                                                         |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$a          | homebranch                                                                                                                                                                                                                                                                                                                                                                                                                         |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$b          | holdingbranch                                                                                                                                                                                                                                                                                                                                                                                                                      |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$c          | location                                                                                                                                                                                                                                                                                                                                                                                                                           |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$d          | Date-of-acquisition, Date-of-acquisition:d, Date-of-acquisition:s                                                                                                                                                                                                                                                                                                                                                                  |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$e          | acqsource                                                                                                                                                                                                                                                                                                                                                                                                                          |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$f          | coded-location-qualifier                                                                                                                                                                                                                                                                                                                                                                                                           |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$g          | price                                                                                                                                                                                                                                                                                                                                                                                                                              |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$j          | stack:n, stack:w                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$l          | issues:n, issues:w, issues:s                                                                                                                                                                                                                                                                                                                                                                                                       |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$m          | renewals:n, renewals:w                                                                                                                                                                                                                                                                                                                                                                                                             |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$n          | reserves:n, reserves:w                                                                                                                                                                                                                                                                                                                                                                                                             |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$o          | Local-classification:w, Local-classification:p, Local-classification:s                                                                                                                                                                                                                                                                                                                                                             |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$p          | barcode, barcode:n                                                                                                                                                                                                                                                                                                                                                                                                                 |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$q          | onloan:n, onloan:w                                                                                                                                                                                                                                                                                                                                                                                                                 |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$r          | datelastseen                                                                                                                                                                                                                                                                                                                                                                                                                       |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$s          | datelastborrowed                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$t          | copynumber                                                                                                                                                                                                                                                                                                                                                                                                                         |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$u          | uri:u                                                                                                                                                                                                                                                                                                                                                                                                                              |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$v          | replacementprice                                                                                                                                                                                                                                                                                                                                                                                                                   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$w          | replacementpricedate                                                                                                                                                                                                                                                                                                                                                                                                               |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$y          | itype:w                                                                                                                                                                                                                                                                                                                                                                                                                            |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 952$z          | Note:w, Note:p                                                                                                                                                                                                                                                                                                                                                                                                                     |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 999$c          | Local-Number:n, Local-Number:w, Local-Number:s                                                                                                                                                                                                                                                                                                                                                                                     |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 999$d          | biblioitemnumber:n, biblioitemnumber:w, biblioitemnumber:s                                                                                                                                                                                                                                                                                                                                                                         |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Table: Indexes

Plugin System
=============

Koha's Plugin System allows for you to add additional tools and reports
to Koha that are specific to your library. Plugins are installed by
uploading KPZ ( Koha Plugin Zip ) packages. A KPZ file is just a zip
file containing the perl files, template files, and any other files
necessary to make the plugin work.

The plugin system needs to be turned on by a system administrator.

`Set up <#pluginsetup>`__
-------------------------

To set up the Koha plugin system you must first make some changes to
your install.

-  Change <enable\_plugins>0</enable\_plugins> to
   <enable\_plugins>1</enable\_plugins> in your koha-conf.xml file

-  Restart your webserver

Once set up is complete you will need to alter your
`UseKohaPlugins <#UseKohaPlugins>`__ system preference. On the Tools
page you will see the Tools Plugins and on the Reports page you will see
the Reports Plugins.

Search History
==============

If you have your `EnableSearchHistory <#EnableSearchHistory>`__
preference set to keep your search history then you can access this
information by clicking on your username in the top right of the staff
client and choosing 'Search history'.

Search history
|image1062|

From this page you will see your bibliographic search history

Bibliographic search history
|image1063|

And your authority search history.

Authority search history
|image1064|

About Koha
==========

The 'About Koha' area will give you important server information as well
as general information about Koha.

-  *Get there:* More > About Koha

`Server Information <#aboutserver>`__
-------------------------------------

Under the 'Server Information' tab you will find information about the
Koha version and the machine you have installed Koha on. This
information is very important for debugging problems. When reporting
issues to your support provider or to the various other support avenues
(mailing lists, chat room, etc), it's always good to give the
information from this screen.

Server Information on Koha
|image1065|

`Perl Modules <#aboutserverperl>`__
-----------------------------------

In order to take advantage of all of the functionalities of Koha, you
will need to keep your Perl modules up to date. The 'Perl Modules' tab
will show you all of the modules required by Koha, the version you have
installed and whether you need to upgrade certain modules.

Perl Modules
|image1066|

Items listed in bold are required by Koha, items highlighed in red are
missing completely and items highlighted in yellow simply need to be
upgraded.

`System Information <#aboutsystem>`__
-------------------------------------

This tab will provide you with warnings if you are using system
preferences that have since been deprecated or system preferences that
you have set without other required preferences

System Information
|image1067|

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

Cron Jobs
=========

A cron job is a Linux command for scheduling a command or script on your
server to complete repetitive tasks automatically. Scripts executed as a
cron job are typically used to modify files or databases; however, they
can perform other tasks that do not modify data on the server, like
sending out email notifications. Koha has many cron jobs in place that
you can enable (search engine indexing, overdue notice generation, data
cleanup and more), this chapter will explain those for you.

`Cron Jobs <#cronjobs>`__
-------------------------

The locations below assume a dev install which puts the crons in misc/,
if you have a standard install you may want to look in bin/ for these
files if you cannot find them in misc/

`Search <#searchcron>`__
~~~~~~~~~~~~~~~~~~~~~~~~

`Rebuild Index <#rebuildsearchcron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/migration\_tools/rebuild\_zebra.pl

Does: Updates Zebra indexes with recently changed data.

Required by: Zebra

Frequency suggestion: every x minutes, (between 5-15 minutes) depending
on performance needs

`Circulation <#circcron>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~

`Holds Queue <#buildholdscron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/holds/build\_holds\_queue.pl

Does: Updates holds queue report

Required by: `Holds Queue Report <#holdsqueue>`__

Frequency suggestion: every 1-4 hours

Description:

-  A script that should be run periodically if your library system
   allows borrowers to place on-shelf holds. This script decides which
   library should be responsible for fulfilling a given hold request.

   It's behavior is controlled by the system preferences
   `StaticHoldsQueueWeight <#holdqueueweight>`__ and
   `RandomizeHoldsQueueWeight <#holdqueueweight>`__.

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

`Perl Documentation <#buildholdscronperl>`__
''''''''''''''''''''''''''''''''''''''''''''

**GetBibsWithPendingHoldRequests**

my $biblionumber\_aref = GetBibsWithPendingHoldRequests();

Return an arrayref of the biblionumbers of all bibs that have one or
more unfilled hold requests.

**GetPendingHoldRequestsForBib**

my $requests = GetPendingHoldRequestsForBib($biblionumber);

Returns an arrayref of hashrefs to pending, unfilled hold requests on

the bib identified by $biblionumber. The following keys are present in
each hashref:

-  biblionumber

-  borrowernumber

-  itemnumber

-  priority

-  branchcode

-  reservedate

-  reservenotes

-  borrowerbranch

The arrayref is sorted in order of increasing priority.

**GetItemsAvailableToFillHoldRequestsForBib**

my $available\_items =

GetItemsAvailableToFillHoldRequestsForBib($biblionumber);

Returns an arrayref of items available to fill hold requests for the bib
identified by $biblionumber. An item is available to fill a hold

request if and only if:

-  it is not on loan

-  it is not withdrawn

-  it is not marked notforloan

-  it is not currently in transit

-  it is not lost

-  it is not sitting on the hold shelf

**MapItemsToHoldRequests**

MapItemsToHoldRequests($hold\_requests, $available\_items);

**CreatePickListFromItemMap**

**AddToHoldTargetMap**

**\_get\_branches\_to\_pull\_from**

Query system preferences to get ordered list of branches to use to fill
hold requests.

`Expired Holds <#expiredholdscron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/holds/cancel\_expired\_holds.pl

Does: By default, this cron job will only automatically cancel holds
where the user has set an expiration date. If the library is using the
`ExpireReservesMaxPickUpDelay <#ExpireReservesMaxPickUpDelay>`__ and
`ExpireReservesMaxPickUpDelayCharge <#ExpireReservesMaxPickUpDelayCharge>`__
preferences then this script will also cancel holds that have been
sitting on the hold shelf for too long and will (if the library does)
charge the patron for not picking up the hold.

Frequency suggestion: daily

`Unsuspend Holds <#unsuspendholdcron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/holds/auto\_unsuspend\_holds.pl

Does: This script checks to find holds that should no longer be
suspended and removes the suspension if the
`AutoResumeSuspendedHolds <#AutoResumeSuspendedHolds>`__ preference is
set to 'allow'. This puts the patron back in to the queue where they
were when the hold was suspended.

Frequency suggestion: daily

`Fines <#finescronjob>`__
^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/fines.pl

Does: Calculates and posts fines to patron accounts.

Required by: `finesMode <#finesMode>`__ system preference

Frequency suggestion: nightly

`Long Overdues <#longoverduecron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/longoverdue.pl

Does: allows one to specify delays for changing items to different lost
statuses, and optionally charge for them using the replacement price
listed on the item record.

Frequency suggestion: nightly

    **Note**

    Staff can control some of the parameters for the longoverdue cron
    job with the
    `DefaultLongOverdueLostValue <#DefaultLongOverdueLostValue>`__ and
    `DefaultLongOverdueChargeValue <#DefaultLongOverdueChargeValue>`__
    preferences.

`Perl Documentation <#longoverduecronperl>`__
'''''''''''''''''''''''''''''''''''''''''''''

**NAME**

longoverdue.pl cron script to set lost statuses on overdue materials.
Execute without options for help.

**DESCRIPTION**

--lost \| -l

This option takes the form of n=lv, where n is num days overdue, and lv
is the lost value. See warning below.

--charge \| -c

This specifies what lost value triggers Koha to charge the account for
the lost item. Replacement costs are not charged if this is not
specified.

--verbose \| v

verbose.

--confirm

confirm. without this option, the script will report the number of
affected items and return without modifying any records.

--quiet

suppress summary output.

--maxdays

Specifies the end of the range of overdue days to deal with (defaults to
366). This value is universal to all lost num days overdue passed.

--mark-returned

When an item is marked lost, remove it from the borrowers issued items.

`Track total checkouts <#updateissuescron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/update\_totalissues.pl

Does: updates the biblioitems.totalissues field in the database with the
latest tally of checkouts.

Frequency suggestion: nightly

`Perl Documentation <#updateissuesperldoc>`__
'''''''''''''''''''''''''''''''''''''''''''''

**NAME**

update\_totalissues.pl

**SYNOPSIS**

update\_totalissues.pl --use-stats

update\_totalissues.pl --use-items

update\_totalissues.pl --commit=1000

update\_totalissues.pl --since='2012-01-01'

update\_totalissues.pl --interval=30d

**DESCRIPTION**

This batch job populates bibliographic records' total issues count based
on historical issue statistics.

--help Prints this help

-v\|--verbose

Provide verbose log information (list every bib modified).

--use-stats

Use the data in the statistics table for populating total issues.

--use-items

Use items.issues data for populating total issues. Note that issues data
from the items table does not respect the --since or --interval options,
by definition. Also note that if both --use-stats and --use-items are
specified, the count of biblios processed will be misleading.

-s\|--since=DATE

Only process issues recorded in the statistics table since DATE.

-i\|--interval=S

Only process issues recorded in the statistics table in the last N units
of time. The interval should consist of a number with a one- letter unit
suffix. The valid suffixes are h (hours), d (days), w (weeks), m
(months), and y (years). The default unit is days.

--incremental

Add the number of issues found in the statistics table to the existing
total issues count. Intended so that this script can be used as a cron
job to update popularity information during low-usage periods. If
neither --since or --interval are specified, incremental mode will
default to processing the last twenty-four hours.

--commit=N

Commit the results to the database after every N records are processed.

--test

Only test the popularity population script.

**WARNING**

If the time on your database server does not match the time on your Koha
server you will need to take that into account, and probably use the
--since argument instead of the --interval argument for incremental
updating.

**CREDITS**

This patch to Koha was sponsored by the Arcadia Public Library and the
Arcadia Public Library Foundation in honor of Jackie Faust-Moreno, late
director of the Arcadia Public Library.

**AUTHOR**

Jared Camins-Esakov <jcamins AT cpbibliography DOT com>

`Generate Patron File for Offline Circulation <#offlinecirccron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/create\_koc\_db.pl

Does: Generates the borrowers.db file for use with the `Koha Offline
Circulation <#windowsofflinecirc>`__ tool

Frequency suggestion: weekly

`Automatic renewal <#autorenewcron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/automatic\_renewals.pl

Does: Will automatically renew items if you're allowing automatic
renewal with your `circulation and fine rules <#circfinerules>`__.

Frequency suggestion: nightly

`Perl Documentation <#autorenewcronperl>`__
'''''''''''''''''''''''''''''''''''''''''''

**NAME**

automatic\_renewals.pl - cron script to renew loans

**SYNOPSIS**

./automatic\_renewals.pl

or, in crontab: 0 3 \* \* \* automatic\_renewals.pl

**DESCRIPTION**

This script searches for issues scheduled for automatic renewal
(issues.auto\_renew). If there are still renews left (Renewals allowed)
and the renewal isn't premature (No Renewal before) the issue is
renewed.

**OPTIONS**

No options.

`Patrons <#patroncrons>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~

`Unverified Registrations <#deleteexpiredregistrationcron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/delete\_expired\_opac\_registrations.pl

Does: Deletes patron registrations that were submitted via the OPAC but
not reviewed by the library within the number of days entered in the
`PatronSelfRegistrationExpireTemporaryAccountsDelay <#PatronSelfRegistrationExpireTemporaryAccountsDelay>`__
preference.

Frequency suggestion: nightly

`Unconfirmed Registrations <#deleteunverifiedcron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/delete\_unverified\_opac\_registrations.pl

Does: Deletes patron self registrations that were submitted via the OPAC
but not confirmed via email within 24 hours. This is only necessary if
you are requiring patrons to confirm their registrations via email with
the
`PatronSelfRegistrationVerifyByEmail <#PatronSelfRegistrationVerifyByEmail>`__
preference.

Frequency suggestion: hourly

`Anonymize Patron Data <#anonymizecron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/batch\_anonymise.pl

Does: Used to anonymize patron data. This will remove borrowernumbers
from circulation history so that the stats are kept, but the patron
information is removed for privacy reasons.

`Update Child to Adult Patron Type <#j2acron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/j2a.pl

Does: Convert juvenile/child patrons from juvenile patron category and
category code to corresponding adult patron category and category code
when they reach the upper age limit defined in the Patron Categories.

Frequency suggestion: nightly

`Perl Documentation <#j2aperldoc>`__
''''''''''''''''''''''''''''''''''''

**NAME**

juv2adult.pl - convert juvenile/child patrons from juvenile patron
category and category code to corresponding adult patron category and
category code when they reach the upper age limit defined in the Patron
Categories.

**SYNOPSIS**

juv2adult.pl [ -b=<branchcode> -f=<categorycode> -t=<categorycode> ]

Options:

--help brief help message

--man full documentation

-v verbose mode

-n take no action, display only

-b <branchname> only deal with patrons from this library/branch

-f <categorycode> change patron category from this category

-t <categorycode> change patron category to this category

=head1 OPTIONS

--help Print a brief help message and exits.

--man Prints the manual page and exits.

-v Verbose. Without this flag set, only fatal errors are reported.

-n No Action. With this flag set, script will report changes but not
actually execute them on the database.

-b changes patrons for one specific branch. Use the value in the
branches.branchcode table.

-f \*required\* defines the juvenile category to update. Expects the
code from categories.categorycode.

-t \*required\* defines the category juvenile patrons will be converted
to. Expects the code from categories.categorycode.

**DESCRIPTION**

This script is designed to update patrons from juvenile to adult patron
types, remove the guarantor, and update their category codes
appropriately when they reach the upper age limit defined in the Patron
Categories.

**USAGE EXAMPLES**

"juv2adult.pl" - Suggests that you read this help. :)

"juv2adult.pl" -b=<branchcode> -f=<categorycode> -t=<categorycode> -
Processes a single branch, and updates the patron categories from
fromcat to tocat.

"juv2adult.pl" -f=<categorycode> -t=<categorycode> -v -n - Processes all
branches, shows all messages, and reports the patrons who would be
affected. Takes no action on the database.

`Notices <#noticescron>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~

`Message Queue <#msgqueuecron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/process\_message\_queue.pl

Does: processes the message queue to send the check out, check in and
hold filled emails and SMS message to users and sends outgoing emails to
patrons. requires
`EnhancedMessagingPreferences <#EnhancedMessagingPreferences>`__ to be
on

Frequency suggestion: 1-4 hours

    **Important**

    Item due and Advanced due notices are controlled by the
    `advance\_notices cron <#advnoticecron>`__.

`Advanced Notice <#advnoticecron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/advance\_notices.pl

Does: prepares "pre-due" notices and "item due" notices for patrons who
request them prepares notices for patrons for items just due or coming
due soon. requires
`EnhancedMessagingPreferences <#EnhancedMessagingPreferences>`__ to be
on

Frequency suggestion: nightly

    **Note**

    This script does not actually send the notices. It queues them in
    the `message queue <#msgqueuecron>`__ for later

`Perl Documentation <#advnoticecronperl>`__
'''''''''''''''''''''''''''''''''''''''''''

**NAME**

advance\_notices.pl - cron script to put item due reminders into message
queue

**SYNOPSIS**

./advance\_notices.pl -c

or, in crontab: 0 1 \* \* \* advance\_notices.pl -c

**DESCRIPTION**

This script prepares pre-due and item due reminders to be sent to
patrons. It queues them in the message queue, which is processed by the
process\_message\_queue.pl cronjob. The type and timing of the messages
can be configured by the patrons in their "My Alerts" tab in the OPAC.

**METHODS**

parse\_letter

`Overdue Notice <#overduenoticecron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/overdue\_notices.pl

Does: prepares messages to alert patrons of overdue messages (both via
email and print)

Frequency suggestion: nightly

    **Note**

    This script does not actually send the notices. It queues them in
    the `message queue <#msgqueuecron>`__ for later or generates the
    HTML for later printing

`Perl Documentation <#overduenoticecronperl>`__
'''''''''''''''''''''''''''''''''''''''''''''''

**NAME**

overdue\_notices.pl - prepare messages to be sent to patrons for overdue
items

**SYNOPSIS**

overdue\_notices.pl [ -n ] [ -library <branchcode> ] [ -library
<branchcode>...] [ -max <number of days> ] [ -csv [ <filename> ] ]
[-itemscontent <field list> ]

Options:

-help brief help message

-man full documentation

-n No email will be sent

-max <days> maximum days overdue to deal with

-library <branchname> only deal with overdues from this library
(repeatable : several libraries can be given)

-csv <filename> populate CSV file

-html <filename> Output html to file

-itemscontent <list of fields> item information in templates

-borcat <categorycode> category code that must be included

-borcatout <categorycode> category code that must be excluded

**OPTIONS**

-help Print a brief help message and exits.

-man Prints the manual page and exits.

-v Verbose. Without this flag set, only fatal errors are reported.

-n Do not send any email. Overdue notices that would have been sent to
the patrons or to the admin are printed to standard out. CSV data (if
the -csv flag is set) is written to standard out or to any csv filename
given.

-max Items older than max days are assumed to be handled somewhere else,
probably the longoverdues.pl script. They are therefore ignored by this
program. No notices are sent for them, and they are not added to any CSV
files. Defaults to 90 to match longoverdues.pl.

-library

select overdues for one specific library. Use the value in the
branches.branchcode table. This option can be repeated in order to
select overdues for a group of libraries.

-csv Produces CSV data. if -n (no mail) flag is set, then this CSV data
is sent to standard out or to a filename if provided. Otherwise, only
overdues that could not be emailed are sent in CSV format to the admin.

-itemscontent

comma separated list of fields that get substituted into templates in
places of the <<items.content>> placeholder. This defaults to
issuedate,title,barcode,author

Other possible values come from fields in the biblios, items, and issues
tables.

-borcat Repetable field, that permit to select only few of patrons
categories.

-borcatout

Repetable field, permis to exclude some patrons categories.

-t \| --triggered

This option causes a notice to be generated if and only if an item is
overdue by the number of days defined in a notice trigger.

By default, a notice is sent each time the script runs, which is
suitable for less frequent run cron script, but requires syncing notice
triggers with the cron schedule to ensure proper behavior. Add the
--triggered option for daily cron, at the risk of no notice being
generated if the cron fails to run on time.

-list-all

Default items.content lists only those items that fall in the range of
the currently processing notice. Choose list-all to include all overdue
items in the list (limited by -max setting).

**DESCRIPTION**

This script is designed to alert patrons and administrators of overdue
items.

Configuration

This script pays attention to the overdue notice configuration performed
in the "Overdue notice/status triggers" section of the "Tools" area of
the staff interface to Koha. There, you can choose which letter
templates are sent out after a configurable number of days to patrons of
each library. More information about the use of this section of Koha is
available in the Koha manual.

The templates used to craft the emails are defined in the "Tools:
Notices" section of the staff interface to Koha.

Outgoing emails

Typically, messages are prepared for each patron with overdue items.
Messages for whom there is no email address on file are collected and
sent as attachments in a single email to each library administrator, or
if that is not set, then to the email address in the
"KohaAdminEmailAddress" system preference.

These emails are staged in the outgoing message queue, as are messages
produced by other features of Koha. This message queue must be processed
regularly by the misc/cronjobs/process\_message\_queue.pl program.

In the event that the "-n" flag is passed to this program, no emails are
sent. Instead, messages are sent on standard output from this program.
They may be redirected to a file if desired.

Templates

Templates can contain variables enclosed in double angle brackets like
<<this>>. Those variables will be replaced with values specific to the
overdue items or relevant patron. Available variables are:

<<bib>>

the name of the library

<<items.content>>

one line for each item, each line containing a tab separated list of
title, author, barcode, issuedate

<<borrowers.\*>>

any field from the borrowers table

<<branches.\*>>

any field from the branches table

CSV output

The "-csv" command line option lets you specify a file to which overdues
data should be output in CSV format.

With the "-n" flag set, data about all overdues is written to the file.
Without that flag, only information about overdues that were unable to
be sent directly to the patrons will be written. In other words, this
CSV file replaces the data that is typically sent to the administrator
email address.

**USAGE EXAMPLES**

"overdue\_notices.pl" - In this most basic usage, with no command line
arguments, all libraries are processed individually, and notices are
prepared for all patrons with overdue items for whom we have email
addresses. Messages for those patrons for whom we have no email address
are sent in a single attachment to the library administrator's email
address, or to the address in the KohaAdminEmailAddress system
preference.

"overdue\_notices.pl -n -csv /tmp/overdues.csv" - sends no email and
populates /tmp/overdues.csv with information about all overdue items.

"overdue\_notices.pl -library MAIN max 14" - prepare notices of overdues
in the last 2 weeks for the MAIN library.

**SEE ALSO**

The misc/cronjobs/advance\_notices.pl program allows you to send
messages to patrons in advance of their items becoming due, or to alert
them of items that have just become due.

**INTERNAL METHODS**

These methods are internal to the operation of overdue\_notices.pl.

parse\_letter

parses the letter template, replacing the placeholders with data
specific to this patron, biblio, or item

named parameters:

letter - required hashref

borrowernumber - required integer

substitute - optional hashref of other key/value pairs that should be
substituted in the letter content

returns the "letter" hashref, with the content updated to reflect the
substituted keys and values.

prepare\_letter\_for\_printing

returns a string of text appropriate for printing in the event that an
overdue notice will not be sent to the patron's email address. Depending
on the desired output format, this may be a CSV string, or a
human-readable representation of the notice.

required parameters:

letter

borrowernumber

optional parameters:

outputformat

`Print Hold Notices <#printholdcron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/gather\_print\_notices.pl

Does: looks through the message queue for hold notices that didn't go
through because the patron didn't have an email address and generates a
print notice

Frequency suggestion: nightly

`Talking Tech <#talkingtechcrons>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To learn more about setting up this third party product view the
`Talking Tech Appendix <#talkingtechappendix>`__.

`Sending Notices File <#talkingtechsendcron>`__
'''''''''''''''''''''''''''''''''''''''''''''''

Script path: misc/cronjobs/thirdparty/TalkingTech\_itiva\_outbound.pl

Does: Script to generate Spec C outbound notifications file for Talking
Tech i-tiva phone notification system.

Required by:
`TalkingTechItivaPhoneNotification <#TalkingTechItivaPhoneNotification>`__

Frequency suggestion: nightly

`Perl Documentation <#talkingsendcronperl>`__


**USAGE**

TalkingTech\_itiva\_outbound.pl

TalkingTech\_itiva\_outbound.pl --type=OVERDUE -w 0 -w 2 -w 6
--output=/tmp/talkingtech/outbound.csv

TalkingTech\_itiva\_outbound.pl --type=RESERVE --type=PREOVERDUE
--lang=FR

Script to generate Spec C outbound notifications file for Talking Tech
i-tiva phone notification system.

--help -h

Prints this help

-v Provide verbose log information.

--output -o

Destination for outbound notifications file (CSV format). If no value is
specified, output is dumped to screen.

--lang

Sets the language for all outbound messages. Currently supported values
are EN, FR and ES. If no value is specified, EN will be used by default.

--type

REQUIRED. Sets which messaging types are to be used. Can be given
multiple times, to specify multiple types in a single output file.
Currently supported values are RESERVE, PREOVERDUE and OVERDUE. If no
value is given, this script will not produce any outbound notifications.

--waiting-hold-day -w

OPTIONAL for --type=RESERVE. Sets the days after a hold has been set to
waiting on which to call. Use switch as many times as desired. For
example, passing "-w 0 -w 2 -w 6" will cause calls to be placed on the
day the hold was set to waiting, 2 days after the waiting date, and 6
days after. See example above. If this switch is not used with
--type=RESERVE, calls will be placed every day until the waiting reserve
is picked up or canceled.

--library-code --code -c

OPTIONAL The code of the source library of the message. The library code
is used to group notices together for consortium purposes and apply
library specific settings, such as prompts, to those notices. This field
can be blank if all messages are from a single library.

`Receiving Notices File <#talkingtechreceivecron>`__
''''''''''''''''''''''''''''''''''''''''''''''''''''

Script path: misc/cronjobs/thirdparty/TalkingTech\_itiva\_inbound.pl

Does: Script to process received Results files for Talking Tech i-tiva
phone notification system.

Required by:
`TalkingTechItivaPhoneNotification <#TalkingTechItivaPhoneNotification>`__

Frequency suggestion: nightly

`Perl Documentation <#talkingreceivecronperl>`__


**USAGE**

TalkingTech\_itiva\_inbound.pl

TalkingTech\_itiva\_inbound.pl -v --input=/tmp/talkingtech/results.csv

Script to process received Results files for Talking Tech i-tiva phone
notification system.

--help -h

Prints this help

-v Provide verbose log information.

--input -i

REQUIRED. Path to incoming results file.

`Notify Patrons of Expiration <#patronexpirycron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/membership\_expiry.pl

Does: Sends messages to warn patrons of their card expiration to the
`messaage queue <#msgqueuecron>`__ cron.

Requires: `MembershipExpiryDaysNotice <#MembershipExpiryDaysNotice>`__

Frequency: nightly

`In Processing/Book Cart <#proccartcron>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Script path: misc/cronjobs/cart\_to\_shelf.pl

Does: Updates all items with a location of CART to the item's permanent
location.

Required by: `NewItemsDefaultLocation <#NewItemsDefaultLocation>`__,
`InProcessingToShelvingCart <#InProcessingToShelvingCart>`__, &
`ReturnToShelvingCart <#ReturnToShelvingCart>`__ system preferences

Frequency suggestion: hourly

`Perl Documentation <#proccartcronperl>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**NAME**

cart\_to\_shelf.pl cron script to set items with location of CART to
original shelving location after X hours. Execute without options for
help.

`Catalog <#catalogcron>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~

`Check URLs <#checkurlcron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/check-url.pl

Does: checks URLs in 856$u field. Script output can now be formatted in
CSV or HTML. The HTML version links directly to MARC biblio record
editor.

Frequency suggestion: monthly

Learn more: http://wiki.koha-community.org/wiki/Check-url_enhancements

`Perl Documentation <#checkurlcronperl>`__
''''''''''''''''''''''''''''''''''''''''''

**NAME**

C4::URL::Checker - base object for checking URL stored in Koha DB

**SYNOPSIS**

::

    use C4::URL::Checker;

            my $checker = C4::URL::Checker->new( );
            $checker->{ host_default } = 'http://mylib.kohalibrary.com';
            my $checked_urls = $checker->check_biblio( 123 );
            foreach my $url ( @$checked_urls ) {
                print "url:        ", $url->{ url       A }, "\n",
                      "is_success: ", $url->{ is_success }, "\n",
                      "status:     ", $url->{ status     }, "\n";
            }

**FUNCTIONS**

new

Create a URL Checker. The returned object can be used to set default
host variable :

::

    my $checker = C4::URL::Checker->new( );
            $checker->{ host_default } = 'http://mylib.kohalibrary.com';

check\_biblio

Check all URL from a biblio record. Returns a pointer to an array
containing all URLs with checking for each of them.

::

     my $checked_urls = $checker->check_biblio( 123 );

With 2 URLs, the returned array will look like that:

::

         [
               {
                 'url' => 'http://mylib.tamil.fr/img/62265_0055B.JPG',
                 'is_success' => 1,
                 'status' => 'ok'
               },
               {
                 'url' => 'http://mylib.tamil.fr//img/62265_0055C.JPG',
                 'is_success' => 0,
                 'status' => '404 - Page not found'
               }
             ],

**NAME**

check-url.pl - Check URLs from 856$u field.

**USAGE**

check-url.pl [--verbose\|--help] [--host=http://default.tld]

Scan all URLs found in 856$u of bib records and display if resources are
available or not.

**PARAMETERS**

--host=http://default.tld

Server host used when URL doesn't have one, ie doesn't begin with
'http:'. For example, if --host=http://www.mylib.com, then when 856$u
contains 'img/image.jpg', the url checked is:
http://www.mylib.com/image.jpg'.

--verbose\|-v

Outputs both successful and failed URLs.

--html

Formats output in HTML. The result can be redirected to a file
accessible by http. This way, it's possible to link directly to biblio
record in edit mode. With this parameter --host-pro is required.

--host-pro=http://koha-pro.tld

Server host used to link to biblio record editing page.

--help\|-h

Print this help page.

`Update Authorities <#mergeauthcron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/migration\_tools/merge\_authority.pl

Does: Updates biblio data with changes to authorities records

    **Note**

    The name of this script is misleading. This script does not merge
    authorities together it instead merges authority data with linked
    bib records. Edits to authority records will be applied to
    bibliographic records that use that authority when this script is
    run.

Required by: `dontmerge <#dontmerge>`__ system preference

Frequency suggestion: nightly

`Serials Update <#serialscron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/serialsUpdate.pl

Does: checks if there is a "late" issue on active subscriptions, and if
there is, the script will set it as late, and add the next one as
expected.

Frequency suggestion: nightly

`Automatic item update <#autoitemupdatecron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/automatic\_item\_modification\_by\_age.pl

Does: updates items based on the list of rules set forth in the
`Automatic item modifications by age <#autoitemagemod>`__ tool

Required by: `Automatic item modifications by age <#autoitemagemod>`__

Frequency suggestions: nightly

`Perl Documentation <#autoitemupdatecrondoc>`__
'''''''''''''''''''''''''''''''''''''''''''''''

**NAME**

automatic\_item\_modification\_by\_age.pl

**SYNOPSIS**

./automatic\_item\_modification\_by\_age.pl -h

Toggle recent acquisitions status. Use this script to delete "new"
status for items.

**OPTIONS**

-h\|--help Prints this help message.

-v\|--verbose Set the verbose flag.

-c\|--confirm The script will modify the items.

**AUTHOR**

Jonathan Druart <jonathan.druart@biblibre.com>

**COPYRIGHT**

Copyright 2013 BibLibre

**LICENSE**

This file is part of Koha.

Koha is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free
Software Foundation; either version 3 of the License, or (at your
option) any later version.

Koha is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
more details.

You should have received a copy of the GNU General Public License along
with Koha; if not, see <http://www.gnu.org/licenses>.

`OPAC <#opaccrons>`__
~~~~~~~~~~~~~~~~~~~~~

`RSS Feeds <#customrssfeedcron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/rss/rss.pl

Does: Produces an RSS XML document for any SQL query (not used for
search results RSS feed). `Learn more <#customrss>`__.

Frequency suggestion: hourly

`Authorities Browser <#authbrowsercron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/build\_browser\_and\_cloud.pl

Does: Generate content for authorities browse in OPAC

Required by: `OpacBrowser <#OpacBrowser>`__ system preference

    **Important**

    This preference and cron job should only be used on French systems.

`Subject/Author Clouds <#keywordclouds>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/cloud-kw.pl

Does: Generates HTML keywords clouds from Koha Zebra indexes.
misc/cronjobs/cloud-sample.conf has a sample of how this script
operates.

Frequency: This is the type of script you can run once a month or so,
the content generated isn't going to change very much over time.

`Perl Documentation <#keywordcloudsperl>`__
'''''''''''''''''''''''''''''''''''''''''''

**NAME**

cloud-kw.pl - Creates HTML keywords clouds from Koha Zebra Indexes

**USAGE**

cloud-kw.pl [--verbose\|--help] --conf=cloud.conf

Creates multiple HTML files containing keywords cloud with top terms
sorted by their logarithmic weight. cloud.conf is a YAML configuration
file driving cloud generation process.

**PARAMETERS**

--conf=configuration file

Specify configuration file name

--verbose\|-v

Enable script verbose mode.

--help\|-h

Print this help page.

**CONFIGURATION**

Configuration file looks like that:

::

      ---
             # Koha configuration file for a specific installation
             # If not present, defaults to KOHA_CONF
             KohaConf: /home/koha/mylibray/etc/koha-conf.xml
             # Zebra index to scan
             ZebraIndex: Author
             # Koha index used to link found kewords with an opac search URL
             KohaIndex: au
             # Number of top keyword to use for the cloud
             Count: 50
             # Include CSS style directives with the cloud
             # This could be used as a model and then CSS directives are
             # put in the appropriate CSS file directly.
             Withcss: Yes
             # HTML file where to output the cloud
             Output: /home/koha/mylibrary/koharoot/koha-tmpl/cloud-author.html
            ---
             KohaConf: /home/koha/yourlibray/etc/koha-conf.xml
             ZebraIndex: Subject
             KohaIndex: su
             Count: 200
             Withcss: no
             Output: /home/koha/yourlibrary/koharoot/koha-tmpl/cloud-subject.html

**IMPROVEMENTS**

Generated top terms have more informations than those outputted from the
time being. Some parameters could be easily added to improve this
script:

WithCount

In order to output terms with the number of occurrences they have been
found in Koha Catalogue by Zebra.

CloudLevels

Number of levels in the cloud. Now 24 levels are hardcoded.

Weighting

Weighting method used to distribute terms in the cloud. We could have
two values: Logarithmic and Linear. Now it's Logarithmic by default.

Order

Now terms are outputted in the lexical order. They could be sorted by
their weight.

`System Administration <#systemcron>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`Clean up Database <#cleandbcron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/cleanup\_database.pl

Does: Truncates the sessions table, cleans out old zebraqueue entries,
action logs and staged MARC files.

Perl Documentation
''''''''''''''''''

**USAGE**

kohaclone/misc/cronjobs/cleanup\_database.pl [-h\|--help] [--sessions]
[--sessdays DAYS] [-v\|--verbose] [--zebraqueue DAYS] [-m\|--mail]
[--merged] [--import DAYS] [--logs DAYS] [--searchhistory DAYS]

**PARAMETERS**

-h --help

prints this help message, and exits, ignoring all other options

--sessions

purge the sessions table. If you use this while users are logged into
Koha, they will have to reconnect.

--sessdays DAYS

purge only sessions older than DAYS days

-v --verbose

will cause the script to give you a bit more information about the run.

--zebraqueue DAYS

purge completed zebraqueue entries older than DAYS days. Defaults to 30
days if no days specified.

-m --mail DAYS

purge items from the mail queue that are older than DAYS days. Defaults
to 30 days if no days specified.

--merged

purged completed entries from need\_merge\_authorities.

--import DAYS

purge records from import tables older than DAYS days. Defaults to 60
days if no days specified

--z3950

purge records from import tables that are the result of Z39.50 searches

--logs DAYS

purge entries from action\_logs older than DAYS days. Defaults to 180
days if no days specified

--searchhistory DAYS

purge entries from search\_history older than DAYS days. Defaults to 30
days if no days specified

--list-invites DAYS

purge (unaccepted) list share invites older than DAYS days. Defaults to
14 days if no days specified.

--restrictions DAYS

purge patrons restrictions expired since more than DAYS days. Defaults
to 30 days if no days specified.

`Share Usage Stats <#usagecron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/share\_usage\_with\_koha\_community.pl

Does: If you're sharing information via the `UsageStats <#UsageStats>`__
feature this will send your info to the `Hea
website <http://hea.koha-community.org/>`__.

Frequency: monthly

`Perl Documentation <#usagecronperl>`__
'''''''''''''''''''''''''''''''''''''''

**NAME**

share\_usage\_with\_koha\_community.pl - Share your library's usage with
the Koha community

**SYNOPSIS**

share\_usage\_with\_koha\_community.pl [-h\|--help] [-v\|--verbose]

If the `UsageStats <#UsageStats>`__ system preference is set, you can
launch this script to share your usage data anonymously with the Koha
community.

Collecting Koha usage statistics will help developers to know how Koha
is used across the world.

This script will send the usage data for the bibliographic and authority
records, checkouts, holds, orders, and subscriptions.

Only the total number is retrieved. In no case will private data be
shared!

In order to know which parts of Koha modules are used, this script will
collect some system preference values.

If you want to tell us who you are, you can fill the
`UsageStatsLibraryName <#UsageStatsLibraryName>`__ system preference
with your library name,
`UsageStatsLibraryUrl <#UsageStatsLibraryUrl>`__,
`UsageStatsLibraryType <#UsageStatsLibraryType>`__ and/or
`UsageStatsCountry <#UsageStatsCountry>`__.

All these data will be analyzed on the http://hea.koha-community.org
Koha community website.

IMPORTANT : please do NOT run the cron on the 1st, but on another day.
The idea is to avoid all Koha libraries sending their data at the same
time ! So choose any day between 1 and 28 !

**OPTIONS**

-h\|--help

Print a brief help message

-v\|--verbose

Verbose mode.

-f\|--force

Force the update.

**AUTHOR**

Alex Arnaud <alex.arnaud@biblibre.com>

Jonathan Druart <jonathan.druart@biblibre.com>

**COPYRIGHT**

Copyright 2014 BibLibre

**LICENSE**

This file is part of Koha.

Koha is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free
Software Foundation; either version 3 of the License, or (at your
option) any later version.

You should have received a copy of the GNU General Public License along
with Koha; if not, write to the Free Software Foundation, Inc., 51
Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

`Acquisitions <#acqcrons>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`Clean up old suggestions <#cleansuggcron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/purge\_suggestions.pl

Does: Removes old (defined by you) suggestions from the suggestion
management area.

`Email suggestions to process <#emailsuggestfund>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/notice\_unprocessed\_suggestions.pl

Does: Generates a notice to the fund owner that there are suggestions in
need of processing

`Perl Documentation <#emailsuggestfundperl>`__
''''''''''''''''''''''''''''''''''''''''''''''

**NAME**

notice\_unprocessed\_suggestions.pl - Generate notification for
unprocessed suggestions.

The budget owner will be notified.

The letter template 'TO\_PROCESS' will be used.

**SYNOPSIS**

notice\_unprocessed\_suggestions.pl [-h\|--help] [-v\|--verbose]
[-c\|--confirm] [--days=NUMBER\_OF\_DAYS]

**OPTIONS**

-h\|--help Print a brief help message

-c\|--confirm This flag must be provided in order for the script to
actually generate notices. If it is not supplied, the script will only
report on the patron it would have noticed.

--days This parameter is mandatory. It must contain an integer
representing the number of days elapsed since the last modification of
suggestions to process.

-v\|--verbose Verbose mode.

`EDI Message Processing <#edicron>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Script path: misc/cronjobs/edi\_cron.pl

Does: Sends and received EDI messages

Frequency: Every 15 minutes

`Deprecated scripts <#deprecatedcrons>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These should not be run without modification:

Script path: misc/cronjobs/update\_items.pl

Script path:misc/cronjobs/smsoverdues.pl

Script path:misc/cronjobs/notifyMailsOp.pl

Script path:misc/cronjobs/reservefix.pl

Script path:misc/cronjobs/zebraqueue\_start.pl

Web Services
============

`OAI-PMH <#OAI-PMHservice>`__
-----------------------------

For the Open Archives Initiative-Protocol for Metadata Harvesting
(OAI-PMH) there are two groups of 'participants': Data Providers and
Service Providers. Data Providers (open archives, repositories) provide
free access to metadata, and may, but do not necessarily, offer free
access to full texts or other resources. OAI-PMH provides an easy to
implement, low barrier solution for Data Providers. Service Providers
use the OAI interfaces of the Data Providers to harvest and store
metadata. Note that this means that there are no live search requests to
the Data Providers; rather, services are based on the harvested data via
OAI-PMH.

Koha at present can only act as a Data Provider. It can not harvest from
other repositories. The biggest stumbling block to having Koha harvest
from other repositories is that MARC is the only metadata format that
Koha indexes natively. Visit
http://www.oaforum.org/tutorial/english/page3.htm for diagrams of how
OAI-PMH works.

Learn more about OAI-PMH at: http://www.openarchives.org/pmh/

To enable OAI-PMH in Koha edit the `OAI-PMH <#OAI-PMH>`__ preference.
Once enabled you can visit http://YOURKOHACATALOG/cgi-bin/koha/oai.pl to
see your file.

`Sample OAI Conf File <#oaiconfsample>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

           format:
             vs:
               metadataPrefix: vs
               metadataNamespace: http://veryspecial.tamil.fr/vs/format-pivot/1.1/vs
               schema: http://veryspecial.tamil.fr/vs/format-pivot/1.1/vs.xsd
               xsl_file: /usr/local/koha/xslt/vs.xsl
             marcxml:
               metadataPrefix: marxml
               metadataNamespace: http://www.loc.gov/MARC21/slim
    http://www.loc.gov/standards/marcxml/schema/MARC21slim
               schema: http://www.loc.gov/MARC21/slim
    http://www.loc.gov/standards/marcxml/schema/MARC21slim.xsd
             oai_dc:
               metadataPrefix: oai_dc
               metadataNamespace: http://www.openarchives.org/OAI/2.0/oai_dc/
               schema: http://www.openarchives.org/OAI/2.0/oai_dc.xsd
               xsl_file:
    /usr/local/koha/koha-tmpl/intranet-tmpl/xslt/UNIMARCslim2OAIDC.xsl

`REST services <#Rest-services>`__
----------------------------------

Koha can now be requested by REST http requests. BibLibre wrotes an
external module to adds more possibilities than ILS-DI can provide.There
is no authentication process, but authorized ips are listed in the
config file. Services have been tested in 3.10, 3.12 and 3.14 koha
versions. You can find more information about it into README file and
opac/rest.pl documentation on http://git.biblibre.com. If you want to
add features, send us a patch at dev\_patches AT biblibre DOT com.

Services provided in 1.4 version are:

::

               GET branches
               GET user/byid/:borrowernumber/holds
               GET user/:user_name/holds
               GET user/byid/:borrowernumber/issues
               GET user/:user_name/issues
               GET user/:user_name/issues_history
               GET user/byid/:borrowernumber/issues_history
               GET user/today
               GET user/all
               POST user
               PUT user/:user_name
               GET biblio/:biblionumber/items
               GET biblio/:biblionumber/holdable
               GET biblio/:biblionumber/items_holdable_status
               GET item/:itemnumber/holdable
               PUT auth/change_password
               GET /suggestions
               GET /suggestions/:suggestionid
               POST /suggestions
               PUT /suggestions/:suggestionid
               DELETE /suggestions/:suggestionid


Using the SRU server
====================

`Using the SRU server <#usingsru>`__
------------------------------------

Koha implements the Search/Retrieve via URL (SRU) protocol. More
information about the protocol itself can be found at
http://www.loc.gov/standards/sru/. The version implemented is version
1.1.

`Explain <#sru_explain>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~

If you want to have information about the implementation of SRU on a
given server, you should have access to the Explain file using a request
to the server without any parameter. Like
<http://myserver.com:9999/biblios/>. The response from the server is an
XML file that should look like the following and will give you
information about the default settings of the SRU server.

::

                   <zs:explainResponse>
                        <zs:version>1.1</zs:version>
                        <zs:record>
                             <zs:recordSchema>http://explain.z3950.org/dtd/2.0/</zs:recordSchema>
                             <zs:recordPacking>xml</zs:recordPacking>
                             <zs:recordData>
                             <explain xml:base="zebradb/explain-biblios.xml">
                             <!--
                             try stylesheet url: http://./?stylesheet=docpath/sru2.xsl
                             -->
                        <serverInfo protocol="SRW/SRU/Z39.50">
                             <host>biblibre</host>
                             <port>9999</port>
                             <database>biblios</database>
                        </serverInfo>
                        <databaseInfo>
                             <title lang="en" primary="true">Koha 3 Bibliographic SRU/SRW/Z39.50 server</title>
                             <description lang="en" primary="true">Koha 3 Bibliographic Server</description>
                             <links>
                                  <sru>http://biblibre:9999</sru>
                             </links>
                        </databaseInfo>
                        <indexInfo>
                             <set name="cql" identifier="info:srw/cql-context-set/1/cql-v1.1">
                                  <title>CQL Standard Set</title>
                             </set>
                             <index search="true" scan="true" sort="false">
                             <title lang="en">CQL Server Choice</title>
                             <map>
                                  <name set="cql">serverChoice</name>
                             </map>
                        <map>
                           <attr type="1" set="bib1">text</attr>
                           </map>
                      </index>
                  <index search="true" scan="true" sort="false">
                     <title lang="en">CQL All</title>
                         <map>
            <name set="cql">all</name>
            </map>
            <map>
            <attr type="1" set="bib1">text</attr>
            </map>
            </index>
            <!-- Record ID index -->
            <index search="true" scan="true" sort="false">
            <title lang="en">Record ID</title>
            <map>
            <name set="rec">id</name>
            </map>
            <map>
            <attr type="1" set="bib1">rec:id</attr>
            <attr type="4" set="bib1">3</attr>
            </map>
            </index>


`Search <#sru_search>`__
~~~~~~~~~~~~~~~~~~~~~~~~

This url :
http://myserver.com:9999/biblios?version=1.1&operation=searchRetrieve&query=reefs
is composed of the following elements:

-  base url of the SRU server : http://myserver.com:9999/biblios?

-  search part with the 3 required parameters : version, operation and
   query. The parameters within the search part should be of the
   key=value form, and can be combined with the & character.

One can add optional parameters to the query, for instance
maximumRecords indicating the maximum number of records to be returned
by the server. So
http://myserver.com:9999/biblios?version=1.1&operation=searchRetrieve&query=reefs&maximumRecords=5
will only get the first 5 results results from the server.

http://www.loc.gov/standards/sru/sru1-1archive/search-retrieve-operation.html
gives more details about the search operations and in particular the
list of optional parameters for searching.

`More details about Search <#sru_search_more_details>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The "operation" key can take two values: scan or searchRetrieve.

If operation=searchRetrieve, then the search key should be query. As in
: operation=searchRetrieve&query=reefs

If operation=scan, then the search key should be scanClause. As in :
operation=scan&scanClause=reefs

etc/zebradb/biblios/etc/bib1.att defines Zebra/3950 indexes that exist
on your system. For instance you'll see that we have indexes for Subject
and for Title: att 21 Subject and att 4 Title respectively.

In the pqf.properties file located under etc/zebradb/pqf.properties I
see that an access point already uses my Subject index (index.dc.subject
= 1=21) while another uses my Title index (index.dc.title = 1=4) I know
this is my Subject index because as I've seen just before in my bib1.att
file, it's called with =1=21 in Z3950: so index.dc.subject = 1=21
correctly points to my Subject index. And Title was called with 1=4 so
index.dc.title = 1=4 correctly points to my Title index. I can now
construct my query just like I would in a search box, just preceding it
with the "query" key: query=Subject=reefs and Title=coral searches
"reefs" in the subject and "coral" in the title. The full url would be
http://myserver.com:9999/biblios?version=1.1&operation=searchRetrieve&query=Subject=reefs
and Title=coral If I want to limit the result set to just 5 records, I
can do
http://myserver.com:9999/biblios?version=1.1&operation=searchRetrieve&query=Subject=reefs
and Title=coral&maximumRecords=5

I can also play with truncate, relations, etc. Those are also defined in
my pqf.properties file. I can see for instance the position properties
defined as:

::

                   position.first              = 3=1 6=1
                  # "first in field"
                   position.any                = 3=3 6=1
                     # "any position in field"


So as an example if I want "coral" to be at the beginning of the title,
I can do this query :
http://myserver.com:9999/biblios?version=1.1&operation=searchRetrieve&query=Title=coral
first

`Retrieve <#sru_retrieve>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

My search for
http://univ\_lyon3.biblibre.com:9999/biblios?version=1.1&operation=searchRetrieve&query=coral
reefs&maximumRecords=1 retrieves just on record. The response looks like
this:

::

              <zs:searchRetrieveResponse>
    <zs:version>1.1</zs:version>
    <zs:numberOfRecords>1</zs:numberOfRecords>
    <zs:records>
    <zs:record>
    <zs:recordPacking>xml</zs:recordPacking>
    <zs:recordData>
    <record xsi:schemaLocation="http://www.loc.gov/MARC21/slim http://www.loc.gov/ standards/marcxml/schema/MARC21slim.xsd">
    <leader> cam a22 4500</leader>
    <datafield tag="010" ind1=" " ind2=" ">
    <subfield code="a">2-603-01193-6</subfield>
    <subfield code="b">rel.</subfield>
    <subfield code="d">159 F</subfield>
    </datafield>
    <datafield tag="020" ind1=" " ind2=" ">
    <subfield code="a">FR</subfield>
    <subfield code="b">00065351</subfield>
    </datafield>
    <datafield tag="101" ind1="1" ind2=" ">
    <subfield code="c">ita</subfield>
    </datafield>
    <datafield tag="105" ind1=" " ind2=" ">
    <subfield code="a">a z 00|y|</subfield>
    </datafield>
    <datafield tag="106" ind1=" " ind2=" ">
    <subfield code="a">r</subfield>
    </datafield>
    <datafield tag="100" ind1=" " ind2=" ">
    <subfield code="a">20091130 frey50 </subfield>
    </datafield>
    <datafield tag="200" ind1="1" ind2=" ">
    <subfield code="a">Guide des récifs coralliens / A Guide to Coral Reefs</subfield>
    <subfield code="b">Texte imprimé</subfield>
    <subfield code="e">la faune sous-marine des coraux</subfield>
    <subfield code="f">A. et A. Ferrari</subfield>
    </datafield>
    <datafield tag="210" ind1=" " ind2=" ">
    <subfield code="a">Lausanne</subfield>
    <subfield code="a">Paris</subfield>
    <subfield code="c">Delachaux et Niestlé</subfield>
    <subfield code="d">cop. 2000</subfield>
    <subfield code="e">impr. en Espagne</subfield>
    </datafield>
    <datafield tag="215" ind1=" " ind2=" ">
    <subfield code="a">287 p.</subfield>
    <subfield code="c">ill. en coul., couv. ill. en coul.</subfield>
    <subfield code="d">20 cm</subfield>
    </datafield>
    ......
    <idzebra>
    <size>4725</size>
    <localnumber>2</localnumber>
    <filename>/tmp/nw10BJv9Pk/upd_biblio/exported_records</filename>
    </idzebra>
    </record>
    </zs:recordData>
    <zs:recordPosition>1</zs:recordPosition>
    </zs:record>
    </zs:records>
    </zs:searchRetrieveResponse>



New titles slider for OPAC
==========================

Often times libraries will want to add a flowing widget with new
materials at the library to their main public catalog page. To do this
you can use a widget from any number of services (usually for a cost) or
you can `enable plugins <#pluginsystem>`__ in Koha and use the `Cover
Flow
plugin <http://git.bywatersolutions.com/koha-plugins.git/shortlog/refs/heads/cover_flow>`__
which is based on the
`Flipster <https://github.com/drien/jquery-flipster>`__, a responsive
jQuery coverflow plugin.

Once the plugin is installed, the steps to get your coverflow to show up
are as follows:

First, you need to create one or more public reports for your coverflow
widget or widgets to be based on. This is how the plugin knows what the
content of your widget should contain. Each report needs only three
columns; title, biblionumber, and isbn. It is important that you have a
good and valid isbn, as that is the datum used to actually fetch the
cover. In the iteration of the plugin, we are using Amazon cover images,
but I believe in the end I will make the cover image fetcher
configurable so we can use any data source for cover image fetching.

Second, we need to configure the plugin. The plugin configuration is a
single text area that uses YAML ( actually, it’s JSON, whcih is a subset
of YAML ) to store the configuration options. In this example it looks
like this:

::

    - id: 42
      selector: #coverflow
      options:
      style: coverflow

In this example, we are telling the plugin to use the report with id 42,
and use it to create a coverflow widget to replace the HTML element with
the id “coverflow”. The options list is passed directly to Flipster, so
any options supported by Flipster can be set from the plugin
configuration! In fact, in addition to the traditional coverflow,
Flipster has a “carousel” mode which is a much more compact version of
the coverflow. You can also configure which cover the widget will start
on, among other options.

At the time the plugins options are saved or updated, the plugin will
then generate some minified JavaScript code that is automatically stored
in the Koha system preference OPACUserJS. Here is an example of the
output:

::

    /* JS for Koha CoverFlow Plugin
     This JS was added automatically by installing the CoverFlow plugin
     Please do not modify */$(document).ready(function(){$.getScript("/plugin/Koha/Plugin/Com/ByWaterSolutions/CoverFlow/jquery-flipster/src/js/jquery.flipster.min.js",function(data,textStatus,jqxhr){$("head").append("<link id='flipster-css' href='/plugin/Koha/Plugin/Com/ByWaterSolutions/CoverFlow/jquery-flipster/src/css/jquery.flipster.min.css' type='text/css' rel='stylesheet' />");$('#coverflow').load("/coverflow.pl?id=42",function(){var opt={'items':'.item','minfactor':15,'distribution':1.5,'scalethreshold':0,'staticbelowthreshold':false,'titleclass':'itemTitle','selectedclass':'selectedItem','scrollactive':true,'step':{'limit':4,'width':10,'scale':true}};$('#coverflow').flipster({style:'coverflow',});});});});
    /* End of JS for Koha CoverFlow Plugin */

Why do this? For speed! Rather than regenerating this code each and
every time the page loads, we can generate it once, and use it over and
over again.

If you inspect the code closely, you’ll notice it references a script
“coverflow.pl”. This is a script that is included with the coverflow
plugin. Since we need to access this from the OPAC ( and we don’t want
to set off any XSS attack alarms ), we need to modify the web server
configuration for the public catalog and add the followup to it:

::

    ScriptAlias /coverflow.pl "/var/lib/koha/mykoha/plugins/Koha/Plugin/Com/ByWaterSolutions/CoverFlow/coverflow.pl"

This line gives us access to the coverflow.pl script from the OPAC. This
script retrieves the report data and passes it back to the public
catalog for creating the coverflow widget. Koha::Cache is supported in
order to make the widget load as quickly as possible!

The final step is to put your selector element somewhere in your public
catalog. In this example, I put the following in the system preference
OpacMainUserBlock:

::

    <span id="coverflow">Loading...</span>

Once that is in place, you need only refresh your OPAC page, and there
you have it, your very own catalog coverflow widget! Not only do these
coverflows look great on a computer screen, but they look great on
mobile platforms as well, and are even touch responsive!Coverflow Widget

System Preference Defaults
==========================

`ISBD Defaults <#isbddefaults>`__
---------------------------------

Default values for the `ISBD <#isbdpref>`__ preference.

`MARC Default <#isbddefault>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#100\|\|{ 100a }{ 100b }{ 100c }{ 100d }{ 110a }{ 110b }{ 110c }{ 110d
}{ 110e }{ 110f }{ 110g }{ 130a }{ 130d }{ 130f }{ 130g }{ 130h }{ 130k
}{ 130l }{ 130m }{ 130n }{ 130o }{ 130p }{ 130r }{ 130s }{ 130t
}\|<br/><br/>

#245\|\|{ 245a }{ 245b }{245f }{ 245g }{ 245k }{ 245n }{ 245p }{ 245s }{
245h }\|

#246\|\|{ : 246i }{ 246a }{ 246b }{ 246f }{ 246g }{ 246n }{ 246p }{ 246h
}\|

#242\|\|{ = 242a }{ 242b }{ 242n }{ 242p }{ 242h }\|

#245\|\|{ 245c }\|

#242\|\|{ = 242c }\|

#250\| - \|{ 250a }{ 250b }\|

#254\|, \|{ 254a }\|

#255\|, \|{ 255a }{ 255b }{ 255c }{ 255d }{ 255e }{ 255f }{ 255g }\|

#256\|, \|{ 256a }\|

#257\|, \|{ 257a }\|

#258\|, \|{ 258a }{ 258b }\|

#260\| - \|{ 260a }{ 260b }{ 260c }\|

#300\| - \|{ 300a }{ 300b }{ 300c }{ 300d }{ 300e }{ 300f }{ 300g }\|

#306\| - \|{ 306a }\|

#307\| - \|{ 307a }{ 307b }\|

#310\| - \|{ 310a }{ 310b }\|

#321\| - \|{ 321a }{ 321b }\|

#340\| - \|{ 3403 }{ 340a }{ 340b }{ 340c }{ 340d }{ 340e }{ 340f }{
340h }{ 340i }\|

#342\| - \|{ 342a }{ 342b }{ 342c }{ 342d }{ 342e }{ 342f }{ 342g }{
342h }{ 342i }{ 342j }{ 342k }{ 342l }{ 342m }{ 342n }{ 342o }{ 342p }{
342q }{ 342r }{ 342s }{ 342t }{ 342u }{ 342v }{ 342w }\|

#343\| - \|{ 343a }{ 343b }{ 343c }{ 343d }{ 343e }{ 343f }{ 343g }{
343h }{ 343i }\|

#351\| - \|{ 3513 }{ 351a }{ 351b }{ 351c }\|

#352\| - \|{ 352a }{ 352b }{ 352c }{ 352d }{ 352e }{ 352f }{ 352g }{
352i }{ 352q }\|

#362\| - \|{ 362a }{ 351z }\|

#440\| - \|{ 440a }{ 440n }{ 440p }{ 440v }{ 440x }\|.

#490\| - \|{ 490a }{ 490v }{ 490x }\|.

#800\| - \|{ 800a }{ 800b }{ 800c }{ 800d }{ 800e }{ 800f }{ 800g }{
800h }{ 800j }{ 800k }{ 800l }{ 800m }{ 800n }{ 800o }{ 800p }{ 800q }{
800r }{ 800s }{ 800t }{ 800u }{ 800v }\|.

#810\| - \|{ 810a }{ 810b }{ 810c }{ 810d }{ 810e }{ 810f }{ 810g }{
810h }{ 810k }{ 810l }{ 810m }{ 810n }{ 810o }{ 810p }{ 810r }{ 810s }{
810t }{ 810u }{ 810v }\|.

#811\| - \|{ 811a }{ 811c }{ 811d }{ 811e }{ 811f }{ 811g }{ 811h }{
811k }{ 811l }{ 811n }{ 811p }{ 811q }{ 811s }{ 811t }{ 811u }{ 811v
}\|.

#830\| - \|{ 830a }{ 830d }{ 830f }{ 830g }{ 830h }{ 830k }{ 830l }{
830m }{ 830n }{ 830o }{ 830p }{ 830r }{ 830s }{ 830t }{ 830v }\|.

#500\|<br/><br/>\|{ 5003 }{ 500a }\|

#501\|<br/><br/>\|{ 501a }\|

#502\|<br/><br/>\|{ 502a }\|

#504\|<br/><br/>\|{ 504a }\|

#505\|<br/><br/>\|{ 505a }{ 505t }{ 505r }{ 505g }{ 505u }\|

#506\|<br/><br/>\|{ 5063 }{ 506a }{ 506b }{ 506c }{ 506d }{ 506u }\|

#507\|<br/><br/>\|{ 507a }{ 507b }\|

#508\|<br/><br/>\|{ 508a }{ 508a }\|

#510\|<br/><br/>\|{ 5103 }{ 510a }{ 510x }{ 510c }{ 510b }\|

#511\|<br/><br/>\|{ 511a }\|

#513\|<br/><br/>\|{ 513a }{513b }\|

#514\|<br/><br/>\|{ 514z }{ 514a }{ 514b }{ 514c }{ 514d }{ 514e }{ 514f
}{ 514g }{ 514h }{ 514i }{ 514j }{ 514k }{ 514m }{ 514u }\|

#515\|<br/><br/>\|{ 515a }\|

#516\|<br/><br/>\|{ 516a }\|

#518\|<br/><br/>\|{ 5183 }{ 518a }\|

#520\|<br/><br/>\|{ 5203 }{ 520a }{ 520b }{ 520u }\|

#521\|<br/><br/>\|{ 5213 }{ 521a }{ 521b }\|

#522\|<br/><br/>\|{ 522a }\|

#524\|<br/><br/>\|{ 524a }\|

#525\|<br/><br/>\|{ 525a }\|

#526\|<br/><br/>\|{\\n510i }{\\n510a }{ 510b }{ 510c }{ 510d }{\\n510x
}\|

#530\|<br/><br/>\|{\\n5063 }{\\n506a }{ 506b }{ 506c }{ 506d }{\\n506u
}\|

#533\|<br/><br/>\|{\\n5333 }{\\n533a }{\\n533b }{\\n533c }{\\n533d
}{\\n533e }{\\n533f }{\\n533m }{\\n533n }\|

#534\|<br/><br/>\|{\\n533p }{\\n533a }{\\n533b }{\\n533c }{\\n533d
}{\\n533e }{\\n533f }{\\n533m }{\\n533n }{\\n533t }{\\n533x }{\\n533z
}\|

#535\|<br/><br/>\|{\\n5353 }{\\n535a }{\\n535b }{\\n535c }{\\n535d }\|

#538\|<br/><br/>\|{\\n5383 }{\\n538a }{\\n538i }{\\n538u }\|

#540\|<br/><br/>\|{\\n5403 }{\\n540a }{ 540b }{ 540c }{ 540d }{\\n520u
}\|

#544\|<br/><br/>\|{\\n5443 }{\\n544a }{\\n544b }{\\n544c }{\\n544d
}{\\n544e }{\\n544n }\|

#545\|<br/><br/>\|{\\n545a }{ 545b }{\\n545u }\|

#546\|<br/><br/>\|{\\n5463 }{\\n546a }{ 546b }\|

#547\|<br/><br/>\|{\\n547a }\|

#550\|<br/><br/>\|{ 550a }\|

#552\|<br/><br/>\|{ 552z }{ 552a }{ 552b }{ 552c }{ 552d }{ 552e }{ 552f
}{ 552g }{ 552h }{ 552i }{ 552j }{ 552k }{ 552l }{ 552m }{ 552n }{ 562o
}{ 552p }{ 552u }\|

#555\|<br/><br/>\|{ 5553 }{ 555a }{ 555b }{ 555c }{ 555d }{ 555u }\|

#556\|<br/><br/>\|{ 556a }{ 506z }\|

#563\|<br/><br/>\|{ 5633 }{ 563a }{ 563u }\|

#565\|<br/><br/>\|{ 5653 }{ 565a }{ 565b }{ 565c }{ 565d }{ 565e }\|

#567\|<br/><br/>\|{ 567a }\|

#580\|<br/><br/>\|{ 580a }\|

#581\|<br/><br/>\|{ 5633 }{ 581a }{ 581z }\|

#584\|<br/><br/>\|{ 5843 }{ 584a }{ 584b }\|

#585\|<br/><br/>\|{ 5853 }{ 585a }\|

#586\|<br/><br/>\|{ 5863 }{ 586a }\|

#020\|<br/><br/><label>ISBN: </label>\|{ 020a }{ 020c }\|

#022\|<br/><br/><label>ISSN: </label>\|{ 022a }\|

#222\| = \|{ 222a }{ 222b }\|

#210\| = \|{ 210a }{ 210b }\|

#024\|<br/><br/><label>Standard No.: </label>\|{ 024a }{ 024c }{ 024d }{
0242 }\|

#027\|<br/><br/><label>Standard Tech. Report. No.: </label>\|{ 027a }\|

#028\|<br/><br/><label>Publisher. No.: </label>\|{ 028a }{ 028b }\|

#013\|<br/><br/><label>Patent No.: </label>\|{ 013a }{ 013b }{ 013c }{
013d }{ 013e }{ 013f }\|

#030\|<br/><br/><label>CODEN: </label>\|{ 030a }\|

#037\|<br/><br/><label>Source: </label>\|{ 037a }{ 037b }{ 037c }{ 037f
}{ 037g }{ 037n }\|

#010\|<br/><br/><label>LCCN: </label>\|{ 010a }\|

#015\|<br/><br/><label>Nat. Bib. No.: </label>\|{ 015a }{ 0152 }\|

#016\|<br/><br/><label>Nat. Bib. Agency Control No.: </label>\|{ 016a }{
0162 }\|

#600\|<br/><br/><label>Subjects--Personal Names: </label>\|{\\n6003
}{\\n600a}{ 600b }{ 600c }{ 600d }{ 600e }{ 600f }{ 600g }{ 600h
}{--600k}{ 600l }{ 600m }{ 600n }{ 600o }{--600p}{ 600r }{ 600s }{ 600t
}{ 600u }{--600x}{--600z}{--600y}{--600v}\|

#610\|<br/><br/><label>Subjects--Corporate Names: </label>\|{\\n6103
}{\\n610a}{ 610b }{ 610c }{ 610d }{ 610e }{ 610f }{ 610g }{ 610h
}{--610k}{ 610l }{ 610m }{ 610n }{ 610o }{--610p}{ 610r }{ 610s }{ 610t
}{ 610u }{--610x}{--610z}{--610y}{--610v}\|

#611\|<br/><br/><label>Subjects--Meeting Names: </label>\|{\\n6113
}{\\n611a}{ 611b }{ 611c }{ 611d }{ 611e }{ 611f }{ 611g }{ 611h
}{--611k}{ 611l }{ 611m }{ 611n }{ 611o }{--611p}{ 611r }{ 611s }{ 611t
}{ 611u }{--611x}{--611z}{--611y}{--611v}\|

#630\|<br/><br/><label>Subjects--Uniform Titles: </label>\|{\\n630a}{
630b }{ 630c }{ 630d }{ 630e }{ 630f }{ 630g }{ 630h }{--630k }{ 630l }{
630m }{ 630n }{ 630o }{--630p}{ 630r }{ 630s }{ 630t
}{--630x}{--630z}{--630y}{--630v}\|

#648\|<br/><br/><label>Subjects--Chronological Terms: </label>\|{\\n6483
}{\\n648a }{--648x}{--648z}{--648y}{--648v}\|

#650\|<br/><br/><label>Subjects--Topical Terms: </label>\|{\\n6503
}{\\n650a}{ 650b }{ 650c }{ 650d }{ 650e
}{--650x}{--650z}{--650y}{--650v}\|

#651\|<br/><br/><label>Subjects--Geographic Terms: </label>\|{\\n6513
}{\\n651a}{ 651b }{ 651c }{ 651d }{ 651e
}{--651x}{--651z}{--651y}{--651v}\|

#653\|<br/><br/><label>Subjects--Index Terms: </label>\|{ 653a }\|

#654\|<br/><br/><label>Subjects--Facted Index Terms: </label>\|{\\n6543
}{\\n654a}{--654b}{--654x}{--654z}{--654y}{--654v}\|

#655\|<br/><br/><label>Index Terms--Genre/Form: </label>\|{\\n6553
}{\\n655a}{--655b}{--655x }{--655z}{--655y}{--655v}\|

#656\|<br/><br/><label>Index Terms--Occupation: </label>\|{\\n6563
}{\\n656a}{--656k}{--656x}{--656z}{--656y}{--656v}\|

#657\|<br/><br/><label>Index Terms--Function: </label>\|{\\n6573
}{\\n657a}{--657x}{--657z}{--657y}{--657v}\|

#658\|<br/><br/><label>Index Terms--Curriculum Objective:
</label>\|{\\n658a}{--658b}{--658c}{--658d}{--658v}\|

#050\|<br/><br/><label>LC Class. No.: </label>\|{ 050a }{ / 050b }\|

#082\|<br/><br/><label>Dewey Class. No.: </label>\|{ 082a }{ / 082b }\|

#080\|<br/><br/><label>Universal Decimal Class. No.: </label>\|{ 080a }{
080x }{ / 080b }\|

#070\|<br/><br/><label>National Agricultural Library Call No.:
</label>\|{ 070a }{ / 070b }\|

#060\|<br/><br/><label>National Library of Medicine Call No.:
</label>\|{ 060a }{ / 060b }\|

#074\|<br/><br/><label>GPO Item No.: </label>\|{ 074a }\|

#086\|<br/><br/><label>Gov. Doc. Class. No.: </label>\|{ 086a }\|

#088\|<br/><br/><label>Report. No.: </label>\|{ 088a }\|

`UNIMARC Default <#unimarcdefault>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#200\|<h2>Title : \|{200a}{. 200c}{ : 200e}{200d}{. 200h}{. 200i}\|</h2>

#461\|<label class="ipt">A part of : </label>\|<a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search{&q=461t&idx=ti}">{461t}</a>{N∞
461h} {v. 461v}{(461d)}<br/>\|

#200b\|<label class="ipt">Material Designation : </label>\| {200b
}\|<br/>

#101a\|<label class="ipt">Language(s): </label>\|<a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search{&q=101a&idx=ln}">{101a}</a>\|<br/>

#200f\|<label class="ipt">Authors : </label>\|<a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search{&q=200f&idx=au}">{200f
; }</a>\|<br/>

#200g\|<label class="ipt">Co-authors : </label>\|<a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search{&q=200g&idx=au}">{200g
; }</a>\|<br/>

#210a\|<br/><label class="ipt">Place of pubblication : </label>\|<a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search&idx=pl&q={210a}">{210a}</a>\|<br/>

#210c\|<label class="ipt">Publisher : </label>\|<a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search&idx=pb&q={210c}">{210c
; }</a>\|<br/>

#210d\|<label class="ipt">Date of pubblication : </label>\|{
210d}\|<br/>

#215\|<label class="ipt">Description : </label>\|{215a}{ : 215c}{ ;
215d}{ + 215e}\|<br/>

#225a\|<label class="ipt">Series :</label>\|<a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search{&q=225a&idx=se}">{225a
;}</a> \|

#225\|\|{ = 225d}{ : 225e}{. 225h}{. 225i}{ / 225f}{, 225x}{ ;
225v}\|<br/>

#686\|<label>Classification : </label>\|{ 686a }\|<br/>

#608\|<label>Form, Genre : </label>\|<a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search&idx=su&q={608a}"><img
border="0" src="/opac-tmpl/css/en/images/filefind.png" height="15"
title="Search on {608a}">{ 608a}</a>\|<br/><br/>

#200\|\|<label class="ipt">Subjects : </label><br/>\|<ul>

#600\|<label class="ipt">Person(s) </label><br/> \|<li><a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search&idx=su&q={600a}"><img
border="0" src="/opac-tmpl/css/en/images/filefind.png" height="15"
title="Search on {600a}">{ 600a}</a></li>\|<br/>

#601\|<label class="ipt">Organisation(s) </label><br/>\|<li><a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search&idx=su&q={601a}"><img
border="0" src="/opac-tmpl/css/en/images/filefind.png" height="15"
title="Search on {601a}">{ 601a}</a></li>\|<br/>

#606\|<label class="ipt">Term(s) </label><br/>\|<li><a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search&idx=su&q={606a}"><img
border="0" src="/opac-tmpl/css/en/images/filefind.png" height="15"
title="Search on {606a}">{ 606a}</a></li>\|<br/>

#607\|<label class="ipt">Place(s) </label><br/>\|<li><a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search&idx=su&q={607a}"><img
border="0" src="/opac-tmpl/css/en/images/filefind.png" height="15"
title="Search on {607a}">{ 607a}</a></li>\|<br/>

#610\|<label>Keywords</label><br/>\|<li><a
href="/cgi-bin/koha/catalogue/search.pl?op=do\_search&idx=su&q={610a}"><img
border="0" src="/opac-tmpl/css/en/images/filefind.png" height="15"
title="Search on {610a}">{ 610a}</a></li>\|

#200\|\|</ul>\|

#856\|<label class="ipt">Electronic resource : </label>\|<a
href="{856u}">click here</a> to go to the external resource<br/>

#010\|<label class="ipt">ISBN : </label>\|{010a ;}\|<br/>

#011\|<label class="ipt">ISSN : </label>\|{011a ;}\|<br/>

#200\|\|<label class="ipt">Notes : </label>\|<br/><ul>

#300\|\|<li>{300a}</li>\|

#307\|\|<li>{307a}</li>\|

#310\|\|<li>{310a}</li>\|

#326\|\|<li>{326a}</li>\|

#327\|\|<li>{327a}</li>\|

#333\|<li>Public : \|{333a}</li>\|

#200\|\|</ul>\|

#330\|\|<label class="ipt">Abstract : </label>\|<br/>

#330\|\|{330a}\|<br/>

#200\|\|<br/><h2>Items</h2>\|

#200\|<table>\|<th>Call number</th><th>Copy
note</th><th>Fonds</th><th>Genre detail</th><th>Circulation
type</th><th>Barcode</th>\|

#995\|\|<tr><td> {995k}</td><td> {995u}</td><td>
{995y}</td><td>{995e}  </td><td>
{995o}</td><td>{995f}</td></tr>\|</table>

`OPACISBD Defaults <#opacisbddefaults>`__
-----------------------------------------

Default values for the `OPACISBD <#OPACISBD>`__ preference.

`MARC <#opacisbdmarcdefault>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#100\|\|{ 100a }{ 100b }{ 100c }{ 100d }{ 110a }{ 110b }{ 110c }{ 110d
}{ 110e }{ 110f }{ 110g }{ 130a }{ 130d }{ 130f }{ 130g }{ 130h }{ 130k
}{ 130l }{ 130m }{ 130n }{ 130o }{ 130p }{ 130r }{ 130s }{ 130t
}\|<br/><br/>

#245\|\|{ 245a }{ 245b }{245f }{ 245g }{ 245k }{ 245n }{ 245p }{ 245s }{
245h }\|

#246\|\|{ : 246i }{ 246a }{ 246b }{ 246f }{ 246g }{ 246n }{ 246p }{ 246h
}\|

#242\|\|{ = 242a }{ 242b }{ 242n }{ 242p }{ 242h }\|

#245\|\|{ 245c }\|

#242\|\|{ = 242c }\|

#250\| - \|{ 250a }{ 250b }\|

#254\|, \|{ 254a }\| #255\|, \|{ 255a }{ 255b }{ 255c }{ 255d }{ 255e }{
255f }{ 255g }\| #256\|, \|{ 256a }\|

#257\|, \|{ 257a }\|

#258\|, \|{ 258a }{ 258b }\|

#260\| - \|{ 260a }{ 260b }{ 260c }\|

#300\| - \|{ 300a }{ 300b }{ 300c }{ 300d }{ 300e }{ 300f }{ 300g }\|

#306\| - \|{ 306a }\| #307\| - \|{ 307a }{ 307b }\|

#310\| - \|{ 310a }{ 310b }\|

#321\| - \|{ 321a }{ 321b }\|

#340\| - \|{ 3403 }{ 340a }{ 340b }{ 340c }{ 340d }{ 340e }{ 340f }{
340h }{ 340i }\|

#342\| - \|{ 342a }{ 342b }{ 342c }{ 342d }{ 342e }{ 342f }{ 342g }{
342h }{ 342i }{ 342j }{ 342k }{ 342l }{ 342m }{ 342n }{ 342o }{ 342p }{
342q }{ 342r }{ 342s }{ 342t }{ 342u }{ 342v }{ 342w }\|

#343\| - \|{ 343a }{ 343b }{ 343c }{ 343d }{ 343e }{ 343f }{ 343g }{
343h }{ 343i }\|

#351\| - \|{ 3513 }{ 351a }{ 351b }{ 351c }\|

#352\| - \|{ 352a }{ 352b }{ 352c }{ 352d }{ 352e }{ 352f }{ 352g }{
352i }{ 352q }\|

#362\| - \|{ 362a }{ 351z }\|

#440\| - \|{ 440a }{ 440n }{ 440p }{ 440v }{ 440x }\|. #490\| - \|{ 490a
}{ 490v }{ 490x }\|.

#800\| - \|{ 800a }{ 800b }{ 800c }{ 800d }{ 800e }{ 800f }{ 800g }{
800h }{ 800j }{ 800k }{ 800l }{ 800m }{ 800n }{ 800o }{ 800p }{ 800q }{
800r }{ 800s }{ 800t }{ 800u }{ 800v }\|.

#810\| - \|{ 810a }{ 810b }{ 810c }{ 810d }{ 810e }{ 810f }{ 810g }{
810h }{ 810k }{ 810l }{ 810m }{ 810n }{ 810o }{ 810p }{ 810r }{ 810s }{
810t }{ 810u }{ 810v }\|.

#811\| - \|{ 811a }{ 811c }{ 811d }{ 811e }{ 811f }{ 811g }{ 811h }{
811k }{ 811l }{ 811n }{ 811p }{ 811q }{ 811s }{ 811t }{ 811u }{ 811v
}\|.

#830\| - \|{ 830a }{ 830d }{ 830f }{ 830g }{ 830h }{ 830k }{ 830l }{
830m }{ 830n }{ 830o }{ 830p }{ 830r }{ 830s }{ 830t }{ 830v }\|.

#500\|<br/><br/>\|{ 5003 }{ 500a }\|

#501\|<br/><br/>\|{ 501a }\|

#502\|<br/><br/>\|{ 502a }\|

#504\|<br/><br/>\|{ 504a }\|

#505\|<br/><br/>\|{ 505a }{ 505t }{ 505r }{ 505g }{ 505u }\|

#506\|<br/><br/>\|{ 5063 }{ 506a }{ 506b }{ 506c }{ 506d }{ 506u }\|

#507\|<br/><br/>\|{ 507a }{ 507b }\| #508\|<br/><br/>\|{ 508a }{ 508a
}\|

#510\|<br/><br/>\|{ 5103 }{ 510a }{ 510x }{ 510c }{ 510b }\|

#511\|<br/><br/>\|{ 511a }\|

#513\|<br/><br/>\|{ 513a }{513b }\|

#514\|<br/><br/>\|{ 514z }{ 514a }{ 514b }{ 514c }{ 514d }{ 514e }{ 514f
}{ 514g }{ 514h }{ 514i }{ 514j }{ 514k }{ 514m }{ 514u }\|

#515\|<br/><br/>\|{ 515a }\|

#516\|<br/><br/>\|{ 516a }\|

#518\|<br/><br/>\|{ 5183 }{ 518a }\|

#520\|<br/><br/>\|{ 5203 }{ 520a }{ 520b }{ 520u }\|

#521\|<br/><br/>\|{ 5213 }{ 521a }{ 521b }\|

#522\|<br/><br/>\|{ 522a }\|

#524\|<br/><br/>\|{ 524a }\|

#525\|<br/><br/>\|{ 525a }\|

#526\|<br/><br/>\|{\\n510i }{\\n510a }{ 510b }{ 510c }{ 510d }{\\n510x
}\|

#530\|<br/><br/>\|{\\n5063 }{\\n506a }{ 506b }{ 506c }{ 506d }{\\n506u
}\|

#533\|<br/><br/>\|{\\n5333 }{\\n533a }{\\n533b }{\\n533c }{\\n533d
}{\\n533e }{\\n533f }{\\n533m }{\\n533n }\|

#534\|<br/><br/>\|{\\n533p }{\\n533a }{\\n533b }{\\n533c }{\\n533d
}{\\n533e }{\\n533f }{\\n533m }{\\n533n }{\\n533t }{\\n533x }{\\n533z
}\|

#535\|<br/><br/>\|{\\n5353 }{\\n535a }{\\n535b }{\\n535c }{\\n535d }\|

#538\|<br/><br/>\|{\\n5383 }{\\n538a }{\\n538i }{\\n538u }\|

#540\|<br/><br/>\|{\\n5403 }{\\n540a }{ 540b }{ 540c }{ 540d }{\\n520u
}\|

#544\|<br/><br/>\|{\\n5443 }{\\n544a }{\\n544b }{\\n544c }{\\n544d
}{\\n544e }{\\n544n }\|

#545\|<br/><br/>\|{\\n545a }{ 545b }{\\n545u }\|
#546\|<br/><br/>\|{\\n5463 }{\\n546a }{ 546b }\|

#547\|<br/><br/>\|{\\n547a }\| #550\|<br/><br/>\|{ 550a }\|

#552\|<br/><br/>\|{ 552z }{ 552a }{ 552b }{ 552c }{ 552d }{ 552e }{ 552f
}{ 552g }{ 552h }{ 552i }{ 552j }{ 552k }{ 552l }{ 552m }{ 552n }{ 562o
}{ 552p }{ 552u }\|

#555\|<br/><br/>\|{ 5553 }{ 555a }{ 555b }{ 555c }{ 555d }{ 555u }\|

#556\|<br/><br/>\|{ 556a }{ 506z }\| #563\|<br/><br/>\|{ 5633 }{ 563a }{
563u }\|

#565\|<br/><br/>\|{ 5653 }{ 565a }{ 565b }{ 565c }{ 565d }{ 565e }\|

#567\|<br/><br/>\|{ 567a }\|

#580\|<br/><br/>\|{ 580a }\|

#581\|<br/><br/>\|{ 5633 }{ 581a }{ 581z }\|

#584\|<br/><br/>\|{ 5843 }{ 584a }{ 584b }\|

#585\|<br/><br/>\|{ 5853 }{ 585a }\|

#586\|<br/><br/>\|{ 5863 }{ 586a }\|

#020\|<br/><br/><label>ISBN: </label>\|{ 020a }{ 020c }\|

#022\|<br/><br/><label>ISSN: </label>\|{ 022a }\|

#222\| = \|{ 222a }{ 222b }\|

#210\| = \|{ 210a }{ 210b }\|

#024\|<br/><br/><label>Standard No.: </label>\|{ 024a }{ 024c }{ 024d }{
0242 }\|

#027\|<br/><br/><label>Standard Tech. Report. No.: </label>\|{ 027a }\|

#028\|<br/><br/><label>Publisher. No.: </label>\|{ 028a }{ 028b }\|

#013\|<br/><br/><label>Patent No.: </label>\|{ 013a }{ 013b }{ 013c }{
013d }{ 013e }{ 013f }\|

#030\|<br/><br/><label>CODEN: </label>\|{ 030a }\|

#037\|<br/><br/><label>Source: </label>\|{ 037a }{ 037b }{ 037c }{ 037f
}{ 037g }{ 037n }\|

#010\|<br/><br/><label>LCCN: </label>\|{ 010a }\|

#015\|<br/><br/><label>Nat. Bib. No.: </label>\|{ 015a }{ 0152 }\|

#016\|<br/><br/><label>Nat. Bib. Agency Control No.: </label>\|{ 016a }{
0162 }\|

#600\|<br/><br/><label>Subjects--Personal Names: </label>\|{\\n6003
}{\\n600a}{ 600b }{ 600c }{ 600d }{ 600e }{ 600f }{ 600g }{ 600h
}{--600k}{ 600l }{ 600m }{ 600n }{ 600o }{--600p}{ 600r }{ 600s }{ 600t
}{ 600u }{--600x}{--600z}{--600y}{--600v}\|

#610\|<br/><br/><label>Subjects--Corporate Names: </label>\|{\\n6103
}{\\n610a}{ 610b }{ 610c }{ 610d }{ 610e }{ 610f }{ 610g }{ 610h
}{--610k}{ 610l }{ 610m }{ 610n }{ 610o }{--610p}{ 610r }{ 610s }{ 610t
}{ 610u }{--610x}{--610z}{--610y}{--610v}\|

#611\|<br/><br/><label>Subjects--Meeting Names: </label>\|{\\n6113
}{\\n611a}{ 611b }{ 611c }{ 611d }{ 611e }{ 611f }{ 611g }{ 611h
}{--611k}{ 611l }{ 611m }{ 611n }{ 611o }{--611p}{ 611r }{ 611s }{ 611t
}{ 611u }{--611x}{--611z}{--611y}{--611v}\|

#630\|<br/><br/><label>Subjects--Uniform Titles: </label>\|{\\n630a}{
630b }{ 630c }{ 630d }{ 630e }{ 630f }{ 630g }{ 630h }{--630k }{ 630l }{
630m }{ 630n }{ 630o }{--630p}{ 630r }{ 630s }{ 630t
}{--630x}{--630z}{--630y}{--630v}\|

#648\|<br/><br/><label>Subjects--Chronological Terms: </label>\|{\\n6483
}{\\n648a }{--648x}{--648z}{--648y}{--648v}\|
#650\|<br/><br/><label>Subjects--Topical Terms: </label>\|{\\n6503
}{\\n650a}{ 650b }{ 650c }{ 650d }{ 650e
}{--650x}{--650z}{--650y}{--650v}\|

#651\|<br/><br/><label>Subjects--Geographic Terms: </label>\|{\\n6513
}{\\n651a}{ 651b }{ 651c }{ 651d }{ 651e
}{--651x}{--651z}{--651y}{--651v}\|

#653\|<br/><br/><label>Subjects--Index Terms: </label>\|{ 653a }\|

#654\|<br/><br/><label>Subjects--Facted Index Terms: </label>\|{\\n6543
}{\\n654a}{--654b}{--654x}{--654z}{--654y}{--654v}\|

#655\|<br/><br/><label>Index Terms--Genre/Form: </label>\|{\\n6553
}{\\n655a}{--655b}{--655x }{--655z}{--655y}{--655v}\|

#656\|<br/><br/><label>Index Terms--Occupation: </label>\|{\\n6563
}{\\n656a}{--656k}{--656x}{--656z}{--656y}{--656v}\|

#657\|<br/><br/><label>Index Terms--Function: </label>\|{\\n6573
}{\\n657a}{--657x}{--657z}{--657y}{--657v}\|

#658\|<br/><br/><label>Index Terms--Curriculum Objective:
</label>\|{\\n658a}{--658b}{--658c}{--658d}{--658v}\|

#050\|<br/><br/><label>LC Class. No.: </label>\|{ 050a }{ / 050b }\|

#082\|<br/><br/><label>Dewey Class. No.: </label>\|{ 082a }{ / 082b }\|

#080\|<br/><br/><label>Universal Decimal Class. No.: </label>\|{ 080a }{
080x }{ / 080b }\|

#070\|<br/><br/><label>National Agricultural Library Call No.:
</label>\|{ 070a }{ / 070b }\|

#060\|<br/><br/><label>National Library of Medicine Call No.:
</label>\|{ 060a }{ / 060b }\|

#074\|<br/><br/><label>GPO Item No.: </label>\|{ 074a }\|

#086\|<br/><br/><label>Gov. Doc. Class. No.: </label>\|{ 086a }\|

#088\|<br/><br/><label>Report. No.: </label>\|{ 088a }\|

Configuring Receipt Printers
============================

The following instructions are for specific receipt printers, but can
probably be used to help with setup of other brands as well.

`For Epson TM-T88III (3) & TM-T88IV (4) Printers <#epsonprinters>`__
--------------------------------------------------------------------

`In the Print Driver <#epsonprintdriver>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

For these instructions, we are using version 5,0,3,0 of the Epson
TM-T88III print driver; the EPSON TM-T88IV version is ReceiptE4.
Register at the `EpsonExpert Technical Resource Center
website <https://www.epsonexpert.com/login>`__ to gain access to the
drivers; go to Technical Resources, then choose the printer model from
the Printers drop-down list.

Click Start > Printers and Faxes > Right click the receipt printer >
Properties:

-  Advanced Tab, click Printing Defaults button

-  Layout Tab: Paper size: Roll Paper 80 x 297mm

-  TM-T88III: Layout Tab: Check Reduce Printing and Fit to Printable
   Width

-  TM-T88IV: Check Reduced Size Print; Click OK on the popup window that
   appears. Fit to Printable Width should be automatically selected.

-  OK your way out of there.

`In Firefox <#epsonfirefox>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Under File > Page Setup:

-  Shrink to fit page on Format & Options tab

-  0,0,0,0 for Margins on Margins & Header/Footer Tab. This makes the
   receipts use all available space on the paper roll.

-  Set all Headers/Footers to -blank-. This removes all of the gunk you
   might normally find on a print from Firefox, such as the URL, number
   of pages, etc.

-  Click OK

Set the default printer settings in Firefox so you don't see a "Print"
dialog:

-  Go to File > Print

-  Set the Printer to the receipt printer.

-  Click the Advanced (or Properties) button

-  Layout Tab: Paper size: Roll Paper 80 x 297mm

-  TM-T88III: Layout Tab: Check Reduce Printing and Fit to Printable
   Width

-  TM-T88IV: Check Reduced Size Print; click OK on the popup window that
   appears. Fit to Printable Width should be automatically selected.

-  OK your way out, go ahead and print whatever page you are on.

-  Type about:config, in the address bar. Click "I'll be careful, I
   promise!" on the warning message.

-  Type, print.always in Filter.

-  Look for print.always\_print\_silent.

   -  If the preference is there then set the value to true.

-  If the preference is not there (and it shouldn't be in most browsers)
   you have to add the preference.

   -  Right click the preference area and select New > Boolean

   -  Type print.always\_print\_silent in the dialog box and set the
      value to True. This sets the print settings in Firefox to always
      use the same settings and print without showing a dialog box.

    **Warning**

    Setting the print.always\_print\_silent setting in about:config
    DISABLES the ability to choose a printer in Firefox.

`For Epson TM-T88II (2) Printers <#epson2>`__
---------------------------------------------

Register at the `EpsonExpert Technical Resource Center
website <https://www.epsonexpert.com/login>`__ to gain access to the
drivers; go to Technical Resources, then choose the printer model from
the Printers drop-down list.

`In Firefox <#epson2firefox>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Under File > Page Setup:

-  Shrink to fit page on Format & Options tab

-  0,0,0,0 for Margins on Margins & Header/Footer Tab. This makes the
   receipts use all available space on the paper roll.

-  Set all Headers/Footers to -blank-. This removes all of the gunk you
   might normally find on a print from Firefox, such as the URL, number
   of pages, etc.

-  Click OK

Set the default printer settings in Firefox so you don't see a "Print"
dialog:

-  Go to File > Print

-  Set the Printer to the receipt printer.

-  Print whatever page you are on.

-  Type about:config, in the address bar. Click "I'll be careful, I
   promise!" on the warning message.

-  Type, print.always in Filter.

-  Look for, print.always\_print\_silent.

   -  If the preference is there then set the value to true.

-  If the preference is not there (and it shouldn't be in most browsers)
   you have to add the preference.

   -  Right click the preference area and select New > Boolean

   -  Type, print.always\_print\_silent in the dialog box and set the
      value to True. This sets the print settings in Firefox to always
      use the same settings and print without showing a dialog box.

    **Warning**

    Setting the print.always\_print\_silent setting in about:config
    DISABLES the ability to choose a printer in Firefox.

`For Star SP542 Printers <#starprinter>`__
------------------------------------------

`Installing the Printer <#installstarprinter>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

While the following comments are based on the Star SP542 receipt
printer, they probably apply to all printers in the SP5xx series.

The Star SP542 receipt printer works well with Koha and **Firefox on
Windows XP SP3**. This printer, with either the parallel or USB
interface, is fairly easy to install and configure. You will need the
following executable file which is available from numerous places on the
Internet:

linemode\_2k-xp\_20030205.exe

This executable actually does all of the installation; you will not need
to use the Microsoft Windows "Add Printer" program. We recommend that
when installing, the option for the software monitor not be selected; we
have experienced significant pauses and delays in printing with it.
Instead, simply choose to install the receipt printer without the
monitor.

Additionally, the install program may not put the printer on the correct
port, especially if using the USB interface. This is easily corrected by
going to "Start -> Printers and Faxes -> Properties for the SP542
printer -> Ports", then check the appropriate port.

A reboot may be required, even if not indicated by the installation
software or the operating system.

**Windows 7** users should refer to this page:
http://www.starmicronics.com/supports/win7.aspx.

`Configuring Firefox to Print to Receipt Printer <#firefoxreceipt>`__
---------------------------------------------------------------------

-  Open File > Page Setup

-  Make all the headers and footers blank

-  Set the margins to 0 (zero)

-  In the address bar of Firefox, type about:config

-  Search for print.always\_print\_silent and double click it

-  Change it from false to true

   -  This lets you skip the Print pop up box that comes up, as well as
      skipping the step where you have to click OK, automatically
      printing the right sized slip.

-  If print.always\_print\_silent does not come up

   -  Right click on a blank area of the preference window

   -  Select new > Boolean

   -  Enter "print.always\_print\_silent" as the name (without quotes)

   -  Click OK

   -  Select true for the value

-  You may also want to check what is listed for print.print\_printer

   -  You may have to choose Generic/Text Only (or whatever your receipt
      printer might be named)

Notice & Slips Guides
=====================

`Field Guide for Notices & Slips <#noticesfieldguide>`__
--------------------------------------------------------

This guide will break down the notices and slips information in 3 ways.
First it will tell you what file generates the notice, then how you will
present the item info in that notice and finally if the notice can be
branch specific or not.

+---------------------+----------------------------+---------------------------------------+--------------------------+
| Letter Code         | Used In                    | Detail tag                            | Can be branch specific   |
+=====================+============================+=======================================+==========================+
| DUE                 | advance\_notices.pl        | <<items.content>>                     | No                       |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| DUEDGST             | advance\_notices.pl        | <<items.content>>                     | No                       |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| PREDUE              | advance\_notices.pl        | <<items.content>>                     | No                       |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| PREDUEDGST          | advance\_notices.pl        | <<items.content>>                     | No                       |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| ODUE\*              | overdue\_notices.pl        | <<items.content>> or <item> </item>   | Yes                      |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| CHECKOUT            | C4/Circulation.pm          | N/A                                   | Yes                      |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| RENEWAL             | C4/Circulation.pm          | N/A                                   | Yes                      |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| TRANSFERSLIP        | C4/Circulation.pm          | N/A                                   | Yes                      |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| ISSUESLIP           | C4/Members.pm              | <checkedout> </checkedout>            | Yes                      |
|                     |                            |                                       |                          |
|                     |                            | <overdue> </overdue>                  |                          |
|                     |                            |                                       |                          |
|                     |                            | <news> </news>                        |                          |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| ISSUEQSLIP          | C4/Members.pm              | <checkedout> </checkedout>            | Yes                      |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| HOLDPLACED          | C4/Reserves.pm             | N/A                                   | Yes                      |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| RESERVESLIP         | C4/Reserves.pm             | N/A                                   | Yes                      |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| ASKED               | C4/Suggestions.pm          | N/A                                   | Yes                      |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| CHECKED             | C4/Suggestions.pm          | N/A                                   | Yes                      |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| ACCEPTED            | C4/Suggestions.pm          | N/A                                   | Yes                      |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| REJECTED            | C4/Suggestions.pm          | N/A                                   | Yes                      |
+---------------------+----------------------------+---------------------------------------+--------------------------+
| OPAC\_REG\_VERIFY   | opac/opac-memberentry.pl   | N/A                                   | No                       |
+---------------------+----------------------------+---------------------------------------+--------------------------+

Example Notice
==============

Nicole Engard

410 Library Rd.

Philadelphia, PA 19107

Dear Nicole Engard (23529000035726),

According to our records, at the time of this notice, you have items
that are overdue. Please return or renew them as soon as possible to
avoid increasing late fines.

If you have registered a password with the library, you may use it with
your library card number to renew online.

If you believe you have returned the items below please call at and
library staff will be happy to help resolve the issue.

The following item(s) are currently overdue:

07/08/2008 Creating drug-free schools and communities : 502326000054
Fox, C. Lynn.

06/27/2008 Eating fractions / 502326000022 McMillan, Bruce.

Sincerely, Library Staff

Sample Serials
==============

`Reader's Digest (0034-0375) <#readersdigestsample>`__
------------------------------------------------------

-  Published 12 times a year (monthly)

-  The Volume number changes every 6 months and the numbers continues on
   (requires an advanced pattern).

   Sample Reader's Digest Subscription
   |image1069|

`People Weekly (1076-0091) <#peoplesample>`__
---------------------------------------------

-  Published weekly

   -  The website says "on Saturday except the first week of August,
      Thanksgiving week, the first and last weeks of the year" but this
      does not match the pattern for 2007 or 2008

-  In the Jul-Dec there are 26 issues

-  In the Jan-Jun there are 25 issues (no issue for the first week of
   January)

Since the irregularity on the first # 26 does not skip a week, this
would be set up as to roll over on issue 25. The 26th issue in the
second half of the year would have to be received as a supplemental.

The irregularity check will complain that 52 issues were expected, but
25 entered. The current irregularity check can only check that the first
position of the numbering pattern matches the expected issue count of
the periodicity. But we do need to trigger the rollover on the volume,
so we need to define the last two weeks of the year as irregularities.
So we receive 50 issues the first 50 weeks, then one supplemental issue
in week 51, which we have to define the enumeration for, then the next
predicted issue will be the following year's first week.

`Et-Mol <#hebrewserialsample>`__
--------------------------------

This journal is published with the following rules:

-  6 issues a year (every 2 months)

-  year changes every 6 issues

-  we start in 2011

-  the issue number goes up indefinitely

-  starting from issue 215

The planning would look like this:

Sample for this Hebrew Journal
|image1070|

`Backpacker (0277-867X) <#backpackerserial>`__
----------------------------------------------

Published 9 times a year irregularly. The issues continues while the
volume and number rolls over every 9 issues. If you're holding Volume
41, Number 3, Issue 302 in your hand the prediction would look like
this:

Backpacker numbering pattern
|image1071|

And the received issues would number like this:

v. 41, no. 3, iss. 302  

v. 41, no. 4, iss. 303

v. 41, no. 5, iss. 304

v. 41, no. 6, iss. 305

v. 41, no. 7, iss. 306

v. 41, no. 8, iss. 307

v. 41, no. 9, iss. 308

v. 42, no. 1, iss. 309

v. 42, no. 2, iss. 310

v. 42, no. 3, iss. 311

v. 42, no. 4, iss. 312

`Keats-Shelley Journal (0453-4387) <#keatsserial>`__
----------------------------------------------------

This journal is published once per year in July.  The numbering follows
this pattern:  

-  Vol. 61 2013

-  Vol. 62 2014

-  Vol. 63 2015

Setup should look like this (if you're starting in July 2014):

Serial planning
|image1072|

`Computers in Libraries (1041-7915) <#cilserial>`__
---------------------------------------------------

Computers in Libraries is published ten times per year (monthly with
January/February and July/August combined issues).

Subscription details
|image1073|

Serial Planning
|image1074|

Received details
|image1075|

Sample List & Cart Emails
=========================

`Example Email from List <#examplelistemail>`__
-----------------------------------------------

Below is an example of an email from a list in Koha.

::

    Hi,

    Here is your list called If You Like Jodi Picoult, sent from our online catalog.

    Please note that the attached file is a MARC bibliographic records file
    which can be imported into a Personal Bibliographic Software like EndNote,
    Reference Manager or ProCite.
    ---------------------------------------------

    Home safe : a novel /

    by Berg, Elizabeth.

    Published by: Random House,, 260 p. ;, 25 cm.
    Copyright year: 2009
    LCCN:   2008049247
    In the online catalog:
        http://MYCATALOG/cgi-bin/koha/opac-detail.pl?biblionumber=12113
    Items :
        North Branch FIC (FIC Ber) TVSN500088894O
        Main Library FIC (FIC Boh) TVSN5000921548
        South Branch FIC (FIC Boh) TVSN500092156A
        West Branch FIC (FIC Boh) TVSN5000921559

    ---------------------------------------------

    Half a heart /

    by Brown, Rosellen.

    Published by: Farrar, Straus, and Giroux,, 402 p. ;, 24 cm.
    Copyright year: 2000
    LCCN:    00022926
    In the online catalog:
        http://MYCATALOG/cgi-bin/koha/opac-detail.pl?biblionumber=12501
    Items :
        East Branch  (813/.54)
        South Branch FIC (FIC Bro) TVSN5000451333

`Example Email from Cart <#examplecartemail>`__
-----------------------------------------------

Below is a sample of what an email from the Cart in Koha will look like:

::

    Hi,

       Joaquin D'Planque sent you a cart from our online catalog.

       Please note that the attached file is a MARC bibliographic records
       file which can be imported into personal bibliographic software like
       EndNote, Reference Manager or ProCite.

       ---------------------------------------------------------------------


         1.  Book /
           Author(s): Brookfield, Karen. ;
           Published by: Knopf : | Distributed by Random House, , 63 p. : ,
           29 cm.
           Copyright year: 1993
           Notes : Includes index.
           LCCN: 93018833 /AC

           In online catalog:
           http://MYCATALOG/cgi-bin/koha/opac-detail.pl?biblionumber=31644

           Items:

             *  East Branch (JNF 002 Bro) TVSN500017618A

           -----------------------------------------------------------------

         2.  The 1965 World book year book :

           Published by: Field Enterprises Educational Corp., , 628 p. : , 26
           cm.
           Copyright year: 1965
           Notes : Includes index. | Spine title: Year book, 1965. | Cover
           title: The World book year book, 1965.
           URL:
           http://www.archive.org/details/1965worldbookyea00chic%20%7C%20http://www.openlibrary.org/books/OL24199089M

           In online catalog:
           http://MYCATALOG/cgi-bin/koha/opac-detail.pl?biblionumber=88666

           -----------------------------------------------------------------

Using Koha as a Content Management System (CMS)
===============================================

`Setup <#kohacmssetup>`__
-------------------------

These are instructions for taking a default install of Koha and allowing
it to function as a little content management system. This will allow a
library to publish an arbitrary number of pages based on a template.
This example uses the template for the main opac page, but you could
just as well use any template you wish with a bit more editing. This may
be appropriate if you have a small library, want to allow librarians to
easily add pages, and do not want to support a complete CMS.

-  Copy /usr/share/koha/opac/cgi-bin/opac/opac-main.pl to
   /usr/share/koha/opac/cgi-bin/opac/pages.pl (in the same directory)

-  Edit pages.pl in an editor

-  At approximately line 33 change this code:

   ::

       template_name  => "opac-main.tmpl",

-  To this code:

   ::

       template_name  => "pages.tmpl",

-  At approximately line 62 after this code:

   ::

       $template->param(
                  koha_news       => $all_koha_news,
                  koha_news_count => $koha_news_count,
                  display_daily_quote => C4::Context->preference('QuoteOfTheDay'),
                  daily_quote         => $quote,
                  );

-  Add these lines:

   ::

               my $page = "page_" . $input->param('p');          # go for "p" value in URL and do the concatenation
               my $preference = C4::Context->preference($page);  # Go for preference
               $template->{VARS}->{'page_test'} = $preference;   # pass variable to template pages.tt

-  Note pages.pl file must have Webserver user execution permissions,
   you can use `chmod <http://en.wikipedia.org/wiki/Chmod>`__ command if
   you are actually logged in as such user:

   ::

               $chmod 755 pages.pl

-  In the browser go to Home > Administration > System Preferences >
   Local Use and add a New Preference called "page\_test"

-  Fill it out as so

   -  Explanation: test page for pages tiny cms

   -  Variable: page\_test

   -  Value: Lorem ipsum

   -  Click the TextArea link (or enter "TextArea" into the input field
      below it)

   -  variable options (last field): 80\|50

-  In a browser go to http://youraddress/cgi-bin/koha/pages.pl?p=test
   The page should come up with the words "Lorem ipsum" in the main
   content area of the page. (replace "youraddress" with localhost,
   127.0.0.1, or your domain name depending on how you have Apache set
   up.)

-  To add more pages simply create a system preference where the title
   begins with "page\_" followed by any arbitrary letters. You can add
   any markup you want as the value of the field. Reference the new page
   by changing the value of the "p" parameter in the URL.

To learn more visit the Koha wiki page on this topic:
http://wiki.koha-community.org/wiki/Koha_as_a_CMS

`Editing the pages template <#kohacmstmpl>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The file to create / edit for the pages template will depend on your
`opacthemes <#opacthemes>`__ system preference setting

`Editing 'bootstrap' theme template (current) <#kohacmstmplboot>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  Copy
   /usr/share/koha/opac/htdocs/opac-tmpl/bootstrap/en/modules/opac-main.tt
   to
   /usr/share/koha/opac/htdocs/opac-tmpl/bootstrap/en/modules/pages.tt

-  Edit
   /usr/share/koha/opac/htdocs/opac-tmpl/bootstrap/en/modules/pages.tt

-  At approximately line 61, change this:

   ::

               [% IF ( OpacMainUserBlock ) %]<div id="opacmainuserblock">[% OpacMainUserBlock %]</div>[% END %]

-  To this:

   ::

               [% IF ( page_test ) %]<div id="opacmainuserblock">[% page_test %]</div>[% END %]

Remark: You may wish to disable your News block of these CMS style pages
e.g. when you do not want it displayed on the CMS style pages or where
the News block is long enough that it actually makes the 'page\_test'
include scroll outside the default viewport dimensions. In that case,
remove the following code from your pages.tt template.

::

                      [% IF ( koha_news_count ) %]
                          <div id="news">
                          <table class="table table-bordered">
                          [% FOREACH koha_new IN koha_news %]
                            <thead><tr><th>[% koha_new.title %]</th></tr></thead>
                            <tbody><tr><td><p>[% koha_new.new %]</p>
                            <p class="newsfooter"><i>(published on [% koha_new.newdate %])</i></p></td></tr></tbody>
                          [% END %]
                          </table>
                          </div>
                         [% END %]


`Troubleshooting <#kohacmstrouble>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you have problems check file permissions on pages.pl and pages.tmpl.
They should have the same user and group as other Koha files like
opac-main.pl.

`Bonus Points <#kohacmsbonus>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Instead of using the address
http://youraddress/cgi-bin/koha/pages.pl?p=test you can shorten it to
http://youraddress/pages.pl?p=test Just open up
/etc/koha/koha-httpd.conf and add the follow at about line 13:

::

    ScriptAlias /pages.pl "/usr/share/koha/opac/cgi-bin/opac/pages.pl"

Then restart Apache.

`Usage <#kohacmsusage>`__
-------------------------

After setting up Koha as a CMS you can create new pages following these
instructions:

`Adding Pages <#kohacmspages>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To add a new page you need to add a system preference under Local Use.

-  Get there: More > Administration > Global System Preferences > Local
   Use

-  Click 'New Preference'

-  Enter in a description in the Explanation field

-  Enter a value that starts with 'page\_' in the Variable field

-  Enter starting HTML in the Value field

   Add a new preference
   |image1076|

-  Set the Variable Type to Textarea

-  Set the Variable options to something like 20\|20 for 20 rows and 20
   columns

   Settings for the new preference
   |image1077|

`Viewing your page <#kohacmsview>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can view your new page at
http://YOUR-OPAC/cgi-bin/koha/pages.pl?p=PAGENAME where PAGENAME is the
part you entered after 'page\_' in the Variable field.

`Example <#kohacmsexpage>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This process can be used to create recommended reading lists within
Koha. So once the code changes have been made per the instructions on
'Koha as a CMS' you go through the 'Adding a New Page' instructions
above to great a page for 'Recommended Reading Lists'

Create page by modifying a system preference
|image1078|

Next we need to create pages for our various classes (or categories). To
do this, return to the 'Adding a New Page' section and create a
preference for the first class.

Add a new sys pref for another page
|image1079|

Next you'll want to link your first page to your new second page, go to
the page\_recommend preference and click 'Edit.' Now you want to edit
the HTML to include a link to your newest page:

Edit original preference to add new page
|image1080|

`Live Examples <#examplecms>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  The Crawford Library at Dallas Christian College is using this method
   for their recommended reading lists: http://opac.dallas.edu/

Resetting the Koha Database
===========================

These notes on how to reset the database for Koha were derived from the
following email thread:
http://lists.koha-community.org/pipermail/koha-devel/2009-January/008939.html
and http://lists.katipo.co.nz/public/koha/2014-June/039701.html

Resetting the database may be useful if you install Koha with the sample
data, and then wish to use real data without reinstalling the software.

`Delete sample data from Tables <#deletetables>`__
--------------------------------------------------

Use your preferred MySQL client to
`delete <http://dev.mysql.com/doc/refman/5.5/en/delete.html>`__ the
following tables:

-  bibio

-  biblioitems

-  items

-  auth\_header

-  sessions

-  zebraqueue

You may need to disable foreign key checks to delete data from same
tables. For instructions follow this thread:
https://lists.katipo.co.nz/pipermail/koha/2013-July/036853.html.

`Reset the Zebra Index <#resetzebra>`__
---------------------------------------

Run the following commands to reset the authorities and biblios Zebra
indices.

::

    $ zebraidx -c /etc/koha/zebradb/zebra-authorities-dom.cfg -g iso2709 -d authorities init
    $ zebraidx -c /etc/koha/zebradb/zebra-biblios.cfg -g iso2709 -d biblios init

If you are running a package install then you'll want to run the
following commands to reset the authorities and biblios Zebra indices
instead:

::

    $ sudo zebraidx -c /etc/koha/sites/YOURLIBRARY/zebra-authorities-dom.cfg  -g iso2709 -d authorities init
    $ sudo zebraidx -c /etc/koha/sites/YOURLIBRARY/zebra-biblios.cfg  -g iso2709 -d biblios init

Replacing YOURLIBRARY with your Koha installation name.

Important Links
===============

`Koha Related <#koharelatedlinks>`__
------------------------------------

-  Report Koha Bugs - http://bugs.koha-community.org

-  Koha Versioning Control - http://git.koha-community.org/

-  Database Structure - http://schema.koha-community.org

-  Koha Community Statistics - http://hea.koha-community.org

-  Koha as a CMS - http://wiki.koha-community.org/wiki/Koha_as_a_CMS

-  Kyles's Koha Tools - http://kylehall.info/index.php/projects/koha/

-  Koha Bibliography - http://www.zotero.org/groups/koha

-  Koha Shared Links - http://groups.diigo.com/group/everything-koha

`Circulation Related <#circrelatedlinks>`__
-------------------------------------------

-  Koha Desktop Offline Circulation:
   https://github.com/bywatersolutions/koha-offline-circulation/releases

-  Koha Firefox Offline Circulation:
   https://addons.mozilla.org/en-US/firefox/addon/koct/

`Cataloging Related <#catalogrelatedlinks>`__
---------------------------------------------

-  Koha MARC Tutorials - http://www.pakban.net/brooke/

-  IRSpy Open Z39.50 Server Search - http://irspy.indexdata.com/

-  Z39.50 Server List -
   http://staff.library.mun.ca/staff/toolbox/z3950hosts.htm

-  Open Koha Z39.50 Targets -
   http://wiki.koha-community.org/wiki/Koha_Open_Z39.50_Sources

-  Library of Congress Authorities - http://authorities.loc.gov/

-  MARC Country Codes - http://www.loc.gov/marc/countries/

-  Search the MARC Code List for Organizations -
   http://www.loc.gov/marc/organizations/org-search.php

-  Search for Canadian MARC Codes -
   http://www.collectionscanada.gc.ca/illcandir-bin/illsear/l=0/c=1

-  Z39.50 Bib-1 Attribute -
   http://www.loc.gov/z3950/agency/defns/bib1.html

`Enhanced Content Related <#enhancedcontentlinks>`__
----------------------------------------------------

-  Amazon Associates -
   `https://affiliate-program.amazon.com <https://affiliate-program.amazon.com/>`__

-  Amazon Web Services - http://aws.amazon.com

-  WorldCat Affiliate Tools -
   http://www.worldcat.org/wcpa/do/AffiliateUserServices?method=initSelfRegister

-  XISBN - http://www.worldcat.org/affiliate/webservices/xisbn/app.jsp

-  LibraryThing for Libraries - http://www.librarything.com/forlibraries

`Design Related <#opaclinks>`__
-------------------------------

-  JQuery Library - http://wiki.koha-community.org/wiki/JQuery_Library

-  HTML & CSS Library -
   http://wiki.koha-community.org/wiki/HTML_%26_CSS_Library

-  Owen Leonard's Koha Blog - http://www.myacpl.org/koha

`Reports Related <#reportlinks>`__
----------------------------------

-  SQL Reports Library -
   http://wiki.koha-community.org/wiki/SQL_Reports_Library

-  Database Schema - http://schema.koha-community.org

-  Sample reports from NEKLS -
   http://www.nexpresslibrary.org/training/reports-training/

`Installation Guides <#installlinks>`__
---------------------------------------

-  Installing Koha 3 on Ubuntu -
   http://www.blazingmoon.org/guides/k3-on-u810-1.html

-  Koha on Debian installation documentation -
   http://openlib.org/home/krichel/courses/lis508/doc/koha_installation_overview.html

-  Koha 3.2 on Debian Squeeze -
   http://wiki.koha-community.org/wiki/Koha_3.2_on_Debian_Squeeze

`Misc <#misclinks>`__
---------------------

-  Zotero - http://zotero.org

-  SOPAC - `http://thesocialopac.net <http://thesocialopac.net/>`__

Koha XSLT Item Types
====================

When you have any of the XSLT system preferences
(`OPACXSLTDetailsDisplay <#OPACXSLTDetailsDisplay>`__,
`OPACXSLTResultsDisplay <#OPACXSLTResultsDisplay>`__,
`XSLTDetailsDisplay <#XSLTDetailsDisplay>`__, and/or
`XSLTResultsDisplay <#XSLTResultsDisplay>`__) along with the
`DisplayOPACiconsXSLT <#DisplayOPACiconsXSLT>`__ and
`DisplayIconsXSLT <#DisplayIconsXSLT>`__ preferences turned on you will
see item type icons on the related screen.

    **Important**

    These images are coming from values found in your leader, if your
    leader is not cataloged properly it might be best to turn off the
    `DisplayOPACiconsXSLT <#DisplayOPACiconsXSLT>`__ preference (which
    can be done while leaving the other XSLT preferences turned on).

Book image
|image1081|

-  Book [BK]

   -  leader6 = a (and one of the leader7 values below)

      -  leader7 = a

      -  leader7 = c

      -  leader7 = d

      -  leader7 = m

   -  leader6 = t

Computer Image
|image1082|

-  Computer File [CF]

   -  leader6 = m

Continuing Resource Image
|image1083|

-  Continuing Resource [CR]

   -  leader7 = b

   -  leader7 = i

   -  leader7 = s

Map Image
|image1084|

-  Map [MP]

   -  leader6 = e

   -  leader6 = f

Mixed Materials Image
|image1085|

-  Mixed [MX]

   -  leader6 = p

Sound Image
|image1086|

-  Sound [MU]

   -  leader6 = c

   -  leader6 = d

   -  leader6 = i

   -  leader6 = j

Visual Material Image
|image1087|

-  Visual Material [VM]

   -  leader6 = g

   -  leader6 = k

   -  leader6 = r

Kit Image
|image1088|

-  Kit

   -  leader6 = o

MarcEdit
========

Many libraries like to use MarcEdit for modifications or data cleanup.
If you'd like to do this you will need to download it at:
http://marcedit.reeset.net/

    **Important**

    Many of the actions described in this chapter can be done in Koha
    using `Marc Modification Templates <#marcmodtemplates>`__, but this
    section is here for those who are used to MarcEdit.

`Adding a prefix to call numbers <#marceditprefix>`__
-----------------------------------------------------

When bringing data into Koha, you may want to first clean it up. One
common action among Koha users is to add a prefix to the call number.

-  Open MarcEdit

   MarcEdit
   |image1089|

-  Click 'MarcEditor'

-  Go to Tools > Edit Subfield Data

   Edit subfield data
   |image1090|

-  To prepend data the special character is: ^b  To simply prepend data
   to the beginning of a subfield, add ^b to the Field Data: textbox and
   the data to be appended in the Replace

   Prepend data to a field
   |image1091|

   -  To prepend data to the beginning of the subfield while replacing a
      text string, add ^b[string to replace] to the Field Data textbox
      and the data to be appended in the Replace With textbox.

`Importing Excel data into Koha <#marceditexcel>`__
---------------------------------------------------

Suppose you have records of your library in excel data sheet format and
want them to import into Koha. But how will you do this? Koha will not
let you import excel records directly. Well here is a very simple
solution for you which will let you import your excel records in Koha
easily. First, we will convert excel file into Marc file and then will
import it into Koha.

Follow the given steps to import your excel records into Koha

`Converting from Excel format into .mrk format <#convertexcel>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

First, we will convert excel format into .mrk format. For this we will
use MarcEdit. You can download it from http://marcedit.reeset.net/

Now open it and select Add-ins-->Delimited Text Translator.

Delimited Text Translator
|image1092|

Click Next when the following window appears.

Delimited Text Translator
|image1093|

Browse for your excel file.

Delimited Text Translator
|image1094|

Locate your excel file by choosing the format Excel File(\*.xls).

Delimited Text Translator
|image1095|

Similarly, fill all the other entries such as Output File, Excel Sheet
Name and check UTF-8 Encoded (if required) and Click Next.

Delimited Text Translator
|image1096|

Now you will be prompted for mapping the fields to recognise the fields
by standard marc format.

Suppose for Field 0 that is first column I entered Map to: 022$a( Valid
ISSN for the continuing resource) and then click on Apply.

Delimited Text Translator
|image1097|

    **Note**

    You can customize Indicators and all other things, for more
    information on marc21 format visit the `official library of congress
    site <http://www.loc.gov/marc/bibliographic/>`__.

Similarly map all other fields and then Click on Finish.

Delimited Text Translator
|image1098|

And then a window will appear indicating that your Marc Text
File(\*.mrk) has been created.

Delimited Text Translator
|image1099|

Click Close and we have created a .mrk file from .xls file in this step.
You can view the file by double clicking on it.

`Convert .mrk file to .mrc <#convertmrk>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

We will convert .mrk file that we have created in the above step into
raw Marc format that can be directly imported into Koha.

For this again open MarcEdit and Select MARC Tools.

MARC Tools
|image1100|

Next Select MarcMaker to convert .mrk file into .mrc format.

MarcMaker
|image1101|

Locate your input file and name your output file. Then Click Execute.

MarcMaker
|image1102|

And it will show you the Result.

MarcMaker
|image1103|

Click Close and now we have raw Marc records with us (.mrc file).

`Import .mrc into Koha <#importmrc>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

More information on importing records into Koha can be found in the
'`Stage MARC Records for Import <#stagemarc>`__' section of this manual.

Finally we will import above created .mrc file into Koha.

Click on Tools in your Koha staff client.

Koha Staff Client
|image1104|

Next Click on Stage MARC Records for Import.

Stage MARC Records for Import
|image1105|

After this, choose your previously created .mrc file and click on
Upload.

Stage File
|image1106|

You can also add comment about file and finally click on Stage For
Import.

Stage for Import
|image1107|

When the import is done, you will get a result something like this

Staged Records Summary
|image1108|

Next, click on Manage staged records.

Here you can even change matching rules.

Manage Staged Records
|image1109|

Click on Import this batch into catalog when you are done.

Thats it. After all the records get imported, check Status and it should
read "imported"

Finalize Import
|image1110|

You can even undo the Import operation.

And within few minutes, we have imported around 10,000 records in Koha

Talking Tech
============

Talking Tech I-tiva is a third party, proprietary, product that
libraries can subscribe to. Learn more here:
http://www.talkingtech.com/solutions/library.

`Installation and Setup Instructions <#talkingtechinstall>`__
-------------------------------------------------------------

Be sure you've run
installer/data/mysql/atomicupdate/Bug-4246-Talking-Tech-itiva-phone-notifications.pl
to install the required data pack (new syspref, notice placeholders and
messaging transport preferences)

To use,
`TalkingTechItivaPhoneNotification <#TalkingTechItivaPhoneNotification>`__
syspref must be turned on.

If you wish to process PREOVERDUE or RESERVES messages, you'll need the
`EnhancedMessagingPreferences <#EnhancedMessagingPreferences>`__ system
preference turned on, and patrons to have filled in a preference for
receiving these notices by phone.

For OVERDUE messages, overdue notice triggers must be configured under
Koha -> Tools -> `Overdue Notice Triggers <#noticetriggers>`__. Either
branch-specific triggers or the default level triggers may be used
(script will select whichever is appropriate).

`Sending Notices File <#talkingtechsend>`__
-------------------------------------------

1. Add the `TalkingTech\_itiva\_outbound.pl <#talkingtechsendcron>`__
   script to your crontab

2. Add an FTP/SFTP or other transport method to send the output file to
   the I-tiva server

3. If you wish, archive the sent notices file in another directory after
   sending

Run TalkingTech\_itiva\_outbound.pl --help for more information

`Receiving Results File <#talkingtechreceive>`__
------------------------------------------------

1. Add an FTP/SFTP or other transport method to send the Results file to
   a known directory on your Koha server

2. Add the `TalkingTech\_itiva\_inbound.pl <#talkingtechreceivecron>`__
   script to your crontab, aimed at that directory

3. If you wish, archive the results file in another directory after
   processing

Run TalkingTech\_itiva\_inbound.pl --help for more information

OCLC Connexion Gateway
======================

Koha can be set to work with the OCLC Connextion Gateway. This allows
libraries to use OCLC Connexion as their cataloging tool and simply send
those records to Koha with a single click. The following instructions
will help you set up the OCLC Connexion Gateway, if you have a system
administrator you will want to consult with them on this process.

`Setting up OCLC service on Koha <#oclckohasetup>`__
----------------------------------------------------

First, you'll need to create a file somewhere on your system with
configuration information.  You could put this anywhere that is visible
to the account that will be running the service.

The file contains 11 lines. The first 6 will be about your Koha system:

::

    host: The IP address of your Koha server
    port: The port you want to use for the Connexion service. This port must be different from your SIP port, or any other service
    koha: The full URL of your staff client
    log: The location (full file specification) of your log for the service
    user: The default Koha username to use for importing
    password: The password that goes with that username

The remaining lines describe how to do the staging:

::

    match: The name of the matching rule from your system to use
    overlay_action: "replace", "create_new", or "ignore"-- what to do if there is a match
    nomatch_action: "create_new" or "ignore"-- what to do if there is no match
    item_action: "always_add","add_only_for_matches","add_only_for_new", or "ignore" -- what to do with embedded 952 item data
    import_mode: "direct" or "stage"

A sample file would look like this:

::

    host: 1.2.3.4
    port: 8000
    log: /home/koha/koha-dev/var/log/connexion.log
    koha: http://kohastaff.myuniversity.edu
    user: koha_generic_staff
    password: password
    match: 001
    overlay_action: replace
    nomatch_action: create_new
    item_action: ignore
    import_mode: direct

When choosing an 'import\_mode' if you use "direct" then the staged
record will be immediately imported into Koha, and should be searchable
after your indexes catch up.  If you choose "stage", then the record
will be placed in a staged batch for you to later go the `Manage Staged
MARC Records <#managestaged>`__ tool to finish the import.

If you import multiple records, they'll be in the same batch, until that
batch is imported, then a new batch will be created.

In "direct" mode, each record will be in its' own batch.

To start the service, run the script:

::

    /location/of/connexion/import/daemon/connexion_import_daemon.pl -d -c /location/of/config/file.cnf

`Setting up your OCLC desktop client <#oclcdesktopsetup>`__
-----------------------------------------------------------

    **Note**

    Screenshots are OCLC Connexion Client v.2.50, Koha v.3.12

To set up the OCLC Connexion desktop client to connect to Koha, go to
Tools > Options, then choose the Export tab. Connexion Export Tab

-  Click the "Create..." button to set up a new destination, then choose
   "OCLC Gateway Export" and click OK.

   -  Enter the following information:

      -  "Host Name:" Your catalog’s appropriate IP address (from your
         `config file above <#oclckohasetup>`__)

      -  "Port:" Your catalog's appropriate port number (from your
         `config file above <#oclckohasetup>`__)

      -  "Login ID:" The cataloger's Koha login

      -  "Password:" The cataloger's Koha password

      -  "Notify Host Before Disconnect" = checked,

      -  "Timeout" = 100, "Retries" = 3, "Delay" = 0 (zero),

      -  "Send Local System Logon ID Password" = checked.

   OCLC Gateway Export Settings
   |image1111|

-  Select "OK" when finished, and you should see your new "Gateway
   Export" option listed (The catalog's IP address and port are blacked
   out in the following screenshot)

   Gateway Export Added

-  Click on "Record Characteristics" and make sure that the
   bibliographic records are using MARC21, UTF-8 Unicode, and click OK
   to save.

   Record Characteristics

You should be ready to go!  To export a record from OCLC Connexion
Client to Koha, just press F5 while the record is on-screen.  The export
dialog will pop up, and you'll see Connexion attempting to talk to Koha.
 You should get a message that the record was added or overlaid,
including its biblio number, and a URL that you can copy into your web
browser to jump straight to the record.

`Using the OCLC Connexion Gateway <#oclcgateway>`__
---------------------------------------------------

Records can be exported from Connexion either in a batch or one by one.

`Exporting records one by one <#oclconeexport>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To export bibliographic records one by one, be sure your "Batch" options
are correct: from the "Tools" menu, select "Options", and select the
"Batch" tab. In the "Perform local actions in batch" area,
"Bibliographic Record Export" should be uncheckedConnexion batch options

When ready to export, from the "Action" menu, select "Export" or use the
F5 key. You will see a screen similar to the following if the import is
successful and if the record is new to the Catalog; you may copy & paste
the resulting URL into your Koha catalog to see the new record.Connexion
Export

If the record was overlaid, you will see a message to that effect in the
"OCLC Gateway Export Status" windowOverlay confirmation

`Exporting records in a batch <#oclcbatchexport>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To export bibliographic records in a batch, be sure your "Batch" options
are correct: from the "Tools" menu, select "Options", and select the
"Batch" tab. In the "Perform local actions in batch" area,
"Bibliographic Record Export" should be checkedOCLC Batch Export Options

When a record is ready to export, from the "Action" menu, select
"Export" or use the F5 key, and it’s export status will be "ready."

When ready to export the batch, from the "Batch" menu, select "Process
batch" and check the appropriate "Path" and "Export" boxesBatch import
process

The export will begin, and the bib records will be exported & imported
into Koha one by one; you will see "OCLC Gateway Export Status" windows,
as above, showing you the results of each export. That window will stay
there until you select "Close," and then the next record’s export/import
will begin. The process will continue until all records in the batch are
completed. Then you may or may not see the Connexion Client export
report (depending on your Client options for that).

`Items in OCLC <#oclcitems>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you'd like to create your item records in OCLC you can do so by
addding a 952 for each item to the bib record you're cataloging. The
`Item/Holdings Cataloging Guide <#itemcatguide>`__ will break down what
subfields you can use in the 952, but at the minimum you want to have
subfield 2, a, b, and y on your items.

952
\\\\$2CLASSIFICATION$aHOMEBRANCHCODE$bHOLDINGBRANCHCODE$yITEMTYPECODE

-  The subfield 2 holds the classification code. This can be ddc for
   Dewey or lcc for Library of Congress or z for Custom. Other
   classification sources can be found in the `Classification
   Sources <#classificationsources>`__ area in administration

-  Subfield a is your home library and needs to be the code for your
   home library, not the library name. You can find these codes in the
   `Libraries & Groups <#libsgroups>`__ administration area.

-  Subfield b is your holding library and needs to be the code for your
   holding library, not the library name. You can find these codes in
   the `Libraries & Groups <#libsgroups>`__ administration area.

-  Subfield y is your item type code. It needs to be the code, not the
   item type name. You can find these codes in the `Item
   Types <#itemtypeadmin>`__ administration area.

952 \\\\$2ddc$aMAIN$bMAIN$yBOOK

In addition to these required fields you can enter any other subfield
you'd like. Most libraries will enter a call number in subfield o and a
barcode in subfield p as well. Review the `Item/Holdings Cataloging
Guide <#itemcatguide>`__ for a full list of subfields and values.

FAQs
====

`Display <#displayfaq>`__
-------------------------

`Custom Item Type/Authorized Value Icons <#customicons>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question:** Can I have my own set of item type images (or authorized
value icons)?

**Answer:**\ Absolutely. To add additional icons to your system you
simply add a new directory to
koha-tmpl/intranet-tmpl/prog/img/itemtypeimg/ and to
koha-tmpl/opac-tmpl/prog/itemtypeimg and put your icons in the new
directory. Your icons will show up in a new tab as soon as they are in
the folders.

-  **Note**

       Remember to put the icons in both places (on the OPAC and the
       intranet).

`Customizing Koha Images <#customkohaimages>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Can I customize the images in the OPAC?

**Answer**: Absolutely. Koha comes with a series of original images that
you can alter to meet your needs. The originals can be found in the
misc/interface\_customization/ directory.

`OPAC Display Fields <#opacdisplayfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: What MARC fields print to the different OPAC screens in
Koha?

**Answer**: The XSLT preference must be set as follows for the following
fields to show

-  `OPACXSLTResultsDisplay <#OPACXSLTResultsDisplay>`__ = using XSLT
   stylesheets

-  `OPACXSLTDetailsDisplay <#OPACXSLTDetailsDisplay>`__ = using XSLT
   stylesheets

-  `DisplayOPACiconsXSLT <#DisplayOPACiconsXSLT>`__ = show

The OPAC Results page shows:

-  245

-  100, 110, 111

-  700, 710, 711

-  250

-  260

-  246

-  856

The OPAC Details page shows:

-  245

-  100, 110, 111

-  700, 710, 711

-  440, 490

-  260

-  250

-  300

-  020

-  022

-  246

-  130, 240

-  6xx

-  856

-  505

-  773

-  520

-  866

-  775

-  780

-  785

-  plus all of the 5xx fields in the Notes tab at the bottom

`Subtitle Display on Bib Records <#displaysubtitle>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: How do I get the subtitle to display on the detail pages
for my bib records?

**Answer**: Subtitle display now depends on there being a `keyword
mapping <#keywordmapping>`__ for the MARC field in question. Adding a
mapping for "subtitle" -> "245b" for an item's framework results in
display of the subtitle in OPAC and staff client search and detail pages
(although not in all instances where subtitles might be displayed, e.g.
the Cart).

`Show patrons the barcodes of items they have checked out <#opacbarcodesfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Can patrons see the barcodes for the items they have
checked out.

**Answer**: Not by default, but with a few edits to the patron record
you can make a barcode column appear on the patron's check out summary
in the OPAC. You can set up a `patron
attribute <#patronattributetypes>`__ with the value of SHOW\_BCODE and
`authorized value <#authorizedvalues>`__ of YES\_NO to make this happen.

Add SHOW\_BCODE patron attribute
|image1112|

Then on the `patron's record set the value <#editpatrons>`__ for
SHOW\_BCODE to yes.

Setting value for SHOW\_BCODE on patron record
|image1113|

This will add a column to the check out summary in the OPAC that shows
the patrons the barcodes of the items they have checked out.

Barcode number on checkout list in OPAC
|image1114|

Clicking on the 'Overdue' tab will show only the items that are overdue.

`Circulation/Notices <#circfaq>`__
----------------------------------

`Book drop Date <#dropboxfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: How is the book drop date is determined? Is it the last
open date for the checkout branch? Is it today's date minus one? Can the
book drop checkin date be set?

**Answer**: If the library is closed for four days for renovations, for
example, there would be more than one day needed for the book drop date.
You will only have one book drop date and that will be the last day that
the library open (determined by the holiday calendar) because there is
no real way to know what day the books were dropped into the box during
the 4 closed days. The only way to change the effective checkin date in
book drop mode is to modify the calendar.

`Holds to Pull and Holds Queue <#holdsreportsfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: What is the difference between the `Holds
Queue <#holdsqueue>`__ and `Holds to Pull <#holdspull>`__?

**Answer**: The holds to pull report gives a simple list of what holds
need to be filled with available items. It should only be used in Koha
installations where there is only one library.

The holds queue tries to do the same thing, but in a 'smarter' way. This
allows it to split up the list by library, consult the `transport cost
matrix <#transportcostmatrix>`__ and refresh regularly to provide
different pull lists to each library.

`Duplicate Overdue Notices <#dupoverduefaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Why are patrons getting two overdue notices?

**Answer**: This tool takes all branches in the overdue rules and sent
notifications to them. So, if you have a default rule & a branch rule,
the notification will be generated twice. A quick fix is to discard
"default rule" for instance.

`Printing Overdue Notices <#printoverduefaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Can I print overdue notices for patrons without email
addresses on file?

**Answer**: Yes. The `overdue notice cron job <#overduenoticecron>`__
has a setting to generate the overdue notices as HTML for printing. An
example of this usage would be:

::

    overdue_notices.pl -t -html /tmp/noticedir -itemscontent issuedate,date_due,title,barcode,author

In this example, we wanted to use only certain item fields in our
notices, so we specified itemscontent fields in the cron entry; that's
not a requirement for the feature.

The command line needs to specify a web-accessible directory where the
print notices will go -- they get a filename like
notices-2009-11-24.html (or holdnotices-2009-11-24.html). The overdue
notice itself can be formatted to fit a Z-mailer. Within the notice
file, the text is spaced down or over to where it will print properly on
the form. The script has code that wraps around the notice file to tell
the HTML to obey the formatting, and to do a page break between notices.
That's so that when staff print it out, they get one per page. We had to
add an extra syspref (`PrintNoticesMaxLines <#PrintNoticesMaxLines>`__)
to specify page length because our client allows a \_lot\_ of checkouts
which meant some notices were running onto multiple pages. That syspref
says to truncate the print notice at that page length and put in a
message about go check your OPAC account for the full list.

The print and email overdues use the same notice file. The print notices
for holds are different -- there's a separate HOLD\_PRINT notice file
and the system uses it if there's no email address. Then a nightly cron
job runs to gather those up from the message queue and put them in an
HTML file in the notice directory, as above.

The cron entry is gather\_print\_notices.pl /tmp/noticedir

`Unable to Renew Items <#renewfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: We're trying to renew some items for our patron. One of
the items is on hold and ineligible for renewal, but the other two items
refuse to renew even though they should be eligible. When I try to use
the override renewal limit, it just returns a little message that says
"renewal failed". Any idea what's going on here?

**Answer**: At the very least you will need to set an absolute `default
circulation rule <#circfinerules>`__. This rule should be set for the
default itemtype, default branchcode and default patron category. That
will catch anyone who doesn't match a specific rule. Patrons who do not
match a specific rule will get blocked from placing holds or renewing
items, since there was no baseline number of holds or renewals to
utilize.

`Unable to Place Holds <#holdsfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Why can't I place holds when I have all of the preferences
turned on.

**Answer**: You probably need to set a default circulation rule. At the
very least you will need to set an default circulation rule. This rule
should be set for all item types, all branches and all patron
categories. That will catch all instances that do not match a specific
rule. When checking out if you do not have a rule for the default
branch, default item and default patron category then you may see
patrons getting blocked from placing holds.

`Keyboard Shortcuts <#keyboardshort>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Do I have to use my mouse to access the checkout, checkin
and cataloging tabs at the top of the circulation pages?

**Answer**: You can jump between the tabs on the quick search box at the
top of the screen by using the following hot keys (if the tab is
available):

-  jump to the catalog search with Alt+Q

-  jump to the checkout with Alt+U

   -  this will not work for Mac user

-  jump to the checkin with Alt+R

    **Note**

    Mac users use the OPTION button in place of ALT

`SMS Notices/Messages <#smsnoticefaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: I want Koha to send notices via SMS, what do I need to do?

**Answer**: First you need to choose a SMS service to use with Koha.
There is a list available here:
http://search.cpan.org/search?query=sms%3A%3Asend&mode=all Not all SMS
services available to libraries have Perl drivers, so be sure to check
this list to see if the provider you're considering is listed. If not
you want to ask your provider if they have a Perl module, if not you
should consider another service. Some common options in the US (that
have Perl drivers) are:

-  AQL (`www.aql.com <http://www.aql.com>`__)

-  Wadja (`wadja.com <http://wadja.com>`__)

-  Ipipi (`ipipi.com <http://ipipi.com>`__)

-  T-mobile

-  SMSDiscount (`smsdiscount.com <http://smsdiscount.com>`__)

-  Clickatell

**Question**: What about in India?

**Answer**: India does not yet have too many options here. This is
partly due to the Telecom regulatory authority's (TRAI) stipulations
about transactional SMSes and limits on the number of SMSes that may be
sent / received per users per day. India specific drivers include:

-  Unicel Technologies Pvt Ltd (`unicel.in <http://unicel.in>`__)

`Cataloging <#catfaq>`__
------------------------

`Authority Fields <#authorityfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question:**\ Why can't I edit 1xx, 6xx, or 7xx fields in my catalog
record?

**Answer:** These fields are authority controlled and you probably have
the `BiblioAddsAuthorities <#BiblioAddsAuthorities>`__ set to "Don't
allow". When it is set to "Don't allow" these fields will be locked and
require you to search for an existing authority record to populate the
field with. To allow typing in these authority fields set
`BiblioAddsAuthorities <#BiblioAddsAuthorities>`__ to 'Allow'.

    **Note**

    Fields affected by this preference will show a lock symbol in them

Fields affected by this preference show a lock in the field
|image1115|

`Koha to MARC Mapping <#kohamarcfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: What's the relationship between 'Koha to MARC Mapping' and
'MARC Bibliographic Frameworks'?

**Answer**: Mapping can be defined through 'MARC Bibliographic
Frameworks' OR 'Koha to MARC Mapping'. 'Koha to MARC Mapping' is just a
shortcut to speed up linkage. If you change a mapping in one of these
modules, the mapping will change in the other as well. (In other words,
the two modules 'overwrite' each other in order to prevent conflicts
from existing in Koha).

`Number of Items Per Bib Record <#itemsperbibfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Is there a limit on the number of items I can attach to a
bib record?

**Answer**: There is no explicit limit to the number of items you can
attach to a bibliographic record, but if you attach enough of them, your
MARC record will exceed the maximum file size limit for the ISO 2709
standard, which breaks indexing for that record. I've found this occurs
somewhere between 600 and 1000 items on a 'normal' bibliographic record.

`Analytics <#analyticsfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: I am using the
`EasyAnalyticalRecords <#EasyAnalyticalRecords>`__ feature, but my links
in the OPAC and Staff Client to 'Show Analytics' are not working.

**Answer**: If you plan on using
`EasyAnalyticalRecords <#EasyAnalyticalRecords>`__ you will want to make
sure to set your `UseControlNumber <#UseControlNumber>`__ preference to
"Don't use," this will prevent broken links.

`Acquisitions <#acqfaq>`__
--------------------------

`Planning Categories <#planningcatfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: What is a planning category?

**Answer**: When you plan in advance for the way your budget is going to
be spent, you initially plan for how it's going to be spent over time,
that's the most natural thing to do.

So you plan for $1000 in Jan. $1000 in Feb., $3000 in March, etc. You
can basically do the same thing with a list of values in lieu of the
months.

Say you have a list like this one:

-  < 1 month

-  < 6 months

-  < 1 year

-  < 3 years

-  < 10 years

-  > 10 years

The list is meant to represent when the books acquired where published.
Then you plan for it, saying: we went to spend at list 40% of our
budgets on books published less than a year ago, 10% on books more than
10 years old, etc.

Upon acquiring new material, you'll be able to select, for a given item,
a value from this list in a drop down. Then, after the material has been
acquired, at the end of the year, you'll be able to compare the goals
set, with what's been achieved.

`Serials <#serialsfaq>`__
-------------------------

`Advanced Patterns <#advancedpatternfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: What is the 'inner counter' on the advanced serials
pattern interface?

**Answer**: I think it is better to give an example to understand this :

Example for a monthly subscription :

-  First issue publication date : April 2010

-  Numbering : No {X}, year {Y}

-  First issue : No 4, year 2010

For the year Y : you will want the year change on January 2011

So, the advanced pattern for Y will be :

-  Add : 1

-  once every : 12

-  When more than 9999999

-  inner counter : 3

-  Set back to 0

-  Begins with 2010

Year is going to change after 12 received issues from April 2010, that
is in April 2011 if you don't set inner counter. Set inner counter to 3
will say to Koha : change year after 12-3 = 9 received issues.

Inner counter says to Koha to take into account the first issues of the
year, even if they are not received with Koha. If you begin with first
issue of the year write nothing or 0.

`Reports <#reportsfaq>`__
-------------------------

`Define Codes Stored in DB <#accounttypefaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`Fines Table <#finescodefaq>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question:** What do the codes in the accounttype field in the
accountlines table stand for?

**Answer:**

-  A = Account management fee

-  C = Credit

-  F = Overdue fine

-  FOR = Forgiven

-  FU = Overdue, still acccruing

-  L = Lost item

-  LR = Lost item returned/refunded

-  M = Sundry

-  N = New card

-  PAY = Payment

-  W = Writeoff

`Statistics Table <#statscodefaq>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question:**\ What are the possible codes for the type field in the
statistics table?

**Answer:**

-  localuse

   -  Registers if an item that had been checked out to a statistics
      patron (category type = 'X') is returned

-  issue

-  return

-  renew

-  writeoff

-  payment

-  CreditXXX

   -  The XXX stores different types of fee credits, so a query to catch
      them all would include a clause like "type LIKE 'Credit%'"

`Reserves Table <#rescodefaq>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What are the possible codes for the found field in the
reserves and old\_reserves tables?

**Answer**:

-  NULL: means the patron requested the 1st available, and we haven't
   chosen the item

-  T = Transit: the reserve is linked to an item but is in transit to
   the pickup branch

-  W = Waiting: the reserve is linked to an item, is at the pickup
   branch, and is waiting on the hold shelf

-  F = Finished: the reserve has been completed, and is done

`Reports Dictionary Table <#reportdicfaq>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What are the possible codes for the area field in the
reports\_dictionary table?

**Answer**:

-  1 = Circulation

-  2 = Catalog

-  3 = Patrons

-  4 = Acquisitions

-  5 = Accounts

`Messages Table <#msgtablefaq>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What are the possible codes for the message\_type field in
the messages table?

**Answer**:

-  L = For Librarians

-  B = For Patrons/Borrowers

`Serial Table <#serialtablefaq>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What are the possible codes for the status field in the
serial table?

**Answer**:

-  1 = Expected

-  2 = Arrived

-  3 = Late

-  4 = Missing

-  5 = Not available

-  6 = Delete

-  7 = Claimed

-  8 = Stopped

-  41 = Missing (not received)

-  42 = Missing (sold out)

-  43 = Missing (damaged)

-  44 = Missing (lost)

`Borrowers Table <#borrowerprivacyvalues>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What are the possible codes for the privacy field in the
borrowers table?

**Answer**:

-  0 = Forever

-  1 = Default

-  2 = Never

`Messaging Preferences <#messpreffaq>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What are the possible codes in the message\_attribute\_id
field in the borrower\_message\_preferences table?

**Answer**:

-  2 = advanced notice

-  6 = item checkout

-  4 = hold filled

-  1 = item due

-  5 = item check in

`Runtime Parameters <#runtimefaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Is there a way to filter my custom SQL reports before they
run?

**Answer**: If you feel that your report might be too resource intensive
you might want to consider using runtime parameters to your query.
Runtime parameters basically make a filter appear before the report is
run to save your system resources.

There is a specific syntax that Koha will understand as 'ask for values
when running the report'. The syntax is <<Question to
ask\|authorized\_value>>.

-  The << and >> are just delimiters. You must put << at the beginning
   and >> at the end of your parameter

-  The 'Question to ask' will be displayed on the left of the string to
   enter.

-  The authorized\_value can be omitted if not applicable. If it
   contains an authorized value category, or branches or itemtype or
   categorycode or biblio\_framework, a list with the Koha authorized
   values will be displayed instead of a free field Note that you can
   have more than one parameter in a given SQL Note that entering
   nothing at run time won't probably work as you expect. It will be
   considered as "value empty" not as "ignore this parameter". For
   example entering nothing for : "title=<<Enter title>>" will display
   results with title='' (no title). If you want to have to have
   something not mandatory, use "title like <<Enter title>>" and enter a
   % at run time instead of nothing

Examples:

-  SELECT surname,firstname FROM borrowers WHERE branchcode=<<Enter
   patrons library\|branches>> AND surname like <<Enter filter for
   patron surname (% if none)>>

-  SELECT \* FROM items WHERE homebranch = <<Pick your
   branch\|branches>> and barcode like <<Partial barcode value here>>

-  SELECT title , author FROM biblio WHERE frameworkcode=<<Enter the
   frameworkcode\|biblio\_framework>>

    **Note**

    To generate a date picker calendar to the right of the field when
    running a report you can use the 'date' keyword like this: <<Enter
    Date\|date>>

    Date Picker
    |image1116|

    **Note**

    You have to put "%" in a text box to 'leave it blank'. Otherwise, it
    literally looks for "" (empty string) as the value for the field.

    **Important**

    In addition to using any authorized value code to generate a
    dropdown, you can use the following values as well: Framework codes
    (biblio\_framework), Branches (branches), Item Types (itemtypes) and
    Patron Categories (categorycode). For example a branch pull down
    would be generated like this <<Branch\|branches>>

    Branch pull down
    |image1117|

`Results Limited <#reportlimitfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: When I download my report it's limited to 10,000 results,
how do I get all of the results to download?

**Answer**: There is a limit of 10,000 records put on SQL statements
entered in Koha. To get around this you want to add 'LIMIT 100000' to
the end of your SQL statement (or any other number above 10,000.

`Searching <#searchfaq>`__
--------------------------

`Advanced Search <#advancedsearchfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`Scan Indexes <#scanindexfaq>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: What does 'scan indexes' on the advanced search page mean?

**Answer**: When you choose an index, enter a term, click 'scan indexes'
and do the search, Koha displays the searched term and the following
terms found in this index with the number of corresponding records That
is search is not made directly in the catalog, but first in the indexes
It works only for one index at once, and only with no limit in Location
(All libraries needed)

`Searching for Terms that Start With a Character <#searchstartswith>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: How do I search for all titles that start with the letter
'C'?

**Answer**: You can choose to search for things that start with a
character or series of characters by using the CCL 'first-in-subfield'

-  example: ti,first-in-subfield=C

`Wildcard Searching <#wildcardsearchfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**:What is the difference between a keyword search using the
'\*' (asterisk) versus a keyword search using the '%' (percent)? Both
work in the catalog, but return different sets. Why?

**Answer**: A wildcard is a character (\*,?,%,.) that can be used to
represent one or more characters in a word. Two of the wildcard
characters that can be used in Koha searches are the asterisk ('\*') and
the percent sign ('%'). However, these two characters act differently
when used in searching.

The '\*' is going to force a more exact search of the first few
characters you enter prior to the '\*'. The asterisk will allow for an
infinite number of characters in the search as long as the first few
characters designated by your search remain the same. For example,
searching for authors using the term, Smi\*, will return a list that may
include Smith, Smithers, Smithfield, Smiley, etc depending on the
authors in your database.

The '%' will treat the words you enter in the terms of "is like". So a
search of Smi% will search for words like Smi. This results in a much
more varied results list. For example, a search on Smi% will return a
list containing Smothers, Smith, Smelley, Smithfield and many others
depending on what is your database.

The bottom line in searching with wildcards: '\*' is more exact while
'%' searches for like terms.

`Title Searching <#titlesearchingfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Why does my Zebra title search for 'Help' not turn up 'The
help' in the first pages of results?

**Answer**: When doing a title search, you actually want to search for
the title (i.e., 'the help' rather than just 'help'), and it will bubble
right up to the top. If you're just searching for 'help' then the
relevance ranking is going to affect the results you see.

When it comes to relevance in Zebra, here's what's happening. First, the
search is done. If you search for the title "help", then any title that
has "help" in it comes back. Then from those records, separately, it
does relevance on the \*whole\* record. The more your word appears, the
more relevant, and some MARC tags are worth more points than others. So
a self-help book with 505 notes where "help" appears a \*lot\* will be
at the top, regardless of keyword or title.

But when you add a \*second word\*, that helps it figure things out, as
it's weighing the relevance of both words and the phrase. Because of the
way relevance works, if you search "the help", then "the help" or "the
help I need" are more relevant than "the way to help", because they
appear together in order. Likewise, "help the girl" would be lower
relevance, because it's out of order, and "help for the homeless" would
be lower still, as they're out of order, and apart.

The moral of the story is that single word searches, particularly on
common words, will always struggle a bit; it can't evaluate relevance
well, because you've not given it enough input.

`Enhanced Content <#enhancedcontentfaq>`__
------------------------------------------

`FRBRizing Content <#frbrfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question:**\ At our public library we are running a Koha installation
and we've tried to turn on all the nice functionalities in Koha such as
the frbrising tool, but do not get the same result as Nelsonville public
library.

**Answer:**\ In fact, this feature is quite tricky to make that right.
First it looks at XISBN service. And then search in your database for
that ISBN. So both XISBN and your internal ISBN (in biblio table) have
to be normalized. You could therefore use the script
misc/batchupdateISBNs.pl (it removes all the - in your local ISBNs)

`Amazon <#amzfaq>`__
~~~~~~~~~~~~~~~~~~~~

`All Amazon Content <#amazonfaq>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: I have all of the Amazon preferences turned on and have
entered both of my keys, but none of the content appears in my system,
why is that?

**Answer**: Amazon's API checks your server time on all requests and if
your server time is not set properly requests will be denied. To resolve
this issue be sure to set your system time appropriately. Once that
change in made Amazon content should appear immediately.

On Debian the the command is *date -s "2010-06-30 17:21"* (with the
proper date and time for your timezone).

`System Administration <#systemfaq>`__
--------------------------------------

`Errors in Zebra Cron <#zebracronfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: I am noticing some errors in the
koha-zebradaemon-output.log file. When new records are added it takes a
bit longer to index than we think they should. Running rebuild zebra is
often faster. Zebra ends up indexing and search works, but I am
concerned about the errors. Any ideas?

**Answer**: Rebuild\_zebra.pl -r deletes all of the files in the Zebra
db directories (such as reci-0.mf) and then recreates them. Thus,
permissions will be lost, and the files will be owned by the user who
ran rebuild\_zebra.pl. If one rebuilds the zebra indexes as root, the
daemons, which typically run under the user Koha, will not be able to
update the indexes. Thus, it's important then that the zebra rebuilds
are put in the cronjob file of the user Koha, and not root. Also
important is that other users, such as root, don't manually execute
rebuilds.

If one desires that another user be able to execute rebuild\_zebra.pl,
he should be given the permission to execute 'sudo -u Koha
.../rebuild\_zebra.pl,' (if you want to do this, you also have to edit
the sudoers file to pass the PERL5LIB variable with the env\_keep option
as by default sudo strips away almost all environment variables). Or, as
root user, one can use a simple 'su koha' and then the rebuild\_zebra.pl
command.

I've also tried to set the sticky bit on rebuild\_zebra.pl, but for
whatever reason it didn't seem to work due to some problem with the
PERL5LIB variable that I wasn't able to figure. That seems to me the
easiest thing to do, if anybody has any idea how to make it work. If it
worked and were the default, I think it would help folks to avoid a
great deal of the problems that come up with zebra.

`Making Z39.50 Target Public <#publicztarget>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Could someone tell me the exact steps I need to take to
configure Zebra to expose my Koha 3 db as a public Z39.50 service?

**Answer**: Edit the KOHA\_CONF file that your Koha is using. Uncomment
the publicserver line like:

<!-- <listen id="publicserver" >tcp:@:9999</listen> -->

to be:

<listen id="publicserver" >tcp:@:9999</listen>

Then restart zebasrv and connect on the port specified (9999).

`Shelving Location Authorized Values <#authvalfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: When editing an item, the new shelving location I created
is not showing up by default in the items where I assigned it to.

**Answer**: This is because you created the new shelving location with a
code value of 0 (zero) Just FYI the system interprets authorized values
of 0 as equaling a null so when you edit a record in cataloging where
the authorized value in a field was assigned where the code was 0, the
value displays as null in the item editor (or MARC editor) instead of
the value the library meant it to be.

`Why do I need Authorized Values? <#whyauthvals>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Why would I want to define authorized values for MARC
tags?

**Answer**: Authorized Values create a 'controlled vocabulary' for your
staff. As an example, let us assume that your Koha installation is used
by several libraries, and you use MARC 21. You might want to restrict
the 850a MARC subfield to the institution codes for just those
libraries. In that case, you could define an authorized values category
(perhaps called "INST") and enter the institution codes as the
authorized values for that category.

    **Note**

    Koha automatically sets up authorized value categories for your item
    types and branch codes, and you can link these authorized values to
    MARC subfields when you set up your MARC tag structure.

`How do I clean up the sessions table? <#sessionstblfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: Is there a periodic job that can be run to cull old
sessions from the table? We don't want to backup all the useless session
data every night.

**Answer**: You can run `cleanup database cron job <#cleandbcron>`__.

Or just before doing a backup command (mysqldump), you can truncate
session table:  

::

    mysql -u<kohauser -p<password <koha-db-name -e 'TRUNCATE TABLE sessions'

`Hardware <#hardwarefaq>`__
---------------------------

`Barcode Scanners <#barcodefaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Question**: What barcode scanners have been known to work with Koha?

**Answer**: The simple rule of thumb is, does it act like a keyboard
device?, if so, it will work. (i.e. can you take the scanner, scan a
barcode and have it show up in a text editor, if so, it will work.)

The main points to check are that it connects to your PC conveniently
(can be USB or "keyboard wedge" which means it connects in line with the
keyboard, which is useful with older computers), and that it scans the
barcode type that you are using.

It is a good idea to test some 'used' barcodes if you have any, to see
whether the scanner can read scuffed or slightly wrinkled ones
successfully. Most scanners are capable of reading several barcode types
- there are many, and the specification should list the ones it can
read. You may need to adjust settings slightly, such as prefix and
suffix characters, or whether you want to send an 'enter' character or
not.

One more tip - some can be set 'always on' and may come with a stand,
some have triggers under the handle, some have buttons on top, some are
held like a pen. Think about the staff working with the hardware before
choosing, as a button in the wrong place can be very awkward to use.

`Printers <#printersfaq>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~

`Printers used by Koha libraries <#kohaprinters>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  POS-X receipt printer

-  Star Micronics printer (exact model unknown) with a generic/plain
   text driver.

-  Star SP2000 (Nelsonville)

-  Star TSP-100 futurePRINT (Geauga)

   -  "I know there have been a lot of questions on receipt printers so
      I thought I'd pass on my findings. We have been testing the Star
      TSP-100 futurePRINT. I found this print to be VERY easy to
      configure for Koha. I was even able to customize the print job by
      adding our system logo (a .gif) to the top of every receipt. Also
      with a bitmap created in Paint was able to add a message at the
      bottom of each receipt with the contact information, hours and
      website for the library that the materials were checked out at."

-  Epson TM 88 IIIP thermal receipt printers

-  Epson TM-T88IV

-  1x1 labels using a Dymolabelwriter printer

`Braille Support <#braillefaq>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Question**: Are there any braille embosser or printer which has
inbuilt braille converter and it is accessible with UNIX environment?

**Answer**: You may want to look into BRLTTY
(http://www.emptech.info/product_details.php?ID=1232).

`Additional Support <#hardwaresupport>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  http://www.nexpresslibrary.org/go-live/configure-your-receipt-printers/

Extending Koha
==============

`Amazon lookup script for Koha libraries <#amzlookup>`__
--------------------------------------------------------

We order most of our materials from Amazon, so I've been looking for a
convenient way to tell if a book under consideration is in our catalog
already.

Greasemonkey & a custom user script fit the bill nicely:

-  https://addons.mozilla.org/en-US/firefox/addon/748

-  http://userscripts.org/scripts/show/56847

A few caveats:

-  Like most scripts, this one was designed to work with Firefox; I
   haven't explored getting it to work with other browsers.

-  I'm not a JavaScript programmer -- this was adapted from others'
   work. Just a few lines would have to be changed to get the script to
   work with your catalog.

-  It depends on the existence of ISBN for the item in question, so
   movies, older books, etc. would not work.

Others have added all sorts of bells & whistles: XISBN lookups to search
for related titles, custom messages based on the status of items (on
order, on hold, etc.), ... just search the UserScripts site for Amazon +
library. For a later date!

`Keyword Clouds <#extendkeywordclouds>`__
-----------------------------------------

In addition to the traditional tag cloud available in Koha, there is a
way to generate clouds for popular subjects within Koha.

The `Author/Subject Cloud cron job <#keywordclouds>`__ is used to help
with this process. This cron job sends its output to files.

-  /home/koha/mylibrary/koharoot/koha-tmpl/cloud-author.html

-  /home/koha/yourlibrary/koharoot/koha-tmpl/cloud-subject.html

This means that you can produce clouds for authors, collective author,
all kind of subjects, classifications, etc. And since it works on zebra
indexes, it is quick, even on large DBs. Tags clouds are sent to files.
It's up to library webmaster to deal with those files in order to
include them in `OPACMainUserBlock <#OpacMainUserBlock>`__, or include
them into their library CMS.

Some libraries even send the file into a Samba shared folder where
webmaster take them, eventually clean them a little bit before
integrating them into navigation widgets or pages.

`Newest Titles Pulldown <#newtitlesoption>`__
---------------------------------------------

Often we want to add a way for our patrons to do searches for the newest
items. In this example I'll show you how to create a pull down menu of
the newest items by item type. These tips will work (with a couple
changes) for collection codes or shelving locations as well.

First, it's important to note that every link in Koha is a permanent
link. This means if I do a search for everything of a specific item type
sorted by the acquisitions date and bookmark that URL, whenever I click
it I'll see the newest items of that type on the first few pages of the
results.

I took this knowledge and wrote a form takes this functionality in to
consideration. It basically just does a search of your Koha catalog for
a specific item type and sorts the results by acquisitions date.

The first thing I did was write a MySQL statement to generate a list of
item types for me - why copy and paste when you can use the power of
MySQL?

::

    select concat('<option value=\"mc-itype:', itemtype, '\">',description,'</option>') from itemtypes

The above looks at the itemtypes table and slaps the necessary HTML
around each item type for me. I then exported that to CSV and opened it
in my text editor and added the other parts of the form.

::

    <p><strong>New Items</strong></p>
    <p><form name="searchform" method="get" action="/cgi-bin/koha/opac-search.pl">
    <input name="idx" value="kw" type="hidden">
    <input name="sort_by" value="acqdate_dsc" type="hidden">
    <input name="do" value="OK" type="hidden">
    <select name="limit" onchange="this.form.submit()">
    <option>-- Please choose --</option>
    <option value="mc-itype:BOOK">Book</option>
    <option value="mc-itype:BOOKCD">Book on CD</option>
    <option value="mc-itype:DVD">DVD</option>
    <option value="mc-itype:LRG_PRINT">Large print book</option>
    <option value="mc-itype:MAGAZINE">Magazine</option>
    <option value="mc-itype:NEWSPAPER">Newspaper</option>
    <option value="mc-itype:VIDEO">Videocassette</option>
    </select>
    </form>
    </p>

Now, what does all of that mean? The important bits are these:

First the starting of the form.

::

    <p><form name="searchform" method="get" action="/cgi-bin/koha/opac-search.pl">

This tells the browser to take any value selected and put it at the end
of this http://YOURSITE/cgi-bin/koha/opac-search.pl. If you want to
embed this form on your library website (and not on your OPAC) you can
put the full OPAC URL in there.

Next, there is a hidden value that is telling the search to sort by
acquisitions date descending (newest items at the top):

::

    <input name="sort_by" value="acqdate_dsc" type="hidden">

And finally you have an option for each item type you want people to
search.

::

    <option value="mc-itype:BOOK">Book</option>

These options each include the string "mc-itype:" which tells Koha to do
an item type search.

Once you have all of that in place you can copy and paste the form to
somewhere on your OPAC. The `Farmington Public Libraries
OPAC <http://catalog.farmingtonlibraries.org>`__ has a few examples of
this on the left.

`Cataloging and Searching by Color <#colorsearch>`__
----------------------------------------------------

One of the icon sets installed in Koha includes a series of colors. This
set can be used to catalog and search by color if you'd like. This guide
will walk you use changing collection code to color in Koha so that you
can do this.

The following SQL could be used to add these colors to the CCODE
authorized value category in a batch. If you wanted to use these colors
for another authorized value you'd have to edit this to use that
category:

::

        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','000000','Black','','colors/000000.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','66cc66','Bright Green','','colors/66cc66.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','99cc33','Olive','','colors/99cc33.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','3333cc','Dark Blue','','colors/3333cc.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','006600' ,'Dark Green','','colors/006600.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','6600cc','Plum','','colors/6600cc.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','6666cc','Purple','','colors/6666cc.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','9999cc','Light Purple','','colors/9999cc.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','660000' ,'Burgundy','','colors/660000.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','663333' ,'Brown','','colors/663333.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','990000' ,'Red','','colors/990000.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','996633' ,'Tan','','colors/996633.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','999999' ,'Gray','','colors/999999.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','cc66cc','Pink','','colors/cc66cc.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','cc99cc','Bubble Gum','','colors/cc99cc.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','cc3333' ,'Orange','','colors/cc3333.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','cc6666' ,'Peach','','colors/cc6666.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','cc9999' ,'Rose','','colors/cc9999.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','cccc00' ,'Gold','','colors/cccc00.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','ffff33' ,'Yellow','','colors/ffff33.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','ffffcc','Cream','','colors/ffffcc.png');
        insert into authorised_values (category, authorised_value, lib,
         lib_opac, imageurl) values ('CCODE','ffffff','White','','colors/ffffff.png');

If you would like to choose the colors manually you can do that via the
`Authorized Values <#authorizedvalues>`__ administration area.

Colors for CCODE
|image1118|

Next you'll want to `update the frameworks <#marcbibframeworks>`__ so
that the 952$8 (if you're using collection code) label to says Color.

Once you have that in place you can start to catalog items by color.

Finally you'll want to add the following JQuery to your preferences so
that it will relabel 'Collection' to 'Color'

`IntranetUserJS <#intranetuserjs>`__

::

    $(document).ready(function(){
        $("#advsearch-tab-ccode a:contains('Collection')").text("Color");
        $("#holdings th:contains('Collection')").text("Color");
        });

`OPACUserJS <#opacuserjs>`__

::

    $(document).ready(function(){
        $("#advsearch-tab-ccode a:contains('Collection')").text("Color");
        $('#item_ccode').text("Color");
        });

Koha and Your Website
=====================

This appendix will include tips for integrating Koha in to your library
website.

`Koha search on your site <#embedsearch>`__
-------------------------------------------

Often you'll want to add a Koha search box to your library website. To
do so, just copy and paste the following code in to your library website
and update the YOURCATALOG bit with your catalog's URL and you're set to
go.

::

    <form name="searchform" method="get" action="http://YOURCATLOG/cgi-bin/koha/opac-search.pl" id="searchform">
    <input id="transl1" name="q" type="text"><p>
    <select name="idx" id="masthead_search">
    <option value="kw">Keyword</option>
    <option value="ti">Title</option>
    <option value="au">Author</option>
    <option value="su">Subject</option>
    <option value="nb">ISBN</option>
    <option value="se">Series</option>
    <option value="callnum">Call Number</option>
    </select>
    <input value="Search" id="searchsubmit" type="submit">
    </p></form>


GNU General Public License version 3
====================================

Version 3, 29 June 2007

Copyright © 2007 Free Software Foundation, Inc. http://fsf.org/

Everyone is permitted to copy and distribute verbatim copies of this
license document, but changing it is not allowed.

**Preamble**

The GNU General Public License is a free, copyleft license for software
and other kinds of works.

The licenses for most software and other practical works are designed to
take away your freedom to share and change the works. By contrast, the
GNU General Public License is intended to guarantee your freedom to
share and change all versions of a program--to make sure it remains free
software for all its users. We, the Free Software Foundation, use the
GNU General Public License for most of our software; it applies also to
any other work released this way by its authors. You can apply it to
your programs, too.

When we speak of free software, we are referring to freedom, not price.
Our General Public Licenses are designed to make sure that you have the
freedom to distribute copies of free software (and charge for them if
you wish), that you receive source code or can get it if you want it,
that you can change the software or use pieces of it in new free
programs, and that you know you can do these things.

To protect your rights, we need to prevent others from denying you these
rights or asking you to surrender the rights. Therefore, you have
certain responsibilities if you distribute copies of the software, or if
you modify it: responsibilities to respect the freedom of others.

For example, if you distribute copies of such a program, whether gratis
or for a fee, you must pass on to the recipients the same freedoms that
you received. You must make sure that they, too, receive or can get the
source code. And you must show them these terms so they know their
rights.

Developers that use the GNU GPL protect your rights with two steps: (1)
assert copyright on the software, and (2) offer you this License giving
you legal permission to copy, distribute and/or modify it.

For the developers' and authors' protection, the GPL clearly explains
that there is no warranty for this free software. For both users' and
authors' sake, the GPL requires that modified versions be marked as
changed, so that their problems will not be attributed erroneously to
authors of previous versions.

Some devices are designed to deny users access to install or run
modified versions of the software inside them, although the manufacturer
can do so. This is fundamentally incompatible with the aim of protecting
users' freedom to change the software. The systematic pattern of such
abuse occurs in the area of products for individuals to use, which is
precisely where it is most unacceptable. Therefore, we have designed
this version of the GPL to prohibit the practice for those products. If
such problems arise substantially in other domains, we stand ready to
extend this provision to those domains in future versions of the GPL, as
needed to protect the freedom of users.

Finally, every program is threatened constantly by software patents.
States should not allow patents to restrict development and use of
software on general-purpose computers, but in those that do, we wish to
avoid the special danger that patents applied to a free program could
make it effectively proprietary. To prevent this, the GPL assures that
patents cannot be used to render the program non-free.

The precise terms and conditions for copying, distribution and
modification follow.

**TERMS AND CONDITIONS**

**0. Definitions.**

"This License" refers to version 3 of the GNU General Public License.

"Copyright" also means copyright-like laws that apply to other kinds of
works, such as semiconductor masks.

"The Program" refers to any copyrightable work licensed under this
License. Each licensee is addressed as "you". "Licensees" and
"recipients" may be individuals or organizations.

To "modify" a work means to copy from or adapt all or part of the work
in a fashion requiring copyright permission, other than the making of an
exact copy. The resulting work is called a "modified version" of the
earlier work or a work "based on" the earlier work.

A "covered work" means either the unmodified Program or a work based on
the Program.

To "propagate" a work means to do anything with it that, without
permission, would make you directly or secondarily liable for
infringement under applicable copyright law, except executing it on a
computer or modifying a private copy. Propagation includes copying,
distribution (with or without modification), making available to the
public, and in some countries other activities as well.

To "convey" a work means any kind of propagation that enables other
parties to make or receive copies. Mere interaction with a user through
a computer network, with no transfer of a copy, is not conveying.

An interactive user interface displays "Appropriate Legal Notices" to
the extent that it includes a convenient and prominently visible feature
that (1) displays an appropriate copyright notice, and (2) tells the
user that there is no warranty for the work (except to the extent that
warranties are provided), that licensees may convey the work under this
License, and how to view a copy of this License. If the interface
presents a list of user commands or options, such as a menu, a prominent
item in the list meets this criterion.

**1. Source Code.**

The "source code" for a work means the preferred form of the work for
making modifications to it. "Object code" means any non-source form of a
work.

A "Standard Interface" means an interface that either is an official
standard defined by a recognized standards body, or, in the case of
interfaces specified for a particular programming language, one that is
widely used among developers working in that language.

The "System Libraries" of an executable work include anything, other
than the work as a whole, that (a) is included in the normal form of
packaging a Major Component, but which is not part of that Major
Component, and (b) serves only to enable use of the work with that Major
Component, or to implement a Standard Interface for which an
implementation is available to the public in source code form. A "Major
Component", in this context, means a major essential component (kernel,
window system, and so on) of the specific operating system (if any) on
which the executable work runs, or a compiler used to produce the work,
or an object code interpreter used to run it.

The "Corresponding Source" for a work in object code form means all the
source code needed to generate, install, and (for an executable work)
run the object code and to modify the work, including scripts to control
those activities. However, it does not include the work's System
Libraries, or general-purpose tools or generally available free programs
which are used unmodified in performing those activities but which are
not part of the work. For example, Corresponding Source includes
interface definition files associated with source files for the work,
and the source code for shared libraries and dynamically linked
subprograms that the work is specifically designed to require, such as
by intimate data communication or control flow between those subprograms
and other parts of the work.

The Corresponding Source need not include anything that users can
regenerate automatically from other parts of the Corresponding Source.

The Corresponding Source for a work in source code form is that same
work.

**2. Basic Permissions.**

All rights granted under this License are granted for the term of
copyright on the Program, and are irrevocable provided the stated
conditions are met. This License explicitly affirms your unlimited
permission to run the unmodified Program. The output from running a
covered work is covered by this License only if the output, given its
content, constitutes a covered work. This License acknowledges your
rights of fair use or other equivalent, as provided by copyright law.

You may make, run and propagate covered works that you do not convey,
without conditions so long as your license otherwise remains in force.
You may convey covered works to others for the sole purpose of having
them make modifications exclusively for you, or provide you with
facilities for running those works, provided that you comply with the
terms of this License in conveying all material for which you do not
control copyright. Those thus making or running the covered works for
you must do so exclusively on your behalf, under your direction and
control, on terms that prohibit them from making any copies of your
copyrighted material outside their relationship with you.

Conveying under any other circumstances is permitted solely under the
conditions stated below. Sublicensing is not allowed; section 10 makes
it unnecessary.

**3. Protecting Users' Legal Rights From Anti-Circumvention Law.**

No covered work shall be deemed part of an effective technological
measure under any applicable law fulfilling obligations under article 11
of the WIPO copyright treaty adopted on 20 December 1996, or similar
laws prohibiting or restricting circumvention of such measures.

When you convey a covered work, you waive any legal power to forbid
circumvention of technological measures to the extent such circumvention
is effected by exercising rights under this License with respect to the
covered work, and you disclaim any intention to limit operation or
modification of the work as a means of enforcing, against the work's
users, your or third parties' legal rights to forbid circumvention of
technological measures.

**4. Conveying Verbatim Copies.**

You may convey verbatim copies of the Program's source code as you
receive it, in any medium, provided that you conspicuously and
appropriately publish on each copy an appropriate copyright notice; keep
intact all notices stating that this License and any non-permissive
terms added in accord with section 7 apply to the code; keep intact all
notices of the absence of any warranty; and give all recipients a copy
of this License along with the Program.

You may charge any price or no price for each copy that you convey, and
you may offer support or warranty protection for a fee.

**5. Conveying Modified Source Versions.**

You may convey a work based on the Program, or the modifications to
produce it from the Program, in the form of source code under the terms
of section 4, provided that you also meet all of these conditions:

a. The work must carry prominent notices stating that you modified it,
   and giving a relevant date.

b. The work must carry prominent notices stating that it is released
   under this License and any conditions added under section 7. This
   requirement modifies the requirement in section 4 to "keep intact all
   notices".

c. You must license the entire work, as a whole, under this License to
   anyone who comes into possession of a copy. This License will
   therefore apply, along with any applicable section 7 additional
   terms, to the whole of the work, and all its parts, regardless of how
   they are packaged. This License gives no permission to license the
   work in any other way, but it does not invalidate such permission if
   you have separately received it.

d. If the work has interactive user interfaces, each must display
   Appropriate Legal Notices; however, if the Program has interactive
   interfaces that do not display Appropriate Legal Notices, your work
   need not make them do so.

A compilation of a covered work with other separate and independent
works, which are not by their nature extensions of the covered work, and
which are not combined with it such as to form a larger program, in or
on a volume of a storage or distribution medium, is called an
"aggregate" if the compilation and its resulting copyright are not used
to limit the access or legal rights of the compilation's users beyond
what the individual works permit. Inclusion of a covered work in an
aggregate does not cause this License to apply to the other parts of the
aggregate.

**6. Conveying Non-Source Forms.**

You may convey a covered work in object code form under the terms of
sections 4 and 5, provided that you also convey the machine-readable
Corresponding Source under the terms of this License, in one of these
ways:

a. Convey the object code in, or embodied in, a physical product
   (including a physical distribution medium), accompanied by the
   Corresponding Source fixed on a durable physical medium customarily
   used for software interchange.

b. Convey the object code in, or embodied in, a physical product
   (including a physical distribution medium), accompanied by a written
   offer, valid for at least three years and valid for as long as you
   offer spare parts or customer support for that product model, to give
   anyone who possesses the object code either (1) a copy of the
   Corresponding Source for all the software in the product that is
   covered by this License, on a durable physical medium customarily
   used for software interchange, for a price no more than your
   reasonable cost of physically performing this conveying of source, or
   (2) access to copy the Corresponding Source from a network server at
   no charge.

c. Convey individual copies of the object code with a copy of the
   written offer to provide the Corresponding Source. This alternative
   is allowed only occasionally and noncommercially, and only if you
   received the object code with such an offer, in accord with
   subsection 6b.

d. Convey the object code by offering access from a designated place
   (gratis or for a charge), and offer equivalent access to the
   Corresponding Source in the same way through the same place at no
   further charge. You need not require recipients to copy the
   Corresponding Source along with the object code. If the place to copy
   the object code is a network server, the Corresponding Source may be
   on a different server (operated by you or a third party) that
   supports equivalent copying facilities, provided you maintain clear
   directions next to the object code saying where to find the
   Corresponding Source. Regardless of what server hosts the
   Corresponding Source, you remain obligated to ensure that it is
   available for as long as needed to satisfy these requirements.

e. Convey the object code using peer-to-peer transmission, provided you
   inform other peers where the object code and Corresponding Source of
   the work are being offered to the general public at no charge under
   subsection 6d.

A separable portion of the object code, whose source code is excluded
from the Corresponding Source as a System Library, need not be included
in conveying the object code work.

A "User Product" is either (1) a "consumer product", which means any
tangible personal property which is normally used for personal, family,
or household purposes, or (2) anything designed or sold for
incorporation into a dwelling. In determining whether a product is a
consumer product, doubtful cases shall be resolved in favor of coverage.
For a particular product received by a particular user, "normally used"
refers to a typical or common use of that class of product, regardless
of the status of the particular user or of the way in which the
particular user actually uses, or expects or is expected to use, the
product. A product is a consumer product regardless of whether the
product has substantial commercial, industrial or non-consumer uses,
unless such uses represent the only significant mode of use of the
product.

"Installation Information" for a User Product means any methods,
procedures, authorization keys, or other information required to install
and execute modified versions of a covered work in that User Product
from a modified version of its Corresponding Source. The information
must suffice to ensure that the continued functioning of the modified
object code is in no case prevented or interfered with solely because
modification has been made.

If you convey an object code work under this section in, or with, or
specifically for use in, a User Product, and the conveying occurs as
part of a transaction in which the right of possession and use of the
User Product is transferred to the recipient in perpetuity or for a
fixed term (regardless of how the transaction is characterized), the
Corresponding Source conveyed under this section must be accompanied by
the Installation Information. But this requirement does not apply if
neither you nor any third party retains the ability to install modified
object code on the User Product (for example, the work has been
installed in ROM).

The requirement to provide Installation Information does not include a
requirement to continue to provide support service, warranty, or updates
for a work that has been modified or installed by the recipient, or for
the User Product in which it has been modified or installed. Access to a
network may be denied when the modification itself materially and
adversely affects the operation of the network or violates the rules and
protocols for communication across the network.

Corresponding Source conveyed, and Installation Information provided, in
accord with this section must be in a format that is publicly documented
(and with an implementation available to the public in source code
form), and must require no special password or key for unpacking,
reading or copying.

**7. Additional Terms.**

"Additional permissions" are terms that supplement the terms of this
License by making exceptions from one or more of its conditions.
Additional permissions that are applicable to the entire Program shall
be treated as though they were included in this License, to the extent
that they are valid under applicable law. If additional permissions
apply only to part of the Program, that part may be used separately
under those permissions, but the entire Program remains governed by this
License without regard to the additional permissions.

When you convey a copy of a covered work, you may at your option remove
any additional permissions from that copy, or from any part of it.
(Additional permissions may be written to require their own removal in
certain cases when you modify the work.) You may place additional
permissions on material, added by you to a covered work, for which you
have or can give appropriate copyright permission.

Notwithstanding any other provision of this License, for material you
add to a covered work, you may (if authorized by the copyright holders
of that material) supplement the terms of this License with terms:

a. Disclaiming warranty or limiting liability differently from the terms
   of sections 15 and 16 of this License; or

b. Requiring preservation of specified reasonable legal notices or
   author attributions in that material or in the Appropriate Legal
   Notices displayed by works containing it; or

c. Prohibiting misrepresentation of the origin of that material, or
   requiring that modified versions of such material be marked in
   reasonable ways as different from the original version; or

d. Limiting the use for publicity purposes of names of licensors or
   authors of the material; or

e. Declining to grant rights under trademark law for use of some trade
   names, trademarks, or service marks; or

f. Requiring indemnification of licensors and authors of that material
   by anyone who conveys the material (or modified versions of it) with
   contractual assumptions of liability to the recipient, for any
   liability that these contractual assumptions directly impose on those
   licensors and authors.

All other non-permissive additional terms are considered "further
restrictions" within the meaning of section 10. If the Program as you
received it, or any part of it, contains a notice stating that it is
governed by this License along with a term that is a further
restriction, you may remove that term. If a license document contains a
further restriction but permits relicensing or conveying under this
License, you may add to a covered work material governed by the terms of
that license document, provided that the further restriction does not
survive such relicensing or conveying.

If you add terms to a covered work in accord with this section, you must
place, in the relevant source files, a statement of the additional terms
that apply to those files, or a notice indicating where to find the
applicable terms.

Additional terms, permissive or non-permissive, may be stated in the
form of a separately written license, or stated as exceptions; the above
requirements apply either way.

**8. Termination.**

You may not propagate or modify a covered work except as expressly
provided under this License. Any attempt otherwise to propagate or
modify it is void, and will automatically terminate your rights under
this License (including any patent licenses granted under the third
paragraph of section 11).

However, if you cease all violation of this License, then your license
from a particular copyright holder is reinstated (a) provisionally,
unless and until the copyright holder explicitly and finally terminates
your license, and (b) permanently, if the copyright holder fails to
notify you of the violation by some reasonable means prior to 60 days
after the cessation.

Moreover, your license from a particular copyright holder is reinstated
permanently if the copyright holder notifies you of the violation by
some reasonable means, this is the first time you have received notice
of violation of this License (for any work) from that copyright holder,
and you cure the violation prior to 30 days after your receipt of the
notice.

Termination of your rights under this section does not terminate the
licenses of parties who have received copies or rights from you under
this License. If your rights have been terminated and not permanently
reinstated, you do not qualify to receive new licenses for the same
material under section 10.

**9. Acceptance Not Required for Having Copies.**

You are not required to accept this License in order to receive or run a
copy of the Program. Ancillary propagation of a covered work occurring
solely as a consequence of using peer-to-peer transmission to receive a
copy likewise does not require acceptance. However, nothing other than
this License grants you permission to propagate or modify any covered
work. These actions infringe copyright if you do not accept this
License. Therefore, by modifying or propagating a covered work, you
indicate your acceptance of this License to do so.

**10. Automatic Licensing of Downstream Recipients.**

Each time you convey a covered work, the recipient automatically
receives a license from the original licensors, to run, modify and
propagate that work, subject to this License. You are not responsible
for enforcing compliance by third parties with this License.

An "entity transaction" is a transaction transferring control of an
organization, or substantially all assets of one, or subdividing an
organization, or merging organizations. If propagation of a covered work
results from an entity transaction, each party to that transaction who
receives a copy of the work also receives whatever licenses to the work
the party's predecessor in interest had or could give under the previous
paragraph, plus a right to possession of the Corresponding Source of the
work from the predecessor in interest, if the predecessor has it or can
get it with reasonable efforts.

You may not impose any further restrictions on the exercise of the
rights granted or affirmed under this License. For example, you may not
impose a license fee, royalty, or other charge for exercise of rights
granted under this License, and you may not initiate litigation
(including a cross-claim or counterclaim in a lawsuit) alleging that any
patent claim is infringed by making, using, selling, offering for sale,
or importing the Program or any portion of it.

**11. Patents.**

A "contributor" is a copyright holder who authorizes use under this
License of the Program or a work on which the Program is based. The work
thus licensed is called the contributor's "contributor version".

A contributor's "essential patent claims" are all patent claims owned or
controlled by the contributor, whether already acquired or hereafter
acquired, that would be infringed by some manner, permitted by this
License, of making, using, or selling its contributor version, but do
not include claims that would be infringed only as a consequence of
further modification of the contributor version. For purposes of this
definition, "control" includes the right to grant patent sublicenses in
a manner consistent with the requirements of this License.

Each contributor grants you a non-exclusive, worldwide, royalty-free
patent license under the contributor's essential patent claims, to make,
use, sell, offer for sale, import and otherwise run, modify and
propagate the contents of its contributor version.

In the following three paragraphs, a "patent license" is any express
agreement or commitment, however denominated, not to enforce a patent
(such as an express permission to practice a patent or covenant not to
sue for patent infringement). To "grant" such a patent license to a
party means to make such an agreement or commitment not to enforce a
patent against the party.

If you convey a covered work, knowingly relying on a patent license, and
the Corresponding Source of the work is not available for anyone to
copy, free of charge and under the terms of this License, through a
publicly available network server or other readily accessible means,
then you must either (1) cause the Corresponding Source to be so
available, or (2) arrange to deprive yourself of the benefit of the
patent license for this particular work, or (3) arrange, in a manner
consistent with the requirements of this License, to extend the patent
license to downstream recipients. "Knowingly relying" means you have
actual knowledge that, but for the patent license, your conveying the
covered work in a country, or your recipient's use of the covered work
in a country, would infringe one or more identifiable patents in that
country that you have reason to believe are valid.

If, pursuant to or in connection with a single transaction or
arrangement, you convey, or propagate by procuring conveyance of, a
covered work, and grant a patent license to some of the parties
receiving the covered work authorizing them to use, propagate, modify or
convey a specific copy of the covered work, then the patent license you
grant is automatically extended to all recipients of the covered work
and works based on it.

A patent license is "discriminatory" if it does not include within the
scope of its coverage, prohibits the exercise of, or is conditioned on
the non-exercise of one or more of the rights that are specifically
granted under this License. You may not convey a covered work if you are
a party to an arrangement with a third party that is in the business of
distributing software, under which you make payment to the third party
based on the extent of your activity of conveying the work, and under
which the third party grants, to any of the parties who would receive
the covered work from you, a discriminatory patent license (a) in
connection with copies of the covered work conveyed by you (or copies
made from those copies), or (b) primarily for and in connection with
specific products or compilations that contain the covered work, unless
you entered into that arrangement, or that patent license was granted,
prior to 28 March 2007.

Nothing in this License shall be construed as excluding or limiting any
implied license or other defenses to infringement that may otherwise be
available to you under applicable patent law.

**12. No Surrender of Others' Freedom.**

If conditions are imposed on you (whether by court order, agreement or
otherwise) that contradict the conditions of this License, they do not
excuse you from the conditions of this License. If you cannot convey a
covered work so as to satisfy simultaneously your obligations under this
License and any other pertinent obligations, then as a consequence you
may not convey it at all. For example, if you agree to terms that
obligate you to collect a royalty for further conveying from those to
whom you convey the Program, the only way you could satisfy both those
terms and this License would be to refrain entirely from conveying the
Program.

**13. Use with the GNU Affero General Public License.**

Notwithstanding any other provision of this License, you have permission
to link or combine any covered work with a work licensed under version 3
of the GNU Affero General Public License into a single combined work,
and to convey the resulting work. The terms of this License will
continue to apply to the part which is the covered work, but the special
requirements of the GNU Affero General Public License, section 13,
concerning interaction through a network will apply to the combination
as such.

**14. Revised Versions of this License.**

The Free Software Foundation may publish revised and/or new versions of
the GNU General Public License from time to time. Such new versions will
be similar in spirit to the present version, but may differ in detail to
address new problems or concerns.

Each version is given a distinguishing version number. If the Program
specifies that a certain numbered version of the GNU General Public
License "or any later version" applies to it, you have the option of
following the terms and conditions either of that numbered version or of
any later version published by the Free Software Foundation. If the
Program does not specify a version number of the GNU General Public
License, you may choose any version ever published by the Free Software
Foundation.

If the Program specifies that a proxy can decide which future versions
of the GNU General Public License can be used, that proxy's public
statement of acceptance of a version permanently authorizes you to
choose that version for the Program.

Later license versions may give you additional or different permissions.
However, no additional obligations are imposed on any author or
copyright holder as a result of your choosing to follow a later version.

**15. Disclaimer of Warranty.**

THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY
APPLICABLE LAW. EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT
HOLDERS AND/OR OTHER PARTIES PROVIDE THE PROGRAM "AS IS" WITHOUT
WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
PARTICULAR PURPOSE. THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF
THE PROGRAM IS WITH YOU. SHOULD THE PROGRAM PROVE DEFECTIVE, YOU ASSUME
THE COST OF ALL NECESSARY SERVICING, REPAIR OR CORRECTION.

**16. Limitation of Liability.**

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MODIFIES AND/OR
CONVEYS THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,
INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES
ARISING OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT
NOT LIMITED TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES
SUSTAINED BY YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE
WITH ANY OTHER PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN
ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.

**17. Interpretation of Sections 15 and 16.**

If the disclaimer of warranty and limitation of liability provided above
cannot be given local legal effect according to their terms, reviewing
courts shall apply local law that most closely approximates an absolute
waiver of all civil liability in connection with the Program, unless a
warranty or assumption of liability accompanies a copy of the Program in
return for a fee.

**END OF TERMS AND CONDITIONS**

**How to Apply These Terms to Your New Programs**

If you develop a new program, and you want it to be of the greatest
possible use to the public, the best way to achieve this is to make it
free software which everyone can redistribute and change under these
terms.

To do so, attach the following notices to the program. It is safest to
attach them to the start of each source file to most effectively state
the exclusion of warranty; and each file should have at least the
"copyright" line and a pointer to where the full notice is found.

::

    one line to give the program's name and a brief idea of what it does.
    Copyright (C) year name of author

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see http://www.gnu.org/licenses/.


Also add information on how to contact you by electronic and paper mail.

If the program does terminal interaction, make it output a short notice
like this when it starts in an interactive mode:

::

    program Copyright (C) year name of author
    This program comes with ABSOLUTELY NO WARRANTY; for details type `show w'.
    This is free software, and you are welcome to redistribute it
    under certain conditions; type `show c' for details.


The hypothetical commands \`\ ``show w``' and \`\ ``show c``' should
show the appropriate parts of the General Public License. Of course,
your program's commands might be different; for a GUI interface, you
would use an "about box".

You should also get your employer (if you work as a programmer) or
school, if any, to sign a "copyright disclaimer" for the program, if
necessary. For more information on this, and how to apply and follow the
GNU GPL, see http://www.gnu.org/licenses/.

The GNU General Public License does not permit incorporating your
program into proprietary programs. If your program is a subroutine
library, you may consider it more useful to permit linking proprietary
applications with the library. If this is what you want to do, use the
GNU Lesser General Public License instead of this License. But first,
please read http://www.gnu.org/philosophy/why-not-lgpl.html.

.. |image0| image:: images/admin/globalprefs/prefsearch.png
.. |image1| image:: images/admin/globalprefs/prefsearch1.png
.. |image2| image:: images/admin/globalprefs/saveallprefs.png
.. |image3| image:: images/admin/globalprefs/saveconfirmation.png
.. |image4| image:: images/admin/globalprefs/sortprefs.png
.. |image5| image:: images/admin/globalprefs/Google/2newproject.png
.. |image6| image:: images/admin/globalprefs/Google/3identity.png
.. |image7| image:: images/admin/globalprefs/Google/4enable.png
.. |image8| image:: images/admin/globalprefs/Google/5consent.png
.. |image9| image:: images/admin/globalprefs/Google/6credtype.png
.. |image10| image:: images/admin/globalprefs/Google/7creds.png
.. |image11| image:: images/admin/globalprefs/Google/8oauth.png
.. |image12| image:: images/admin/globalprefs/Google/7creds.png
.. |image13| image:: images/admin/globalprefs/persona.png
.. |image14| image:: images/admin/globalprefs/AuthDisplayHierarchy.png
.. |image15| image:: images/admin/globalprefs/hide_marc-display.png
.. |image16| image:: images/admin/globalprefs/hide_marc-dont.png
.. |image17| image:: images/admin/globalprefs/LabelMARCView-do.png
.. |image18| image:: images/admin/globalprefs/LabelMARCView-dont.png
.. |image19| image:: images/admin/globalprefs/SeparateHoldings.png
.. |image20| image:: images/admin/globalprefs/advancedMARCeditor-display.png
.. |image21| image:: images/admin/globalprefs/advancedMARCeditor-dontdisplay.png
.. |image22| image:: images/admin/globalprefs/AlternateHoldingsField.png
.. |image23| image:: images/admin/globalprefs/item-level_itypes.png
.. |image24| image:: images/admin/globalprefs/SpineLabelShowPrintOnBibDetails.png
.. |image25| image:: images/admin/globalprefs/AgeRestrictionOverride.png
.. |image26| image:: images/admin/globalprefs/AgeRestrictionMarker.png
.. |image27| image:: images/admin/globalprefs/AllowTooManyOverride-yes.png
.. |image28| image:: images/admin/globalprefs/AllowTooManyOverride-no.png
.. |image29| image:: images/admin/globalprefs/IssueLostItem-msg.png
.. |image30| image:: images/admin/globalprefs/IssueLostItem-confirm.png
.. |image31| image:: images/admin/globalprefs/OnSiteCheckoutsForce.png
.. |image32| image:: images/admin/globalprefs/decreaseLoanHighHoldsDuration.png
.. |image33| image:: images/admin/globalprefs/CircAutocompl.png
.. |image34| image:: images/admin/globalprefs/FilterBeforeOverdueReport.png
.. |image35| image:: images/admin/globalprefs/FineNotifyAtCheckin.png
.. |image36| image:: images/admin/globalprefs/DisplayClearScreenButtonOff.png
.. |image37| image:: images/admin/globalprefs/DisplayClearScreenButton.png
.. |image38| image:: images/admin/globalprefs/ExportRemoveFields.png
.. |image39| image:: images/admin/globalprefs/ExportWithCsvProfile.png
.. |image40| image:: images/admin/globalprefs/itemBarcodeFallbackSearch.png
.. |image41| image:: images/admin/globalprefs/SpecifyDueDate.png
.. |image42| image:: images/admin/globalprefs/SpecifyDueDate-no.png
.. |image43| image:: images/admin/globalprefs/WaitingNotifyAtCheckin.png
.. |image44| image:: images/circ/selfcheckout.png
.. |image45| image:: images/circ/SelfCheckoutByLogin.png
.. |image46| image:: images/admin/globalprefs/editionstab.png
.. |image47| image:: images/admin/globalprefs/editions.png
.. |image48| image:: images/admin/globalprefs/Babeltheque.png
.. |image49| image:: images/admin/globalprefs/HTML5MediaEnabled-opac.png
.. |image50| image:: images/admin/globalprefs/HTML5MediaEnabled-staff.png
.. |image51| image:: images/admin/globalprefs/IDreamBooksReadometer.png
.. |image52| image:: images/admin/globalprefs/IDreamBooksResults.png
.. |image53| image:: images/admin/globalprefs/IDreamBooksReviews.png
.. |image54| image:: images/admin/globalprefs/AllowMultipleCovers.png
.. |image55| image:: images/admin/globalprefs/novelisttab.png
.. |image56| image:: images/admin/globalprefs/novelistside.png
.. |image57| image:: images/admin/globalprefs/Overdrive.png
.. |image58| image:: images/admin/globalprefs/TagsInputOnList.png
.. |image59| image:: images/admin/globalprefs/TagsInputOnDetail.png
.. |image60| image:: images/admin/globalprefs/alphabet.png
.. |image61| image:: images/admin/globalprefs/opaclanguagesdisplay.png
.. |image62| image:: images/admin/globalprefs/DisplayOPACiconsXSLT.png
.. |image63| image:: images/admin/globalprefs/hidelostitems.png
.. |image64| image:: images/admin/globalprefs/LibraryName.png
.. |image65| image:: images/admin/globalprefs/OpacAddMastheadLibraryPulldown-add.png
.. |image66| image:: images/admin/globalprefs/OpacAddMastheadLibraryPulldown-dontadd.png
.. |image67| image:: images/admin/globalprefs/OPACBaseURL.png
.. |image68| image:: images/admin/globalprefs/opaccredits-html.png
.. |image69| image:: images/admin/globalprefs/opaccredits.png
.. |image70| image:: images/admin/globalprefs/OPACDisplay856uAsImage.png
.. |image71| image:: images/admin/globalprefs/856imagemarc.png
.. |image72| image:: images/admin/globalprefs/favicon.png
.. |image73| image:: images/admin/globalprefs/opacheader-html.png
.. |image74| image:: images/admin/globalprefs/opacheader.png
.. |image75| image:: images/admin/globalprefs/OpacKohaUrl.png
.. |image76| image:: images/admin/globalprefs/opacmaintenance.png
.. |image77| image:: images/admin/globalprefs/OpacMainUserBlock.png
.. |image78| image:: images/admin/globalprefs/OPACMySummaryHTML.png
.. |image79| image:: images/admin/globalprefs/OpacNav.png
.. |image80| image:: images/admin/globalprefs/OpacNavBottom.png
.. |image81| image:: images/admin/globalprefs/OpacNavRight.png
.. |image82| image:: images/admin/globalprefs/OPACNoResultsFound.png
.. |image83| image:: images/admin/globalprefs/OpacSeparateHoldings.png
.. |image84| image:: images/admin/globalprefs/OPACShowBarcode-noshow.png
.. |image85| image:: images/admin/globalprefs/OPACShowBarcode-show.png
.. |image86| image:: images/admin/globalprefs/OPACShowHoldQueueDetails-showholds.png
.. |image87| image:: images/admin/globalprefs/OPACShowHoldQueueDetails-priority.png
.. |image88| image:: images/admin/globalprefs/OpacShowRecentComments.png
.. |image89| image:: images/admin/globalprefs/OpacStarRatings-details.png
.. |image90| image:: images/admin/globalprefs/OpacStarRatings-results.png
.. |image91| image:: images/admin/globalprefs/opacuserjs-before.png
.. |image92| image:: images/admin/globalprefs/opacuserjs.png
.. |image93| image:: images/admin/globalprefs/opacuserjs-after.png
.. |image94| image:: images/admin/globalprefs/authoritysearch.png
.. |image95| image:: images/admin/globalprefs/OpacBrowseResults.png
.. |image96| image:: images/admin/globalprefs/OpacHoldNotes.png
.. |image97| image:: images/admin/globalprefs/OPACPatronDetails.png
.. |image98| image:: images/admin/globalprefs/OPACPatronDetails-approve.png
.. |image99| image:: images/admin/globalprefs/OpacTopissue.png
.. |image100| image:: images/admin/globalprefs/topissues.png
.. |image101| image:: images/admin/globalprefs/ShowReviewerPhoto.png
.. |image102| image:: images/admin/globalprefs/SocialNetworks.png
.. |image103| image:: images/admin/globalprefs/PatronSelfRegistration.png
.. |image104| image:: images/admin/globalprefs/OPACShelfBrowser.png
.. |image105| image:: images/admin/globalprefs/SMSSendDriver.png
.. |image106| image:: images/admin/globalprefs/StatisticsFields.png
.. |image107| image:: images/admin/globalprefs/displayFacetCount.png
.. |image108| image:: images/admin/globalprefs/AdvancedSearchTypes.png
.. |image109| image:: images/admin/globalprefs/opacSerialDefaultTab-colltab.png
.. |image110| image:: images/admin/globalprefs/opacSerialDefaultTab-subtab.png
.. |image111| image:: images/admin/globalprefs/SubscriptionHistory-brief.png
.. |image112| image:: images/admin/globalprefs/SubscriptionHistory-full.png
.. |image113| image:: images/admin/globalprefs/Display856uAsImage.png
.. |image114| image:: images/admin/globalprefs/856imagemarc.png
.. |image115| image:: images/admin/globalprefs/DisplayIconsXSLT.png
.. |image116| image:: images/admin/globalprefs/favicon.png
.. |image117| image:: images/admin/globalprefs/IntranetmainUserblock-html.png
.. |image118| image:: images/admin/globalprefs/IntranetmainUserblock.png
.. |image119| image:: images/admin/globalprefs/XSLTDetailsDisplay-off.png
.. |image120| image:: images/admin/globalprefs/XSLTDetailsDisplay-on.png
.. |image121| image:: images/admin/globalprefs/StaffDetailItemSelection.png
.. |image122| image:: images/admin/basicparams/librarylist.png
.. |image123| image:: images/admin/basicparams/grouplists.png
.. |image124| image:: images/admin/basicparams/newlibrary.png
.. |image125| image:: images/admin/basicparams/librarycontact.png
.. |image126| image:: images/admin/basicparams/librarylink.png
.. |image127| image:: images/admin/basicparams/opacinfo.png
.. |image128| image:: images/admin/basicparams/cannotdeletelibrary.png
.. |image129| image:: images/admin/basicparams/addlibgroup.png
.. |image130| image:: images/admin/basicparams/searchgroup.png
.. |image131| image:: images/admin/basicparams/stafflibgroupsearch.png
.. |image132| image:: images/admin/basicparams/groupproperties.png
.. |image133| image:: images/admin/basicparams/addlibrarytogroup.png
.. |image134| image:: images/admin/basicparams/itemtypes.png
.. |image135| image:: images/admin/basicparams/additemtype.png
.. |image136| image:: images/admin/basicparams/itemtype-msgsetup.png
.. |image137| image:: images/admin/basicparams/itemtype-msg.png
.. |image138| image:: images/admin/basicparams/itemtype-alert.png
.. |image139| image:: images/admin/basicparams/newitemtype.png
.. |image140| image:: images/admin/basicparams/nodeleteitemtype.png
.. |image141| image:: images/admin/basicparams/bor_notes.png
.. |image142| image:: images/admin/basicparams/report_group.png
.. |image143| image:: images/admin/basicparams/report_subgroup.png
.. |image144| image:: images/admin/basicparams/addauthcat.png
.. |image145| image:: images/admin/basicparams/authvallist.png
.. |image146| image:: images/admin/basicparams/addauthvalue.png
.. |image147| image:: images/admin/basicparams/authvals.png
.. |image148| image:: images/admin/patroncirc/patroncatlist.png
.. |image149| image:: images/admin/patroncirc/newpatroncat.png
.. |image150| image:: images/admin/patroncirc/patcaterror.png
.. |image151| image:: images/admin/patroncirc/patcaterror.png
.. |image152| image:: images/admin/patroncirc/patcaterror.png
.. |image153| image:: images/admin/patroncirc/hidelostitemspatron.png
.. |image154| image:: images/admin/patroncirc/patroncatpulldown.png
.. |image155| image:: images/admin/patroncirc/patcaterror.png
.. |image156| image:: images/admin/patroncirc/selectissuinglibrary.png
.. |image157| image:: images/admin/patroncirc/addcircrule.png
.. |image158| image:: images/admin/patroncirc/editcircfine.png
.. |image159| image:: images/admin/patroncirc/clonerules.png
.. |image160| image:: images/admin/patroncirc/rulescloned.png
.. |image161| image:: images/admin/patroncirc/defaultcheckholds.png
.. |image162| image:: images/admin/patroncirc/checkoutsperpatron.png
.. |image163| image:: images/admin/patroncirc/holdsperitem.png
.. |image164| image:: images/admin/patroncirc/attributes.png
.. |image165| image:: images/admin/patroncirc/addattribute.png
.. |image166| image:: images/admin/patroncirc/showattribute.png
.. |image167| image:: images/admin/patroncirc/pa_class.png
.. |image168| image:: images/admin/patroncirc/patronattribute.png
.. |image169| image:: images/admin/patroncirc/pa_class-patron.png
.. |image170| image:: images/admin/patroncirc/deletepatronattr.png
.. |image171| image:: images/admin/patroncirc/librarytransferselect.png
.. |image172| image:: images/admin/patroncirc/collectcodes.png
.. |image173| image:: images/admin/patroncirc/limittocollcode.png
.. |image174| image:: images/admin/patroncirc/transferlimits.png
.. |image175| image:: images/admin/patroncirc/transportcostmatrix.png
.. |image176| image:: images/admin/patroncirc/librariesforalert.png
.. |image177| image:: images/admin/patroncirc/alertmatrix.png
.. |image178| image:: images/admin/patroncirc/newcity.png
.. |image179| image:: images/admin/patroncirc/cities.png
.. |image180| image:: images/admin/patroncirc/patroncity.png
.. |image181| image:: images/admin/cataloging/frameworks.png
.. |image182| image:: images/admin/cataloging/frameworkoptions.png
.. |image183| image:: images/admin/cataloging/addframework.png
.. |image184| image:: images/admin/cataloging/startnewframework.png
.. |image185| image:: images/admin/cataloging/editframework.png
.. |image186| image:: images/admin/cataloging/newtag.png
.. |image187| image:: images/admin/cataloging/newtagform.png
.. |image188| image:: images/admin/cataloging/subfieldslink.png
.. |image189| image:: images/admin/cataloging/editfield.png
.. |image190| image:: images/admin/cataloging/editsubfield.png
.. |image191| image:: images/admin/cataloging/advancedoptsubfield.png
.. |image192| image:: images/admin/cataloging/frameworkvisibility.png
.. |image193| image:: images/admin/cataloging/otheroptssubfield.png
.. |image194| image:: images/admin/cataloging/504auth.png
.. |image195| image:: images/admin/cataloging/importexport.png
.. |image196| image:: images/admin/cataloging/exportoptions.png
.. |image197| image:: images/admin/cataloging/importexport.png
.. |image198| image:: images/admin/cataloging/importfile.png
.. |image199| image:: images/admin/cataloging/importconfirm.png
.. |image200| image:: images/admin/cataloging/importtimer.png
.. |image201| image:: images/admin/cataloging/kohamarcmapping.png
.. |image202| image:: images/admin/cataloging/mapmarc.png
.. |image203| image:: images/admin/cataloging/subtitlebookmapping.png
.. |image204| image:: images/admin/cataloging/subtitledvdmapping.png
.. |image205| image:: images/admin/cataloging/subtitlebookinopac.png
.. |image206| image:: images/admin/cataloging/frameworktest.png
.. |image207| image:: images/admin/cataloging/classsources.png
.. |image208| image:: images/admin/cataloging/addclasssource.png
.. |image209| image:: images/admin/cataloging/newmatchrule.png
.. |image210| image:: images/admin/cataloging/samplematchrule.png
.. |image211| image:: images/admin/cataloging/removematchcheck.png
.. |image212| image:: images/admin/acquisitions/currencies.png
.. |image213| image:: images/admin/acquisitions/nocurrency.png
.. |image214| image:: images/admin/acquisitions/budgetslist.png
.. |image215| image:: images/admin/acquisitions/newbudgetform.png
.. |image216| image:: images/admin/acquisitions/budgetslist.png
.. |image217| image:: images/admin/acquisitions/budgetslist.png
.. |image218| image:: images/admin/acquisitions/duplicatebudget.png
.. |image219| image:: images/admin/acquisitions/duplicatestartend.png
.. |image220| image:: images/admin/acquisitions/closereport.png
.. |image221| image:: images/admin/acquisitions/newfund.png
.. |image222| image:: images/admin/acquisitions/newfundform.png
.. |image223| image:: images/admin/acquisitions/restrictfund.png
.. |image224| image:: images/admin/acquisitions/fundlist.png
.. |image225| image:: images/admin/acquisitions/fundactions.png
.. |image226| image:: images/admin/acquisitions/childfunds.png
.. |image227| image:: images/admin/acquisitions/planningpulldown.png
.. |image228| image:: images/admin/acquisitions/planningbymonths.png
.. |image229| image:: images/admin/acquisitions/addplanningcol.png
.. |image230| image:: images/admin/acquisitions/autofill.png
.. |image231| image:: images/admin/acquisitions/planningcsv.png
.. |image232| image:: images/admin/additional/z39list.png
.. |image233| image:: images/admin/additional/newz39.png
.. |image234| image:: images/admin/additional/newsru.png
.. |image235| image:: images/admin/additional/didyoumean.png
.. |image236| image:: images/admin/additional/didyoumeandrag.png
.. |image237| image:: images/admin/additional/didyoumeanopacexplode.png
.. |image238| image:: images/admin/additional/didyoumeanopacauth.png
.. |image239| image:: images/admin/additional/columns.png
.. |image240| image:: images/admin/additional/setcurrencynohide.png
.. |image241| image:: images/admin/additional/currenciesnohide.png
.. |image242| image:: images/admin/additional/setcurrencyhide.png
.. |image243| image:: images/admin/additional/currencieshide.png
.. |image244| image:: images/admin/additional/togglecolumns.png
.. |image245| image:: images/tools/patronlists/patronlists.png
.. |image246| image:: images/tools/patronlists/newpatronlist.png
.. |image247| image:: images/tools/patronlists/addtopatronlist.png
.. |image248| image:: images/tools/patronlists/addpatrontolist.png
.. |image249| image:: images/tools/patronlists/patronstoadd.png
.. |image250| image:: images/tools/patronlists/patronlist.png
.. |image251| image:: images/tools/comments/commentswaiting.png
.. |image252| image:: images/tools/comments/commentmoderation.png
.. |image253| image:: images/tools/comments/nocomments.png
.. |image254| image:: images/tools/comments/commentapproved.png
.. |image255| image:: images/tools/importpatrons/importpatrons.png
.. |image256| image:: images/tools/importpatrons/patronmatch.png
.. |image257| image:: images/tools/importpatrons/patronmatching.png
.. |image258| image:: images/tools/notices/notices.png
.. |image259| image:: images/tools/notices/newnotice.png
.. |image260| image:: images/tools/triggers.png
.. |image261| image:: images/tools/patroncards/addlayout.png
.. |image262| image:: images/tools/patroncards/units.png
.. |image263| image:: images/tools/patroncards/managelayouts.png
.. |image264| image:: images/tools/patroncards/newtemplate.png
.. |image265| image:: images/tools/patroncards/edittemplate.png
.. |image266| image:: images/tools/patroncards/units.png
.. |image267| image:: images/tools/patroncards/managetemplates.png
.. |image268| image:: images/tools/patroncards/newprofile.png
.. |image269| image:: images/tools/patroncards/addprofile.png
.. |image270| image:: images/tools/patroncards/units.png
.. |image271| image:: images/tools/patroncards/manageprofiles.png
.. |image272| image:: images/tools/patroncards/newbatch.png
.. |image273| image:: images/tools/patroncards/cards.png
.. |image274| image:: images/tools/patroncards/imageupload.png
.. |image275| image:: images/tools/patroncards/imageuploaded.png
.. |image276| image:: images/tools/patroncards/imagedelete.png
.. |image277| image:: images/tools/anonymize/patronbulkdelete.png
.. |image278| image:: images/tools/anonymize/patronanonconfirm.png
.. |image279| image:: images/tools/anonymize/patronanoncomplete.png
.. |image280| image:: images/tools/batchpatron/batchmodify.png
.. |image281| image:: images/tools/batchpatron/modifyform.png
.. |image282| image:: images/tools/batchpatron/attributes.png
.. |image283| image:: images/tools/tagging/pendingtags.png
.. |image284| image:: images/tools/tagging/tagpending.png
.. |image285| image:: images/tools/tagging/tagsummary.png
.. |image286| image:: images/tools/tagging/tagapproved.png
.. |image287| image:: images/tools/tagging/tagblacklisttest-neither.png
.. |image288| image:: images/tools/tagging/tagfilters.png
.. |image289| image:: images/tools/patronphotos/uploadphotosfile.png
.. |image290| image:: images/tools/patronphotos/uploadimagetool.png
.. |image291| image:: images/tools/patronphotos/imageuploadconfirm.png
.. |image292| image:: images/tools/rotatingcollections/rotatingcollectionnotice.png
.. |image293| image:: images/tools/batchmod/batchmod.png
.. |image294| image:: images/tools/batchmod/batchmodsummary.png
.. |image295| image:: images/tools/batchmod/batchmodform.png
.. |image296| image:: images/tools/batchmod/batchmodresults.png
.. |image297| image:: images/tools/batchmod/editinbatch.png
.. |image298| image:: images/tools/batchdelete/batchdel.png
.. |image299| image:: images/tools/batchdelete/confirmbatchdel.png
.. |image300| image:: images/tools/batchdelete/toomanytodelete.png
.. |image301| image:: images/tools/batchdelete/nobatchdel.png
.. |image302| image:: images/tools/batchdelete/batchdeldone.png
.. |image303| image:: images/tools/batchbibmod/batchbibmod.png
.. |image304| image:: images/tools/autoitemmodage/savedrule.png
.. |image305| image:: images/tools/autoitemmodage/addeditrules.png
.. |image306| image:: images/tools/autoitemmodage/ruleform.png
.. |image307| image:: images/tools/autoitemmodage/savedrule.png
.. |image308| image:: images/tools/exportmarc/marcexport-pt1.png
.. |image309| image:: images/tools/exportmarc/fileexport.png
.. |image310| image:: images/tools/exportmarc/marcexport-pt2.png
.. |image311| image:: images/tools/exportmarc/marcexport-pt3.png
.. |image312| image:: images/tools/exportmarc/authexport-pt1.png
.. |image313| image:: images/tools/exportmarc/authexport-pt2.png
.. |image314| image:: images/tools/exportmarc/authexport-pt3.png
.. |image315| image:: images/tools/inventory/generateshelflist.png
.. |image316| image:: images/tools/inventory/shelflist.png
.. |image317| image:: images/tools/inventory/importbarcodes.png
.. |image318| image:: images/tools/labelcreator/newtemplate.png
.. |image319| image:: images/tools/labelcreator/labelform.png
.. |image320| image:: images/tools/patroncards/units.png
.. |image321| image:: images/tools/labelcreator/labeltemplates.png
.. |image322| image:: images/tools/labelcreator/newprofile.png
.. |image323| image:: images/tools/labelcreator/newprofileform.png
.. |image324| image:: images/tools/patroncards/units.png
.. |image325| image:: images/tools/labelcreator/profiles.png
.. |image326| image:: images/tools/labelcreator/newlayout.png
.. |image327| image:: images/tools/labelcreator/layoutform.png
.. |image328| image:: images/tools/labelcreator/listlabelfields.png
.. |image329| image:: images/tools/labelcreator/labelfromstaged.png
.. |image330| image:: images/tools/labelcreator/newbatch.png
.. |image331| image:: images/tools/labelcreator/addbatchitems.png
.. |image332| image:: images/tools/labelcreator/searchforbatch.png
.. |image333| image:: images/tools/labelcreator/batchsearchresults.png
.. |image334| image:: images/tools/labelcreator/itemsinbarch.png
.. |image335| image:: images/tools/labelcreator/exportbatch.png
.. |image336| image:: images/tools/labelcreator/savebatch.png
.. |image337| image:: images/tools/quickspinelable.png
.. |image338| image:: images/tools/marcmodtemplates/addtemplate.png
.. |image339| image:: images/tools/marcmodtemplates/ifexample.png
.. |image340| image:: images/tools/marcmodtemplates/regexexample.png
.. |image341| image:: images/tools/marcmodtemplates/viewactions.png
.. |image342| image:: images/tools/marcmodtemplates/duplicate.png
.. |image343| image:: images/tools/marcmodtemplates/templatechoice.png
.. |image344| image:: images/tools/marcimport/stagemarc-pt1.png
.. |image345| image:: images/tools/marcimport/stagemarc-pt2.png
.. |image346| image:: images/tools/marcimport/recordtype.png
.. |image347| image:: images/tools/marcimport/encoding.png
.. |image348| image:: images/tools/marcimport/templatechoice.png
.. |image349| image:: images/tools/marcimport/matches.png
.. |image350| image:: images/tools/marcimport/matchrule.png
.. |image351| image:: images/tools/marcimport/checkitems.png
.. |image352| image:: images/tools/marcimport/stagemarc-results.png
.. |image353| image:: images/tools/marcimport/managestaged.png
.. |image354| image:: images/tools/marcimport/managestagedrecords.png
.. |image355| image:: images/tools/marcimport/importframework.png
.. |image356| image:: images/tools/marcimport/stagedrecords.png
.. |image357| image:: images/tools/marcimport/matchfound.png
.. |image358| image:: images/tools/marcimport/stagediff.png
.. |image359| image:: images/tools/marcimport/importedrecords.png
.. |image360| image:: images/tools/marcimport/reservoirresults.png
.. |image361| image:: images/tools/marcimport/managestaged.png
.. |image362| image:: images/tools/marcimport/cleanbatch.png
.. |image363| image:: images/tools/uploadlocalimg/uploadsingle.png
.. |image364| image:: images/tools/uploadlocalimg/bibnumurl.png
.. |image365| image:: images/tools/uploadlocalimg/bibnummarc.png
.. |image366| image:: images/tools/uploadlocalimg/zipfiles.png
.. |image367| image:: images/tools/uploadlocalimg/uploadsummary.png
.. |image368| image:: images/admin/globalprefs/AllowMultipleCovers.png
.. |image369| image:: images/tools/calendar/calendar.png
.. |image370| image:: images/tools/calendar/calendaradd.png
.. |image371| image:: images/tools/calendar/copyholidays.png
.. |image372| image:: images/tools/calendar/calendarsummary.png
.. |image373| image:: images/tools/calendar/calendaredit.png
.. |image374| image:: images/tools/calendar/calendarexception.png
.. |image375| image:: images/tools/calendar/calendarhelp.png
.. |image376| image:: images/tools/csvprofiles/addcsv.png
.. |image377| image:: images/tools/csvprofiles/addcsv-sql.png
.. |image378| image:: images/tools/csvprofiles/downloadcsv.png
.. |image379| image:: images/tools/csvprofiles/csvfieldsep.png
.. |image380| image:: images/tools/csvprofiles/csvadded.png
.. |image381| image:: images/tools/csvprofiles/modifycsv.png
.. |image382| image:: images/tools/csvprofiles/csvmodified.png
.. |image383| image:: images/tools/csvprofiles/deletecsv.png
.. |image384| image:: images/tools/csvprofiles/exportlist.png
.. |image385| image:: images/tools/logs/logviewer.png
.. |image386| image:: images/tools/logs/logresults.png
.. |image387| image:: images/tools/news/news.png
.. |image388| image:: images/tools/news/addnews.png
.. |image389| image:: images/tools/news/opacnews.png
.. |image390| image:: images/tools/news/librariannews.png
.. |image391| image:: images/tools/news/slipnews.png
.. |image392| image:: images/tools/tasksched/taskscheduler.png
.. |image393| image:: images/tools/tasksched/scheduledreports.png
.. |image394| image:: images/tools/tasksched/savedreports.png
.. |image395| image:: images/tools/qotd/quoteinopac.png
.. |image396| image:: images/tools/qotd/quotebuttons.png
.. |image397| image:: images/tools/qotd/addquote.png
.. |image398| image:: images/tools/qotd/editquote.png
.. |image399| image:: images/tools/qotd/quotebuttons.png
.. |image400| image:: images/tools/qotd/importquotes.png
.. |image401| image:: images/tools/qotd/importedsummary.png
.. |image402| image:: images/tools/qotd/editimported.png
.. |image403| image:: images/tools/qotd/selectfordelete.png
.. |image404| image:: images/tools/qotd/importquotebuttons.png
.. |image405| image:: images/tools/qotd/confirmdelete.png
.. |image406| image:: images/tools/qotd/importquotebuttons.png
.. |image407| image:: images/patrons/newpatron.png
.. |image408| image:: images/patrons/addpatronform.png
.. |image409| image:: images/patrons/addcontact.png
.. |image410| image:: images/patrons/addGuarantor.png
.. |image411| image:: images/patrons/addOrg.png
.. |image412| image:: images/patrons/addaltcontact.png
.. |image413| image:: images/patrons/addlibmanagement.png
.. |image414| image:: images/patrons/addlibsetup.png
.. |image415| image:: images/patrons/circnote.png
.. |image416| image:: images/patrons/addattributes.png
.. |image417| image:: images/patrons/addpatronmsg.png
.. |image418| image:: images/patrons/duplicatewarn.png
.. |image419| image:: images/patrons/patronagelimit.png
.. |image420| image:: images/patrons/statspatcat.png
.. |image421| image:: images/patrons/newinhouse.png
.. |image422| image:: images/patrons/patronedit.png
.. |image423| image:: images/patrons/duplicatedpatron.png
.. |image424| image:: images/patrons/duplicatedpatronfinal.png
.. |image425| image:: images/patrons/addpatronimage.png
.. |image426| image:: images/patrons/patronimage.png
.. |image427| image:: images/patrons/patronedit.png
.. |image428| image:: images/patrons/patronpassword.png
.. |image429| image:: images/patrons/patroneditsection.png
.. |image430| image:: images/patrons/patronaddimage.png
.. |image431| image:: images/patrons/patronflags.png
.. |image432| image:: images/patrons/patronaddress.png
.. |image433| image:: images/patrons/patroncardlost.png
.. |image434| image:: images/patrons/addpatronrestriction.png
.. |image435| image:: images/patrons/restricteduntil.png
.. |image436| image:: images/patrons/updatetoadult.png
.. |image437| image:: images/patrons/choosadulttype.png
.. |image438| image:: images/patrons/pendingpatronrequest.png
.. |image439| image:: images/patrons/managepatronupdates.png
.. |image440| image:: images/patrons/editpatronpermissions.png
.. |image441| image:: images/patrons/GranularPermissions.png
.. |image442| image:: images/patrons/myaccount.png
.. |image443| image:: images/patrons/child.png
.. |image444| image:: images/patrons/parent.png
.. |image445| image:: images/patrons/checkoutsummary.png
.. |image446| image:: images/patrons/relativecheckouts.png
.. |image447| image:: images/patrons/patronrestrictions-none.png
.. |image448| image:: images/patrons/patronrestrictions.png
.. |image449| image:: images/patrons/addrestriction.png
.. |image450| image:: images/patrons/patronaccount.png
.. |image451| image:: images/patrons/makepayment.png
.. |image452| image:: images/patrons/payfine.png
.. |image453| image:: images/patrons/paypartial.png
.. |image454| image:: images/patrons/payamount.png
.. |image455| image:: images/patrons/payselected-select.png
.. |image456| image:: images/patrons/payselected.png
.. |image457| image:: images/patrons/reverselink.png
.. |image458| image:: images/patrons/reversed.png
.. |image459| image:: images/patrons/manualinvoice.png
.. |image460| image:: images/patrons/manualcredit.png
.. |image461| image:: images/patrons/patroninvoice.png
.. |image462| image:: images/patrons/routinglisttab.png
.. |image463| image:: images/patrons/patronroutinglists.png
.. |image464| image:: images/patrons/readinghistory.png
.. |image465| image:: images/patrons/readinghistory-export.png
.. |image466| image:: images/patrons/borrowerlog.png
.. |image467| image:: images/patrons/patnoticestab.png
.. |image468| image:: images/patrons/patnoticestab-full.png
.. |image469| image:: images/patrons/resendnotice.png
.. |image470| image:: images/patrons/patronstats.png
.. |image471| image:: images/patrons/patronfilestab.png
.. |image472| image:: images/patrons/nopatronfiles.png
.. |image473| image:: images/patrons/patronfileslist.png
.. |image474| image:: images/patrons/generatedischarge.png
.. |image475| image:: images/patrons/cantdischarge.png
.. |image476| image:: images/patrons/dischargeletter.png
.. |image477| image:: images/patrons/patronsearch.png
.. |image478| image:: images/patrons/patronsearchexpand.png
.. |image479| image:: images/patrons/patronfieldsearch.png
.. |image480| image:: images/patrons/patronsearchcontains.png
.. |image481| image:: images/patrons/patronbrowse.png
.. |image482| image:: images/circ/checkoutmain.png
.. |image483| image:: images/circ/checkoutpatron.png
.. |image484| image:: images/circ/circquickbox.png
.. |image485| image:: images/circ/checkingout-noshow.png
.. |image486| image:: images/circ/checkingout.png
.. |image487| image:: images/circ/checkoutsummary.png
.. |image488| image:: images/circ/onsitecheckout.png
.. |image489| image:: images/circ/exportcheckouts.png
.. |image490| image:: images/circ/holdssummary.png
.. |image491| image:: images/circ/patronnotes.png
.. |image492| image:: images/circ/holdwaiting.png
.. |image493| image:: images/circ/circonholdings.png
.. |image494| image:: images/circ/printslip.png
.. |image495| image:: images/admin/globalprefs/DisplayClearScreenButton.png
.. |image496| image:: images/circ/batchcheckoutwarn.png
.. |image497| image:: images/circ/batchlocaluse.png
.. |image498| image:: images/circ/materialspecified.png
.. |image499| image:: images/circ/fineswarning.png
.. |image500| image:: images/circ/debarwarning.png
.. |image501| image:: images/circ/overridetemporarily.png
.. |image502| image:: images/circ/addresswarning.png
.. |image503| image:: images/circ/lostcardwarning.png
.. |image504| image:: images/circ/warnings/patrondebt.png
.. |image505| image:: images/circ/warnings/onhold.png
.. |image506| image:: images/circ/warnings/holdwaiting.png
.. |image507| image:: images/circ/warnings/alreadycheckedout.png
.. |image508| image:: images/circ/warnings/checkedoutelse.png
.. |image509| image:: images/circ/warnings/notforloan.png
.. |image510| image:: images/circ/warnings/toomanycheckouts.png
.. |image511| image:: images/circ/warnings/toomanycheckouts-no.png
.. |image512| image:: images/circ/warnings/norenewals.png
.. |image513| image:: images/circ/barcodefastadd.png
.. |image514| image:: images/circ/lostitemmsg.png
.. |image515| image:: images/circ/lostitemconfirm.png
.. |image516| image:: images/circ/warnings/agewarning.png
.. |image517| image:: images/circ/warnings/decreaseLoanHighHoldsDuration.png
.. |image518| image:: images/circ/circsummary.png
.. |image519| image:: images/circ/renewbutton.png
.. |image520| image:: images/circ/overriderenew.png
.. |image521| image:: images/circ/renewcirc.png
.. |image522| image:: images/circ/renewbarcode.png
.. |image523| image:: images/circ/renewed.png
.. |image524| image:: images/circ/renewnomatch.png
.. |image525| image:: images/circ/renewnotchecked.png
.. |image526| image:: images/circ/checkinmain.png
.. |image527| image:: images/circ/checkinquickbox.png
.. |image528| image:: images/circ/checkinlink.png
.. |image529| image:: images/circ/checkincirc.png
.. |image530| image:: images/circ/checkin.png
.. |image531| image:: images/circ/checkintransfer.png
.. |image532| image:: images/circ/transferstatus.png
.. |image533| image:: images/circ/transfercheckin.png
.. |image534| image:: images/circ/materialspecified.png
.. |image535| image:: images/circ/holdfound.png
.. |image536| image:: images/circ/waitingstatus.png
.. |image537| image:: images/circ/holdconfirmtransfer.png
.. |image538| image:: images/circ/intransithold.png
.. |image539| image:: images/admin/globalprefs/FineNotifyAtCheckin.png
.. |image540| image:: images/circ/bor_notes.png
.. |image541| image:: images/circ/staffmessages.png
.. |image542| image:: images/circ/leavecircmsg.png
.. |image543| image:: images/circ/staffmessages.png
.. |image544| image:: images/circ/opacmsg.png
.. |image545| image:: images/circ/placeholdbib.png
.. |image546| image:: images/circ/placeholdsearch.png
.. |image547| image:: images/circ/placeholdfindpatron.png
.. |image548| image:: images/circ/searchtohold.png
.. |image549| image:: images/circ/holdresults.png
.. |image550| image:: images/circ/holdmultiresults.png
.. |image551| image:: images/circ/placeholdsingle.png
.. |image552| image:: images/circ/placeholdmultiple.png
.. |image553| image:: images/circ/forgethold.png
.. |image554| image:: images/circ/holdtab.png
.. |image555| image:: images/circ/holdslist.png
.. |image556| image:: images/circ/holdpriority.png
.. |image557| image:: images/circ/lowestpriority.png
.. |image558| image:: images/circ/suspendholds.png
.. |image559| image:: images/circ/cancelholds.png
.. |image560| image:: images/circ/holdconfirmtransfer.png
.. |image561| image:: images/circ/holdconfirm.png
.. |image562| image:: images/circ/holdpatronrec.png
.. |image563| image:: images/circ/holditem.png
.. |image564| image:: images/circ/holdwaitingwarn.png
.. |image565| image:: images/circ/transfer.png
.. |image566| image:: images/circ/itemtransferred.png
.. |image567| image:: images/circ/itemintransit.png
.. |image568| image:: images/circ/itemlocations.png
.. |image569| image:: images/circ/mylibrary.png
.. |image570| image:: images/circ/setlibrary.png
.. |image571| image:: images/circ/circmenu.png
.. |image572| image:: images/circ/fastadd.png
.. |image573| image:: images/circ/barcodefastadd.png
.. |image574| image:: images/circ/fastaddbarcode.png
.. |image575| image:: images/circ/fastadditem.png
.. |image576| image:: images/circ/fastaddcheckedout.png
.. |image577| image:: images/circ/holdsqueue.png
.. |image578| image:: images/circ/holdstopull.png
.. |image579| image:: images/circ/refineholdstopull.png
.. |image580| image:: images/circ/holdspickup.png
.. |image581| image:: images/circ/holdspickupover.png
.. |image582| image:: images/circ/holdratio.png
.. |image583| image:: images/circ/transitreceive.png
.. |image584| image:: images/circ/transferlate.png
.. |image585| image:: images/circ/overdues.png
.. |image586| image:: images/circ/overduewfines.png
.. |image587| image:: images/circ/checkoutinhouse.png
.. |image588| image:: images/circ/localuserecorded.png
.. |image589| image:: images/circ/localusecheckin.png
.. |image590| image:: images/circ/LOCvalues.png
.. |image591| image:: images/circ/selfcheckoutlink.png
.. |image592| image:: images/circ/selfcheckout.png
.. |image593| image:: images/circ/SelfCheckoutByLogin.png
.. |image594| image:: images/circ/selfcheckoutuser.png
.. |image595| image:: images/circ/selfcheckoutsummary.png
.. |image596| image:: images/circ/selfreceiptprint.png
.. |image597| image:: images/circ/selfcheckoutfines.png
.. |image598| image:: images/circ/offlinecirc.png
.. |image599| image:: images/circ/syncoffline.png
.. |image600| image:: images/circ/downloadoffline.png
.. |image601| image:: images/circ/offlinecheckout.png
.. |image602| image:: images/circ/offlineduedate.png
.. |image603| image:: images/circ/offlinecheckouts.png
.. |image604| image:: images/circ/offlineupload.png
.. |image605| image:: images/circ/viewkohaoffline.png
.. |image606| image:: images/circ/offlinecirclog.png
.. |image607| image:: images/circ/offlinecircsuccess.png
.. |image608| image:: images/circ/koctstatusbar.png
.. |image609| image:: images/circ/koct.png
.. |image610| image:: images/circ/koctwarn.png
.. |image611| image:: images/circ/koctparam.png
.. |image612| image:: images/circ/koct.png
.. |image613| image:: images/circ/koctcheckin.png
.. |image614| image:: images/circ/koctcount.png
.. |image615| image:: images/circ/koctlog.png
.. |image616| image:: images/circ/offlinecirclink.png
.. |image617| image:: images/circ/offlinecirclog.png
.. |image618| image:: images/circ/offlinecircsuccess.png
.. |image619| image:: images/circ/koctdirectly.png
.. |image620| image:: images/circ/koctwarn.png
.. |image621| image:: images/circ/offlinecirclink.png
.. |image622| image:: images/circ/uploadofflinecirc.png
.. |image623| image:: images/circ/processoffline.png
.. |image624| image:: images/circ/offlinesummary.png
.. |image625| image:: images/circ/offlinecirclog.png
.. |image626| image:: images/circ/offlinecircsuccess.png
.. |image627| image:: images/cataloging/newfromframework.png
.. |image628| image:: images/cataloging/zsearch.png
.. |image629| image:: images/cataloging/zsearchresults.png
.. |image630| image:: images/cataloging/importz39.png
.. |image631| image:: images/cataloging/tryanotherzsearch.png
.. |image632| image:: images/cataloging/addmarc.png
.. |image633| image:: images/cataloging/lockedauthority.png
.. |image634| image:: images/cataloging/catauthoritysearch.png
.. |image635| image:: images/cataloging/catauthoritysearchresults.png
.. |image636| image:: images/cataloging/dupfield.png
.. |image637| image:: images/cataloging/clonesubfield.png
.. |image638| image:: images/cataloging/leaderbuilder.png
.. |image639| image:: images/cataloging/008plugin.png
.. |image640| image:: images/cataloging/savecataloging.png
.. |image641| image:: images/cataloging/duprecordwarn.png
.. |image642| image:: images/cataloging/advancedzresults.png
.. |image643| image:: images/cataloging/advancedzviewmarc.png
.. |image644| image:: images/cataloging/advancedcataloging.png
.. |image645| image:: images/cataloging/advancedkeyshort.png
.. |image646| image:: images/cataloging/analyticslink.png
.. |image647| image:: images/cataloging/analyticsbarcode.png
.. |image648| image:: images/cataloging/analyticlinksuccess.png
.. |image649| image:: images/cataloging/analytics773.png
.. |image650| image:: images/cataloging/analyticstab.png
.. |image651| image:: images/cataloging/anayticbib.png
.. |image652| image:: images/cataloging/hostrecords.png
.. |image653| image:: images/cataloging/analyticschildlink.png
.. |image654| image:: images/cataloging/analytics773child.png
.. |image655| image:: images/cataloging/analyticstab.png
.. |image656| image:: images/cataloging/anayticbib.png
.. |image657| image:: images/cataloging/hostrecords.png
.. |image658| image:: images/cataloging/analyticdelink.png
.. |image659| image:: images/cataloging/catalogsearch.png
.. |image660| image:: images/cataloging/editrecord.png
.. |image661| image:: images/cataloging/editingrecord.png
.. |image662| image:: images/cataloging/replaceviaz39.png
.. |image663| image:: images/cataloging/uploadimage.png
.. |image664| image:: images/cataloging/createduplicate.png
.. |image665| image:: images/cataloging/newduprecord.png
.. |image666| image:: images/lists/mergeprimary.png
.. |image667| image:: images/lists/mergerecs.png
.. |image668| image:: images/lists/nondupfield.png
.. |image669| image:: images/lists/mergereportvalues.png
.. |image670| image:: images/lists/mergeblankreport.png
.. |image671| image:: images/lists/mergereport.png
.. |image672| image:: images/cataloging/deleterecord.png
.. |image673| image:: images/cataloging/nodeleterecord.png
.. |image674| image:: images/cataloging/catalogsearch.png
.. |image675| image:: images/cataloging/newitem.png
.. |image676| image:: images/cataloging/additem.png
.. |image677| image:: images/cataloging/requireditemfields.png
.. |image678| image:: images/cataloging/additembuttons.png
.. |image679| image:: images/cataloging/items.png
.. |image680| image:: images/cataloging/items-withoutlabelprint.png
.. |image681| image:: images/cataloging/items-withlabelprint.png
.. |image682| image:: images/cataloging/items-activatefilters.png
.. |image683| image:: images/cataloging/edititem.png
.. |image684| image:: images/cataloging/edititemlink.png
.. |image685| image:: images/cataloging/itemstab.png
.. |image686| image:: images/cataloging/edititemlinkfromtab.png
.. |image687| image:: images/cataloging/editinbatch.png
.. |image688| image:: images/cataloging/editwithitemchecks.png
.. |image689| image:: images/cataloging/quickitemedit.png
.. |image690| image:: images/cataloging/editloststatus.png
.. |image691| image:: images/cataloging/editdamagedstatus.png
.. |image692| image:: images/cataloging/edititemlink.png
.. |image693| image:: images/cataloging/quickitemedit.png
.. |image694| image:: images/cataloging/itemorderinfo.png
.. |image695| image:: images/cataloging/attachitem.png
.. |image696| image:: images/cataloging/attachitemform.png
.. |image697| image:: images/cataloging/edititemstodelete.png
.. |image698| image:: images/cataloging/deleteitemlink.png
.. |image699| image:: images/cataloging/editwithitemchecks.png
.. |image700| image:: images/cataloging/itemstab-long.png
.. |image701| image:: images/cataloging/itemspecifichistory.png
.. |image702| image:: images/cataloging/newauthtypes.png
.. |image703| image:: images/cataloging/newauthrec.png
.. |image704| image:: images/cataloging/creatnewauthfromlink.png
.. |image705| image:: images/cataloging/authrelationships.png
.. |image706| image:: images/cataloging/authzsearch.png
.. |image707| image:: images/cataloging/authimport.png
.. |image708| image:: images/cataloging/authorityimported.png
.. |image709| image:: images/cataloging/authoritysearch.png
.. |image710| image:: images/cataloging/authorityresults.png
.. |image711| image:: images/cataloging/authrecord.png
.. |image712| image:: images/cataloging/authoritiesseealso.png
.. |image713| image:: images/cataloging/editauthority.png
.. |image714| image:: images/cataloging/dupauth.png
.. |image715| image:: images/cataloging/authmergesearch.png
.. |image716| image:: images/cataloging/authmergechoice.png
.. |image717| image:: images/cataloging/authmerging.png
.. |image718| image:: images/cataloging/authmerged.png
.. |image719| image:: images/appendix-onorder/marcbreaker.png
.. |image720| image:: images/appendix-onorder/marcbreaker-summary.png
.. |image721| image:: images/appendix-onorder/editrecords.png
.. |image722| image:: images/appendix-onorder/addfield.png
.. |image723| image:: images/appendix-onorder/add942.png
.. |image724| image:: images/appendix-onorder/add952.png
.. |image725| image:: images/appendix-onorder/compile.png
.. |image726| image:: images/coursereserves/coursesblank.png
.. |image727| image:: images/coursereserves/newcourse.png
.. |image728| image:: images/coursereserves/instructorsearch.png
.. |image729| image:: images/coursereserves/instructorremove.png
.. |image730| image:: images/coursereserves/courses.png
.. |image731| image:: images/coursereserves/courses.png
.. |image732| image:: images/coursereserves/courseadmin.png
.. |image733| image:: images/coursereserves/addbarcode.png
.. |image734| image:: images/coursereserves/coursewithreserves.png
.. |image735| image:: images/coursereserves/courselinkopac.png
.. |image736| image:: images/coursereserves/coursesopac.png
.. |image737| image:: images/coursereserves/courseopac.png
.. |image738| image:: images/serials/frequencies.png
.. |image739| image:: images/serials/newfrequency.png
.. |image740| image:: images/serials/numpatterns.png
.. |image741| image:: images/serials/newnumpattern.png
.. |image742| image:: images/serials/newsubfrombib.png
.. |image743| image:: images/serials/newsubbutton.png
.. |image744| image:: images/serials/addsub.png
.. |image745| image:: images/serials/vendorwarning.png
.. |image746| image:: images/serials/newasdup.png
.. |image747| image:: images/serials/addsub2.png
.. |image748| image:: images/serials/advancedpattern.png
.. |image749| image:: images/serials/predictionpattern.png
.. |image750| image:: images/serials/subsearch.png
.. |image751| image:: images/serials/subbuttons.png
.. |image752| image:: images/serials/serialcolllink.png
.. |image753| image:: images/serials/editissue.png
.. |image754| image:: images/serials/receiveissue.png
.. |image755| image:: images/serials/serialitem.png
.. |image756| image:: images/serials/editissue.png
.. |image757| image:: images/serials/createroutinglink.png
.. |image758| image:: images/serials/createroutinglist.png
.. |image759| image:: images/serials/addtorouting.png
.. |image760| image:: images/serials/editroutinglist.png
.. |image761| image:: images/serials/previewroutinglist.png
.. |image762| image:: images/serials/subinfoonbib.png
.. |image763| image:: images/serials/subscriptiondetail.png
.. |image764| image:: images/acquisitions/subdetails.png
.. |image765| image:: images/serials/subopac.png
.. |image766| image:: images/serials/compactopac.png
.. |image767| image:: images/serials/opacroutingsubscribe.png
.. |image768| image:: images/serials/fullopac.png
.. |image769| image:: images/serials/serialclaimmenu.png
.. |image770| image:: images/serials/serialclaimmenu1.png
.. |image771| image:: images/serials/noserialclaim.png
.. |image772| image:: images/serials/serialclaims.png
.. |image773| image:: images/serials/serialexpiresearch.png
.. |image774| image:: images/serials/serialexpire.png
.. |image775| image:: images/serials/renewsubscription.png
.. |image776| image:: images/serials/collectionrenew.png
.. |image777| image:: images/serials/serialrenew.png
.. |image778| image:: images/serials/serialsearch.png
.. |image779| image:: images/serials/advanceserialsearch.png
.. |image780| image:: images/serials/serialsearchresults.png
.. |image781| image:: images/acquisitions/acqfunds.png
.. |image782| image:: images/acquisitions/fundbreakdown.png
.. |image783| image:: images/acquisitions/newvendbutton.png
.. |image784| image:: images/acquisitions/newvendor1.png
.. |image785| image:: images/acquisitions/newvendor2.png
.. |image786| image:: images/acquisitions/newvendor3.png
.. |image787| image:: images/acquisitions/vendorsearch.png
.. |image788| image:: images/acquisitions/vendorpage.png
.. |image789| image:: images/acquisitions/receivebutton.png
.. |image790| image:: images/acquisitions/newcontract.png
.. |image791| image:: images/acquisitions/newcontractform.png
.. |image792| image:: images/acquisitions/contractdisplay.png
.. |image793| image:: images/acquisitions/contractonbasket.png
.. |image794| image:: images/acquisitions/suggestonacq.png
.. |image795| image:: images/acquisitions/pendingsuggestions.png
.. |image796| image:: images/acquisitions/suggestmanage.png
.. |image797| image:: images/acquisitions/suggestionsfilters.png
.. |image798| image:: images/acquisitions/suggestbranchfilter.png
.. |image799| image:: images/acquisitions/suggestpending.png
.. |image800| image:: images/acquisitions/suggestiondetails.png
.. |image801| image:: images/acquisitions/editsuggestion.png
.. |image802| image:: images/acquisitions/suggestreasons.png
.. |image803| image:: images/acquisitions/suggestothers.png
.. |image804| image:: images/acquisitions/mysuggestions.png
.. |image805| image:: images/acquisitions/addbasketbutton.png
.. |image806| image:: images/acquisitions/addbasket.png
.. |image807| image:: images/acquisitions/basketwithcontracts.png
.. |image808| image:: images/acquisitions/basket.png
.. |image809| image:: images/acquisitions/orderfromexisting.png
.. |image810| image:: images/acquisitions/existingitemorder.png
.. |image811| image:: images/acquisitions/orderfromsuggest.png
.. |image812| image:: images/acquisitions/orderfromsuggestform.png
.. |image813| image:: images/acquisitions/ordersuggestlink.png
.. |image814| image:: images/acquisitions/subordersearch.png
.. |image815| image:: images/acquisitions/suborderresults.png
.. |image816| image:: images/acquisitions/suborder.png
.. |image817| image:: images/acquisitions/fromnewemptyrecord.png
.. |image818| image:: images/acquisitions/orderz39.png
.. |image819| image:: images/acquisitions/orderz39results.png
.. |image820| image:: images/acquisitions/dupwarning.png
.. |image821| image:: images/acquisitions/orderz39form.png
.. |image822| image:: images/acquisitions/stagedfiles.png
.. |image823| image:: images/acquisitions/itemonorder.png
.. |image824| image:: images/acquisitions/itemonorderadded.png
.. |image825| image:: images/acquisitions/accounting.png
.. |image826| image:: images/acquisitions/fundconfirmation.png
.. |image827| image:: images/acquisitions/finalbasket.png
.. |image828| image:: images/acquisitions/showalldetails.png
.. |image829| image:: images/acquisitions/cantdeleteorderline.png
.. |image830| image:: images/acquisitions/basketbuttons.png
.. |image831| image:: images/acquisitions/BasketConfirmations.png
.. |image832| image:: images/acquisitions/basketgroup.png
.. |image833| image:: images/acquisitions/basketuncertain.png
.. |image834| image:: images/acquisitions/uncertainprices.png
.. |image835| image:: images/acquisitions/closebasket.png
.. |image836| image:: images/acquisitions/createpurchaseorder.png
.. |image837| image:: images/acquisitions/basketgroup.png
.. |image838| image:: images/acquisitions/pdforder.png
.. |image839| image:: images/acquisitions/receivebutton.png
.. |image840| image:: images/acquisitions/receivefromsearch.png
.. |image841| image:: images/acquisitions/receive.png
.. |image842| image:: images/acquisitions/receiptsummary.png
.. |image843| image:: images/acquisitions/receiveitem.png
.. |image844| image:: images/acquisitions/receiveditem.png
.. |image845| image:: images/acquisitions/received.png
.. |image846| image:: images/acquisitions/transfersearch.png
.. |image847| image:: images/acquisitions/transfervendor.png
.. |image848| image:: images/acquisitions/transferbasket.png
.. |image849| image:: images/acquisitions/transferconfirm.png
.. |image850| image:: images/acquisitions/basketwithreceived.png
.. |image851| image:: images/acquisitions/invoicesearch.png
.. |image852| image:: images/acquisitions/invoices.png
.. |image853| image:: images/acquisitions/invoice.png
.. |image854| image:: images/acquisitions/noinvoicefiles.png
.. |image855| image:: images/acquisitions/invoicefiles.png
.. |image856| image:: images/acquisitions/mergeinvoices.png
.. |image857| image:: images/acquisitions/acqclaimfilter.png
.. |image858| image:: images/acquisitions/lateorders.png
.. |image859| image:: images/acquisitions/claimletter.png
.. |image860| image:: images/acquisitions/acqsearches.png
.. |image861| image:: images/acquisitions/vendorquicksearch.png
.. |image862| image:: images/acquisitions/ordersearch.png
.. |image863| image:: images/acquisitions/ordersearchresults.png
.. |image864| image:: images/acquisitions/ordersearchexpand.png
.. |image865| image:: images/acquisitions/ordersearchfull.png
.. |image866| image:: images/acquisitions/acqfunds.png
.. |image867| image:: images/acquisitions/spent.png
.. |image868| image:: images/lists/newlistbutton.png
.. |image869| image:: images/lists/newlistform.png
.. |image870| image:: images/lists/newlistsearch.png
.. |image871| image:: images/lists/newlistfromsearch.png
.. |image872| image:: images/lists/listslist.png
.. |image873| image:: images/lists/listcontents.png
.. |image874| image:: images/lists/addtolist.png
.. |image875| image:: images/lists/listslist.png
.. |image876| image:: images/lists/listcontents.png
.. |image877| image:: images/lists/listofdups.png
.. |image878| image:: images/lists/addtocart.png
.. |image879| image:: images/lists/itemsaddedcart.png
.. |image880| image:: images/lists/cart.png
.. |image881| image:: images/reports/report1.png
.. |image882| image:: images/reports/report2.png
.. |image883| image:: images/reports/report3.png
.. |image884| image:: images/reports/report4.png
.. |image885| image:: images/reports/report5.png
.. |image886| image:: images/reports/report6.png
.. |image887| image:: images/reports/reportconfirm.png
.. |image888| image:: images/reports/reportsave.png
.. |image889| image:: images/reports/savedreports.png
.. |image890| image:: images/reports/newsql.png
.. |image891| image:: images/reports/reportfromsql.png
.. |image892| image:: images/reports/reportsubgroup.png
.. |image893| image:: images/reports/datepicker.png
.. |image894| image:: images/reports/branchpulldown.png
.. |image895| image:: images/reports/duplicatereport.png
.. |image896| image:: images/reports/savedreports.png
.. |image897| image:: images/reports/editreportoption.png
.. |image898| image:: images/reports/editreport.png
.. |image899| image:: images/reports/runreport.png
.. |image900| image:: images/reports/reportparameters.png
.. |image901| image:: images/reports/reportresults.png
.. |image902| image:: images/reports/acqform.png
.. |image903| image:: images/reports/acqnumbers.png
.. |image904| image:: images/reports/acqtotal.png
.. |image905| image:: images/reports/acqamounts.png
.. |image906| image:: images/reports/patronform.png
.. |image907| image:: images/reports/patronresults.png
.. |image908| image:: images/reports/catalogform.png
.. |image909| image:: images/reports/catalogresults.png
.. |image910| image:: images/reports/circform.png
.. |image911| image:: images/reports/circresults.png
.. |image912| image:: images/reports/inhouse.png
.. |image913| image:: images/reports/serialsform.png
.. |image914| image:: images/reports/serialsresults.png
.. |image915| image:: images/reports/holdstatsform.png
.. |image916| image:: images/reports/holdstatsresults.png
.. |image917| image:: images/reports/topcheckoutsform.png
.. |image918| image:: images/reports/topcheckoutsresult.png
.. |image919| image:: images/reports/topcircform.png
.. |image920| image:: images/reports/topcircresults.png
.. |image921| image:: images/reports/patnocheckout.png
.. |image922| image:: images/reports/patnocheckout-results.png
.. |image923| image:: images/reports/nocheckoutsform.png
.. |image924| image:: images/reports/nocheckoutsresults.png
.. |image925| image:: images/reports/itemtotals.png
.. |image926| image:: images/reports/itemtotalsresults.png
.. |image927| image:: images/reports/lostitems.png
.. |image928| image:: images/reports/averloanform.png
.. |image929| image:: images/reports/avercheckout.png
.. |image930| image:: images/reports/dict1.png
.. |image931| image:: images/reports/dict2.png
.. |image932| image:: images/reports/dict3.png
.. |image933| image:: images/reports/dict4.png
.. |image934| image:: images/reports/dictconfirm.png
.. |image935| image:: images/reports/dictlist.png
.. |image936| image:: images/reports/dictionarylimit.png
.. |image937| image:: images/opac/searchbox.png
.. |image938| image:: images/opac/totalresults-rss.png
.. |image939| image:: images/opac/sortingresults.png
.. |image940| image:: images/opac/leader.png
.. |image941| image:: images/opac/holdings-results.png
.. |image942| image:: images/opac/coverresults.png
.. |image943| image:: images/opac/didyoumeanopac.png
.. |image944| image:: images/opac/refineresults.png
.. |image945| image:: images/opac/totalresults-rss.png
.. |image946| image:: images/opac/bibdetail/bibtitle.png
.. |image947| image:: images/opac/bibdetail/bibauthor.png
.. |image948| image:: images/opac/bibdetail/authoritylink.png
.. |image949| image:: images/opac/bibdetail/bibleader.png
.. |image950| image:: images/opac/bibdetail/bibdetails.png
.. |image951| image:: images/opac/bibdetail/bibsubjects.png
.. |image952| image:: images/opac/bibdetail/bibsummary.png
.. |image953| image:: images/opac/bibdetail/biblinks.png
.. |image954| image:: images/opac/bibdetail/bibtags.png
.. |image955| image:: images/opac/bibdetail/bibholdings.png
.. |image956| image:: images/opac/bibdetail/bibtitlenotes.png
.. |image957| image:: images/opac/bibdetail/bibcomments.png
.. |image958| image:: images/opac/bibdetail/bibeditions.png
.. |image959| image:: images/opac/bibdetail/bibsearch.png
.. |image960| image:: images/opac/bibdetail/bibbrowseresults.png
.. |image961| image:: images/opac/bibdetail/biboptions.png
.. |image962| image:: images/opac/bibdetail/bibmoresearch.png
.. |image963| image:: images/opac/bibdetail/bibsave.png
.. |image964| image:: images/opac/bibdetail/bibviews.png
.. |image965| image:: images/opac/nolists.png
.. |image966| image:: images/opac/addtonewlist.png
.. |image967| image:: images/opac/publiclistpermissions.png
.. |image968| image:: images/opac/newlist.png
.. |image969| image:: images/opac/addtolistcart.png
.. |image970| image:: images/opac/chooselist.png
.. |image971| image:: images/opac/listview.png
.. |image972| image:: images/opac/emailist.png
.. |image973| image:: images/opac/mylists.png
.. |image974| image:: images/opac/editlist.png
.. |image975| image:: images/opac/deletelist.png
.. |image976| image:: images/opac/shareconfirmation.png
.. |image977| image:: images/opac/addtolistcart.png
.. |image978| image:: images/opac/addedtocart.png
.. |image979| image:: images/opac/cartcontents.png
.. |image980| image:: images/opac/emailcart.png
.. |image981| image:: images/opac/downloadcart.png
.. |image982| image:: images/opac/opacplaceholdresults.png
.. |image983| image:: images/opac/opacplaceholdsindiv.png
.. |image984| image:: images/opac/opacplaceholdsdetail.png
.. |image985| image:: images/opac/opacplacehold.png
.. |image986| image:: images/opac/holdnote.png
.. |image987| image:: images/opac/opacplaceholdspecific.png
.. |image988| image:: images/opac/tags-results.png
.. |image989| image:: images/opac/tagsadded-results.png
.. |image990| image:: images/opac/tagaddmultiple-results.png
.. |image991| image:: images/opac/commentstab.png
.. |image992| image:: images/opac/addcomment.png
.. |image993| image:: images/opac/commentpending.png
.. |image994| image:: images/opac/yourcomment.png
.. |image995| image:: images/opac/commentby.png
.. |image996| image:: images/opac/recentcomments.png
.. |image997| image:: images/opac/zoteroaddressbar.png
.. |image998| image:: images/opac/zoterotitle.png
.. |image999| image:: images/opac/PatronSelfRegistration.png
.. |image1000| image:: images/opac/patronregistration.png
.. |image1001| image:: images/opac/patronregistrationcomplete.png
.. |image1002| image:: images/opac/forgotpwlink.png
.. |image1003| image:: images/opac/myaccount.png
.. |image1004| image:: images/opac/opacsummary-wlinks.png
.. |image1005| image:: images/opac/SHOW_BCODEadd.png
.. |image1006| image:: images/opac/SHOW_BCODEattribute.png
.. |image1007| image:: images/opac/barcodeoncheckouts.png
.. |image1008| image:: images/opac/myoverdues.png
.. |image1009| image:: images/opac/myfines.png
.. |image1010| image:: images/opac/myholds.png
.. |image1011| image:: images/opac/nocard.png
.. |image1012| image:: images/opac/noaddress.png
.. |image1013| image:: images/opac/debarred.png
.. |image1014| image:: images/opac/mybilling.png
.. |image1015| image:: images/opac/paypaypal.png
.. |image1016| image:: images/opac/myprofile.png
.. |image1017| image:: images/opac/patronrequestwaiting.png
.. |image1018| image:: images/opac/myprofile-noedit.png
.. |image1019| image:: images/opac/mytags.png
.. |image1020| image:: images/opac/mypassword.png
.. |image1021| image:: images/opac/mysearchhistory.png
.. |image1022| image:: images/opac/searchistory.png
.. |image1023| image:: images/opac/myhistory.png
.. |image1024| image:: images/opac/myprivacy.png
.. |image1025| image:: images/opac/deletecirchistory.png
.. |image1026| image:: images/opac/mysuggestions.png
.. |image1027| image:: images/opac/mymessages.png
.. |image1028| image:: images/opac/OPACSMSSendDriver.png
.. |image1029| image:: images/opac/smsopac.png
.. |image1030| image:: images/opac/mylists.png
.. |image1031| image:: images/opac/dischargeopac.png
.. |image1032| image:: images/opac/dischargeopac-confirm.png
.. |image1033| image:: images/opac/suggestfromsearch.png
.. |image1034| image:: images/opac/suggestfromnoresults.png
.. |image1035| image:: images/opac/suggestfrommyaccount.png
.. |image1036| image:: images/opac/newsuggestion.png
.. |image1037| image:: images/searching/searchbox.png
.. |image1038| image:: images/searching/searchterms.png
.. |image1039| image:: images/searching/resultssummary.png
.. |image1040| image:: images/searching/resultssummary2.png
.. |image1041| image:: images/searching/noresults.png
.. |image1042| image:: images/searching/menubar.png
.. |image1043| image:: images/searching/searchoptions.png
.. |image1044| image:: images/searching/advsearch.png
.. |image1045| image:: images/searching/numresults.png
.. |image1046| image:: images/searching/feweropts.png
.. |image1047| image:: images/searching/advoptions.png
.. |image1048| image:: images/searching/advsortby.png
.. |image1049| image:: images/searching/ex1.png
.. |image1050| image:: images/searching/ex2.png
.. |image1051| image:: images/searching/ex3.png
.. |image1052| image:: images/searching/ex4.png
.. |image1053| image:: images/searching/ex5.png
.. |image1054| image:: images/searching/ex6.png
.. |image1055| image:: images/searching/ex7.png
.. |image1056| image:: images/searching/ex8.png
.. |image1057| image:: images/searching/ex9.png
.. |image1058| image:: images/searching/ex10.png
.. |image1059| image:: images/searching/ex11.png
.. |image1060| image:: images/searching/ex12.png
.. |image1061| image:: images/searching/ex13.png
.. |image1062| image:: images/searchhistory/searchhistory.png
.. |image1063| image:: images/searchhistory/bibsearch.png
.. |image1064| image:: images/searchhistory/authsearch.png
.. |image1065| image:: images/about/aboutserver.png
.. |image1066| image:: images/about/aboutperlmodules.png
.. |image1067| image:: images/about/systeminfo.jpg
.. |image1068| image:: images/appendix-opac/opaccustomregions.jpg
.. |image1069| image:: images/serialssamples/readersserial.png
.. |image1070| image:: images/serialssamples/hebrewnewspaper.png
.. |image1071| image:: images/serialssamples/backpacker.png
.. |image1072| image:: images/serialssamples/keatsplanning.png
.. |image1073| image:: images/serialssamples/cilirregular.png
.. |image1074| image:: images/serialssamples/cilpattern.png
.. |image1075| image:: images/serialssamples/cilreceived.png
.. |image1076| image:: images/appendix-cms/newpreference.png
.. |image1077| image:: images/appendix-cms/newpref-settings.png
.. |image1078| image:: images/appendix-cms/recommendedreading.png
.. |image1079| image:: images/appendix-cms/class101-pref.png
.. |image1080| image:: images/appendix-cms/editrecommendpref.png
.. |image1081| image:: images/appendix-xslt/book.png
.. |image1082| image:: images/appendix-xslt/comp.png
.. |image1083| image:: images/appendix-xslt/cr.png
.. |image1084| image:: images/appendix-xslt/map.png
.. |image1085| image:: images/appendix-xslt/mixed.png
.. |image1086| image:: images/appendix-xslt/sound.png
.. |image1087| image:: images/appendix-xslt/visual.png
.. |image1088| image:: images/appendix-xslt/kit.png
.. |image1089| image:: images/appendix-marcedit/marcedit.png
.. |image1090| image:: images/appendix-marcedit/marcedit-editsubfield.png
.. |image1091| image:: images/appendix-marcedit/editsubfield.png
.. |image1092| image:: images/appendix-marcedit/excelimport/step-1.png
.. |image1093| image:: images/appendix-marcedit/excelimport/step-2.png
.. |image1094| image:: images/appendix-marcedit/excelimport/step-3.png
.. |image1095| image:: images/appendix-marcedit/excelimport/step-4.png
.. |image1096| image:: images/appendix-marcedit/excelimport/step-5.png
.. |image1097| image:: images/appendix-marcedit/excelimport/step-6.png
.. |image1098| image:: images/appendix-marcedit/excelimport/step-7.png
.. |image1099| image:: images/appendix-marcedit/excelimport/step-8.png
.. |image1100| image:: images/appendix-marcedit/excelimport/step-9.png
.. |image1101| image:: images/appendix-marcedit/excelimport/step-10.png
.. |image1102| image:: images/appendix-marcedit/excelimport/step-11.png
.. |image1103| image:: images/appendix-marcedit/excelimport/step-12.png
.. |image1104| image:: images/appendix-marcedit/excelimport/step-13.png
.. |image1105| image:: images/appendix-marcedit/excelimport/step-14.png
.. |image1106| image:: images/appendix-marcedit/excelimport/step-15.png
.. |image1107| image:: images/appendix-marcedit/excelimport/step-17.png
.. |image1108| image:: images/appendix-marcedit/excelimport/step-18.png
.. |image1109| image:: images/appendix-marcedit/excelimport/step-19.png
.. |image1110| image:: images/appendix-marcedit/excelimport/step-20.png
.. |image1111| image:: images/appendix-oclc/oclcgatewaysetup.png
.. |image1112| image:: images/opac/SHOW_BCODEadd.png
.. |image1113| image:: images/opac/SHOW_BCODEattribute.png
.. |image1114| image:: images/opac/barcodeoncheckouts.png
.. |image1115| image:: images/cataloging/lockedauthority.png
.. |image1116| image:: images/reports/datepicker.png
.. |image1117| image:: images/reports/branchpulldown.png
.. |image1118| image:: images/appendix-extending/colorccode.png
