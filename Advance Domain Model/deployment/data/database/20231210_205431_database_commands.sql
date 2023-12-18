ALTER TABLE "soccersquad$player" DROP COLUMN "emailaddressold";
ALTER TABLE "soccersquad$player" DROP COLUMN "name";
DELETE FROM "mendixsystem$attribute"  WHERE "id" = '180c9ef9-f94b-4664-93cd-a023ee8f3400';
DELETE FROM "mendixsystem$attribute"  WHERE "id" = '48b7a1e5-e310-4ec0-b2ce-c9e7cdaea9d8';
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20231210 20:54:31';
