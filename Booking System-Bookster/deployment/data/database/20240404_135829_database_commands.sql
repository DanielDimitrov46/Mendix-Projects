CREATE TABLE "calendarevents$booking_user" (
	"calendarevents$bookingid" BIGINT NOT NULL,
	"usermanagement$userid" BIGINT NOT NULL,
	PRIMARY KEY("calendarevents$bookingid","usermanagement$userid"),
	CONSTRAINT "uniq_calendarevents$booking_user_usermanagement$userid" UNIQUE ("usermanagement$userid"),
	CONSTRAINT "uniq_calendarevents$booking_user_calendarevents$bookingid" UNIQUE ("calendarevents$bookingid"));
CREATE INDEX "idx_calendarevents$booking_user_usermanagement$user_calendarevents$booking" ON "calendarevents$booking_user" ("usermanagement$userid" ASC,"calendarevents$bookingid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('c00f3c3d-72cb-45b5-b4f1-b8a30eeb14fa', 'CalendarEvents.Booking_User', 'calendarevents$booking_user', '8cb95228-3bf6-4021-9be8-6b5fc04c8135', 'a2d79d2a-2ffd-40e5-93b0-b95da3b9b65e', 'calendarevents$bookingid', 'usermanagement$userid', 'idx_calendarevents$booking_user_usermanagement$user_calendarevents$booking');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_calendarevents$booking_user_usermanagement$userid', 'c00f3c3d-72cb-45b5-b4f1-b8a30eeb14fa', '9e7e3c80-27f5-3f12-bf00-552d0d721c0a');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_calendarevents$booking_user_calendarevents$bookingid', 'c00f3c3d-72cb-45b5-b4f1-b8a30eeb14fa', '3632b172-4c2c-329b-98bb-8b59cc2fdce8');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240404 13:58:29';
