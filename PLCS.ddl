CREATE DATABASE PLCS;

CREATE TABLE [Library_Tbl](
[ID] uniqueidentifier NULL,
[Title] nvarchar(75) NULL,
[Description] nvarchar(150) NULL,
[Author] varchar(50) NULL,
[PublishDate] datetime NULL,
[Flag] bit NULL,
CONSTRAINT library_pk PRIMARY KEY (ID)
);

CREATE TABLE [BooksStatus_Tbl](
[ID] uniqueidentifier NULL,
[BookID] uniqueidentifier NULL,
[Status] bit NULL,
CONSTRAINT booksstatus_pk PRIMARY KEY (ID),
CONSTRAINT library_fk FOREIGN KEY (BookID) REFERENCES Library_Tbl(ID)
);

CREATE TABLE [Members_Tbl](
[ID] uniqueidentifier NULL,
[Username] nvarchar(25) NULL,
[Firstname] varchar(25) NULL,
[Lastname] varchar(25) NULL,
[Initials] varchar(2) NULL,
[Address] nvarchar(100) NULL,
[City] varchar(50) NULL,
[State] varchar(2) NULL,
[Flag] bit NULL,
CONSTRAINT members_pk PRIMARY KEY (ID)
);

CREATE TABLE [BooksRecord_Tbl](
[UserID] uniqueidentifier NULL,
[BookID] uniqueidentifier NULL,
[BorrowDate] datetime NULL,
[Flag] bit NULL,
CONSTRAINT library_fk FOREIGN KEY (UserID) REFERENCES Members_Tbl(ID),
CONSTRAINT library_fk FOREIGN KEY (BookID) REFERENCES Library_Tbl(ID)
);