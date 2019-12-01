.. include:: images.rst

.. _koha-installation-process-label:

Introduction to the Koha Installation Process
================================================

This is the Koha Installation Manual

The Koha Library Management System installation process uses 2 tools:

* Web installer
* Onboarding tool

This documentation will outline both of these tools.

What is the Koha web installer?
_________________________________
The web installer sets up the database tables that store the all the data you work with in Koha, for example the library branches, patrons and items.

The web installer starts with a login screen for you to enter the database administrator account credentials.

The installer will then create the tables and fill the tables with data. The next step in the process is to set up a few mandatory first use settings, via the Onboarding tool.

What is the Koha Onboarding tool?
_________________________________

The onboarding tool makes sure you have at least one library, patron category, patron, item type and circulation rule before you start using Koha.

If you installed sample data for library, patron category, and/or item type then the screens to create these will be skipped.

You will, however, always have to create a patron (to log into the staff interface at the end of the onboarding tool) and a circulation rule.

Web Installer
====================

Web installer login
________________________

**Web Installer login**

This login screen is the first screen that appears when installing Koha.

   |image1152|

   Web Installer login

1. **Koha version name**: This will display whatever Koha version number you are installing.

2. **Username**: This is database administrator username which is *koha_kohadev* by default.

3. **Password**: This is the database administrator password which is *password* by default.

4. *Log in*: Select this button to login

Language picker
___________________

**Installer Start screen**

This is the first screen of the web installer.

   |image1166|

   Web installer start screen

1. *Language picker* dropdown box: This is specifying the language you want Koha to be in.

.. Note::
	Installing other languages that have translations for the installer (DE or FR, for example) will allow those languages to be used for the web installer.

2. Click the *Continue to the next step* button to load the next stage of the web installer.

Installer Perl Modules Installed
___________________________________

This screen tells you that the installer has all the dependencies it needs, to create the database in the next screen.

   |image1167|

   Perl modules installed

Click on the *Continue to the next step* button to load the next stage of the web installer.

Database Settings
__________________________

This screen informs you of the database settings and asks you to confirm them by clicking the *Continue to the next step* button.

.. note::
  For the majority of users these settings should be correct, if not then you should contact your support provider.

|image1168|

Database settings

1. **Database Settings:** Check these database settings are correct.
2. Click the *Continue to the next step* button to confirm the database settings

----------------------------------------------------------------------------------------

**Connection Established**

After you click the *Next* button the database connection is confirmed:

|image1169|

Database connection established

1. **Connection established message:** This informs you that the database has been successfully created.
2. Click the *Continue to the next step* button to load the next stage

.. Note:: If you have database connection difficulties here, the installer will not proceed. Double check the connection information in your koha-conf.xml file, and verify that the permissions and credentials on the database itself are correct.

Ready to fill tables with data
____________________________________

This screen is informing you everything is set up for you to create the database tables in the next screen.

   |image1170|

   Database ready for data

Click the *Continue to the next step* button to load the next stage

.. note::
  This step can take some time. Please be patient.

Database tables created
__________________________

   |image1171|

   Database tables created

Click the *Continue to the next step* button

Ready for basic configurations
__________________________________

This screen leads onto installing basic configurations necessary to use Koha.

   |image1172|

   Ready for basic configurations

Click the *Continue to the next step* button

Select MARC flavour
__________________________________

You must choose your MARC flavour (format you want the bibliographic (catalog) records to be stored in the database) on this screen:

   |image1173|

   Select MARC flavour

1. **Unimarc:** This is frequently used in European countries (except for the UK) such as Italy.

2. **MARC21:** Selected by default, as it is more commonly used globally than UNIMARC.

3. Click the *Continue to the next step* button to confirm your choices

MARC21 and UNIMARC setup
___________________________

.. note:: In the previous screen you either choose MARC21 or UNIMARC as your MARC flavour. This page outlines both.

MARC21 setup
_______________

|image1174|

MARC21 setup

1. **Default MARC21 Standard Authority Types:** An authority type is a template of an authority record (stores the search fields used to search an institutions catalog for an item). This option will install sample authority types.

2. **Default MARC21 bibliographic framework:** Following on from the MARC21 selection in the previous screen selecting this checkbox (and the *Import* button) will actually setup the MARC21 bibliographic framework as the desired MARC flavour.

3. **Selected matching rules for MARC21 bibliographic records:** The MARC21 matching rules are used to find all the information about specific bibliographic records using the authority type search values.

