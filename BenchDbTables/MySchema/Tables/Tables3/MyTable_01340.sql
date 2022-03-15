﻿CREATE TABLE [MySchema].[MyTable_01340] (
    [ColKey] BIGINT        NOT NULL,
    [C1]     BIGINT        NOT NULL,
    [C2]     BIGINT        NOT NULL,
    [C3]     BIGINT        NOT NULL,
    [C4]     BIGINT        NOT NULL,
    [C5]     BIGINT        NOT NULL,
    [C6]     BIGINT        NOT NULL,
    [C7]     BIGINT        NOT NULL,
    [C8]     BIGINT        NOT NULL,
    [C9]     BIGINT        NOT NULL,
    [CA]     NVARCHAR (10) NOT NULL,
    [CB]     NVARCHAR (10) NOT NULL,
    [CC]     NVARCHAR (10) NOT NULL,
    [CD]     NVARCHAR (10) NOT NULL,
    [CE]     NVARCHAR (10) NOT NULL,
    [CF]     NVARCHAR (10) NOT NULL,
    [CG]     NVARCHAR (10) NOT NULL,
    [CH]     NVARCHAR (10) NOT NULL,
    [CI]     NVARCHAR (10) NOT NULL,
    [CJ]     NVARCHAR (10) NOT NULL,
    [CK]     NVARCHAR (10) NOT NULL,
    [CL]     NVARCHAR (10) NOT NULL,
    [CM]     NVARCHAR (10) NOT NULL,
    [CN]     NVARCHAR (10) NOT NULL,
    [CO]     NVARCHAR (10) NOT NULL,
    [CP]     NVARCHAR (10) NOT NULL,
    [CQ]     NVARCHAR (10) NOT NULL,
    [CR]     NVARCHAR (10) NOT NULL,
    [CS]     NVARCHAR (10) NOT NULL,
    [CT]     NVARCHAR (10) NOT NULL,
    [CU]     NVARCHAR (10) NOT NULL,
    [CV]     NVARCHAR (10) NOT NULL,
    [CW]     NVARCHAR (10) NOT NULL,
    [CX]     NVARCHAR (10) NOT NULL,
    [CY]     NVARCHAR (10) NOT NULL,
    [CZ]     NVARCHAR (10) NOT NULL,
    CONSTRAINT [PK_MyTable_01340] PRIMARY KEY CLUSTERED ([ColKey] ASC, [CZ] ASC) WITH (DATA_COMPRESSION = PAGE),
    CONSTRAINT [FK_MyTable_Key_01340_MyTable01340] FOREIGN KEY ([ColKey]) REFERENCES [MySchema].[MyTable_Key_01340] ([ColKey]),
    CONSTRAINT [BK_MyTable_01340_CZ] UNIQUE NONCLUSTERED ([CZ] ASC) WITH (DATA_COMPRESSION = PAGE)
);

