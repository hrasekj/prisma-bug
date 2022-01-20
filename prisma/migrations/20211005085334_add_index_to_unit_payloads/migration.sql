-- CreateIndex
CREATE INDEX `serialNumber_dateCreated` ON `UnitPayload`(`serialNumber`, `dateCreated` DESC);
