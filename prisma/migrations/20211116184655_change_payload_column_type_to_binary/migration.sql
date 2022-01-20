START TRANSACTION;

-- AlterTable
ALTER TABLE `UnitPayload` ADD COLUMN `payload_` TINYBLOB NOT NULL,
    MODIFY `payload` TEXT;

-- update poollive
UPDATE `UnitPayload` p
INNER JOIN `Unit` u ON u.`serialNumber` = p.`serialNumber`
SET
`payload_` = COMPRESS(FROM_BASE64(p.`payload`)),
`payload` = NULL
WHERE p.`payload` IS NOT NULL AND u.automat != 'Remote';

-- update remote and covrex
UPDATE `UnitPayload` p
INNER JOIN `Unit` u ON u.`serialNumber` = p.`serialNumber`
SET
`payload_` = COMPRESS(p.`payload`),
`payload` = NULL
WHERE p.`payload` IS NOT NULL AND (u.`automat` = 'Remote' OR u.`automat` = 'Covrex');

-- rename helper column obsolete column
ALTER TABLE `UnitPayload` DROP COLUMN `payload`;
ALTER TABLE `UnitPayload` RENAME COLUMN `payload_` TO `payload`;

COMMIT;
