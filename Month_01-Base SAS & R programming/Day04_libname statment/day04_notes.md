# Day 4 
## Topic: LIBNAME Statement

### What is LIBNAME?
- Assigns a nickname (libref) to a folder
- Nickname = LIBREF (max 8 characters)
- LIBNAME libref "folder path";

### Two Types of Libraries:
1. WORK (Temporary)
   - Auto created
   - Deleted when SAS closes
   - Default library

2. Permanent Library
   - Created with LIBNAME
   - Stays after SAS closes
   - Used in real projects

### Rules for LIBREF:
- Max 8 characters
- Must start with letter
- No spaces
- No special characters

### Built-in Libraries:
- WORK = Temporary
- SASHELP = Practice datasets
- SASUSER = User settings

### Clinical Use:
LIBNAME raw  "path/rawdata";
LIBNAME sdtm "path/sdtm";
LIBNAME adam "path/adam";

### Status: ✅ Complete
