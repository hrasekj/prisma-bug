-- CreateTable
CREATE TABLE `_UnitToUserLogin` (
    `A` VARCHAR(12) NOT NULL,
    `B` CHAR(36) NOT NULL,

    UNIQUE INDEX `_UnitToUserLogin_AB_unique`(`A`, `B`),
    INDEX `_UnitToUserLogin_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `_UnitToUserLogin` ADD FOREIGN KEY (`A`) REFERENCES `Unit`(`serialNumber`) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- AddForeignKey
ALTER TABLE `_UnitToUserLogin` ADD FOREIGN KEY (`B`) REFERENCES `UserLogin`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
