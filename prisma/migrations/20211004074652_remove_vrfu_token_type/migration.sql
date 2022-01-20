/*
  Warnings:

  - The values [VRFU] on the enum `UserToken_type` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterTable
ALTER TABLE `UserLogin` ADD COLUMN `active` BOOLEAN NOT NULL DEFAULT false;

-- make all users with AUTH token active
UPDATE `UserLogin` SET `active` = IF((SELECT DISTINCT COUNT(`type`) FROM `UserToken` WHERE `UserLogin`.`id` = `UserToken`.`userId` AND `type` = 'AUTH'), 1, 0);

-- delete old token type
DELETE FROM `UserToken` WHERE `type` = 'VRFU';

-- AlterTable
ALTER TABLE `UserToken` MODIFY `type` ENUM('AUTH', 'FPWD') NOT NULL;
