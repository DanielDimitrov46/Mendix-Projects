ALTER TABLE "usermanagement$profilepicture" DROP CONSTRAINT "frn_usermanagement$profilepicture_usermanagement$userid";
ALTER TABLE "usermanagement$profilepicture" DROP CONSTRAINT "frn_usermanagement$profilepicture_usermanagement$entityid";
ALTER TABLE "usermanagement$profilepicture" DROP CONSTRAINT "uniq_usermanagement$profilepicture_usermanagement$entityid";
ALTER TABLE "usermanagement$profilepicture" DROP CONSTRAINT "uniq_usermanagement$profilepicture_usermanagement$userid";
DROP INDEX "idx_usermanagement$profilepicture_usermanagement$entity_usermanagement$user";
ALTER TABLE "usermanagement$profilepicture" RENAME TO "34f3fd068af3450ab5599fb1aee9a301";
ALTER TABLE "usermanagement$entity" RENAME TO "163032de93544388a13dbf01d706d84a";
UPDATE "system$image" SET "submetaobjectname" = '163032de93544388a13dbf01d706d84a' WHERE "submetaobjectname" = 'UserManagement.Entity';
UPDATE "system$filedocument" SET "submetaobjectname" = '163032de93544388a13dbf01d706d84a' WHERE "submetaobjectname" = 'UserManagement.Entity';
ALTER TABLE "163032de93544388a13dbf01d706d84a" RENAME TO "usermanagement$profilepicture";
UPDATE "system$image" SET "submetaobjectname" = 'UserManagement.ProfilePicture' WHERE "submetaobjectname" = '163032de93544388a13dbf01d706d84a';
UPDATE "system$filedocument" SET "submetaobjectname" = 'UserManagement.ProfilePicture' WHERE "submetaobjectname" = '163032de93544388a13dbf01d706d84a';
DELETE FROM "mendixsystem$association"  WHERE "id" = '76242b7e-eff5-44a9-9e83-dd439df8d1f0';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_usermanagement$profilepicture_usermanagement$entityid' AND "column_id" = '0596dfb0-16c6-347d-9c8d-b9c33ff50103';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_usermanagement$profilepicture_usermanagement$userid' AND "column_id" = '64e7918f-bf79-3eb7-b9ed-801e885b94e5';
UPDATE "mendixsystem$entity" SET "entity_name" = 'UserManagement.ProfilePicture', "table_name" = 'usermanagement$profilepicture', "superentity_id" = '37827192-315d-4ab6-85b8-f626f866ea76', "remote" = false, "remote_primary_key" = false WHERE "id" = '1ed523e4-70cb-4158-8508-9955749866c1';
CREATE TABLE "usermanagement$user_profilepicture" (
	"usermanagement$userid" BIGINT NOT NULL,
	"usermanagement$profilepictureid" BIGINT NOT NULL,
	PRIMARY KEY("usermanagement$userid","usermanagement$profilepictureid"),
	CONSTRAINT "uniq_usermanagement$user_profilepicture_usermanagement$profilepictureid" UNIQUE ("usermanagement$profilepictureid"),
	CONSTRAINT "uniq_usermanagement$user_profilepicture_usermanagement$userid" UNIQUE ("usermanagement$userid"),
	CONSTRAINT "frn_usermanagement$user_profilepicture_usermanagement$userid" FOREIGN KEY ( "usermanagement$userid" ) REFERENCES "usermanagement$user" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_usermanagement$user_profilepicture_usermanagement$profilepictureid" FOREIGN KEY ( "usermanagement$profilepictureid" ) REFERENCES "usermanagement$profilepicture" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_usermanagement$user_profilepicture_usermanagement$profilepicture_usermanagement$user" ON "usermanagement$user_profilepicture" ("usermanagement$profilepictureid" ASC,"usermanagement$userid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('5f7b8c8f-6383-4a62-84de-40cac067cc44', 'UserManagement.User_ProfilePicture', 'usermanagement$user_profilepicture', 'ac7c9b3e-80c7-425a-86c9-f0d8f97aadee', '1ed523e4-70cb-4158-8508-9955749866c1', 'usermanagement$userid', 'usermanagement$profilepictureid', 'idx_usermanagement$user_profilepicture_usermanagement$profilepicture_usermanagement$user', 'frn_usermanagement$user_profilepicture_usermanagement$userid', 'frn_usermanagement$user_profilepicture_usermanagement$profilepictureid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_usermanagement$user_profilepicture_usermanagement$profilepictureid', '5f7b8c8f-6383-4a62-84de-40cac067cc44', '5c134db4-0c76-3464-bb35-af88577d87a5');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_usermanagement$user_profilepicture_usermanagement$userid', '5f7b8c8f-6383-4a62-84de-40cac067cc44', 'a8c6dfe4-525a-364a-81a3-1f21a19b8422');
DROP TABLE "34f3fd068af3450ab5599fb1aee9a301";
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20241018 00:16:53';
