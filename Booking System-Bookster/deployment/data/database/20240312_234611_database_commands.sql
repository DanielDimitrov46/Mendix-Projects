ALTER TABLE "calendarevents$booking" ADD "issent" BOOLEAN NULL;
UPDATE "calendarevents$booking" SET "issent" = false;
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9cc2c37c-a72f-4d35-b88b-f33c57620956', '8cb95228-3bf6-4021-9be8-6b5fc04c8135', 'isSent', 'issent', 10, 0, 'false', false);
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240312 23:46:11';
