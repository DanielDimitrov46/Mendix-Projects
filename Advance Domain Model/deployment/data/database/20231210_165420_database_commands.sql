CREATE INDEX "idx_performancetest$staff_4_fullname_asc" ON "performancetest$staff_4" ("fullname" ASC,"id" ASC);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('62b75935-9e4f-438b-af7d-74d62dfacd69', '9c42d850-ed6b-40eb-865a-634a154adeb0', 'idx_performancetest$staff_4_fullname_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('62b75935-9e4f-438b-af7d-74d62dfacd69', '49877723-2623-4786-bbd1-55dff63a433e', false, 0);
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20231210 16:54:20';
