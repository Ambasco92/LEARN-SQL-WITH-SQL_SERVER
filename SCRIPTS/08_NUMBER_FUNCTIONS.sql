/* ============================================================================== 
   SQL Number Functions Guide
-------------------------------------------------------------------------------
   This document provides an overview of SQL number functions, which allow 
   performing mathematical operations and formatting numerical values.

   Table of Contents:
     1. Rounding Functions
        - ROUND
     2. Absolute Value Function
        - ABS
=================================================================================
*/

/* ============================================================================== 
   ROUND() - Rounding Numbers
=============================================================================== */

-- Demonstrate rounding a number to different decimal places
SELECT 
ROUND(123.456, 2) AS round_two_decimal_places,
ROUND(56.56786, 3) AS round_three_decimal_places;

/* ============================================================================== 
   ABS() - Absolute Value
=============================================================================== */

-- Demonstrate absolute value function
SELECT 
ABS(10) AS abs_1,
ABS(-20) AS abs_2,
ABS(-100) AS abs_3

