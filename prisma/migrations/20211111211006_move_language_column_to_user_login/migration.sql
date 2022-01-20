/*
  Warnings:

  - You are about to drop the column `language` on the `UserToken` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `UserLogin` ADD COLUMN `language` ENUM('en', 'de', 'cs') NOT NULL DEFAULT 'en';

-- AlterTable
ALTER TABLE `UserToken` DROP COLUMN `language`;
