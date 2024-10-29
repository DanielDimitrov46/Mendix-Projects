ALTER TABLE "usermanagement$user" ADD "department" VARCHAR_IGNORECASE(27) NULL;
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d004c124-ebc7-48db-86b2-382325e1acd4', 'ac7c9b3e-80c7-425a-86c9-f0d8f97aadee', 'Department', 'department', 40, 27, '', false);
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20241028 16:49:23';
