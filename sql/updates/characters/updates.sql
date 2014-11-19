ALTER TABLE character_aura
MODIFY COLUMN effect_mask INT(10) UNSIGNED DEFAULT 0,
MODIFY COLUMN recalculate_mask INT(10) UNSIGNED DEFAULT 0;

ALTER TABLE pet_aura
MODIFY COLUMN effect_mask INT(10) UNSIGNED DEFAULT 0,
MODIFY COLUMN recalculate_mask INT(10) UNSIGNED DEFAULT 0;
ALTER TABLE `character_glyphs`
DROP COLUMN `glyph7`,
DROP COLUMN `glyph8`,
DROP COLUMN `glyph9`;
ALTER TABLE `item_instance`   
  ADD COLUMN `reforgeID` INT(10) DEFAULT 0  NULL AFTER `randomPropertyId`,
  ADD COLUMN `transmogrifyId` INT(10) DEFAULT 0  NULL AFTER `reforgeID`;
CREATE TABLE IF NOT EXISTS `account_battle_pet` (
    `id` bigint(20) unsigned NOT NULL DEFAULT '0',
    `accountId` int(10) unsigned NOT NULL DEFAULT '0',
    `species` smallint(5) unsigned NOT NULL DEFAULT '0',
    `nickname` varchar(16) NOT NULL DEFAULT '',
    `level` tinyint(3) unsigned NOT NULL DEFAULT '1',
    `xp` smallint(5) unsigned NOT NULL DEFAULT '0',
    `health` smallint(5) unsigned NOT NULL DEFAULT '0',
    `maxHealth` smallint(5) unsigned NOT NULL DEFAULT '0',
    `power` smallint(5) unsigned NOT NULL DEFAULT '0',
    `speed` smallint(5) unsigned NOT NULL DEFAULT '0',
    `quality` tinyint(3) unsigned NOT NULL DEFAULT '0',
    `breed` tinyint(3) unsigned NOT NULL DEFAULT '0',
    `flags` smallint(5) unsigned NOT NULL DEFAULT '0',
PRIMARY KEY (`id`));
CREATE TABLE IF NOT EXISTS `account_battle_pet_slots` (
    `accountId` int(10) unsigned NOT NULL DEFAULT '0',
    `slot1` bigint(20) unsigned NOT NULL DEFAULT '0',
    `slot2` bigint(20) unsigned NOT NULL DEFAULT '0',
    `slot3` bigint(20) unsigned NOT NULL DEFAULT '0',
    `flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
PRIMARY KEY (`accountId`));
ALTER TABLE `account_battle_pet` ADD COLUMN `timestamp` int(10) unsigned NOT NULL DEFAULT '0' AFTER `nickname`;
ALTER TABLE `character_queststatus`
DROP COLUMN `mobcount1`,
DROP COLUMN `mobcount2`,
DROP COLUMN `mobcount3`,
DROP COLUMN `mobcount4`,
DROP COLUMN `itemcount1`,
DROP COLUMN `itemcount2`,
DROP COLUMN `itemcount3`,
DROP COLUMN `itemcount4`,
DROP COLUMN `playercount`;
CREATE TABLE IF NOT EXISTS `character_queststatus_objective` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `objectiveId` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`objectiveId`,`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
