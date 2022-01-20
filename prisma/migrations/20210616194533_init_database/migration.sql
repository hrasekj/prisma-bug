-- CreateTable
CREATE TABLE `UserLogin` (
    `id` VARCHAR(36) NOT NULL,
    `email` VARCHAR(64) NOT NULL,
    `salt` VARCHAR(12) NOT NULL,
    `pwd` VARCHAR(64) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `UserToken` (
    `id` VARCHAR(64) NOT NULL,
    `userId` VARCHAR(36) NOT NULL,
    `type` ENUM('AUTH', 'FPWD', 'VRFU') NOT NULL,
    `dateCreated` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `dateValidTo` DATETIME(3),

    INDEX `userId_type_UserToken`(`userId`, `type`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `UserToken` ADD FOREIGN KEY (`userId`) REFERENCES `UserLogin`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
