-- AlterTable
ALTER TABLE `UserLogin` ADD COLUMN `role` ENUM('User', 'Admin', 'Root') NOT NULL DEFAULT 'User';
