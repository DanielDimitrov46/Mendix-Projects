ALTER TABLE "myfirstmodule$ad_user" DROP CONSTRAINT "uniq_myfirstmodule$ad_user_myfirstmodule$adid";
DROP INDEX "idx_myfirstmodule$ad_user_myfirstmodule$user_myfirstmodule$ad";
ALTER TABLE "myfirstmodule$ad_user" RENAME TO "93c6de0e63ad4b39a894ad1ab996c705";
ALTER TABLE "myfirstmodule$ad_vehicle" DROP CONSTRAINT "uniq_myfirstmodule$ad_vehicle_myfirstmodule$vehicleid";
ALTER TABLE "myfirstmodule$ad_vehicle" DROP CONSTRAINT "uniq_myfirstmodule$ad_vehicle_myfirstmodule$adid";
DROP INDEX "idx_myfirstmodule$ad_vehicle_myfirstmodule$vehicle_myfirstmodule$ad";
ALTER TABLE "myfirstmodule$ad_vehicle" RENAME TO "3149fa313d0a4344a5416b8e1f240f47";
ALTER TABLE "myfirstmodule$gallery_vehicle" DROP CONSTRAINT "uniq_myfirstmodule$gallery_vehicle_myfirstmodule$galleryid";
DROP INDEX "idx_myfirstmodule$gallery_vehicle_myfirstmodule$vehicle_myfirstmodule$gallery";
ALTER TABLE "myfirstmodule$gallery_vehicle" RENAME TO "bb7830d9499c49df94c7b59224265409";
ALTER TABLE "myfirstmodule$vehicle_car" DROP CONSTRAINT "uniq_myfirstmodule$vehicle_car_myfirstmodule$vehicleid";
DROP INDEX "idx_myfirstmodule$vehicle_car_myfirstmodule$car_myfirstmodule$vehicle";
ALTER TABLE "myfirstmodule$vehicle_car" RENAME TO "2b334fe9c70d46909663da060073f4ec";
ALTER TABLE "myfirstmodule$ad" RENAME TO "30d19b645f6f48c4960551962b25fe1f";
DROP SEQUENCE "myfirstmodule$ad_adid_mxseq";
DROP INDEX "idx_system$image_submetaobjectname_asc";
ALTER TABLE "myfirstmodule$car" RENAME TO "8d106eaf9aac4e3cbbe82fb56d057ec4";
ALTER TABLE "myfirstmodule$motorcycle" RENAME TO "f0a9867819354b3faaeec6d7d8f4497d";
ALTER TABLE "myfirstmodule$gallery" RENAME TO "92aade0c7d2743c48df159258e0beb32";
DROP INDEX "idx_myfirstmodule$vehicle_submetaobjectname_asc";
ALTER TABLE "myfirstmodule$vehicle" RENAME TO "a4fe95a2600e44389701ef11ca03ed39";
DROP INDEX "idx_administration$account_submetaobjectname_asc";
ALTER TABLE "myfirstmodule$truck" RENAME TO "93ac40d05544444d99682f00ff4ac163";
ALTER TABLE "myfirstmodule$user" RENAME TO "95bc1ae844a0490b9be1c2fbf87ef912";
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
ALTER TABLE "administration$account" DROP COLUMN "submetaobjectname";
DELETE FROM "mendixsystem$attribute"  WHERE "id" = 'b8715dd6-ef6c-3386-b05f-37d115afacbc';
DELETE FROM "mendixsystem$index"  WHERE "id" = '2b59c326-720a-3f23-98a5-b56a5c0dea59';
DELETE FROM "mendixsystem$index_column"  WHERE "index_id" = '2b59c326-720a-3f23-98a5-b56a5c0dea59';
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
DELETE FROM "forgotpassword$forgotpassword_account"  WHERE "administration$accountid" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
DELETE FROM "administration$account"  WHERE "id" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
DELETE FROM "system$user_language"  WHERE "system$userid" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
DELETE FROM "system$userroles"  WHERE "system$userid" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
DELETE FROM "system$user_timezone"  WHERE "system$userid" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "email_connector$incomingemailconfiguration" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "deeplink$pendinglink" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "email_connector$emailaccount" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "system$filedocument" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "mxmodelreflection$valuetype" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "email_connector$emailaccount" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
DELETE FROM "system$tokeninformation_user"  WHERE "system$userid" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "mxmodelreflection$mxobjectenumvalue" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "email_connector$emailtemplate" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "email_connector$emailtemplate" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "system$processedqueuetask" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
DELETE FROM "system$workflowusertask_targetusers"  WHERE "system$userid" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "system$workflow" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "mxmodelreflection$mxobjectenumcaptions" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "mxmodelreflection$microflows" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "email_connector$ldapconfiguration" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "email_connector$emailmessage" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "deeplink$pendinglink" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "email_connector$oauthtoken" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "email_connector$outgoingemailconfiguration" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "mxmodelreflection$mxobjecttype" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
DELETE FROM "system$session_user"  WHERE "system$userid" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "email_connector$incomingemailconfiguration" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
DELETE FROM "system$workflowactivity_actor"  WHERE "system$userid" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "mxmodelreflection$mxobjectmember" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
DELETE FROM "system$workflowactivityusertaskoutcome_user"  WHERE "system$userid" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "email_connector$oauthprovider" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "deeplink$entity" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "mxmodelreflection$parameter" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "mxmodelreflection$token" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "mxmodelreflection$mxobjectenumvalue" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
DELETE FROM "system$workflowusertask_assignees"  WHERE "system$userid" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "system$filedocument" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "email_connector$oauthprovider" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "email_connector$outgoingemailconfiguration" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
DELETE FROM "forgotpassword$forgotpassword_anon_user_access"  WHERE "system$userid" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "deeplink$microflow" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "mxmodelreflection$mxobjectmember" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "system$synchronizationerror" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "deeplink$deeplink" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "deeplink$microflow" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "mxmodelreflection$valuetype" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "deeplink$attribute" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "mxmodelreflection$mxobjectreference" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "deeplink$entity" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "mxmodelreflection$parameter" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
DELETE FROM "system$workflowusertaskoutcome_user"  WHERE "system$userid" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "mxmodelreflection$mxobjectreference" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
DELETE FROM "system$userreportinfo_user"  WHERE "system$userid" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "mxmodelreflection$microflows" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "email_connector$ldapconfiguration" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "email_connector$oauthtoken" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "deeplink$attribute" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "deeplink$deeplink" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "mxmodelreflection$mxobjecttype" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "system$queuedtask" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "mxmodelreflection$mxobjectenumcaptions" SET "system$owner" = NULL WHERE "system$owner" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
UPDATE "mxmodelreflection$token" SET "system$changedby" = NULL WHERE "system$changedby" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
DELETE FROM "system$user"  WHERE "id" IN ( SELECT "id" FROM "95bc1ae844a0490b9be1c2fbf87ef912" );
DELETE FROM "2b334fe9c70d46909663da060073f4ec"  WHERE "myfirstmodule$vehicleid" IN ( SELECT "id" FROM "93ac40d05544444d99682f00ff4ac163" );
DELETE FROM "bb7830d9499c49df94c7b59224265409"  WHERE "myfirstmodule$vehicleid" IN ( SELECT "id" FROM "93ac40d05544444d99682f00ff4ac163" );
DELETE FROM "3149fa313d0a4344a5416b8e1f240f47"  WHERE "myfirstmodule$vehicleid" IN ( SELECT "id" FROM "93ac40d05544444d99682f00ff4ac163" );
DELETE FROM "a4fe95a2600e44389701ef11ca03ed39"  WHERE "id" IN ( SELECT "id" FROM "93ac40d05544444d99682f00ff4ac163" );
DELETE FROM "system$thumbnail_image"  WHERE "system$imageid" IN ( SELECT "id" FROM "92aade0c7d2743c48df159258e0beb32" );
DELETE FROM "system$image"  WHERE "id" IN ( SELECT "id" FROM "92aade0c7d2743c48df159258e0beb32" );
DELETE FROM "system$filedocument"  WHERE "id" IN ( SELECT "id" FROM "92aade0c7d2743c48df159258e0beb32" );
DELETE FROM "2b334fe9c70d46909663da060073f4ec"  WHERE "myfirstmodule$vehicleid" IN ( SELECT "id" FROM "f0a9867819354b3faaeec6d7d8f4497d" );
DELETE FROM "bb7830d9499c49df94c7b59224265409"  WHERE "myfirstmodule$vehicleid" IN ( SELECT "id" FROM "f0a9867819354b3faaeec6d7d8f4497d" );
DELETE FROM "3149fa313d0a4344a5416b8e1f240f47"  WHERE "myfirstmodule$vehicleid" IN ( SELECT "id" FROM "f0a9867819354b3faaeec6d7d8f4497d" );
DELETE FROM "a4fe95a2600e44389701ef11ca03ed39"  WHERE "id" IN ( SELECT "id" FROM "f0a9867819354b3faaeec6d7d8f4497d" );
DROP TABLE "93c6de0e63ad4b39a894ad1ab996c705";
DROP TABLE "3149fa313d0a4344a5416b8e1f240f47";
DROP TABLE "bb7830d9499c49df94c7b59224265409";
DROP TABLE "2b334fe9c70d46909663da060073f4ec";
DROP TABLE "30d19b645f6f48c4960551962b25fe1f";
DROP TABLE "8d106eaf9aac4e3cbbe82fb56d057ec4";
DROP TABLE "f0a9867819354b3faaeec6d7d8f4497d";
DROP TABLE "92aade0c7d2743c48df159258e0beb32";
DROP TABLE "a4fe95a2600e44389701ef11ca03ed39";
DROP TABLE "93ac40d05544444d99682f00ff4ac163";
DROP TABLE "95bc1ae844a0490b9be1c2fbf87ef912";
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240101 12:26:38';
