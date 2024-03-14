ALTER TABLE "calendarevents$booking" ALTER COLUMN "reservedroom" RENAME TO "bookedroom";
UPDATE "mendixsystem$attribute" SET "entity_id" = '8cb95228-3bf6-4021-9be8-6b5fc04c8135', "attribute_name" = 'BookedRoom', "column_name" = 'bookedroom', "type" = 30, "length" = 200, "default_value" = '', "is_auto_number" = false WHERE "id" = '94e0797d-88f4-485b-92ce-7e0ed6c71962';
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240312 00:15:39';
