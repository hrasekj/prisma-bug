/*
  Warnings:

  - You are about to drop the `UnitPayloads` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Units` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `UnitPayloads` DROP FOREIGN KEY `unitpayloads_ibfk_1`;

-- DropTable
DROP TABLE `UnitPayloads`;

-- DropTable
DROP TABLE `Units`;

-- CreateTable
CREATE TABLE `Unit` (
    `serialNumber` VARCHAR(12) NOT NULL,
    `dateCreated` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `automat` VARCHAR(12) NOT NULL,
    `origin` VARCHAR(12) NOT NULL,
    `blocked` BOOLEAN NOT NULL DEFAULT false,

    PRIMARY KEY (`serialNumber`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `UnitPayload` (
    `dateCreated` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `payload` BINARY(120) NOT NULL,
    `serialNumber` VARCHAR(12) NOT NULL,

    PRIMARY KEY (`dateCreated`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `UnitPayload` ADD FOREIGN KEY (`serialNumber`) REFERENCES `Unit`(`serialNumber`) ON DELETE CASCADE ON UPDATE CASCADE;