4. **'FA', a 'Fast Add' minimal MARC21 framework suitable for ILL, or on the fly cataloging:** The FA MARC framework displays fewer fields, and allows for faster cataloguing on the fly. Select this checkbox to install this minimal framework.

5. **Sample MARC21 bibliographic frameworks for some common types of bibliographic material:** This installs the template you will use to create items.

6. **Default Koha system authorised values:** This installs mandatory authorised values that every Koha installation needs.

7. **Default classification sources and filling rules:** This will insert several common library classification sources such as dewey decimal.

8. **Defines default message transports for email and sms:** This provides the option to the user of being able to change how the library contacts them. They can choose from the following: email address, printed message, sms, or phone call. Notices will not work without these.

9. **Patron attributes:** This does not install any data, and it needs to be removed.

10. **Sample frequencies for subscriptions:** For items that arrive on a regular and predictable basis (e.g. monthly magazines), installing sample frequencies is useful because you can simply select a pre-installed sample frequency when you create the item.

11. **Sample notices:** This inserts sample notices into the database, meaning all you have to do is customize these sample notices before you use them. Creating these by hand can be very time consuming and error prone.

12. **Defines default messages for the enhanced messaging configuration:** The enhanced messaging configuration lets the user choose what messages they receive from the institution. Selecting this will insert sample message types for the Due, Predue, and Advance notice message types.

13. **Defines default message transports for sending item due messages and advance notice messages through email and SMS:** This inserts the SMS and email transport types. Mandatory if you want to send notices by email or SMS.

14. **Sample numbering patterns for subscriptions:** This option will install sample numbering patterns, saving you having to manually insert them for magazines and other periodicals.

15. **Some basic default authorised values for library locations, item lost status, etc. You can change these at any time after installation:** This installs authorised values, which filter user inputs, to make sure they match specified criteria before the library or other object is created.

16. **CSV profiles:** Using Koha you can export items. The CSV profile defines how you want to export the item(s). CSV/Tab exports will not work without these.

17. **Coded values conforming to the Z39.71-2006 holdings statements for bibliographic items:** Not required to use Koha. A holding statement tells the user if the library has a specific item and where it is located. Selecting will install sample code values for items in the holding statements.

18. **MARC code list for relators:** Not required to use Koha. A relator is a person who was involved in the development of the item (e.g. author). Selecting this will insert sample relator records into the database.

19. **Some basic currencies with USA dollar as default for ACQ module:** Install US dollar, Great British Pound, Canadian Dollar and Euro currencies. Set the US dollar as the default acquisition currency. Not installing these will mean that a currency will need to be defined before Acquisitions can be used.

20. **Useful patron attribute types:** Not required to use Koha. Patrons have a barcode which identifies them. By clicking this checkbox you are making sure that this patron barcode is displayed on the patron summary screen.

21. **Sample patron types and categories:** Not required to use Koha. Selecting this will install sample patron categories into the database. This will mean the Create patron category step in the onboarding tool is skipped.

22. **Sample label and patron card data:** Not required to use Koha, but recommended for most new installs. Selecting this will install sample data for labels and patron cards and will make it easier to create a labels and patron cards in the future.

23. **Sample holidays: Sunday, Christmas, New Year’s** Not required to use Koha. Selecting this will insert sample repeatable public holidays (e.g. Christmas) into the database.

24. **A set of default item types:** Not required for Koha. Selecting this will insert sample item type data into the database, meaning Create Item type step in the onboarding tool will be skipped.

25. **Sample Libraries:** Not required for Koha. Selecting this will insert sample libraries into the database. Developers will often want this for demo or development purposes. Selecting this means the Create library step in the onboarding tool will be skipped.

26. **Sample news items:** Not required for Koha. Selecting this will insert sample news items that are displayed on the OPAC (Online Public Access Catalog) and staff client into the database.

27. **Sample patrons:** Not required for Koha. Patrons are the people who use the Koha Library Management System, for example: library users and staff. Selecting this will insert a number of sample patrons into the database. Developers will often want this for demo or development purposes.

28. **Sample quotes:** Not required for Koha. Quotes of the day can be displayed to library users on the OPAC (Online Public Access Catalog) interface. Selecting this will install a few library related sample quotes.

29. **Allow access to the following servers to search and download record information:** Not required to use Koha, but recommended for most new installs. Selecting this configures Koha to allow access to a selection of Z39.50 targets, which allow searching the target servers for MARC21 records to import them into your Koha instance. This can avoid the need to manually input all record information manually, or greatly speed up the process.

