/*
```sql
/*
===========================================================
                    PL/SQL BASICS
===========================================================

PL/SQL BLOCK STRUCTURE

DECLARE
    - Variables
    - Constants
    - Cursors
    - Functions
    - Procedures

BEGIN
    - Executable statements
    - Main logic

EXCEPTION
    - Error handling
    - Handle errors/exceptions here

END;
/
===========================================================
*/


/*
===========================================================
1. WHILE LOOP
===========================================================

Print numbers from 5 to 19 using a WHILE LOOP.
*/

DECLARE
    AGE NUMBER := 19;
    x   NUMBER := 5;
BEGIN

    WHILE x <= AGE LOOP

        DBMS_OUTPUT.PUT_LINE(x);

        x := x + 1;

    END LOOP;

END;
/


/*
===========================================================
2. VARIABLES, OUTPUT AND IF-ELSE
===========================================================

A variable must be declared in the DECLARE section.

We can change the value of an already declared variable
inside the BEGIN section.
*/

DECLARE
    AGE NUMBER := 19;
BEGIN

    DBMS_OUTPUT.PUT_LINE('Hello Abhishek');
    DBMS_OUTPUT.PUT_LINE('Hello Gungun');

    -- Print initial value
    DBMS_OUTPUT.PUT_LINE(AGE);

    -- Change the value
    AGE := 20;

    -- Print updated value
    DBMS_OUTPUT.PUT_LINE(AGE);

    -- IF-ELSE condition
    IF AGE = 20 THEN
        DBMS_OUTPUT.PUT_LINE('We got 20');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Not 20');
    END IF;

END;
/


/*
===========================================================
3. FOR LOOP + MOD + IF CONDITION
===========================================================

Print numbers from 1 to 100.

Count how many numbers are divisible by both 2 and 7.
*/

DECLARE
    i         NUMBER;
    count_num NUMBER := 0;
BEGIN

    FOR i IN 1..100 LOOP

        -- Print the current number
        DBMS_OUTPUT.PUT_LINE(i);

        -- Check whether the number is divisible by
        -- both 2 and 7
        IF MOD(i, 2) = 0 AND MOD(i, 7) = 0 THEN

            count_num := count_num + 1;

        END IF;

    END LOOP;

    -- Print the final count
    DBMS_OUTPUT.PUT_LINE('Count = ' || count_num);

END;
/*
QUESTIONS-
1. weather a string a plaindrome or not
2. Take a number and find out weather that's a armstrong number or not
3. From the value 1 to 600 you have to find out all the prime number
4. Pdhkr aana record datatype in plsql practically krke bhi ana hai
5. percentage type and percentage row type
*/