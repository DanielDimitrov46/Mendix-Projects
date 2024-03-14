CREATE INDEX "idx_calendarevents$booking_startdate_asc" ON "calendarevents$booking" ("startdate" ASC,"id" ASC);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('cf9ba14e-de92-41b6-b88a-3895f475c572', '8cb95228-3bf6-4021-9be8-6b5fc04c8135', 'idx_calendarevents$booking_startdate_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('cf9ba14e-de92-41b6-b88a-3895f475c572', '98a46228-7e59-4dc8-8858-c710dc90b5c1', false, 0);
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240307 14:37:18';
