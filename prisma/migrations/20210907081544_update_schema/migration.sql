/*
  Warnings:

  - The primary key for the `UnitPayload` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- AlterTable
ALTER TABLE `UnitPayload` DROP PRIMARY KEY,
    ADD COLUMN `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    MODIFY `payload` TEXT NOT NULL,
    ADD PRIMARY KEY (`id`);
