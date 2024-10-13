ALTER TABLE "usermanagement$user" ADD "status" VARCHAR_IGNORECASE(7) NULL;
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('308675e5-7826-4867-90c7-0e9a4f10a45e', 'ac7c9b3e-80c7-425a-86c9-f0d8f97aadee', 'Status', 'status', 40, 7, '', false);
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20241009 23:44:10';
