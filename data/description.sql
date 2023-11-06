CREATE TABLE `description`
(
    `id`               int(11)                                                NOT NULL AUTO_INCREMENT,
    `md5`              varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `descr`            mediumtext                                             NOT NULL,
    `toc`              mediumtext                                             NOT NULL,
    `TimeLastModified` timestamp                                              NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    PRIMARY KEY (`id`),
    UNIQUE KEY `md5_unique` (`md5`) USING BTREE,
    KEY `time` (`TimeLastModified`) USING BTREE
) ENGINE = MyISAM
  AUTO_INCREMENT = 3375143
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_bin;

SET character_set_client = @saved_cs_client;

LOCK TABLES `description` WRITE;
# Disable before insert
ALTER TABLE `description`
    DISABLE KEYS;

# Inserts omitted
