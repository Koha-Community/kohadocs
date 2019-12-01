.. include:: images.rst

.. _configuring-receipt-printers-label:

Configuring Receipt Printers
============================

The following instructions are for specific receipt printers, but can
probably be used to help with setup of other brands as well.

.. _for-epson-tm-t88iii-(3)-and-tm-t88iv-(4)-printers-label:

For Epson TM-T88III (3) and TM-T88IV (4) Printers
--------------------------------------------------------------------

.. _in-the-print-driver-label:

In the Print Driver
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

.. _in-firefox-1-label:

In Firefox
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

.. _for-epson-tm-t88ii-(2)-printers-label:

For Epson TM-T88II (2) Printers
---------------------------------------------

Register at the `EpsonExpert Technical Resource Center
website <https://www.epsonexpert.com/login>`__ to gain access to the
drivers; go to Technical Resources, then choose the printer model from
the Printers drop-down list.

.. _in-firefox-2-label:

In Firefox
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

.. _for-star-sp542-printers-label:

For Star SP542 Printers
------------------------------------------

.. _installing-the-printer-label:

Installing the Printer
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

.. _configuring-firefox-to-print-to-receipt-printer-label:

Configuring Firefox to Print to Receipt Printer
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
