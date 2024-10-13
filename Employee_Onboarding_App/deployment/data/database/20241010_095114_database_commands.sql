ALTER TABLE "system$image" ADD "submetaobjectname" VARCHAR_IGNORECASE(255) NULL;
UPDATE "system$image" SET "submetaobjectname" = 'System.Image';
CREATE INDEX "idx_system$image_submetaobjectname_asc" ON "system$image" ("submetaobjectname" ASC,"id" ASC);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('272f49fe-6a64-3ede-a32d-344a34e57b9f', '37827192-315d-4ab6-85b8-f626f866ea76', 'submetaobjectname', 'submetaobjectname', 30, 255, 'System.Image', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('00a9ec1c-4fab-368f-83d4-ffa8ff501c8c', '37827192-315d-4ab6-85b8-f626f866ea76', 'idx_system$image_submetaobjectname_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('00a9ec1c-4fab-368f-83d4-ffa8ff501c8c', '272f49fe-6a64-3ede-a32d-344a34e57b9f', false, 0);
CREATE TABLE "usermanagement$entity" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('1ed523e4-70cb-4158-8508-9955749866c1', 'UserManagement.Entity', 'usermanagement$entity', '37827192-315d-4ab6-85b8-f626f866ea76', false, false);
CREATE TABLE "usermanagement$profilepicture" (
	"usermanagement$userid" BIGINT NOT NULL,
	"usermanagement$entityid" BIGINT NOT NULL,
	PRIMARY KEY("usermanagement$userid","usermanagement$entityid"),
	CONSTRAINT "uniq_usermanagement$profilepicture_usermanagement$entityid" UNIQUE ("usermanagement$entityid"),
	CONSTRAINT "uniq_usermanagement$profilepicture_usermanagement$userid" UNIQUE ("usermanagement$userid"),
	CONSTRAINT "frn_usermanagement$profilepicture_usermanagement$userid" FOREIGN KEY ( "usermanagement$userid" ) REFERENCES "usermanagement$user" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_usermanagement$profilepicture_usermanagement$entityid" FOREIGN KEY ( "usermanagement$entityid" ) REFERENCES "usermanagement$entity" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_usermanagement$profilepicture_usermanagement$entity_usermanagement$user" ON "usermanagement$profilepicture" ("usermanagement$entityid" ASC,"usermanagement$userid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('76242b7e-eff5-44a9-9e83-dd439df8d1f0', 'UserManagement.ProfilePicture', 'usermanagement$profilepicture', 'ac7c9b3e-80c7-425a-86c9-f0d8f97aadee', '1ed523e4-70cb-4158-8508-9955749866c1', 'usermanagement$userid', 'usermanagement$entityid', 'idx_usermanagement$profilepicture_usermanagement$entity_usermanagement$user', 'frn_usermanagement$profilepicture_usermanagement$userid', 'frn_usermanagement$profilepicture_usermanagement$entityid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_usermanagement$profilepicture_usermanagement$entityid', '76242b7e-eff5-44a9-9e83-dd439df8d1f0', '0596dfb0-16c6-347d-9c8d-b9c33ff50103');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_usermanagement$profilepicture_usermanagement$userid', '76242b7e-eff5-44a9-9e83-dd439df8d1f0', '64e7918f-bf79-3eb7-b9ed-801e885b94e5');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20241010 09:51:14';
