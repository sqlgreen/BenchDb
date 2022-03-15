CREATE VIEW MyViews.vw_MyTable_01800
AS
SELECT
                D.ColKey
,               K.DT
,               D.CA
,               D.CB
,               D.CC
,               D.CD
,               D.CE
,               D.CF
,               D.CG
,               D.CH
,               D.CI
,               D.CJ
,               D.CK
,               D.CL
,               D.CM
,               D.CN
,               D.CO
,               D.CP
,               D.CQ
,               D.CR
,               D.CS
,               D.CT
,               D.CU
,               D.CV
,               D.CW
,               D.CX
,               D.CY
,               D.CZ
FROM MySchema.MyTable_01800 D
JOIN MySchema.MyTable_Key_01800 K ON D.ColKey = K.ColKey
WHERE K.ColKey <> 0
