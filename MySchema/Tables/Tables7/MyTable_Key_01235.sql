﻿CREATE TABLE [MySchema].[MyTable_Key_01235] (
    [ColKey] BIGINT   NOT NULL,
    [DT]     DATETIME NOT NULL,
    CONSTRAINT [PK_MyTable_Key_01235] PRIMARY KEY CLUSTERED ([ColKey] ASC) WITH (DATA_COMPRESSION = PAGE)
);

