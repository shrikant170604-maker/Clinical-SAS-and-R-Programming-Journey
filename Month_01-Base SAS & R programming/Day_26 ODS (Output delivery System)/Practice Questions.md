Problem 1 – Simple HTML File
Write a program that:

Creates one HTML file named students.html
Contains a PROC PRINT of sashelp.class
Includes a title “Class Roster”
Closes the HTML destination properly and restores the default HTML at the end.
Problem 2 – HTML with Table of Contents (3 files)
Write a program that creates a professional two-pane HTML report:

BODY file: report_body.html
CONTENTS file: report_toc.html
FRAME file: report_frame.html
Include two procedures: PROC PRINT of sashelp.class (first 8 observations) and PROC MEANS of Height and Weight from the same data.
You must be able to open the FRAME file in a browser and see the numbered Table of Contents on the left.
Problem 3 – Portable HTML Files (PATH= + relative links)
Write a program that:

Saves three HTML files (body, contents, frame) using the PATH= option pointing to the current folder
Makes the links relative so the files can be copied to another computer or website without breaking
Runs PROC PRINT and PROC FREQ (tables sex) on sashelp.class
Problem 4 – Styled HTML
Write a program that creates two different HTML files of the same PROC PRINT (sashelp.class):

One using style=Banker
One using style=Statistical
Remember: no quotation marks around the style name.
Problem 5 – Basic PDF
Write a program that:

Closes HTML first
Creates a PDF file named cars_freq.pdf
Contains a PROC FREQ of sashelp.cars with TABLES origin*type
Closes the PDF destination
Problem 6 – PDF with Printable Table of Contents
Write a program that creates a PDF with:

A printed Table of Contents page at the beginning
The bookmark tree hidden
Two procedures: PROC FREQ (origin*type) and PROC PRINT (first 12 observations) of sashelp.cars
File name: cars_with_toc.pdf
Problem 7 – Excel Workbook with BY Groups
Write a program that:

First sorts sashelp.cars by Origin into a work data set
Creates an Excel file named cars_by_origin.xlsx
Puts each Origin on its own worksheet
Suppresses the BY lines
Embeds the title inside the worksheets
Uses PROC MEANS of MSRP, MPG_City, and MPG_Highway



=============================================================================SOLUTIONS=======================================================================================================================

/* PROBLEM 1 */

ODS HTML BODY="/home/u64536648/SAS PREP GUIDE BOOK/ODS/STUDENTS.HTML";

PROC PRINT DATA=SASHELP.CLASS;
TITLE "CLASS ROSTER";
RUN;

ODS HTML CLOSE;


/* PROBLEM 2 */

ODS HTML BODY="/home/u64536648/SAS PREP GUIDE BOOK/ODS/REPORT_BODY.HTML"
		 CONTENTS="/home/u64536648/SAS PREP GUIDE BOOK/ODS/REPORT_TOC.HTML"
		 FRAME="/home/u64536648/SAS PREP GUIDE BOOK/ODS/REPORT_FRAME.HTML";
		 
PROC PRINT DATA=SASHELP.CLASS(OBS=8);
RUN;

PROC MEANS DATA=SASHELP.CLASS;
VAR HEIGHT WEIGHT;
RUN;

ODS HTML CLOSE;


/* PROBLEM 3 */

ODS HTML PATH="/home/u64536648/SAS PREP GUIDE BOOK/ODS" (URL=NONE)
		 BODY="REC.HTML" 
		 CONTENTS="REC_TOC.HTML"
		 FRAME="REC_FRAME.HTML";

PROC PRINT DATA=SASHELP.CLASS;
RUN;

PROC FREQ DATA=SASHELP.CLASS;
TABLES SEX;
RUN;
ODS HTML CLOSE;

/* PROBLEM 4 */

ODS HTML CLOSE;
ODS HTML BODY="/home/u64536648/SAS PREP GUIDE BOOK/ODS/CLASS_STYLE1.HTML"
		 STYLE=BANKER;

PROC PRINT DATA=SASHELP.CLASS;
RUN;

ODS HTML CLOSE;
ODS HTML BODY="/home/u64536648/SAS PREP GUIDE BOOK/ODS/CLASS_STYLE2.HTML"
		 STYLE=STATISTICAL;

PROC PRINT DATA=SASHELP.CLASS;
RUN;
 ODS HTML CLOSE;
 
 
/* PROBLEM 5 */
ODS HTML CLOSE;

ODS PDF FILE="/home/u64536648/SAS PREP GUIDE BOOK/ODS/CARS_FREQ.PDF";

PROC FREQ DATA=SASHELP.CARS;
TABLES ORIGIN*TYPE;
RUN;

ODS PDF CLOSE;


/* PROBLEM 6 */

ODS HTML CLOSE;

ODS PDF FILE="/home/u64536648/SAS PREP GUIDE BOOK/ODS/CARS_WITH_TOC.PDF"
CONTENTS=YES BOOKMARKLIST=HIDE;

PROC FREQ DATA=SASHELP.CARS;
TABLES ORIGIN*TYPE;
RUN;

PROC PRINT DATA=SASHELP.CARS(OBS=12);
RUN;

ODS PDF CLOSE;


/* PROBLEM 7 */
PROC SORT DATA=SASHELP.CARS OUT=WORK.CARS_REC;
BY ORIGIN;
RUN;

ODS EXCEL FILE="/home/u64536648/SAS PREP GUIDE BOOK/ODS/CARS_BY_ORIGIN.XLSX"
OPTIONS (SHEET_INTERVAL="BYGROUP"
SUPPRESS_BYLINES="YES"
EMBEDDED_TITLES="YES");

PROC MEANS DATA=WORK.CARS_REC;
BY ORIGIN;
VAR MSRP MPG_CITY MPG_HIGHWAY;
RUN;

ODS EXCEL CLOSE;
