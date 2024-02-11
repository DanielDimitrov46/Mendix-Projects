CREATE SEQUENCE "expenses$request_requestid_mxseq" AS BIGINT START WITH 1;
ALTER TABLE "expenses$request" ADD "requestid" BIGINT NULL;
UPDATE "expenses$request" SET "requestid" = NEXT VALUE FOR "expenses$request_requestid_mxseq";
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ba81f121-4997-495d-a920-ed03cb96d081', '3c9369d0-9757-4c89-ab09-51acb08c2747', 'RequestID', 'requestid', 0, 0, '1', true);
INSERT INTO "mendixsystem$sequence" ("attribute_id", "name", "start_value", "current_value") VALUES ('ba81f121-4997-495d-a920-ed03cb96d081', 'expenses$request_requestid_mxseq', 1, 1);
CREATE TABLE "notifications$notification" (
	"id" BIGINT NOT NULL,
	"title" VARCHAR_IGNORECASE(200) NULL,
	"message" VARCHAR_IGNORECASE(1000) NULL,
	"read" BOOLEAN NULL,
	"associatedobject" BIGINT NULL,
	"system$owner" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_notifications$notification_system$owner" ON "notifications$notification" ("system$owner" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('8463f927-c171-4e54-86b0-d30f2ad42134', 'Notifications.Notification', 'notifications$notification', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('41e3ccca-5e17-4be2-a5b0-02d209d9636c', '8463f927-c171-4e54-86b0-d30f2ad42134', 'Title', 'title', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('28075885-c508-4124-a644-df7fbcf05823', '8463f927-c171-4e54-86b0-d30f2ad42134', 'Message', 'message', 30, 1000, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('060f6a21-4d6c-4e77-a22f-e4f83cd75db8', '8463f927-c171-4e54-86b0-d30f2ad42134', 'Read', 'read', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('68d49a95-ae20-4211-8d02-d3bffb72a5fd', '8463f927-c171-4e54-86b0-d30f2ad42134', 'AssociatedObject', 'associatedobject', 4, 0, '0', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('d3c251bc-e8db-3aed-aa57-8ef4cae7ebe6', '8463f927-c171-4e54-86b0-d30f2ad42134', 'idx_notifications$notification_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('d3c251bc-e8db-3aed-aa57-8ef4cae7ebe6', '27384a06-b12f-3665-9e70-9bb04504197b', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('27384a06-b12f-3665-9e70-9bb04504197b', 'System.owner', 'system$owner', '8463f927-c171-4e54-86b0-d30f2ad42134', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
CREATE TABLE "notifications$notification_account" (
	"notifications$notificationid" BIGINT NOT NULL,
	"administration$accountid" BIGINT NOT NULL,
	PRIMARY KEY("notifications$notificationid","administration$accountid"));
CREATE INDEX "idx_notifications$notification_account_administration$account_notifications$notification" ON "notifications$notification_account" ("administration$accountid" ASC,"notifications$notificationid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('83bde988-2854-4cc4-ac13-772bcbecd656', 'Notifications.Notification_Account', 'notifications$notification_account', '8463f927-c171-4e54-86b0-d30f2ad42134', 'c921ccbb-a670-48d9-833d-6a76c1406917', 'notifications$notificationid', 'administration$accountid', 'idx_notifications$notification_account_administration$account_notifications$notification');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240118 13:53:07';
