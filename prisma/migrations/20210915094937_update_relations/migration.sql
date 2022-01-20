-- DropForeignKey
ALTER TABLE `UnitHasUserLogin` DROP FOREIGN KEY `UnitHasUserLogin_serialNumber_fkey`;

-- DropForeignKey
ALTER TABLE `UnitHasUserLogin` DROP FOREIGN KEY `UnitHasUserLogin_userId_fkey`;

-- DropForeignKey
ALTER TABLE `UserToken` DROP FOREIGN KEY `UserToken_userId_fkey`;

-- AddForeignKey
ALTER TABLE `UserToken` ADD CONSTRAINT `UserToken_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `UserLogin`(`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

-- AddForeignKey
ALTER TABLE `UnitHasUserLogin` ADD CONSTRAINT `UnitHasUserLogin_serialNumber_fkey` FOREIGN KEY (`serialNumber`) REFERENCES `Unit`(`serialNumber`) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- AddForeignKey
ALTER TABLE `UnitHasUserLogin` ADD CONSTRAINT `UnitHasUserLogin_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `UserLogin`(`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
