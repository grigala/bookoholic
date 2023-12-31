CREATE TABLE `updated`
(
    `ID`               int(15) unsigned    NOT NULL AUTO_INCREMENT,
    `Title`            varchar(2000)                DEFAULT '',
    `VolumeInfo`       varchar(100)                 DEFAULT '',
    `Series`           varchar(300)                 DEFAULT '',
    `Periodical`       varchar(200)                 DEFAULT '',
    `Author`           varchar(1000)                DEFAULT '',
    `Year`             varchar(14)                  DEFAULT '',
    `Edition`          varchar(60)                  DEFAULT '',
    `Publisher`        varchar(400)                 DEFAULT '',
    `City`             varchar(100)                 DEFAULT '',
    `Pages`            varchar(100)                 DEFAULT '',
    `PagesInFile`      int(10) unsigned    NOT NULL DEFAULT 0,
    `Language`         varchar(150)                 DEFAULT '',
    `Topic`            varchar(500)                 DEFAULT '',
    `Library`          varchar(50)                  DEFAULT '',
    `Issue`            varchar(100)                 DEFAULT '',
    `Identifier`       varchar(300)                 DEFAULT '',
    `ISSN`             varchar(9)                   DEFAULT '',
    `ASIN`             varchar(200)                 DEFAULT '',
    `UDC`              varchar(200)                 DEFAULT '',
    `LBC`              varchar(200)                 DEFAULT '',
    `DDC`              varchar(45)                  DEFAULT '',
    `LCC`              varchar(45)                  DEFAULT '',
    `Doi`              varchar(45)                  DEFAULT '',
    `Googlebookid`     varchar(45)                  DEFAULT '',
    `OpenLibraryID`    varchar(200)                 DEFAULT '',
    `Commentary`       varchar(10000)               DEFAULT '',
    `DPI`              int(6) unsigned              DEFAULT 0,
    `Color`            varchar(1)                   DEFAULT '',
    `Cleaned`          varchar(1)                   DEFAULT '',
    `Orientation`      varchar(1)                   DEFAULT '',
    `Paginated`        varchar(1)                   DEFAULT '',
    `Scanned`          varchar(1)                   DEFAULT '',
    `Bookmarked`       varchar(1)                   DEFAULT '',
    `Searchable`       varchar(1)                   DEFAULT '',
    `Filesize`         bigint(20) unsigned NOT NULL DEFAULT 0,
    `Extension`        varchar(50)                  DEFAULT '',
    `MD5`              char(32)                     DEFAULT '',
    `Generic`          char(32)                     DEFAULT '',
    `Visible`          char(3)                      DEFAULT '',
    `Locator`          varchar(733)                 DEFAULT '',
    `Local`            int(10) unsigned             DEFAULT 0,
    `TimeAdded`        timestamp           NOT NULL DEFAULT '2000-01-01 05:00:00',
    `TimeLastModified` timestamp           NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    `Coverurl`         varchar(200)                 DEFAULT '',
    `Tags`             varchar(500)                 DEFAULT '',
    `IdentifierWODash` varchar(300)                 DEFAULT '',
    PRIMARY KEY (`ID`),
    UNIQUE KEY `MD5` (`MD5`),
    KEY `Generic` (`Generic`) USING BTREE,
    KEY `VisibleTimeAdded` (`Visible`, `TimeAdded`) USING BTREE,
    KEY `TimeAdded` (`TimeAdded`) USING BTREE,
    KEY `Topic` (`Topic`(3)) USING BTREE,
    KEY `VisibleID` (`Visible`, `ID`) USING BTREE,
    KEY `VisibleTimeLastModified` (`Visible`, `TimeLastModified`, `ID`) USING BTREE,
    KEY `TimeLastModifiedID` (`TimeLastModified`, `ID`) USING BTREE,
    KEY `DOI_INDEX` (`Doi`) USING BTREE,
    KEY `Identifier` (`Identifier`),
    KEY `Language` (`Language`),
    KEY `Extension` (`Extension`),
    FULLTEXT KEY `Title` (`Title`),
    FULLTEXT KEY `Author` (`Author`),
    FULLTEXT KEY `Language_FTS` (`Language`),
    FULLTEXT KEY `Publisher` (`Publisher`),
    FULLTEXT KEY `Series` (`Series`),
    FULLTEXT KEY `Year` (`Year`),
    FULLTEXT KEY `Title1` (`Title`, `Author`, `Series`, `Publisher`, `Year`, `Periodical`, `VolumeInfo`),
    FULLTEXT KEY `Tags` (`Tags`),
    FULLTEXT KEY `Identifierfulltext` (`IdentifierWODash`)
) ENGINE = MyISAM
  AUTO_INCREMENT = 4119678
  DEFAULT CHARSET = utf8
  COLLATE = utf8_general_ci;

SET character_set_client = @saved_cs_client;

LOCK TABLES `updated` WRITE;
ALTER TABLE `updated`
    DISABLE KEYS;

# Inserts omitted
