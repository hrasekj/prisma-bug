/*
  Warnings:

  - The primary key for the `UserToken` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - A unique constraint covering the columns `[email]` on the table `UserLogin` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `audience` to the `UserToken` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `UserLogin` MODIFY `pwd` VARCHAR(128) NOT NULL;

-- AlterTable
ALTER TABLE `UserToken` DROP PRIMARY KEY,
    ADD COLUMN `audience` VARCHAR(32) NOT NULL,
    MODIFY `id` VARCHAR(128) NOT NULL,
    ADD PRIMARY KEY (`id`);

-- CreateIndex
CREATE UNIQUE INDEX `UserLogin.email_unique` ON `UserLogin`(`email`);
