ALTER TABLE "rooms$booking" ADD "duration" DECIMAL(28, 8) NULL;
UPDATE "rooms$booking" SET "duration" = 0;
ALTER TABLE "rooms$booking" ADD "firstfreechoice" TIMESTAMP NULL;
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('22b55444-ffc3-414b-be03-855d3f8e718e', '8cb95228-3bf6-4021-9be8-6b5fc04c8135', 'Duration', 'duration', 5, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b6f27b7a-c187-4904-86c2-ba9727f018a3', '8cb95228-3bf6-4021-9be8-6b5fc04c8135', 'FirstFreeChoice', 'firstfreechoice', 20, 0, '', false);
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240228 01:30:39';
