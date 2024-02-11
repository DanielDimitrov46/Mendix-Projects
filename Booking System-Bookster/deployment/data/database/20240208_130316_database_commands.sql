ALTER TABLE "system$image" ADD "submetaobjectname" VARCHAR_IGNORECASE(255) NULL;
UPDATE "system$image" SET "submetaobjectname" = 'System.Image';
CREATE INDEX "idx_system$image_submetaobjectname_asc" ON "system$image" ("submetaobjectname" ASC,"id" ASC);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('272f49fe-6a64-3ede-a32d-344a34e57b9f', '37827192-315d-4ab6-85b8-f626f866ea76', 'submetaobjectname', 'submetaobjectname', 30, 255, 'System.Image', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('00a9ec1c-4fab-368f-83d4-ffa8ff501c8c', '37827192-315d-4ab6-85b8-f626f866ea76', 'idx_system$image_submetaobjectname_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('00a9ec1c-4fab-368f-83d4-ffa8ff501c8c', '272f49fe-6a64-3ede-a32d-344a34e57b9f', false, 0);
CREATE TABLE "usermanagement$user" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('a2d79d2a-2ffd-40e5-93b0-b95da3b9b65e', 'UserManagement.User', 'usermanagement$user', '282e2e60-88a5-469d-84a5-ba8d9151644f', false, false);
CREATE TABLE "rooms$room" (
	"id" BIGINT NOT NULL,
	"name" VARCHAR_IGNORECASE(200) NULL,
	"description" VARCHAR_IGNORECASE(200) NULL,
	"size" VARCHAR_IGNORECASE(6) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('4226a51e-1fda-4c22-893f-efd1d9db4f87', 'Rooms.Room', 'rooms$room', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f1069195-b718-4949-8c4b-b4d5dfff6ef4', '4226a51e-1fda-4c22-893f-efd1d9db4f87', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('fdd95754-e9fd-410e-b7e1-2c9f1cb2b431', '4226a51e-1fda-4c22-893f-efd1d9db4f87', 'Description', 'description', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f85da1a9-6d41-448f-9067-a5e3c5300e19', '4226a51e-1fda-4c22-893f-efd1d9db4f87', 'Size', 'size', 40, 6, '', false);
CREATE TABLE "rooms$equipment" (
	"id" BIGINT NOT NULL,
	"name" VARCHAR_IGNORECASE(200) NULL,
	"description" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('62f7d4ca-3695-4091-86b6-b2f1248d5211', 'Rooms.Equipment', 'rooms$equipment', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b5c1ad04-4862-4057-b26a-c36cd8205a9c', '62f7d4ca-3695-4091-86b6-b2f1248d5211', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('26abb445-bde7-467d-918a-92efb6c75488', '62f7d4ca-3695-4091-86b6-b2f1248d5211', 'Description', 'description', 30, 200, '', false);
CREATE TABLE "usermanagement$image" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('e8a2f994-3658-4072-bc49-94b7241d672c', 'UserManagement.Image', 'usermanagement$image', '37827192-315d-4ab6-85b8-f626f866ea76', false, false);
CREATE TABLE "rooms$equipment_room" (
	"rooms$equipmentid" BIGINT NOT NULL,
	"rooms$roomid" BIGINT NOT NULL,
	PRIMARY KEY("rooms$equipmentid","rooms$roomid"),
	CONSTRAINT "uniq_rooms$equipment_room_rooms$equipmentid" UNIQUE ("rooms$equipmentid"));
CREATE INDEX "idx_rooms$equipment_room_rooms$room_rooms$equipment" ON "rooms$equipment_room" ("rooms$roomid" ASC,"rooms$equipmentid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('6e9a06d3-a984-4ea3-b88e-32cdb3efc1a3', 'Rooms.Equipment_Room', 'rooms$equipment_room', '62f7d4ca-3695-4091-86b6-b2f1248d5211', '4226a51e-1fda-4c22-893f-efd1d9db4f87', 'rooms$equipmentid', 'rooms$roomid', 'idx_rooms$equipment_room_rooms$room_rooms$equipment');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_rooms$equipment_room_rooms$equipmentid', '6e9a06d3-a984-4ea3-b88e-32cdb3efc1a3', '3c4dc906-c952-3d3f-9396-162c4ae7e8e3');
CREATE TABLE "usermanagement$image_user" (
	"usermanagement$imageid" BIGINT NOT NULL,
	"usermanagement$userid" BIGINT NOT NULL,
	PRIMARY KEY("usermanagement$imageid","usermanagement$userid"),
	CONSTRAINT "uniq_usermanagement$image_user_usermanagement$userid" UNIQUE ("usermanagement$userid"),
	CONSTRAINT "uniq_usermanagement$image_user_usermanagement$imageid" UNIQUE ("usermanagement$imageid"));
CREATE INDEX "idx_usermanagement$image_user_usermanagement$user_usermanagement$image" ON "usermanagement$image_user" ("usermanagement$userid" ASC,"usermanagement$imageid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('c64249ea-d9e2-4f74-ba69-e3def1410aaf', 'UserManagement.Image_User', 'usermanagement$image_user', 'e8a2f994-3658-4072-bc49-94b7241d672c', 'a2d79d2a-2ffd-40e5-93b0-b95da3b9b65e', 'usermanagement$imageid', 'usermanagement$userid', 'idx_usermanagement$image_user_usermanagement$user_usermanagement$image');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_usermanagement$image_user_usermanagement$userid', 'c64249ea-d9e2-4f74-ba69-e3def1410aaf', 'df52ecf4-2549-3d82-a9bd-4d06ca7db931');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_usermanagement$image_user_usermanagement$imageid', 'c64249ea-d9e2-4f74-ba69-e3def1410aaf', 'db3ad744-7add-3a3c-a40d-3198d910106c');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240208 13:03:16';
