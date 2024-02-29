CREATE TABLE "rooms$booking" (
	"id" BIGINT NOT NULL,
	"nameofbook" VARCHAR_IGNORECASE(200) NULL,
	"description" VARCHAR_IGNORECASE(200) NULL,
	"startdate" TIMESTAMP NULL,
	"enddate" TIMESTAMP NULL,
	"persons" VARCHAR_IGNORECASE(200) NULL,
	"duration" DECIMAL(28, 8) NULL,
	"reservedfrom" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('8cb95228-3bf6-4021-9be8-6b5fc04c8135', 'Rooms.Booking', 'rooms$booking', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('58c761b5-1cbb-41dd-8ccb-562302042ff3', '8cb95228-3bf6-4021-9be8-6b5fc04c8135', 'NameOfBook', 'nameofbook', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('32c9a58a-35c1-496e-a418-29b66a515592', '8cb95228-3bf6-4021-9be8-6b5fc04c8135', 'Description', 'description', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('98a46228-7e59-4dc8-8858-c710dc90b5c1', '8cb95228-3bf6-4021-9be8-6b5fc04c8135', 'StartDate', 'startdate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('02d159c6-935d-469c-b886-8d48d7ec2e1d', '8cb95228-3bf6-4021-9be8-6b5fc04c8135', 'EndDate', 'enddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('97ae0a3b-0d10-436e-8580-c1a301667278', '8cb95228-3bf6-4021-9be8-6b5fc04c8135', 'Persons', 'persons', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('22b55444-ffc3-414b-be03-855d3f8e718e', '8cb95228-3bf6-4021-9be8-6b5fc04c8135', 'Duration', 'duration', 5, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('09ddc4d4-09eb-4135-a8c4-b97a651ac013', '8cb95228-3bf6-4021-9be8-6b5fc04c8135', 'ReservedFrom', 'reservedfrom', 30, 200, '', false);
CREATE TABLE "rooms$booking_room" (
	"rooms$bookingid" BIGINT NOT NULL,
	"rooms$roomid" BIGINT NOT NULL,
	PRIMARY KEY("rooms$bookingid","rooms$roomid"),
	CONSTRAINT "uniq_rooms$booking_room_rooms$bookingid" UNIQUE ("rooms$bookingid"));
CREATE INDEX "idx_rooms$booking_room_rooms$room_rooms$booking" ON "rooms$booking_room" ("rooms$roomid" ASC,"rooms$bookingid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('3e02fa75-4e26-4401-8588-5a539863cdda', 'Rooms.Booking_Room', 'rooms$booking_room', '8cb95228-3bf6-4021-9be8-6b5fc04c8135', '4226a51e-1fda-4c22-893f-efd1d9db4f87', 'rooms$bookingid', 'rooms$roomid', 'idx_rooms$booking_room_rooms$room_rooms$booking');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_rooms$booking_room_rooms$bookingid', '3e02fa75-4e26-4401-8588-5a539863cdda', 'd9075374-8fd5-3239-a9b6-286a7d696de9');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240226 11:18:30';
