.. include:: images.rst

Course Reserves
===============

The course reserves module in Koha allows you to temporarily move items
to 'reserve' and assign different circulation rules to these items while
they are being used for a specific course.

`Course Reserves Setup <#coursesetup>`__
----------------------------------------

Before using Course Reserves you will need to do some set up.

First you will need to enable course reserves by setting the
`UseCourseReserves <#UseCourseReserves>`__ preference to 'Use'.

Next you will need to have all of your course instructors `added as
patrons <#addnewpatron>`__.

Next you will want to add a couple of new `authorized
values <#newauthval>`__ for Departments and Terms.

You may also want to create new `item types <#additemtype>`__,
`collection codes <#ccode>`__ and/or `shelving
locations <#shelvelocvals>`__ to make it clear that the items are on
reserve to your patrons. You will also want to be sure to confirm that
your `circulation and fine rules <#circfinerules>`__ are right for your
new item types (whether they be hourly or daily loans).

`Adding Courses <#addingcourses>`__
-----------------------------------

Once you have completed your set up for Course Reserves you can start
creating courses and adding titles to the reserve list.

Course Reserves Admin
|image726|

From the main course reserves page you can add a new course by clicking
the 'New course' button at the top left.

Add a new course
|image727|

Your new course will need a Department, Number and Name at the bare
minimum. You can also add in additional details like course section
number and term. To link an instructor to this course simply start
typing their name and Koha will search your patron database to find you
the right person.

Instructor search
|image728|

Once the instructor you want appears just click their name and they will
be added. You can repeat this for all instructors on this course. Each
instructor will appear above the search box and can be removed by
clicking the 'Remove' link to the right of their name.

Instructors
|image729|

If you would like your course to show publicly you'll want to be sure to
check the 'Enabled?' box before saving your new course.

Once your course is saved it will show on the main course reserves page
and be searchable by any field in the course.

Courses
|image730|

`Adding Reserve Materials <#addreserves>`__
-------------------------------------------

Before adding reserve materials you will need at least one course to add
them to. To add materials visit the Course Reserves module.

Courses
|image731|

Click on the title of the course you would like to add materials to.

Course administration
|image732|

At the top of the course description click the 'Add reserves' button to
add titles to this reserve list. You will be asked to enter the barcode
for the reserve item.

Add item to reserve
|image733|

After you are done scanning the barcodes to add to the course you can
see them on the course page

Course with reserves
|image734|

`Course Reserves in the OPAC <#opaccoursereserves>`__
-----------------------------------------------------

Once you have enabled Course Reserves and added courses you will see a
link to Course Reserves below your search box in the OPAC.

Course Reserves Link
|image735|

Clicking that link will show you your list of enabled courses (if you
have only one course you will just see the contents of that one course).

Course list in the OPAC
|image736|

You can search course reserves by any field (course number, course name,
instructor name, department) that is visible in the list of courses.
Clicking a course name will show you the details and reserve items.

Course listing
|image737|
