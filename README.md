# palindrome_dates
Program to show dates from year 1000-9999 that are palindromes

Sub problem - How many palindrome dates left in the 21st century after 02/02/2020?
How it works

There are 8 numbers in the mm/dd/yyyy format

The last four numbers must be a reflection of the first four to be a palindrome.
mmdd  must relfect yyyy to be a palindrome

The following pairs must then be reflections of each other
mm - yy
dd - yy

In the 21st Century the firsy YY pair will always be 20
This means that dd must be the reflection, 02

We now know half of the problem solution, additionally we know every palindrome date this century will take place on the second of the month.

Our new problem
mm 02 20 yy

mm is an element of the set [01,02,03,04,05,06,07,08,09,10,11,12]
yy must reflect mm to be a palindrome date
so we now know that
yy is an element of the set [10,20,30,40,50,60,70,80,90,01,11,21]


We now know enough information to solve the problem, there are 12 palindrome dates in the century

The ordered palindrome dates
10/02/2001
01/02/2010
11/02/2011
02/02/2020
12/02/2021
03/02/2030
04/02/2040
05/02/2050
06/02/2060
07/02/2070
08/02/2080
09/02/2090

8 of which occur after 02/02/2020
