# Day 5 
## Topic: PROC IMPORT and PROC EXPORT

### PROC IMPORT:
- Reads external files INTO SAS
- CSV, Excel → SAS Dataset

Syntax:
PROC IMPORT
   DATAFILE = "path/file.csv"
   OUT = dataset_name
   DBMS = CSV
   REPLACE;
   GETNAMES = YES;
RUN;

### PROC EXPORT:
- Sends SAS data OUT to files
- SAS Dataset → CSV, Excel

Syntax:
PROC EXPORT
   DATA = dataset_name
   OUTFILE = "path/file.csv"
   DBMS = CSV
   REPLACE;
RUN;

### Key Differences:
- IMPORT uses DATAFILE= and OUT=
- EXPORT uses OUTFILE= and DATA=

### DBMS Options:
- CSV = Comma separated
- XLSX = Excel file
- TAB = Tab separated

### Important Options:
- GETNAMES=YES = First row is headers
- REPLACE = Overwrite if exists
- SHEET= = Specific Excel sheet

### Takeaway:
IMPORT brings data IN
EXPORT sends data OUT

### Status: ✅ Complete
