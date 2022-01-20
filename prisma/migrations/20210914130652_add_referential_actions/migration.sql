-- DropForeignKey
ALTER TABLE `UnitPayload` DROP FOREIGN KEY `unitpayload_ibfk_1`;

-- DropForeignKey
ALTER TABLE `UserToken` DROP FOREIGN KEY `usertoken_ibfk_1`;

-- DropForeignKey
ALTER TABLE `_UnitToUserLogin` DROP FOREIGN KEY `_unittouserlogin_ibfk_1`;

-- DropForeignKey
ALTER TABLE `_UnitToUserLogin` DROP FOREIGN KEY `_unittouserlogin_ibfk_2`;

-- AddForeignKey
ALTER TABLE `UserToken` ADD CONSTRAINT `UserToken_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `UserLogin`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- AddForeignKey
ALTER TABLE `UnitPayload` ADD CONSTRAINT `UnitPayload_serialNumber_fkey` FOREIGN KEY (`serialNumber`) REFERENCES `Unit`(`serialNumber`) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- AddForeignKey
ALTER TABLE `_UnitToUserLogin` ADD FOREIGN KEY (`A`) REFERENCES `Unit`(`serialNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_UnitToUserLogin` ADD FOREIGN KEY (`B`) REFERENCES `UserLogin`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- RenameIndex
ALTER TABLE `UserLogin` RENAME INDEX `UserLogin.email_unique` TO `UserLogin_email_key`;
