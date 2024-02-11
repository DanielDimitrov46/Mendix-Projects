ALTER TABLE "carfinder$ad" DROP COLUMN "category";
ALTER TABLE "carfinder$ad" ADD "category" VARCHAR_IGNORECASE(10) NULL;
DELETE FROM "mendixsystem$attribute"  WHERE "id" = '5c765109-3254-4a61-969c-0576d139fbc1';
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('407ec867-b939-4a58-85e7-1e7aa44b87a7', 'aa1004c2-38d1-48e5-9761-10f9b43b5c02', 'Category', 'category', 40, 10, '', false);
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240122 13:21:32';
