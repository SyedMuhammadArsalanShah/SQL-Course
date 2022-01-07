
DECLARE @i INT, @num int, @Prime bit
SET  @i=2
set @Prime=1
set @num=7 --here is your insert value 
WHILE ( @i < @num)
BEGIN


    IF(@num % @i = 0) 
	
	BEGIN

    SET @Prime =0
	BREAK
	END
    SET @i = @i+ 1


END
    --If is Prime is 1 then the number is prime else not
IF (@Prime=1) 
BEGIN
print 'is a Prime Number ' + CONVERT(VARCHAR,@num)
END
ELSE	 
BEGIN
print 'is not a Prime Number ' + CONVERT(VARCHAR,@num)
END
--some prime numbers
--2 3 5 7 11 13 17 19 23
/*
Break Statement is a loop control statement
that is used to terminate the loop.
As soon as the break statement is encountered from 
within a loop, the loop iterations stop there, 
and control returns from the loop immediately 
to the first statement after the loop.
*/

