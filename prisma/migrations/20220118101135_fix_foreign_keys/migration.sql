-- DropForeignKey
ALTER TABLE `UnitPayload` DROP FOREIGN KEY `UnitPayload_serialNumber_fkey`;

-- AddForeignKey
ALTER TABLE `UnitPayload` ADD CONSTRAINT `UnitPayload_serialNumber_fkey` FOREIGN KEY (`serialNumber`) REFERENCES `Unit`(`serialNumber`) ON DELETE CASCADE ON UPDATE RESTRICT;
