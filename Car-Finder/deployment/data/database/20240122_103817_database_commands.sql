ALTER TABLE "myfirstmodule$ad" ADD "category" VARCHAR_IGNORECASE(10) NULL;
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('5c765109-3254-4a61-969c-0576d139fbc1', 'aa1004c2-38d1-48e5-9761-10f9b43b5c02', 'Category', 'category', 40, 10, '', false);
ALTER TABLE "myfirstmodule$vehicle" DROP COLUMN "category";
DELETE FROM "mendixsystem$attribute"  WHERE "id" = 'b7b73395-41ab-4d3e-9970-31d3a0d8e5d7';
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240122 10:38:17';
