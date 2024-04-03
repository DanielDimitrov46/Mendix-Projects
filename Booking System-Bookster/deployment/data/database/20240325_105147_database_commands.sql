CREATE TABLE "calendarevents$calendar_booking" (
	"calendarevents$calendarid" BIGINT NOT NULL,
	"calendarevents$bookingid" BIGINT NOT NULL,
	PRIMARY KEY("calendarevents$calendarid","calendarevents$bookingid"),
	CONSTRAINT "uniq_calendarevents$calendar_booking_calendarevents$bookingid" UNIQUE ("calendarevents$bookingid"),
	CONSTRAINT "uniq_calendarevents$calendar_booking_calendarevents$calendarid" UNIQUE ("calendarevents$calendarid"));
CREATE INDEX "idx_calendarevents$calendar_booking_calendarevents$booking_calendarevents$calendar" ON "calendarevents$calendar_booking" ("calendarevents$bookingid" ASC,"calendarevents$calendarid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('1b8c01c5-3ba7-4418-b8d3-32e5540d596f', 'CalendarEvents.Calendar_Booking', 'calendarevents$calendar_booking', 'a9cda5fc-da5a-4068-b38a-a33acc5d99d7', '8cb95228-3bf6-4021-9be8-6b5fc04c8135', 'calendarevents$calendarid', 'calendarevents$bookingid', 'idx_calendarevents$calendar_booking_calendarevents$booking_calendarevents$calendar');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_calendarevents$calendar_booking_calendarevents$bookingid', '1b8c01c5-3ba7-4418-b8d3-32e5540d596f', 'b4c47311-7e18-3d99-96a3-a523b62145c0');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_calendarevents$calendar_booking_calendarevents$calendarid', '1b8c01c5-3ba7-4418-b8d3-32e5540d596f', 'ac23606d-3fe0-3f81-b313-756272979f16');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240325 10:51:47';
