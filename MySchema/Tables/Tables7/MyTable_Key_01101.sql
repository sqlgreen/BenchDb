﻿CREATE TABLE [MySchema].[MyTable_Key_01101] (
    [ColKey] BIGINT   NOT NULL,
    [DT]     DATETIME NOT NULL,
    CONSTRAINT [PK_MyTable_Key_01101] PRIMARY KEY CLUSTERED ([ColKey] ASC) WITH (DATA_COMPRESSION = PAGE)
);

