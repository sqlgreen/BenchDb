CREATE TABLE [MySchema].[MyTable_Key_01220] (
    [ColKey] BIGINT   NOT NULL,
    [DT]     DATETIME NOT NULL,
    CONSTRAINT [PK_MyTable_Key_01220] PRIMARY KEY CLUSTERED ([ColKey] ASC) WITH (DATA_COMPRESSION = PAGE)
);

