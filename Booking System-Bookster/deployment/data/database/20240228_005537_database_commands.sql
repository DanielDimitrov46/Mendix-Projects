ALTER TABLE "rooms$booking" DROP COLUMN "duration";
DELETE FROM "mendixsystem$attribute"  WHERE "id" = '22b55444-ffc3-414b-be03-855d3f8e718e';
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240228 00:55:37';
