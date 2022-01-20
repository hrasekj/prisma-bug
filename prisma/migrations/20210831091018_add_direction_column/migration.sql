/*
  Warnings:

  - Added the required column `direction` to the `UnitPayload` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `UnitPayload` ADD COLUMN `direction` ENUM('Tx', 'Rx') NOT NULL;
