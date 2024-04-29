CREATE TABLE "notification$notification" (
	"id" BIGINT NOT NULL,
	"message" VARCHAR_IGNORECASE(200) NULL,
	"toshow" BOOLEAN NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('60f4049a-b0ba-4f11-b797-e9caf5742932', 'Notification.Notification', 'notification$notification', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('60cd8757-3c11-4200-be8f-f81e5d3aac11', '60f4049a-b0ba-4f11-b797-e9caf5742932', 'Message', 'message', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e11a8659-b16b-468a-a461-092b98a7f40e', '60f4049a-b0ba-4f11-b797-e9caf5742932', 'toShow', 'toshow', 10, 0, 'true', false);
CREATE TABLE "notification$notification_user" (
	"notification$notificationid" BIGINT NOT NULL,
	"usermanagement$userid" BIGINT NOT NULL,
	PRIMARY KEY("notification$notificationid","usermanagement$userid"),
	CONSTRAINT "uniq_notification$notification_user_notification$notificationid" UNIQUE ("notification$notificationid"));
CREATE INDEX "idx_notification$notification_user_usermanagement$user_notification$notification" ON "notification$notification_user" ("usermanagement$userid" ASC,"notification$notificationid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('b1ef9b66-40ec-4e8a-a1ac-efb9d193a8df', 'Notification.Notification_User', 'notification$notification_user', '60f4049a-b0ba-4f11-b797-e9caf5742932', 'a2d79d2a-2ffd-40e5-93b0-b95da3b9b65e', 'notification$notificationid', 'usermanagement$userid', 'idx_notification$notification_user_usermanagement$user_notification$notification');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_notification$notification_user_notification$notificationid', 'b1ef9b66-40ec-4e8a-a1ac-efb9d193a8df', 'a9e516b1-ebd0-34f3-9d50-268e0548abf7');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240419 03:51:50';
