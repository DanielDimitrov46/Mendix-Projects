ALTER TABLE "calendarevents$booking_room" ADD CONSTRAINT "uniq_calendarevents$booking_room_rooms$roomid" UNIQUE ("rooms$roomid");
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_calendarevents$booking_room_rooms$roomid', '3e02fa75-4e26-4401-8588-5a539863cdda', 'cfc1fb45-6696-329f-8531-33df2113fa00');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240311 12:18:59';