30. Click the *Import* button to install the default and selected data values.

Unimarc setup
__________________________________

There are only 2 data values in the Unimarc advanced setup which are unique:

* Authority Structure for UNIMARC in English
* Default UNIMARC bibliographic framework in English

.. note::  Optional values are the same for both Unimarc and MARC21, therefore their definition will not be repeated.

|image1175|

Unimarc setup

1. *Authority structure for UNIMARC in English:* Authority records store the search terms used to find items in the database. Unlike MARC21, when using Unimarc the authority structure needs to be compatible with Unimarc. Selecting this option makes it compatible.

2. *Default UNIMARC bibliographic framework in English:* In the previous screen you clicked to use the Unimarc flavour, now by selecting this option you are confirming you want to use that framework.

3. Click the *Import* button to install the sample data

Selected data added
____________________

After you have clicked the *Import* button in either the MARC21 or UNIMARC setup screen this screen will appear. It shows you if the selected/default  data values were successfully inserted into the database.

   |image1176|

   Selected data added

1. **Optional data added:** If you selected an optional data value then it will be displayed here. If you did not choose any optional data value then the **optional data added** title will not be displayed.

2. **Mysql data added:** These data values will always be installed and consequently displayed on this screen.

3. **Mandatory data added:** Same as above.

4. **Installation message:** Tells you if the Koha database was successfully created ready for you to use the onboarding tool.

5. Click the *Set up some of Koha's basic requirements* button to go to a redirection screen, which in turn will take you to the onboarding tool.

Redirect to onboarding tool
__________________________________

If you wait for around 10 seconds this screen should redirect you to the onboarding tool start screen.

   |image1177|

   Redirect to onboarding tool

.. note::
  If after waiting you are not redirected select the link pointed out by the arrow in the above screenshot.

Onboarding tool
====================

Create a library
___________________
The installer will prompt to create the first library or branch if the sample libraries were not installed.

A library in Koha is the digital representation of a "physical" place. More libraries can be added later by going to Administration -> Libraries and groups.

   |image1153|

   Create library

1. **Library code:** code consisting of up to 10 letters.
2. **Name:** Official name of the library, as it is commonly known.
3. **Create more libraries:** If more libraries are required, or changes need to be made to this freshly created library, go to Administration->Libraries and groups
4. Click the *Submit* button to create a library.

For example:

   |image1154|

   Create library example

**Library code:** The regular expression that filters the acceptable inputs for library code only accepts up to 10 letters.

Create a patron category
_____________________________

All patrons in Koha must have a patron category. The patron category is like a jelly mold; multiple individual patron accounts can share common characteristics, such as circulation rules, notice frequency, holds allowed, and much more. Koha requires at least one patron category in order to add patrons.

A patron category requires:

  * Category code
  * Description
  * Overdue notice required
  * Category type
  * Default privacy
  * Enrolment period: In months OR Until date

  |image1155|

  Create a patron category

1. **Library creation message:** Indicates whether the library was created successfully.

2. **Category code:** Code consisting of up to 10 letters.

3. **Description:** Sentence describing what the patron category is.

4. *Overdue notice required* dropdown button: Set by default to 'No'. This specifies if you want the patron category to receive overdue notices.

5. **Category type:** This makes the category created a staff member.

6. **Default privacy:** Set by default to 'Default'. The Default privacy controls the amount of time that the reading history of the patron is stored for.

7. **Enrolment period-In months:** This is the number of months that the patrons created from this patron category are enrolled for.

8. **Enrolment period-Until date:** Select a date from the interactive datepicker calendar icon which appears when you click on this input box. The date you choose will be the enrolment end date for patrons created from this patron category.

9. **Path to create patron category:** More patron categories can be created or altered by going to Administration -> Patron categories.

10. Click the *Submit* button to create the patron category.

For example:

   |image1156|

Create a patron
___________________

A superlibrarian patron user is required to log into the Koha staff interface, once the onboarding process has been completed.

.. note:: It is very important to document the username and password created here as they are the account credentials required to login as an administrator (superlibrarian) of Koha.

You will need to input/select:

* Surname
* First Name
* Card number
* Library
* Patron category
* Username
* Password

  |image1157|

  Create a patron

