-- DECLARE
-- i NUMBER;
-- j NUMBER;
-- BEGIN
--     FOR i IN 1..5 LOOP
--     FOR j IN 1..i LOOP
--     DBMS_OUTPUT.PUT('* ');
--     END LOOP;
--     DBMS_OUTPUT.PUT_LINE(' ');
--     END LOOP;
--     END;
--     /

-- DECLARE
--   i NUMBER;
--   j NUMBER;
-- BEGIN
--   FOR i IN 1..5 LOOP
--     FOR j IN 1..i LOOP
--       DBMS_OUTPUT.PUT(j || ' ');
--     END LOOP;
--     DBMS_OUTPUT.PUT_LINE('');
--   END LOOP;
-- END;
-- 
-- VARRAY

-- DECLARE
--   -- Step 1: Create a new type that can store 5 numbers
--   TYPE NumberArray IS VARRAY(5) OF NUMBER;

--   -- Step 2: Create a variable of that type
--   arr NumberArray := NumberArray();

--   -- Step 3: Declare variables for input
--   i NUMBER;
--   num NUMBER;
-- BEGIN
--   -- Step 4: Take 5 inputs from the user and store in array
--   FOR i IN 1..5 LOOP
--     num := &give_number;  -- will ask user to enter number
--     arr.EXTEND;            -- make space in array
--     arr(i) := num;         -- store number
--   END LOOP;

--   -- Step 5: Print all the array elements
--   DBMS_OUTPUT.PUT_LINE('You entered:');
--   FOR i IN 1..arr.COUNT LOOP
--     DBMS_OUTPUT.PUT_LINE('Element ' || i || ': ' || arr(i));
--   END LOOP;
-- END;
-- /

--procedure

-- CREATE OR REPLACE PROCEDURE greet_user(name IN VARCHAR2) IS
-- BEGIN
--   DBMS_OUTPUT.PUT_LINE('Hello, ' || name);
-- END;
-- /

-- BEGIN
--   greet_user('Prasanth');
-- END;

--function

-- CREATE OR REPLACE FUNCTION square(x IN NUMBER)
-- RETURN NUMBER IS
-- BEGIN
--   RETURN x * x;
-- END;
-- /

-- DECLARE
--   res NUMBER;
-- BEGIN
--   res := square(6);
--   DBMS_OUTPUT.PUT_LINE('Square is: ' || res);
-- END;

--packages

-- CREATE OR REPLACE PACKAGE math_pkg IS
--   FUNCTION add(a NUMBER, b NUMBER) RETURN NUMBER;
--   PROCEDURE say_hello;
-- END;
-- /

-- CREATE OR REPLACE PACKAGE BODY math_pkg IS
--   FUNCTION add(a NUMBER, b NUMBER) RETURN NUMBER IS
--   BEGIN
--     RETURN a + b;
--   END;

--   PROCEDURE say_hello IS
--   BEGIN
--     DBMS_OUTPUT.PUT_LINE('Hello from Package');
--   END;
-- END;
-- /

-- BEGIN
--   DBMS_OUTPUT.PUT_LINE('Sum: ' || math_pkg.add(10, 20));
--   math_pkg.say_hello;
-- END;

--Exception Handling 

-- BEGIN
--   DECLARE
--     a NUMBER := 10;
--     b NUMBER := 0;
--     c NUMBER;
--   BEGIN
--     c := a / b;
--     DBMS_OUTPUT.PUT_LINE('Result: ' || c);
--   EXCEPTION
--     WHEN ZERO_DIVIDE THEN
--       DBMS_OUTPUT.PUT_LINE('Cannot divide by zero.');
--   END;
-- END;

--USER DEFINED EXCEPTION 

-- DECLARE
--   age NUMBER := 15;
--   underage EXCEPTION;
-- BEGIN
--   IF age < 18 THEN
--     RAISE underage;
--   END IF;
-- EXCEPTION
--   WHEN underage THEN
--     DBMS_OUTPUT.PUT_LINE('Underage not allowed.');
-- END;

