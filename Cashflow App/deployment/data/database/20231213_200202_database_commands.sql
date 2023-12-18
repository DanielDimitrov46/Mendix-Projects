CREATE TABLE "myfirstmodule$transaction" (
	"id" BIGINT NOT NULL,
	"name" VARCHAR_IGNORECASE(200) NULL,
	"amount" DECIMAL(28, 8) NULL,
	"typeoftransaction" VARCHAR_IGNORECASE(7) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('5ae37fb2-3466-4960-9eaa-387f26c5f754', 'MyFirstModule.Transaction', 'myfirstmodule$transaction', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a37fc451-d386-40ff-80a3-67aac9020ef5', '5ae37fb2-3466-4960-9eaa-387f26c5f754', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('bbb67437-c1ba-4478-b582-19e08cddfa36', '5ae37fb2-3466-4960-9eaa-387f26c5f754', 'Amount', 'amount', 5, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('1543771c-2e3a-4986-9a07-bcb1ce9f361d', '5ae37fb2-3466-4960-9eaa-387f26c5f754', 'TypeOfTransaction', 'typeoftransaction', 40, 7, '', false);
CREATE TABLE "myfirstmodule$registration" (
	"id" BIGINT NOT NULL,
	"firstname" VARCHAR_IGNORECASE(200) NULL,
	"lastname" VARCHAR_IGNORECASE(200) NULL,
	"email" VARCHAR_IGNORECASE(200) NULL,
	"dateofbirth" TIMESTAMP NULL,
	"password" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('f31e86cb-ca1c-45b2-81ac-2949c0bfebec', 'MyFirstModule.Registration', 'myfirstmodule$registration', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('df97de3b-94e5-4a62-b099-d92967c7042e', 'f31e86cb-ca1c-45b2-81ac-2949c0bfebec', 'FirstName', 'firstname', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('1885c699-26f5-4e7d-90ac-865146802e4f', 'f31e86cb-ca1c-45b2-81ac-2949c0bfebec', 'LastName', 'lastname', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('25e3e846-4092-458f-935b-a47fcad57029', 'f31e86cb-ca1c-45b2-81ac-2949c0bfebec', 'Email', 'email', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b849b6cd-2200-46e9-a2ed-8bcd3a9b39ba', 'f31e86cb-ca1c-45b2-81ac-2949c0bfebec', 'DateOfBirth', 'dateofbirth', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('29060f0a-a6d3-4257-a420-2e8318369621', 'f31e86cb-ca1c-45b2-81ac-2949c0bfebec', 'Password', 'password', 30, 200, '', false);
CREATE TABLE "myfirstmodule$category" (
	"id" BIGINT NOT NULL,
	"name" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('b10e0e5b-238d-4cac-a8cf-3063cbf2d165', 'MyFirstModule.Category', 'myfirstmodule$category', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('576c2b1d-ca5b-42c3-9956-26bf59527fea', 'b10e0e5b-238d-4cac-a8cf-3063cbf2d165', 'Name', 'name', 30, 200, '', false);
CREATE TABLE "myfirstmodule$transaction_category" (
	"myfirstmodule$transactionid" BIGINT NOT NULL,
	"myfirstmodule$categoryid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$transactionid","myfirstmodule$categoryid"),
	CONSTRAINT "uniq_myfirstmodule$transaction_category_myfirstmodule$transactionid" UNIQUE ("myfirstmodule$transactionid"));
CREATE INDEX "idx_myfirstmodule$transaction_category_myfirstmodule$category_myfirstmodule$transaction" ON "myfirstmodule$transaction_category" ("myfirstmodule$categoryid" ASC,"myfirstmodule$transactionid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('f431a104-be22-4f41-8c22-d51ba2869b7e', 'MyFirstModule.Transaction_Category', 'myfirstmodule$transaction_category', '5ae37fb2-3466-4960-9eaa-387f26c5f754', 'b10e0e5b-238d-4cac-a8cf-3063cbf2d165', 'myfirstmodule$transactionid', 'myfirstmodule$categoryid', 'idx_myfirstmodule$transaction_category_myfirstmodule$category_myfirstmodule$transaction');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$transaction_category_myfirstmodule$transactionid', 'f431a104-be22-4f41-8c22-d51ba2869b7e', '6666db87-518d-38f0-ba76-dc63712d3c6a');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20231213 20:02:02';
