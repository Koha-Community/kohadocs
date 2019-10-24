.. include:: images.rst

ILL requests / Interlibrary loans
===================================

The ILL (Interlibrary loans) requests module adds the ability to request and manage loans or copies of material from external sources.  Patrons submit a request form via the OPAC for review and processing by library staff.  Alternatively staff can place requests themselves from the staff client.  

.. _setup-label:

Set up
-------------

Before using the ILL requests module you will want to make sure that you have completed all of the set up.

The ILL requests module can be configured for different types of requests and workflows known as backends.   Currently available backends are documented on the Koha community wiki at https://wiki.koha-community.org/wiki/ILL_backends.  You will need to configure at least one backend. 

Next, set your system preferences.  

-  Set the :ref:`ILLModule` preference to ‘Enable’.  

-  If you wish to include a copyright declaration in your ILL workflow you can this in the :ref:`ILLModuleCopyrightClearance` preference. 

Library staff responsible for ILL requests need the following permission set on their account: *ill: Create and modify Interlibrary loan requests*.

The ILL requests module uses system defined statuses.  You can add custom statuses to match your ILL workflow as ILLSTATUS :ref:`authorized values <authorized-values-label>`.

.. _create-ILL-requests-label:

Create ILL requests
----------------------

-  *Get there:* More > ILL requests

|image1386|

-  Choose ‘New ILL request’ and then Freeform.

    **Note**
The images shown here are for the FreeFrom backend only.

|image1387|

-  Enter a Type: Book, Article, Journal, Other.

-  In the next two sections enter as much as information as you can including chapter/article/part if applicable.

|image1388|

-  Add custom fields, for example if you wished to add a note.

-  Under the borrower options enter the library branch you would like the request to be sent to.

Click on ‘Create’ and you will be shown a Request details summary page.  Click on the ‘Confirm request’ button and you will see the following confirmation message:

|image1389|

Click ‘Confirm request’ again to create your request. 

.. _viewing-ILL-requests-label:

Viewing ILL requests
------------------------

From the main ILL requests screen you can see all of your ILL requests.  You 
can also click on the ‘View requests’ button at any time.  

|image1435|

There is a large amount of data available in the Requests table so it is 
advisable to make use of column visibility to view only the information you need.
The first half of the table displays data related to the ILL item itself 
such as title, volume, page numbers.

|image1436|

The second half of the table displays data related to the request such as notes
and comments.

.. _managing-ILL-requests-label:

Managing ILL requests
------------------------

Click on the ‘Manage request’ button in the final column. Depending on the current status of the request you may see some or all of the following buttons:

-  Edit request

   -  you can edit the borrowernumber, biblionumber, branch and can add notes.
-  Confirm request

   -  place the request with a document supply service using a backend such as BLDSS.
-  Place request with partners

   -  place the request via email with a :ref:`partner library <place-request-with-partners-label>`
-  Delete

   -  fully delete the request.  Details of deleted requests are not retained in Koha.
-  Revert request

   -  following a status of ‘Requested’ or ‘Requested from partners’ library 
      staff can cancel the request from the external source.  The status reverts to ‘New’
-  Mark completed

   -  used when the ILL request has been fulfilled. 
   
-  Display supplier metadata

   -  Displays any extra metadata that might have been provided by your ILL 
      supplier that has not been included in the standard request fields. 


The full list of ILL statuses are:

-  New request
-  Requested
-  Requested from partners 
-  Request reverted 
-  Cancellation requested – a patron has requested cancellation from the OPAC.
-  Completed

.. _place-request-with-partners-label:

Place request with partners
-----------------------------

If you have a network of partner libraries which permit ILL requests you can manage this through Koha.  First you need to create your partner library accounts:

-  You will need to set up a :ref:`patron category <patron-categories-label>` with the code ILLLIBS.

-  You will need to create a patron account with this category for each partner library.  

-  Each library must have an email address as this will be the mechanism for sending the inter-library loan request.

You can now use the 'Place request with partners' option when processing requests. 
