--Sql Data Types
--Numeric Data types
declare @aa tinyint
set @aa = 255
select @aa

declare @bb smallint
set @bb = -400
select @bb

declare @cc int
set @cc = -5260
select @cc

declare @dd bigint
set @dd = -5260
select @dd AS 'Bigint'

declare @ee bit
set @ee = null
select @ee

declare @ff decimal(7,2)
set @ff = 255.121239
select @ff

declare @gg numeric(7,2)
set @gg = 255.129
select @gg

declare @nn money
set @nn = 25678567856785.129
select @nn


--Text Data Types
declare @hh nvarchar(77)
set @hh = N'????'
select @hh

declare @ii smallmoney
set @ii = 214112
select @ii

declare @jj char(77)
set @jj = 'asdfasd'
select @jj

declare @kk nchar(77)
set @kk = '????'
select @kk

declare @ll varchar(77)
set @ll = 'asdf asdf asdf '
select @ll

declare @mm nvarchar(77)
set @mm= N'????'
select @mm


--date types

declare @oo Date
set @oo = getDate()
select @oo

declare @pp Date
set @pp = '12-12-2009'
select @pp

declare @qq time
set @qq = '12:12:12'
select @qq


--Approximate numeric 
declare @rr float
set @rr = 12.12123123123
select @rr

declare @ss real
set @ss = 12.12123123123
select @ss