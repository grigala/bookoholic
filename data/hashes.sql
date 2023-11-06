CREATE TABLE `hashes`
(
    `md5`      char(32) NOT NULL,
    `crc32`    char(8)  NOT NULL DEFAULT '',
    `edonkey`  char(32) NOT NULL DEFAULT '',
    `aich`     char(32) NOT NULL DEFAULT '',
    `sha1`     char(40) NOT NULL DEFAULT '',
    `tth`      char(39) NOT NULL DEFAULT '',
    `torrent`  text              DEFAULT NULL,
    `btih`     char(40) NOT NULL DEFAULT '',
    `sha256`   char(64) NOT NULL DEFAULT '',
    `ipfs_cid` char(62) NOT NULL DEFAULT '',
    UNIQUE KEY `MD5` (`md5`) USING BTREE
) ENGINE = MyISAM
  DEFAULT CHARSET = utf8
  COLLATE = utf8_general_ci;

SET character_set_client = @saved_cs_client;

LOCK TABLES `hashes` WRITE;
ALTER TABLE `hashes`
    DISABLE KEYS;

# Inserts omitted
