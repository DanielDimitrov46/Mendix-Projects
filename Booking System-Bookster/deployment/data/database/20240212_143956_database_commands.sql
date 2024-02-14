ALTER TABLE "usermanagement$user" ADD "status" VARCHAR_IGNORECASE(8) NULL;
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('72b79c3e-a773-4959-8eff-836fae1eeef8', 'a2d79d2a-2ffd-40e5-93b0-b95da3b9b65e', 'Status', 'status', 40, 8, '', false);
CREATE TABLE "usermanagement$registration" (
	"id" BIGINT NOT NULL,
	"fullname" VARCHAR_IGNORECASE(200) NULL,
	"username" VARCHAR_IGNORECASE(200) NULL,
	"emailaddress" VARCHAR_IGNORECASE(200) NULL,
	"password" VARCHAR_IGNORECASE(200) NULL,
	"confirmpassword" VARCHAR_IGNORECASE(200) NULL,
	"status" VARCHAR_IGNORECASE(8) NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$owner" BIGINT NULL,
	"system$changedby" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_usermanagement$registration_system$owner" ON "usermanagement$registration" ("system$owner" ASC,"id" ASC);
CREATE INDEX "idx_usermanagement$registration_system$changedby" ON "usermanagement$registration" ("system$changedby" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('6d9aafac-76aa-4a26-af66-8a81ac136f89', 'UserManagement.Registration', 'usermanagement$registration', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a3340d3c-8419-4438-a262-a5d4464add49', '6d9aafac-76aa-4a26-af66-8a81ac136f89', 'FullName', 'fullname', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('39c5d094-41df-41d8-817e-4f0275c5f716', '6d9aafac-76aa-4a26-af66-8a81ac136f89', 'UserName', 'username', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('edcd7231-6bb3-4c4a-945b-b96275310ead', '6d9aafac-76aa-4a26-af66-8a81ac136f89', 'EmailAddress', 'emailaddress', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f81ac126-0f66-491a-8372-3e7a96dc3dae', '6d9aafac-76aa-4a26-af66-8a81ac136f89', 'Password', 'password', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('74adf26b-e2f6-425d-b213-900bb4f87868', '6d9aafac-76aa-4a26-af66-8a81ac136f89', 'ConfirmPassword', 'confirmpassword', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('862fa71e-fcec-4cf3-a40a-e3b8337d5e2b', '6d9aafac-76aa-4a26-af66-8a81ac136f89', 'Status', 'status', 40, 8, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('03a64775-97dc-3cd9-bf00-bdd3fdce11c4', '6d9aafac-76aa-4a26-af66-8a81ac136f89', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e600a2fc-0bcd-3115-b173-59e429a6daa3', '6d9aafac-76aa-4a26-af66-8a81ac136f89', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('dc866acf-1b87-3a8d-815b-2ef18021726c', '6d9aafac-76aa-4a26-af66-8a81ac136f89', 'idx_usermanagement$registration_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('dc866acf-1b87-3a8d-815b-2ef18021726c', '1c27a6c2-2142-3968-b64b-7b2b3137e54f', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('c6b70a4c-a109-3459-8443-896698ee57b9', '6d9aafac-76aa-4a26-af66-8a81ac136f89', 'idx_usermanagement$registration_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('c6b70a4c-a109-3459-8443-896698ee57b9', '6b2c1ea6-b09f-3b1e-a80e-233b2053e060', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('1c27a6c2-2142-3968-b64b-7b2b3137e54f', 'System.owner', 'system$owner', '6d9aafac-76aa-4a26-af66-8a81ac136f89', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('6b2c1ea6-b09f-3b1e-a80e-233b2053e060', 'System.changedBy', 'system$changedby', '6d9aafac-76aa-4a26-af66-8a81ac136f89', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240212 14:39:56';
