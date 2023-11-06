CREATE TABLE `topics`
(
    `id`          int(10) unsigned NOT NULL AUTO_INCREMENT,
    `topic_descr` varchar(500)     NOT NULL DEFAULT '',
    `lang`        varchar(2)       NOT NULL DEFAULT '',
    `kolxoz_code` varchar(10)      NOT NULL DEFAULT '',
    `topic_id`    int(5) unsigned           DEFAULT NULL,
    `topic_id_hl` int(5) unsigned           DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `LANG` (`lang`) USING BTREE,
    KEY `topic_id+topic_id_hl` (`topic_id`, `topic_id_hl`),
    KEY `topic_id` (`topic_id`),
    KEY `topic_id_hl` (`topic_id_hl`),
    KEY `topic_id+lang` (`topic_id`, `lang`),
    KEY `topic_id_hl+lang` (`topic_id_hl`, `lang`)
) ENGINE = MyISAM
  AUTO_INCREMENT = 647
  DEFAULT CHARSET = utf8
  COLLATE = utf8_general_ci;

SET character_set_client = @saved_cs_client;

LOCK TABLES `topics` WRITE;
ALTER TABLE `topics`
    DISABLE KEYS;

# Inserts omitted
