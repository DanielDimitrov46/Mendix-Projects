ALTER TABLE "myfirstmodule$ad_user" DROP CONSTRAINT "uniq_myfirstmodule$ad_user_myfirstmodule$adid";
DROP INDEX "idx_myfirstmodule$ad_user_myfirstmodule$user_myfirstmodule$ad";
ALTER TABLE "myfirstmodule$ad_user" RENAME TO "6dbbe760f8ad4ca5afa08804a137b880";
ALTER TABLE "myfirstmodule$ad_vehicle" DROP CONSTRAINT "uniq_myfirstmodule$ad_vehicle_myfirstmodule$vehicleid";
ALTER TABLE "myfirstmodule$ad_vehicle" DROP CONSTRAINT "uniq_myfirstmodule$ad_vehicle_myfirstmodule$adid";
DROP INDEX "idx_myfirstmodule$ad_vehicle_myfirstmodule$vehicle_myfirstmodule$ad";
ALTER TABLE "myfirstmodule$ad_vehicle" RENAME TO "1fb14be86df24c1f83189e2f22c3ad4b";
ALTER TABLE "myfirstmodule$gallery_vehicle" DROP CONSTRAINT "uniq_myfirstmodule$gallery_vehicle_myfirstmodule$galleryid";
DROP INDEX "idx_myfirstmodule$gallery_vehicle_myfirstmodule$vehicle_myfirstmodule$gallery";
ALTER TABLE "myfirstmodule$gallery_vehicle" RENAME TO "03f27affd8984afdbab76dd732be50b8";
ALTER TABLE "myfirstmodule$vehicle_car" DROP CONSTRAINT "uniq_myfirstmodule$vehicle_car_myfirstmodule$vehicleid";
DROP INDEX "idx_myfirstmodule$vehicle_car_myfirstmodule$car_myfirstmodule$vehicle";
ALTER TABLE "myfirstmodule$vehicle_car" RENAME TO "be358d5e1dd0412eb3ea26421793d10e";
ALTER TABLE "myfirstmodule$ad" RENAME TO "50c7bafbedb640d69cbfe63822131113";
DROP SEQUENCE "myfirstmodule$ad_adid_mxseq";
DROP INDEX "idx_system$image_submetaobjectname_asc";
ALTER TABLE "myfirstmodule$car" RENAME TO "2bcf29460d0c4ed2bec8b7d4657e56bf";
ALTER TABLE "myfirstmodule$motorcycle" RENAME TO "6d9fc05b9b2649988ceef257c25e1481";
ALTER TABLE "myfirstmodule$gallery" RENAME TO "a17ca7cf265a4db6ab1331a54c17421e";
DROP INDEX "idx_myfirstmodule$vehicle_submetaobjectname_asc";
ALTER TABLE "myfirstmodule$vehicle" RENAME TO "ac17731f2e664d69b364d4617480d6f6";
ALTER TABLE "myfirstmodule$truck" RENAME TO "ae4cd132d51643748142cb2778316483";
ALTER TABLE "myfirstmodule$user" RENAME TO "2939d269296042f1aea2c4ae4d8def47";
DELETE FROM "mendixsystem$association"  WHERE "id" = '4536d473-25e3-4e80-93e2-6eeb9e296fd9';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_myfirstmodule$ad_user_myfirstmodule$adid' AND "column_id" = '0b1da1f8-2595-3986-b08c-dd06a264993b';
DELETE FROM "mendixsystem$association"  WHERE "id" = 'f5ad7081-0167-4eda-93c6-56f67a5e38bd';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_myfirstmodule$ad_vehicle_myfirstmodule$vehicleid' AND "column_id" = 'e2fbc623-5414-3eda-88fe-8762f9a4d3a2';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_myfirstmodule$ad_vehicle_myfirstmodule$adid' AND "column_id" = '9965caa2-fd6c-3405-b61d-f67cddb4ab24';
DELETE FROM "mendixsystem$association"  WHERE "id" = 'c91a155a-60dd-479e-a477-8cf853b7ec34';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_myfirstmodule$gallery_vehicle_myfirstmodule$galleryid' AND "column_id" = '5f0ae299-a7e8-39dd-8375-ae4cd96f1453';
DELETE FROM "mendixsystem$association"  WHERE "id" = '5424383a-f1a7-4324-b8e3-2829cec54065';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_myfirstmodule$vehicle_car_myfirstmodule$vehicleid' AND "column_id" = 'f451e9ae-1c80-3608-a161-43ac39c11414';
DELETE FROM "mendixsystem$entity"  WHERE "id" = '27a30391-b808-4f3a-98bb-d66d719194ea';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = '27a30391-b808-4f3a-98bb-d66d719194ea';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = '27a30391-b808-4f3a-98bb-d66d719194ea' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = '27a30391-b808-4f3a-98bb-d66d719194ea';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = '27a30391-b808-4f3a-98bb-d66d719194ea';
ALTER TABLE "system$image" DROP COLUMN "submetaobjectname";
DELETE FROM "mendixsystem$attribute"  WHERE "id" = '272f49fe-6a64-3ede-a32d-344a34e57b9f';
DELETE FROM "mendixsystem$index"  WHERE "id" = '00a9ec1c-4fab-368f-83d4-ffa8ff501c8c';
DELETE FROM "mendixsystem$index_column"  WHERE "index_id" = '00a9ec1c-4fab-368f-83d4-ffa8ff501c8c';
DELETE FROM "mendixsystem$entity"  WHERE "id" = '618d325c-745b-42f8-9997-165441b73f37';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = '618d325c-745b-42f8-9997-165441b73f37';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = '618d325c-745b-42f8-9997-165441b73f37' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = '618d325c-745b-42f8-9997-165441b73f37';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = '618d325c-745b-42f8-9997-165441b73f37';
DELETE FROM "mendixsystem$entity"  WHERE "id" = '714df2f1-9d44-48e8-ac9d-de0230e52d19';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = '714df2f1-9d44-48e8-ac9d-de0230e52d19';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = '714df2f1-9d44-48e8-ac9d-de0230e52d19' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = '714df2f1-9d44-48e8-ac9d-de0230e52d19';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = '714df2f1-9d44-48e8-ac9d-de0230e52d19';
DELETE FROM "mendixsystem$entity"  WHERE "id" = '76ccbf0e-f8af-4b9b-b750-a993921ac27f';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = '76ccbf0e-f8af-4b9b-b750-a993921ac27f';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = '76ccbf0e-f8af-4b9b-b750-a993921ac27f' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = '76ccbf0e-f8af-4b9b-b750-a993921ac27f';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = '76ccbf0e-f8af-4b9b-b750-a993921ac27f';
DELETE FROM "mendixsystem$entity"  WHERE "id" = '8fdb04a0-6482-4c7b-a501-ac9f3878b237';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = '8fdb04a0-6482-4c7b-a501-ac9f3878b237';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = '8fdb04a0-6482-4c7b-a501-ac9f3878b237' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = '8fdb04a0-6482-4c7b-a501-ac9f3878b237';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = '8fdb04a0-6482-4c7b-a501-ac9f3878b237';
DELETE FROM "mendixsystem$index"  WHERE "table_id" = '8fdb04a0-6482-4c7b-a501-ac9f3878b237';
DELETE FROM "mendixsystem$index_column"  WHERE "index_id" IN ('d9c92abd-78fb-3ea1-bb51-302c9dfb42f3');
DELETE FROM "mendixsystem$entity"  WHERE "id" = 'ee5f2f53-8476-4103-b7dc-f460f8d53950';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = 'ee5f2f53-8476-4103-b7dc-f460f8d53950';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = 'ee5f2f53-8476-4103-b7dc-f460f8d53950' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = 'ee5f2f53-8476-4103-b7dc-f460f8d53950';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = 'ee5f2f53-8476-4103-b7dc-f460f8d53950';
DELETE FROM "mendixsystem$entity"  WHERE "id" = 'f9bfc8bf-d8fb-4c33-ba25-ab9d79abeef1';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = 'f9bfc8bf-d8fb-4c33-ba25-ab9d79abeef1';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = 'f9bfc8bf-d8fb-4c33-ba25-ab9d79abeef1' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = 'f9bfc8bf-d8fb-4c33-ba25-ab9d79abeef1';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = 'f9bfc8bf-d8fb-4c33-ba25-ab9d79abeef1';
CREATE TABLE "myfirstmodule$motorcycle" (
	"id" BIGINT NOT NULL,
	"coolingtype" VARCHAR_IGNORECASE(5) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('7100d30b-90ff-4cc2-8d76-148359de7662', 'MyFirstModule.Motorcycle', 'myfirstmodule$motorcycle', 'ee598664-b0d3-476b-a077-2343faf5898a', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3b36f27f-0a22-4cc0-bc34-fa7426135b7c', '7100d30b-90ff-4cc2-8d76-148359de7662', 'CoolingType', 'coolingtype', 40, 5, '', false);
CREATE TABLE "myfirstmodule$ad" (
	"id" BIGINT NOT NULL,
	"adid" BIGINT NULL,
	"title" VARCHAR_IGNORECASE(200) NULL,
	"description" VARCHAR_IGNORECASE(400) NULL,
	"postingdate" TIMESTAMP NULL,
	PRIMARY KEY("id"));
CREATE SEQUENCE "myfirstmodule$ad_adid_mxseq" AS BIGINT START WITH 1;
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('aa1004c2-38d1-48e5-9761-10f9b43b5c02', 'MyFirstModule.Ad', 'myfirstmodule$ad', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b3979026-4919-4dad-a97c-1408f9d55a58', 'aa1004c2-38d1-48e5-9761-10f9b43b5c02', 'AdId', 'adid', 0, 0, '1', true);
INSERT INTO "mendixsystem$sequence" ("attribute_id", "name", "start_value", "current_value") VALUES ('b3979026-4919-4dad-a97c-1408f9d55a58', 'myfirstmodule$ad_adid_mxseq', 1, 0);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d1bdabb0-dc58-4c91-84bf-c228634e2504', 'aa1004c2-38d1-48e5-9761-10f9b43b5c02', 'Title', 'title', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ed5abfc4-a87e-485c-a39d-0ca02f7f7ef4', 'aa1004c2-38d1-48e5-9761-10f9b43b5c02', 'Description', 'description', 30, 400, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e82ce88b-68ca-442f-90ff-ed788a94c5e6', 'aa1004c2-38d1-48e5-9761-10f9b43b5c02', 'PostingDate', 'postingdate', 20, 0, '', false);
CREATE TABLE "myfirstmodule$car" (
	"id" BIGINT NOT NULL,
	"numberofdoors" INT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('02fe64b7-79c5-4589-8476-f589fbcddd1f', 'MyFirstModule.Car', 'myfirstmodule$car', 'ee598664-b0d3-476b-a077-2343faf5898a', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('41aff76e-7095-4cbf-9d83-8efb95587ea3', '02fe64b7-79c5-4589-8476-f589fbcddd1f', 'NumberOfDoors', 'numberofdoors', 3, 0, '0', false);
CREATE TABLE "myfirstmodule$truck" (
	"id" BIGINT NOT NULL,
	"numberofaxis" INT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('4623486e-1118-4263-8b13-61af0a88c160', 'MyFirstModule.Truck', 'myfirstmodule$truck', 'ee598664-b0d3-476b-a077-2343faf5898a', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3ff86289-9618-4983-88d3-2dbecd2ffd47', '4623486e-1118-4263-8b13-61af0a88c160', 'NumberOfAxis', 'numberofaxis', 3, 0, '0', false);
CREATE TABLE "myfirstmodule$user" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('b0b0e704-bcf4-4012-96a4-a5a636972d4d', 'MyFirstModule.User', 'myfirstmodule$user', 'c921ccbb-a670-48d9-833d-6a76c1406917', false, false);
CREATE TABLE "myfirstmodule$vehicle" (
	"id" BIGINT NOT NULL,
	"manufacturer" VARCHAR_IGNORECASE(200) NULL,
	"model" VARCHAR_IGNORECASE(200) NULL,
	"year" TIMESTAMP NULL,
	"color" VARCHAR_IGNORECASE(6) NULL,
	"horsepower" INT NULL,
	"mileage" INT NULL,
	"price" DECIMAL(28, 8) NULL,
	"submetaobjectname" VARCHAR_IGNORECASE(255) NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_myfirstmodule$vehicle_submetaobjectname_asc" ON "myfirstmodule$vehicle" ("submetaobjectname" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('ee598664-b0d3-476b-a077-2343faf5898a', 'MyFirstModule.Vehicle', 'myfirstmodule$vehicle', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('5c7c9777-fa14-4a07-b8dd-87eaed86b226', 'ee598664-b0d3-476b-a077-2343faf5898a', 'Manufacturer', 'manufacturer', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('5b6b0e10-441f-4628-b898-fcd0b0c4b199', 'ee598664-b0d3-476b-a077-2343faf5898a', 'Model', 'model', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e375ad7c-82b1-4c25-9b96-83006a827dba', 'ee598664-b0d3-476b-a077-2343faf5898a', 'Year', 'year', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6f61c11e-30f2-4caa-bc1e-bb8b7a32c15f', 'ee598664-b0d3-476b-a077-2343faf5898a', 'Color', 'color', 40, 6, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('1dd8098e-e981-4719-9efa-90c5e9fd2e08', 'ee598664-b0d3-476b-a077-2343faf5898a', 'Horsepower', 'horsepower', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('89052f39-fee6-4d27-aa55-ccc47f9ed2c5', 'ee598664-b0d3-476b-a077-2343faf5898a', 'Mileage', 'mileage', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e1967b40-d58f-48ca-a604-9042322ace9d', 'ee598664-b0d3-476b-a077-2343faf5898a', 'Price', 'price', 5, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8c96a735-db1a-3a5a-8bba-06f6fef06726', 'ee598664-b0d3-476b-a077-2343faf5898a', 'submetaobjectname', 'submetaobjectname', 30, 255, 'MyFirstModule.Vehicle', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('c3535ddd-6e24-3a7f-ba59-55b5892d0c15', 'ee598664-b0d3-476b-a077-2343faf5898a', 'idx_myfirstmodule$vehicle_submetaobjectname_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('c3535ddd-6e24-3a7f-ba59-55b5892d0c15', '8c96a735-db1a-3a5a-8bba-06f6fef06726', false, 0);
CREATE TABLE "myfirstmodule$ad_user" (
	"myfirstmodule$adid" BIGINT NOT NULL,
	"myfirstmodule$userid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$adid","myfirstmodule$userid"),
	CONSTRAINT "uniq_myfirstmodule$ad_user_myfirstmodule$adid" UNIQUE ("myfirstmodule$adid"));
CREATE INDEX "idx_myfirstmodule$ad_user_myfirstmodule$user_myfirstmodule$ad" ON "myfirstmodule$ad_user" ("myfirstmodule$userid" ASC,"myfirstmodule$adid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('3fc2b44a-9dfc-452e-9d68-7ade78f69474', 'MyFirstModule.Ad_User', 'myfirstmodule$ad_user', 'aa1004c2-38d1-48e5-9761-10f9b43b5c02', 'b0b0e704-bcf4-4012-96a4-a5a636972d4d', 'myfirstmodule$adid', 'myfirstmodule$userid', 'idx_myfirstmodule$ad_user_myfirstmodule$user_myfirstmodule$ad');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$ad_user_myfirstmodule$adid', '3fc2b44a-9dfc-452e-9d68-7ade78f69474', 'b6231fc5-d7ef-390c-9e0d-054f815b6c24');
DELETE FROM "forgotpassword$forgotpassword_account"  WHERE "administration$accountid" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
DELETE FROM "administration$account"  WHERE "id" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
DELETE FROM "system$user_language"  WHERE "system$userid" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
DELETE FROM "system$userroles"  WHERE "system$userid" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
DELETE FROM "system$user_timezone"  WHERE "system$userid" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "email_connector$incomingemailconfiguration" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "deeplink$pendinglink" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "email_connector$emailaccount" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "system$filedocument" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "mxmodelreflection$valuetype" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "email_connector$emailaccount" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
DELETE FROM "system$tokeninformation_user"  WHERE "system$userid" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "mxmodelreflection$mxobjectenumvalue" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "email_connector$emailtemplate" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "email_connector$emailtemplate" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "system$processedqueuetask" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
DELETE FROM "system$workflowusertask_targetusers"  WHERE "system$userid" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "system$workflow" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "mxmodelreflection$mxobjectenumcaptions" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "mxmodelreflection$microflows" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "email_connector$ldapconfiguration" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "email_connector$emailmessage" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "deeplink$pendinglink" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "email_connector$oauthtoken" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "email_connector$outgoingemailconfiguration" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "mxmodelreflection$mxobjecttype" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
DELETE FROM "system$session_user"  WHERE "system$userid" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "email_connector$incomingemailconfiguration" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
DELETE FROM "system$workflowactivity_actor"  WHERE "system$userid" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "mxmodelreflection$mxobjectmember" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
DELETE FROM "system$workflowactivityusertaskoutcome_user"  WHERE "system$userid" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "email_connector$oauthprovider" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "deeplink$entity" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "mxmodelreflection$parameter" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "mxmodelreflection$token" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "mxmodelreflection$mxobjectenumvalue" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
DELETE FROM "system$workflowusertask_assignees"  WHERE "system$userid" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "system$filedocument" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "email_connector$oauthprovider" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "email_connector$outgoingemailconfiguration" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
DELETE FROM "forgotpassword$forgotpassword_anon_user_access"  WHERE "system$userid" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "deeplink$microflow" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "mxmodelreflection$mxobjectmember" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "system$synchronizationerror" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "deeplink$deeplink" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "deeplink$microflow" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "mxmodelreflection$valuetype" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "deeplink$attribute" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "mxmodelreflection$mxobjectreference" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "deeplink$entity" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "mxmodelreflection$parameter" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
DELETE FROM "system$workflowusertaskoutcome_user"  WHERE "system$userid" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "mxmodelreflection$mxobjectreference" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
DELETE FROM "system$userreportinfo_user"  WHERE "system$userid" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "mxmodelreflection$microflows" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "email_connector$ldapconfiguration" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "email_connector$oauthtoken" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "deeplink$attribute" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "deeplink$deeplink" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "mxmodelreflection$mxobjecttype" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "system$queuedtask" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "mxmodelreflection$mxobjectenumcaptions" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
UPDATE "mxmodelreflection$token" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
DELETE FROM "system$user"  WHERE "id" IN ( SELECT "id" FROM "2939d269296042f1aea2c4ae4d8def47" );
DELETE FROM "be358d5e1dd0412eb3ea26421793d10e"  WHERE "myfirstmodule$vehicleid" IN ( SELECT "id" FROM "ae4cd132d51643748142cb2778316483" );
DELETE FROM "03f27affd8984afdbab76dd732be50b8"  WHERE "myfirstmodule$vehicleid" IN ( SELECT "id" FROM "ae4cd132d51643748142cb2778316483" );
DELETE FROM "1fb14be86df24c1f83189e2f22c3ad4b"  WHERE "myfirstmodule$vehicleid" IN ( SELECT "id" FROM "ae4cd132d51643748142cb2778316483" );
DELETE FROM "ac17731f2e664d69b364d4617480d6f6"  WHERE "id" IN ( SELECT "id" FROM "ae4cd132d51643748142cb2778316483" );
DELETE FROM "system$thumbnail_image"  WHERE "system$imageid" IN ( SELECT "id" FROM "a17ca7cf265a4db6ab1331a54c17421e" );
DELETE FROM "system$image"  WHERE "id" IN ( SELECT "id" FROM "a17ca7cf265a4db6ab1331a54c17421e" );
DELETE FROM "system$filedocument"  WHERE "id" IN ( SELECT "id" FROM "a17ca7cf265a4db6ab1331a54c17421e" );
DELETE FROM "be358d5e1dd0412eb3ea26421793d10e"  WHERE "myfirstmodule$vehicleid" IN ( SELECT "id" FROM "6d9fc05b9b2649988ceef257c25e1481" );
DELETE FROM "03f27affd8984afdbab76dd732be50b8"  WHERE "myfirstmodule$vehicleid" IN ( SELECT "id" FROM "6d9fc05b9b2649988ceef257c25e1481" );
DELETE FROM "1fb14be86df24c1f83189e2f22c3ad4b"  WHERE "myfirstmodule$vehicleid" IN ( SELECT "id" FROM "6d9fc05b9b2649988ceef257c25e1481" );
DELETE FROM "ac17731f2e664d69b364d4617480d6f6"  WHERE "id" IN ( SELECT "id" FROM "6d9fc05b9b2649988ceef257c25e1481" );
DROP TABLE "6dbbe760f8ad4ca5afa08804a137b880";
DROP TABLE "1fb14be86df24c1f83189e2f22c3ad4b";
DROP TABLE "03f27affd8984afdbab76dd732be50b8";
DROP TABLE "be358d5e1dd0412eb3ea26421793d10e";
DROP TABLE "50c7bafbedb640d69cbfe63822131113";
DROP TABLE "2bcf29460d0c4ed2bec8b7d4657e56bf";
DROP TABLE "6d9fc05b9b2649988ceef257c25e1481";
DROP TABLE "a17ca7cf265a4db6ab1331a54c17421e";
DROP TABLE "ac17731f2e664d69b364d4617480d6f6";
DROP TABLE "ae4cd132d51643748142cb2778316483";
DROP TABLE "2939d269296042f1aea2c4ae4d8def47";
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240101 12:24:20';
