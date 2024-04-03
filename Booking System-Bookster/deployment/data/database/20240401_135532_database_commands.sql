ALTER TABLE "usermanagement$registration" ADD "creationtime" TIMESTAMP NULL;
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('5215fdaf-5e82-42dd-837e-15785ed77280', '6d9aafac-76aa-4a26-af66-8a81ac136f89', 'CreationTime', 'creationtime', 20, 0, '', false);
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240401 13:55:32';
