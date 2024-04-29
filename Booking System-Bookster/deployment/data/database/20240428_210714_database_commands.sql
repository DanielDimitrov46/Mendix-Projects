CREATE TABLE "calendarevents$booking_notification" (
	"calendarevents$bookingid" BIGINT NOT NULL,
	"notification$notificationid" BIGINT NOT NULL,
	PRIMARY KEY("calendarevents$bookingid","notification$notificationid"),
	CONSTRAINT "uniq_calendarevents$booking_notification_notification$notificationid" UNIQUE ("notification$notificationid"),
	CONSTRAINT "uniq_calendarevents$booking_notification_calendarevents$bookingid" UNIQUE ("calendarevents$bookingid"));
CREATE INDEX "idx_calendarevents$booking_notification_notification$notification_calendarevents$booking" ON "calendarevents$booking_notification" ("notification$notificationid" ASC,"calendarevents$bookingid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('155bd688-7daf-465e-889d-07e178eab251', 'CalendarEvents.Booking_Notification', 'calendarevents$booking_notification', '8cb95228-3bf6-4021-9be8-6b5fc04c8135', '60f4049a-b0ba-4f11-b797-e9caf5742932', 'calendarevents$bookingid', 'notification$notificationid', 'idx_calendarevents$booking_notification_notification$notification_calendarevents$booking');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_calendarevents$booking_notification_notification$notificationid', '155bd688-7daf-465e-889d-07e178eab251', 'c996109d-1814-3c74-97b4-155a3081fdac');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_calendarevents$booking_notification_calendarevents$bookingid', '155bd688-7daf-465e-889d-07e178eab251', '31bc4651-b0f8-3df4-925f-28e1968a875b');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240428 21:07:14';
