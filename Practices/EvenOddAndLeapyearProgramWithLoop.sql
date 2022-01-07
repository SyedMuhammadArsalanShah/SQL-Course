DECLARE @first INT , @end int  
set @first = 2
SET @end=22
WHILE ( @first <= @end)
BEGIN
IF (@first%2=0)
print 'Even' + CONVERT(VARCHAR,@first)
ELSE
print 'odd' +  CONVERT(VARCHAR,@first)
    SET @first  = @first  + 1
END


DECLARE @first INT , @end int  
set @first = 2001
SET @end=2021
WHILE ( @first <= @end)
BEGIN


IF (@first %4=0)
print 'leap year' + CONVERT(VARCHAR,@first)
ELSE
print 'is not leap' +  CONVERT(VARCHAR,@first)

    SET @first  = @first  + 1
END