CREATE PROCEDURE dbo.Get_MyTable_00530
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
FROM MyViews.vw_MyTable_00530
WHERE ColKey = @ColKey;
