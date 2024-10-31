ALTER TABLE "usermanagement$country" DROP COLUMN "currency";
ALTER TABLE "usermanagement$country" DROP COLUMN "capital";
DELETE FROM "mendixsystem$attribute"  WHERE "id" = '9ad3d0aa-9cc0-422f-82ac-9db395926d33';
DELETE FROM "mendixsystem$attribute"  WHERE "id" = 'ace01324-9dce-41f3-b13d-43e5d16fc1b8';
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20241031 10:52:52';
