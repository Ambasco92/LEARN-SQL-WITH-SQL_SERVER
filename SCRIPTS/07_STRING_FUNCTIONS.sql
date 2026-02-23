/* ============================================================================== 
   SQL String Functions
-------------------------------------------------------------------------------
   This document provides an overview of SQL string functions, which allow 
   manipulation, transformation, and extraction of text data efficiently.

   Table of Contents:
     1. Manipulations
        - CONCAT
        - LOWER
        - UPPER
	- TRIM
	- REPLACE
     2. Calculation
        - LEN
     3. Substring Extraction
        - LEFT
        - RIGHT
        - SUBSTRING
=================================================================================
*/
USE MyDatabase;
/* ============================================================================== 
   CONCAT() - String Concatenation
=============================================================================== */

-- Concatenate first name and country into one column

SELECT 
    First_name,
    country,
    CONCAT(First_name,' ', country) AS Concat
FROM customers;

/* ============================================================================== 
   LOWER() & UPPER() - Case Transformation
=============================================================================== */

-- Convert the first name to lowercase
SELECT 
    First_name,
    LOWER(First_name) AS LowerCasedName
FROM customers;

-- Convert the first name to uppercase

/* ============================================================================== 
   TRIM() - Remove White Spaces
=============================================================================== */

-- Find customers whose first name contains leading or trailing spaces

SELECT 
    first_name,
    LEN(first_name) AS name_len,
    LEN(TRIM(first_name)) AS len_trim_name,
    (LEN(first_name) - LEN(TRIM(first_name))) AS flag
FROM customers
WHERE LEN(first_name) != LEN(TRIM(first_name));

-- WHERE first_name != TRIM(first_name)

/* ============================================================================== 
   REPLACE() - Replace or Remove old value with new one
=============================================================================== */
-- Remove dashes (-) from a phone number

SELECT 
    '123-456-789' AS phone,
REPLACE('123-456-789', '-', '') AS clean_phone


-- Replace File Extension from txt to csv

SELECT 
    'file.txt' AS old_file_name,
    REPLACE('file.txt', 'txt', 'csv') AS new_file_name;

/* ============================================================================== 
   LEN() - String Length & Trimming
=============================================================================== */

-- Calculate the length of each customer's first name

SELECT
    first_name,
    LEN(TRIM(first_name)) AS name_length
FROM customers;

/* ============================================================================== 
   LEFT() & RIGHT() - Substring Extraction
=============================================================================== */

-- Retrieve the first two characters of each first name

SELECT 
    first_name,
    LEFT(TRIM(first_name), 2) AS first_two_chars
FROM customers;

-- Retrieve the last two characters of each first name

SELECT 
    first_name,
    RIGHT(TRIM(first_name), 2) AS last_two_chars
FROM customers;

/* ============================================================================== 
   SUBSTRING() - Extracting Substrings
=============================================================================== */

-- Retrieve a list of customers' first names after removing the first character
SELECT 
    first_name,
    SUBSTRING(TRIM(first_name), 2, LEN(first_name)) AS trimmed_name
FROM customers;	

/* ==============================================================================
   NESTING FUNCTIONS
===============================================================================*/

-- Nesting
SELECT
first_name, 
UPPER(LOWER(first_name)) AS nesting
FROM customers;