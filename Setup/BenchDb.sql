/*
	Create your own -
	1 Run this to create a new database with lots of objects
	2 Import BenchDb into an empty SSDT project to test with
*/

USE master
GO

IF DB_ID('BenchDb') IS NOT NULL DROP DATABASE BenchDb;
GO

CREATE DATABASE BenchDb
GO

USE BenchDb
GO

CREATE SCHEMA MySchema;
GO

CREATE SCHEMA MyViews;
GO

DECLARE @Counter	INT				=	0
DECLARE @CounterT	NVARCHAR(10)	
DECLARE @Sql		NVARCHAR(MAX)

WHILE @Counter < 2000
BEGIN

SET @CounterT = RIGHT(N'0000' + CAST(@Counter AS NVARCHAR(10)), 5);

SET @Sql = N'CREATE TABLE MySchema.MyTable_Key_' + @CounterT + ' (
	ColKey	BIGINT			NOT NULL
,	DT		DATETIME		NOT NULL
,	CONSTRAINT PK_MyTable_Key_' + @CounterT + ' PRIMARY KEY CLUSTERED (ColKey)
)
on [DEFAULT]
WITH (DATA_COMPRESSION = PAGE)'
EXEC(@Sql)

SET @Sql = N'CREATE TABLE MySchema.MyTable_' + @CounterT + ' (
	ColKey	BIGINT			NOT NULL
,	C1		BIGINT			NOT NULL
,	C2		BIGINT			NOT NULL
,	C3		BIGINT			NOT NULL
,	C4		BIGINT			NOT NULL
,	C5		BIGINT			NOT NULL
,	C6		BIGINT			NOT NULL
,	C7		BIGINT			NOT NULL
,	C8		BIGINT			NOT NULL
,	C9		BIGINT			NOT NULL
,	CA		NVARCHAR(10)	NOT NULL
,	CB		NVARCHAR(10)	NOT NULL
,	CC		NVARCHAR(10)	NOT NULL
,	CD		NVARCHAR(10)	NOT NULL
,	CE		NVARCHAR(10)	NOT NULL
,	CF		NVARCHAR(10)	NOT NULL
,	CG		NVARCHAR(10)	NOT NULL
,	CH		NVARCHAR(10)	NOT NULL
,	CI		NVARCHAR(10)	NOT NULL
,	CJ		NVARCHAR(10)	NOT NULL
,	CK		NVARCHAR(10)	NOT NULL
,	CL		NVARCHAR(10)	NOT NULL
,	CM		NVARCHAR(10)	NOT NULL
,	CN		NVARCHAR(10)	NOT NULL
,	CO		NVARCHAR(10)	NOT NULL
,	CP		NVARCHAR(10)	NOT NULL
,	CQ		NVARCHAR(10)	NOT NULL
,	CR		NVARCHAR(10)	NOT NULL
,	CS		NVARCHAR(10)	NOT NULL
,	CT		NVARCHAR(10)	NOT NULL
,	CU		NVARCHAR(10)	NOT NULL
,	CV		NVARCHAR(10)	NOT NULL
,	CW		NVARCHAR(10)	NOT NULL
,	CX		NVARCHAR(10)	NOT NULL
,	CY		NVARCHAR(10)	NOT NULL
,	CZ		NVARCHAR(10)	NOT NULL
,	CONSTRAINT PK_MyTable_' + @CounterT + ' PRIMARY KEY CLUSTERED (ColKey, CZ)
)
on [DEFAULT]
WITH (DATA_COMPRESSION = PAGE)

ALTER TABLE MySchema.MyTable_' + @CounterT + ' ADD CONSTRAINT BK_MyTable_' + @CounterT +  '_CZ UNIQUE (CZ) WITH (DATA_COMPRESSION = PAGE)

ALTER TABLE MySchema.MyTable_' + @CounterT + ' WITH CHECK
   ADD CONSTRAINT FK_MyTable_Key_' + @CounterT + '_MyTable' + @CounterT + ' FOREIGN KEY (ColKey)
      REFERENCES MySchema.MyTable_Key_' + @CounterT + ' (ColKey)
'
EXEC(@Sql);

SET @Sql = 'CREATE VIEW MyViews.vw_MyTable_' + @CounterT + '
AS
SELECT
	D.ColKey
,	K.DT
,	D.CA
,	D.CB
,	D.CC
,	D.CD
,	D.CE
,	D.CF
,	D.CG
,	D.CH
,	D.CI
,	D.CJ
,	D.CK
,	D.CL
,	D.CM
,	D.CN
,	D.CO
,	D.CP
,	D.CQ
,	D.CR
,	D.CS
,	D.CT
,	D.CU
,	D.CV
,	D.CW
,	D.CX
,	D.CY
,	D.CZ
FROM MySchema.MyTable_' + @CounterT + ' D
JOIN MySchema.MyTable_Key_' + @CounterT + ' K ON D.ColKey = K.ColKey
WHERE K.ColKey <> 0
'
EXEC(@Sql);

SET @Sql = 'CREATE PROCEDURE dbo.Get_MyTable_' + @CounterT + '
	@ColKey	BIGINT
AS
SELECT 
	ColKey 
,	DT
,	CA
,	CB
,	CC
,	CD
,	CE
,	CF
,	CG
,	CH
,	CI
,	CJ
,	CK
,	CL
,	CM
,	CN
,	CO
,	CP
,	CQ
,	CR
,	CS
,	CT
,	CU
,	CV
,	CW
,	CX
,	CY
,	CZ
FROM MyViews.vw_MyTable_' + @CounterT + '
WHERE ColKey = @ColKey;
'
EXEC(@Sql);

PRINT @Counter
SET @Counter = @Counter + 1;
PRINT '--'

END


SELECT COUNT(*) FROM sys.objects