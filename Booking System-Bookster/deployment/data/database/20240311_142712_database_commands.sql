ALTER TABLE "calendarevents$booking" ADD "reservedroom" VARCHAR_IGNORECASE(200) NULL;
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('94e0797d-88f4-485b-92ce-7e0ed6c71962', '8cb95228-3bf6-4021-9be8-6b5fc04c8135', 'ReservedRoom', 'reservedroom', 30, 200, '', false);
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240311 14:27:12';
