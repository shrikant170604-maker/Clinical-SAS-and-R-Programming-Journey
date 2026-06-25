# Day 3 
## Topic: 5 Input Methods in SAS

### 5 Input Methods:

1. LIST INPUT
   - Space separated values
   - Most commonly used
   - INPUT name $ age;

2. COLUMN INPUT
   - Fixed column positions
   - INPUT name $ 1-5 age 7-8;

3. FORMATTED INPUT
   - Uses informats
   - For dates and special formats
   - INPUT date DDMMYY10.;

4. NAMED INPUT
   - variable=value format
   - INPUT name= $ age=;

5. MODIFIED INPUT
   - Special modifiers
   - : colon modifier
   - & ampersand modifier (for names with spaces)
   - INPUT name & $20.;

### Important:
- @ is pointer control (part of column input)
- & modifier reads until TWO spaces
- Formatted Input essential for clinical dates

### Status: ✅ Complete
