PL/SQL

Procedural Language / Standard Query Language
Significant Member of Oracle Programming Tool Set
Extensively Used to Code Server Side Programming
Case-insensitive Programming Language

Blocks
	basic programming unit
	Anonymous
	Named 
		Declaration
		Execution - mandatory
		Exception-handling 

	Declare
		definition of var, const cursors
		start with DECLARE

	Execution (Begin -> End)
		mandatory
		DML commands
		DDL commands
		NDS(Native Dynamic SQL)
		DMBS_SQL

	Exception-handling

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Variables (Oracle SQL Developer)

SET SERVEROUTPUT ON;
DECLARE
	v_test	VARCHAR(15);
BEGIN
	v_test := 'RebellionRider';
	DBMS_OUTPUT.PUT_LINE(v_test);
END;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SELECT INTO 

SET SERVEROUPUT ON;
DECLARE
	v_salary 	NUMBER(8);			// datatype(datawidth); num 8 bit
	v_fname 	VARCHAR2(20);		// char length 20 I think
BEGIN
	SELECT salary, first_name INTO v_salary, v_fname FROM employees
	WHERE employee_id = 100;
	DBMS_OUTPUT.PUT_LINE(v_fname || ' Has Salary ' || v_salary);
END; 

//outputs from employee; from this lesson he also mentioned WHERE method*
//Steven Has Salary 24000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Anchored Datatype %TYPE

SET SERVEROUTPUT ON;
DECLARE
	v_fname students.first_name%TYPE;	// i think this is better practice
BEGIN
	SELECT first_name INTO v_fname FROM students WHERE stu_id = 1;
	// = 1?; i still dont understand where method
	DBMS_OUTPUT.PUT_LINE(v_fname);
END;
/
ALTER TABLE students MODIFY first_name CHAR(10);	//this modifies table students
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Constraints (must initialize in declare only, on begin cannot, i think)

SET SERVEROUTPUT ON;
DECLARE
	v_pi CONSTANT NUMBER(7, 6) := 3.141592;
BEGIN 		//if you give value on constant at BEGIN -> END you will receive error
	DBMS_OUTPUT.PUT_LINE(v_pi);
END;
/
DECLARE 	//NOT NULLandDEFAULT worked together, but what will happen if one is miss
	v_pi CONSTANT NUMBER(7, 6) NOT NULL DEFAULT 3.141592;
BEGIN 		//if you give value on constant at BEGIN -> END you will receive error
	DBMS_OUTPUT.PUT_LINE(v_pi);
END;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Bind

SET SERVEROUTPUT ON;
set autoprint on; --after exec auto prints variables
variable v_bind1 varchar2(10);
exec :v_bind1 := 'RebellionRider';
/

begin
	:v_bind1 := 'Manish Sharma';
	DBMS_OUTPUT.PUT_LINE(v_bind1);
end;
/

print :v_bind1;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Conditional Statements
if ->	if then
		if then else
		if then else if

case -> simple case
		searched case
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if-then statements

if condition then
	statement1;
END IF

set serveroutput on;
declare
	v_num number := 9;
begin
	if v_num < 10 then
		DBMS_OUTPUT.PUT_LINE('inside the if');
	end if
		DBMS_OUTPUT.PUT_LINE('outisde the if');
end;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if-then else

if condition then
	statement1;
else
	statement2;
end if
	statement3;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if then else if

if condition1 then 
	statement1;
else if conditon2 then
	statement2;
else
	statement3;
end if
	statement4;















