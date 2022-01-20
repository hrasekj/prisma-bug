/*
  Warnings:

  - You are about to drop the `_UnitToUserLogin` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `_UnitToUserLogin` DROP FOREIGN KEY `_unittouserlogin_ibfk_1`;

-- DropForeignKey
ALTER TABLE `_UnitToUserLogin` DROP FOREIGN KEY `_unittouserlogin_ibfk_2`;

-- DropTable
DROP TABLE `_UnitToUserLogin`;

-- CreateTable
CREATE TABLE `UnitHasUserLogin` (
    `serialNumber` VARCHAR(12) NOT NULL,
    `userId` CHAR(36) NOT NULL,

    PRIMARY KEY (`serialNumber`, `userId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `UnitHasUserLogin` ADD CONSTRAINT `UnitHasUserLogin_serialNumber_fkey` FOREIGN KEY (`serialNumber`) REFERENCES `Unit`(`serialNumber`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `UnitHasUserLogin` ADD CONSTRAINT `UnitHasUserLogin_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `UserLogin`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- RenameIndex
ALTER TABLE `UnitPayload` RENAME INDEX `UnitPayload_serialNumber_fkey` TO `serialNumber`;
