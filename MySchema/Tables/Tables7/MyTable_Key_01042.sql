﻿CREATE TABLE [MySchema].[MyTable_Key_01042] (
    [ColKey] BIGINT   NOT NULL,
    [DT]     DATETIME NOT NULL,
    CONSTRAINT [PK_MyTable_Key_01042] PRIMARY KEY CLUSTERED ([ColKey] ASC) WITH (DATA_COMPRESSION = PAGE)
);

