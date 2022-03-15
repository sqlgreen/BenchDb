CREATE PROCEDURE dbo.Get_MyTable_01939
                @ColKey              BIGINT
AS
SELECT 
                ColKey 
,               DT
,               CA
,               CB
,               CC
,               CD
,               CE
,               CF
,               CG
,               CH
,               CI
,               CJ
,               CK
,               CL
,               CM
,               CN
,               CO
,               CP
,               CQ
,               CR
,               CS
,               CT
,               CU
,               CV
,               CW
,               CX
,               CY
,               CZ
FROM MyViews.vw_MyTable_01939
WHERE ColKey = @ColKey;
