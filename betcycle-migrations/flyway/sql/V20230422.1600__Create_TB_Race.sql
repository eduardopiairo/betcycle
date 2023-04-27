CREATE TABLE [Race] (
    [RaceId]        INT           IDENTITY (1, 1) NOT NULL,
    [RaceName]      NVARCHAR (50) NULL,
    [RaceYear]      INT           NULL,
    [RaceStartDate] DATE          NULL,
    [RaceEndDate]   DATE           NULL,
    CONSTRAINT [PK_RaceId] PRIMARY KEY CLUSTERED ([RaceId] ASC)
);

