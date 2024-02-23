ALTER TABLE "rooms$room" ADD "activitystatus" VARCHAR_IGNORECASE(9) NULL;
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('89825fc9-7aa3-45c6-a68a-32bfb99d444b', '4226a51e-1fda-4c22-893f-efd1d9db4f87', 'ActivityStatus', 'activitystatus', 40, 9, '', false);
CREATE TABLE "rooms$roompicture" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('b6e4c84b-987d-407b-a58b-29e60d2aa458', 'Rooms.RoomPicture', 'rooms$roompicture', '37827192-315d-4ab6-85b8-f626f866ea76', false, false);
CREATE TABLE "usermanagement$user_room" (
	"usermanagement$userid" BIGINT NOT NULL,
	"rooms$roomid" BIGINT NOT NULL,
	PRIMARY KEY("usermanagement$userid","rooms$roomid"),
	CONSTRAINT "uniq_usermanagement$user_room_rooms$roomid" UNIQUE ("rooms$roomid"),
	CONSTRAINT "uniq_usermanagement$user_room_usermanagement$userid" UNIQUE ("usermanagement$userid"));
CREATE INDEX "idx_usermanagement$user_room_rooms$room_usermanagement$user" ON "usermanagement$user_room" ("rooms$roomid" ASC,"usermanagement$userid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('91e04148-affa-4c83-9aec-115c5c714629', 'UserManagement.User_Room', 'usermanagement$user_room', 'a2d79d2a-2ffd-40e5-93b0-b95da3b9b65e', '4226a51e-1fda-4c22-893f-efd1d9db4f87', 'usermanagement$userid', 'rooms$roomid', 'idx_usermanagement$user_room_rooms$room_usermanagement$user');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_usermanagement$user_room_rooms$roomid', '91e04148-affa-4c83-9aec-115c5c714629', '02c45415-6bc1-3453-a725-6e7264ca60f9');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_usermanagement$user_room_usermanagement$userid', '91e04148-affa-4c83-9aec-115c5c714629', '91ceff91-f63e-352e-bcef-283f8dcd168c');
CREATE TABLE "rooms$roompicture_room" (
	"rooms$roompictureid" BIGINT NOT NULL,
	"rooms$roomid" BIGINT NOT NULL,
	PRIMARY KEY("rooms$roompictureid","rooms$roomid"),
	CONSTRAINT "uniq_rooms$roompicture_room_rooms$roomid" UNIQUE ("rooms$roomid"),
	CONSTRAINT "uniq_rooms$roompicture_room_rooms$roompictureid" UNIQUE ("rooms$roompictureid"));
CREATE INDEX "idx_rooms$roompicture_room_rooms$room_rooms$roompicture" ON "rooms$roompicture_room" ("rooms$roomid" ASC,"rooms$roompictureid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('6af93151-979f-492d-a96a-bd67de8b0f43', 'Rooms.RoomPicture_Room', 'rooms$roompicture_room', 'b6e4c84b-987d-407b-a58b-29e60d2aa458', '4226a51e-1fda-4c22-893f-efd1d9db4f87', 'rooms$roompictureid', 'rooms$roomid', 'idx_rooms$roompicture_room_rooms$room_rooms$roompicture');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_rooms$roompicture_room_rooms$roomid', '6af93151-979f-492d-a96a-bd67de8b0f43', '18972cc4-49ec-3c06-8aad-be4e6e95fe15');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_rooms$roompicture_room_rooms$roompictureid', '6af93151-979f-492d-a96a-bd67de8b0f43', 'b51293ef-151d-32e6-a31a-a1b10bfbc8b5');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240223 21:34:55';
