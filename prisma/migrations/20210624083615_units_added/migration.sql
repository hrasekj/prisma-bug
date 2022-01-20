-- CreateTable
CREATE TABLE `Units` (
    `serialNumber` VARCHAR(12) NOT NULL,
    `dateCreated` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`serialNumber`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `UnitPayloads` (
    `dateCreated` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `payload` BINARY(120) NOT NULL,
    `serialNumber` VARCHAR(12) NOT NULL,

    PRIMARY KEY (`dateCreated`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `UnitPayloads` ADD FOREIGN KEY (`serialNumber`) REFERENCES `Units`(`serialNumber`) ON DELETE CASCADE ON UPDATE CASCADE;
