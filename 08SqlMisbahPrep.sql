DECLARE @CHECK INT  SET @CHECK =5
-- EVEN ODD PROGRAM
IF (@CHECK %2=0)
Select 'EVEN' + CONVERT(VARCHAR,@CHECK)  aS 'NUMBER' 
ELSE
Select 'ODD' +  CONVERT(VARCHAR,@CHECK)aS 'NUMBER'

-- POSITIVE AND NEGATIVE  PROGRAM
IF (@CHECK >0)
Select 'POSITIVE' +  CONVERT(VARCHAR,@CHECK)aS 'NUMBER'
ELSE
Select 'NEGATIVE' +  CONVERT(VARCHAR,@CHECK)aS 'NUMBER'

 --FACTORIAL PROGRAM
DECLARE @Counter INT ,@FACT INT 
SET  @FACT=1
SET @Counter=1
WHILE ( @Counter < @CHECK)
BEGIN
    SET @Counter  = @Counter  + 1
	SET @FACT = @FACT *@Counter
END
SELECT 'The FACTORIAL  value ' + CONVERT(VARCHAR,@CHECK) + ' is = ' + CONVERT(VARCHAR,@FACT) aS 'FACTORIAL NUMBER'


   -- SOME NOTE 
  --BEGIN ,END 
  --BEGIN FOR START BLOCK
  --END FOR CLOSE BLOCK 
  --The CONVERT() function converts a value (of any type) into a specified datatype.
  --CONVERT(data_type(length), expression)

