ALTER TABLE "usermanagement$user" ADD "country" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "usermanagement$user" ADD "flag" VARCHAR_IGNORECASE(200) NULL;
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0e833fad-fa95-4016-854c-3c3f701147f5', 'ac7c9b3e-80c7-425a-86c9-f0d8f97aadee', 'Country', 'country', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('fb04c50a-9ddc-474a-8062-96d2aa2a1b5d', 'ac7c9b3e-80c7-425a-86c9-f0d8f97aadee', 'Flag', 'flag', 30, 200, '', false);
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20241030 22:22:50';
