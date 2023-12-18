CREATE TABLE "eventmanagement$email" (
	"id" BIGINT NOT NULL,
	"title" VARCHAR_IGNORECASE(200) NULL,
	"message" VARCHAR_IGNORECASE(200) NULL,
	"emailaddress" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('4f993302-ac19-4933-aaae-918300203f39', 'EventManagement.Email', 'eventmanagement$email', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('16c054bb-5cc3-4b82-a47b-7165b03fc5d7', '4f993302-ac19-4933-aaae-918300203f39', 'Title', 'title', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('884e2ddd-8664-476e-b90a-fffd6fefc44d', '4f993302-ac19-4933-aaae-918300203f39', 'Message', 'message', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('01ad903f-69a2-4f11-af72-38d5eb2f3d95', '4f993302-ac19-4933-aaae-918300203f39', 'EmailAddress', 'emailaddress', 30, 200, '', false);
CREATE TABLE "eventmanagement$newsletter" (
	"id" BIGINT NOT NULL,
	"title" VARCHAR_IGNORECASE(200) NULL,
	"message" VARCHAR_IGNORECASE(2147483647) NULL,
	"issent" BOOLEAN NULL,
	"createddate" TIMESTAMP NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('9f1b92db-5820-4086-9dc4-5c1f190165b9', 'EventManagement.Newsletter', 'eventmanagement$newsletter', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2dd86e04-20c9-4f94-98e7-b67d16951359', '9f1b92db-5820-4086-9dc4-5c1f190165b9', 'Title', 'title', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('29ab8f51-36c8-41a0-bdc1-f009efd6ec8a', '9f1b92db-5820-4086-9dc4-5c1f190165b9', 'Message', 'message', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e90a6e22-bfcc-4d35-b4a0-e40b1aaaa8c2', '9f1b92db-5820-4086-9dc4-5c1f190165b9', 'isSent', 'issent', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e418dc1d-fe18-3bee-afc2-dc6620678097', '9f1b92db-5820-4086-9dc4-5c1f190165b9', 'createdDate', 'createddate', 20, 0, '', false);
CREATE TABLE "eventmanagement$email_newsletter" (
	"eventmanagement$emailid" BIGINT NOT NULL,
	"eventmanagement$newsletterid" BIGINT NOT NULL,
	PRIMARY KEY("eventmanagement$emailid","eventmanagement$newsletterid"),
	CONSTRAINT "uniq_eventmanagement$email_newsletter_eventmanagement$emailid" UNIQUE ("eventmanagement$emailid"));
CREATE INDEX "idx_eventmanagement$email_newsletter_eventmanagement$newsletter_eventmanagement$email" ON "eventmanagement$email_newsletter" ("eventmanagement$newsletterid" ASC,"eventmanagement$emailid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('d7ef66f6-e072-4701-b688-650539829111', 'EventManagement.Email_Newsletter', 'eventmanagement$email_newsletter', '4f993302-ac19-4933-aaae-918300203f39', '9f1b92db-5820-4086-9dc4-5c1f190165b9', 'eventmanagement$emailid', 'eventmanagement$newsletterid', 'idx_eventmanagement$email_newsletter_eventmanagement$newsletter_eventmanagement$email');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_eventmanagement$email_newsletter_eventmanagement$emailid', 'd7ef66f6-e072-4701-b688-650539829111', 'd517f9af-1bec-306b-a025-113aae5ec948');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20231213 18:56:43';
