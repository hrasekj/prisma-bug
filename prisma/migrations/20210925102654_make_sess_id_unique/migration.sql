/*
  Warnings:

  - A unique constraint covering the columns `[sessId]` on the table `UserToken` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX `UserToken_sessId_key` ON `UserToken`(`sessId`);
