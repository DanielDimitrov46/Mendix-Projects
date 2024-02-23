ALTER TABLE "rooms$room" ADD "system$owner" BIGINT NULL;
CREATE INDEX "idx_rooms$room_system$owner" ON "rooms$room" ("system$owner" ASC,"id" ASC);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('96cb2970-2aaa-3c83-8566-5605e101e5b1', '4226a51e-1fda-4c22-893f-efd1d9db4f87', 'idx_rooms$room_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('96cb2970-2aaa-3c83-8566-5605e101e5b1', 'f6d9577a-61f6-3468-ad5b-b268cd4a2769', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('f6d9577a-61f6-3468-ad5b-b268cd4a2769', 'System.owner', 'system$owner', '4226a51e-1fda-4c22-893f-efd1d9db4f87', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240223 23:38:52';
