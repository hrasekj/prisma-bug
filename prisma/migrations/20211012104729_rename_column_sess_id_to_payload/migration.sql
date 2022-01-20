/*
  Warnings:

  - A unique constraint covering the columns `[payload]` on the table `UserToken` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE `UserToken` ADD COLUMN `payload` VARCHAR(255);

-- Migrate values
UPDATE `UserToken` SET `payload` = IF(`sessId` IS NOT NULL, JSON_OBJECT('sid', `sessId`), NULL);

-- AlterTable
ALTER TABLE `UserToken` DROP `sessId`;

-- CreateIndex
CREATE UNIQUE INDEX `UserToken_payload_key` ON `UserToken`(`payload`);
