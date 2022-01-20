/*
  Warnings:

  - Added the required column `automat` to the `Units` table without a default value. This is not possible if the table is not empty.
  - Added the required column `origin` to the `Units` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Units` ADD COLUMN `automat` VARCHAR(12) NOT NULL,
    ADD COLUMN `origin` VARCHAR(12) NOT NULL;
