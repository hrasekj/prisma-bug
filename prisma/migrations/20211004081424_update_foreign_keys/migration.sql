-- DropForeignKey
ALTER TABLE `UnitHasUserLogin` DROP FOREIGN KEY `UnitHasUserLogin_serialNumber_fkey`;

-- AddForeignKey
ALTER TABLE `UnitHasUserLogin` ADD CONSTRAINT `UnitHasUserLogin_serialNumber_fkey` FOREIGN KEY (`serialNumber`) REFERENCES `Unit`(`serialNumber`) ON DELETE CASCADE ON UPDATE RESTRICT;
