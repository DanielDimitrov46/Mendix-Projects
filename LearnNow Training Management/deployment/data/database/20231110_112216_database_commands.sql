CREATE TABLE "myfirstmodule$registration" (
	"id" BIGINT NOT NULL,
	"number" BIGINT NULL,
	"date" TIMESTAMP NULL,
	"attended" BOOLEAN NULL,
	PRIMARY KEY("id"));
CREATE SEQUENCE "myfirstmodule$registration_number_mxseq" AS BIGINT START WITH 1;
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('28302c67-31a9-4245-8451-328b3b43eb93', 'MyFirstModule.Registration', 'myfirstmodule$registration', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b530db54-9878-4327-a3b2-ec7957ecf60b', '28302c67-31a9-4245-8451-328b3b43eb93', 'Number', 'number', 0, 0, '1', true);
INSERT INTO "mendixsystem$sequence" ("attribute_id", "name", "start_value", "current_value") VALUES ('b530db54-9878-4327-a3b2-ec7957ecf60b', 'myfirstmodule$registration_number_mxseq', 1, 0);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('1da2f0f9-4eeb-49cc-8977-c14ea4fba79a', '28302c67-31a9-4245-8451-328b3b43eb93', 'Date', 'date', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c9116ed1-1c53-4a03-af3e-6b456718d9a4', '28302c67-31a9-4245-8451-328b3b43eb93', 'Attended', 'attended', 10, 0, 'false', false);
CREATE TABLE "myfirstmodule$registration_trainingevent" (
	"myfirstmodule$registrationid" BIGINT NOT NULL,
	"myfirstmodule$trainingeventid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$registrationid","myfirstmodule$trainingeventid"),
	CONSTRAINT "uniq_myfirstmodule$registration_trainingevent_myfirstmodule$registrationid" UNIQUE ("myfirstmodule$registrationid"));
CREATE INDEX "idx_myfirstmodule$registration_trainingevent_myfirstmodule$trainingevent_myfirstmodule$registration" ON "myfirstmodule$registration_trainingevent" ("myfirstmodule$trainingeventid" ASC,"myfirstmodule$registrationid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('748d2e01-ef9d-4d9a-853a-bc0cf485c4bd', 'MyFirstModule.Registration_TrainingEvent', 'myfirstmodule$registration_trainingevent', '28302c67-31a9-4245-8451-328b3b43eb93', 'dfcabae0-cbdd-4f4d-8030-2deabe3ac6c2', 'myfirstmodule$registrationid', 'myfirstmodule$trainingeventid', 'idx_myfirstmodule$registration_trainingevent_myfirstmodule$trainingevent_myfirstmodule$registration');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$registration_trainingevent_myfirstmodule$registrationid', '748d2e01-ef9d-4d9a-853a-bc0cf485c4bd', '3317a217-b19f-3a69-b25d-d193ff85a040');
CREATE TABLE "myfirstmodule$registration_trainee" (
	"myfirstmodule$registrationid" BIGINT NOT NULL,
	"myfirstmodule$traineeid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$registrationid","myfirstmodule$traineeid"),
	CONSTRAINT "uniq_myfirstmodule$registration_trainee_myfirstmodule$registrationid" UNIQUE ("myfirstmodule$registrationid"));
CREATE INDEX "idx_myfirstmodule$registration_trainee_myfirstmodule$trainee_myfirstmodule$registration" ON "myfirstmodule$registration_trainee" ("myfirstmodule$traineeid" ASC,"myfirstmodule$registrationid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('0d865d3c-37d7-49bd-9725-d75f51dfa433', 'MyFirstModule.Registration_Trainee', 'myfirstmodule$registration_trainee', '28302c67-31a9-4245-8451-328b3b43eb93', '51134877-5d62-44a1-a524-a29bb56516be', 'myfirstmodule$registrationid', 'myfirstmodule$traineeid', 'idx_myfirstmodule$registration_trainee_myfirstmodule$trainee_myfirstmodule$registration');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$registration_trainee_myfirstmodule$registrationid', '0d865d3c-37d7-49bd-9725-d75f51dfa433', '24e77bb1-4b6a-36ee-a605-1fe2fa9bb85f');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20231110 11:22:16';
