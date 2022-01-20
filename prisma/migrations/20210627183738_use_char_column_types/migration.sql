/*
  Warnings:

  - The primary key for the `UserLogin` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `UserToken` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
SET FOREIGN_KEY_CHECKS = 0;

-- AlterTable
ALTER TABLE `UserLogin` DROP PRIMARY KEY,
    MODIFY `id` CHAR(36) NOT NULL,
    MODIFY `salt` CHAR(12) NOT NULL,
    MODIFY `pwd` CHAR(128) NOT NULL,
    ADD PRIMARY KEY (`id`);

-- AlterTable
ALTER TABLE `UserToken` DROP PRIMARY KEY,
    MODIFY `id` CHAR(128) NOT NULL,
    MODIFY `userId` CHAR(36) NOT NULL,
    ADD PRIMARY KEY (`id`);