1. **Patron category creation message:** This indicates that if the patron category was created successfully.
2. **Surname:** Surname, or something descriptive
3. **First name:** First name, or something descriptive
4. **Card Number:** This number must be unique
5. *Library* dropdown box: If a library has been created using this onboarding tool, it will be the only option. Otherwise select a random library from the sample libraries installed by the web installer.
6. *Patron category* dropdown box: If a patron category was created using this onboarding tool, it will be the only option. Otherwise select the *Staff* patron category.
7. **Superlibrarian permission:** This non-editable setting allows access to all librarian and web based Koha administration tasks in the staff interface. This user is the most powerful user in any Koha, so protect the credentials well.
8. **Username:** The username to log into the staff interface and OPAC (Online Patron Access Catalogue) with.
9. **Password:** A password consisting of letters, numbers, and spaces only which is greater than 8 characters.
10. **Confirm password:** Repeat the above password again
11. Click the *Submit* button to create the patron account
12. **Path to create patron:** Patron's can be created or altered by going to Patrons->New patron
13. **Assign patron permissions:** After creating a patron go More->Set permissions to assign permissions.

For example:

   |image1158|

   Create a patron example

Create a Item type
______________________

If you did not install sample item types in the web installer then this screen will be displayed.

As with the patron category the item type is basically a template which you use to make multiple items with common characteristics.

You need to input:

* Item type code
* Description

  |image1159|

  Create item type

1. **Administrator account creation message:** Indicates if the administrator patron was created successfully
2. **Item type code:** Code consisting of up to 10 letters
3. **Description:** Sentence describing what the item type is.
4. **Path to create item type:** Item types can be created or altered by going to Administrator->Item types
5. Click the *Submit* button to create the item type

For example:

   |image1160|

   Create item type example

.. note:: The regular expression filtering Item Type code input will only accept letters.

Create a Circulation Rule
______________________________

This screen will always be displayed no matter what sample data you installed with the web installer.

Here you are creating a rule which applies the pre-defined organisational decisions of your library as to what restrictions you place on patrons borrowing items.

   |image1161|

   Create circulation rule

.. note::
  Numbers are the only valid input for all input fields in this form.

1. **Item type creation message:** Indicates if the item type was created successfully
2. *Library branch* dropdown box: This is the library (or libraries) you want to apply the circulation rule to. By default it is set to *All*, however you can select a singular library to apply the rule to from the dropdown box.
3. *Patron categories* dropdown box: This is the patron categories you want to apply the circulation rule to. As with *Library branch* it is set to *All* by default but more options are avaliable.
4. *Item type* dropdown box: This is the item types that you want the circulation rule to apply to. Again more options are avaliable than the default selected *All* option.
5. **Current checkouts allowed:** This is the number of items allowed from the selected library, for selected patron categories and of the selected item type. Set to 50 by default.
6. **Loan period:** Number of days or hours that an item is allowed out for. Set to 14 by default.
7. *Units* dropdown box: Set by default to *Days*, the unit selecting in this field is applied to the numerical values written into **Loan Period** and **Renewals Period**
8. **Renewals Allowed:** Number of times a item can be renewed. Set to 10 by default.
9. **Renewals Period:** Number of days or hours that a renewal lasts for. Set to 14 by default.
10. *On shelf holds allowed* dropdown box: If items can be held whilst they are on the shelf.
11. **Path to create circulation rule:** Circulation rules can be created or altered by going to Administration -> Circulation and fines rules
12. Click the *Submit* button to create the circulation rule.

Onboarding tool complete
____________________________

This page tells you if the circulation rule was created successfully, and that the Koha installation is complete

    |image1162|

1. **Web installer message:** Indicates if the web installation is complete
2. **Circulation rule creation message:** Indicates if the circulation rule was created successfully.
3. **Start using Koha:** Click to login to Koha using the Koha administrator account you created using the onboarding tool.

Login to access staff interface
_________________________________

You have now finished using the onboarding tool and can log into the staff interface using the patron account credentials you created in the onboarding tool

   |image1163|

   Login screen

1. **Username:** Enter the username you created for the patron
2. **Password:** Enter the password you created
3. **Library:** This is the library staff interface you want to log into. The options are either: *My library* or the library you installed/created. Leaving the default selected option of *My library* is fine to log in with first time.
4. Click the *Login* button to access the staff interface

For example:

   |image1164|

   Login example

Staff interface
____________________

The staff interface should now appear

   |image1165|

   Staff interface

.. seealso::
  For more information about how to use the staff interface, please visit `<https://koha-community.org/documentation/>`_
