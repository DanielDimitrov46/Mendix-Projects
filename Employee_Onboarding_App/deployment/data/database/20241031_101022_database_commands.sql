ALTER TABLE "usermanagement$user" DROP COLUMN "country";
ALTER TABLE "usermanagement$user" DROP COLUMN "flag";
DELETE FROM "mendixsystem$attribute"  WHERE "id" = '0e833fad-fa95-4016-854c-3c3f701147f5';
DELETE FROM "mendixsystem$attribute"  WHERE "id" = 'fb04c50a-9ddc-474a-8062-96d2aa2a1b5d';
CREATE TABLE "usermanagement$country" (
	"id" BIGINT NOT NULL,
	"name" VARCHAR_IGNORECASE(200) NULL,
	"startoftheweek" VARCHAR_IGNORECASE(200) NULL,
	"capital" VARCHAR_IGNORECASE(200) NULL,
	"currency" VARCHAR_IGNORECASE(200) NULL,
	"cca2" VARCHAR_IGNORECASE(200) NULL,
	"flag" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('37ce6fa0-c88f-4c4b-bfd0-47526a150840', 'UserManagement.Country', 'usermanagement$country', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c0715a14-b0f2-4edd-b8a8-aa622075d3b5', '37ce6fa0-c88f-4c4b-bfd0-47526a150840', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8a9a56a9-f5e1-4d03-91d6-24e1e0369d00', '37ce6fa0-c88f-4c4b-bfd0-47526a150840', 'StartOfTheWeek', 'startoftheweek', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9ad3d0aa-9cc0-422f-82ac-9db395926d33', '37ce6fa0-c88f-4c4b-bfd0-47526a150840', 'Capital', 'capital', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ace01324-9dce-41f3-b13d-43e5d16fc1b8', '37ce6fa0-c88f-4c4b-bfd0-47526a150840', 'Currency', 'currency', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6dc1572f-f498-4826-93e5-bd77598051de', '37ce6fa0-c88f-4c4b-bfd0-47526a150840', 'Cca2', 'cca2', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9e8c3a46-c5b6-498a-91ab-701a5058e02d', '37ce6fa0-c88f-4c4b-bfd0-47526a150840', 'Flag', 'flag', 30, 200, '', false);
CREATE TABLE "usermanagement$user_country" (
	"usermanagement$userid" BIGINT NOT NULL,
	"usermanagement$countryid" BIGINT NOT NULL,
	PRIMARY KEY("usermanagement$userid","usermanagement$countryid"),
	CONSTRAINT "uniq_usermanagement$user_country_usermanagement$countryid" UNIQUE ("usermanagement$countryid"),
	CONSTRAINT "uniq_usermanagement$user_country_usermanagement$userid" UNIQUE ("usermanagement$userid"),
	CONSTRAINT "frn_usermanagement$user_country_usermanagement$userid" FOREIGN KEY ( "usermanagement$userid" ) REFERENCES "usermanagement$user" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_usermanagement$user_country_usermanagement$countryid" FOREIGN KEY ( "usermanagement$countryid" ) REFERENCES "usermanagement$country" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_usermanagement$user_country_usermanagement$country_usermanagement$user" ON "usermanagement$user_country" ("usermanagement$countryid" ASC,"usermanagement$userid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('a3e17bef-9cd4-46f6-8637-afd14234e801', 'UserManagement.User_Country', 'usermanagement$user_country', 'ac7c9b3e-80c7-425a-86c9-f0d8f97aadee', '37ce6fa0-c88f-4c4b-bfd0-47526a150840', 'usermanagement$userid', 'usermanagement$countryid', 'idx_usermanagement$user_country_usermanagement$country_usermanagement$user', 'frn_usermanagement$user_country_usermanagement$userid', 'frn_usermanagement$user_country_usermanagement$countryid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_usermanagement$user_country_usermanagement$countryid', 'a3e17bef-9cd4-46f6-8637-afd14234e801', '2a5a56b0-722a-39b6-bf1d-fce49165521c');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_usermanagement$user_country_usermanagement$userid', 'a3e17bef-9cd4-46f6-8637-afd14234e801', '9dcc42a1-980b-3318-acfd-bc026afce9ab');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20241031 10:10:22';
