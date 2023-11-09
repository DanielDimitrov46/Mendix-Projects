CREATE TABLE "myfirstmodule$trainingevent" (
	"id" BIGINT NOT NULL,
	"startdate" TIMESTAMP NULL,
	"enddate" TIMESTAMP NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('dfcabae0-cbdd-4f4d-8030-2deabe3ac6c2', 'MyFirstModule.TrainingEvent', 'myfirstmodule$trainingevent', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ce724187-c88b-450a-99c8-83d1ae80ce8e', 'dfcabae0-cbdd-4f4d-8030-2deabe3ac6c2', 'StartDate', 'startdate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('09ff546e-5422-4ef7-997d-131fac5f3fc4', 'dfcabae0-cbdd-4f4d-8030-2deabe3ac6c2', 'EndDate', 'enddate', 20, 0, '', false);
CREATE TABLE "myfirstmodule$trainingevent_teacher" (
	"myfirstmodule$trainingeventid" BIGINT NOT NULL,
	"myfirstmodule$teacherid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$trainingeventid","myfirstmodule$teacherid"),
	CONSTRAINT "uniq_myfirstmodule$trainingevent_teacher_myfirstmodule$trainingeventid" UNIQUE ("myfirstmodule$trainingeventid"));
CREATE INDEX "idx_myfirstmodule$trainingevent_teacher_myfirstmodule$teacher_myfirstmodule$trainingevent" ON "myfirstmodule$trainingevent_teacher" ("myfirstmodule$teacherid" ASC,"myfirstmodule$trainingeventid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('e863e2c1-2b6b-433a-ac3b-260a8077fae9', 'MyFirstModule.TrainingEvent_Teacher', 'myfirstmodule$trainingevent_teacher', 'dfcabae0-cbdd-4f4d-8030-2deabe3ac6c2', 'fc0d5cb2-3c50-4188-b5db-439c9e2a3bab', 'myfirstmodule$trainingeventid', 'myfirstmodule$teacherid', 'idx_myfirstmodule$trainingevent_teacher_myfirstmodule$teacher_myfirstmodule$trainingevent');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$trainingevent_teacher_myfirstmodule$trainingeventid', 'e863e2c1-2b6b-433a-ac3b-260a8077fae9', '9c0d5da6-98c7-34b3-9f01-6240db87a7aa');
CREATE TABLE "myfirstmodule$trainingevent_course" (
	"myfirstmodule$trainingeventid" BIGINT NOT NULL,
	"myfirstmodule$courseid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$trainingeventid","myfirstmodule$courseid"),
	CONSTRAINT "uniq_myfirstmodule$trainingevent_course_myfirstmodule$trainingeventid" UNIQUE ("myfirstmodule$trainingeventid"));
CREATE INDEX "idx_myfirstmodule$trainingevent_course_myfirstmodule$course_myfirstmodule$trainingevent" ON "myfirstmodule$trainingevent_course" ("myfirstmodule$courseid" ASC,"myfirstmodule$trainingeventid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('294d5592-84a1-41e8-ab5f-326975ac052d', 'MyFirstModule.TrainingEvent_Course', 'myfirstmodule$trainingevent_course', 'dfcabae0-cbdd-4f4d-8030-2deabe3ac6c2', 'ff038948-0b87-4908-ab15-e3646d306dfa', 'myfirstmodule$trainingeventid', 'myfirstmodule$courseid', 'idx_myfirstmodule$trainingevent_course_myfirstmodule$course_myfirstmodule$trainingevent');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$trainingevent_course_myfirstmodule$trainingeventid', '294d5592-84a1-41e8-ab5f-326975ac052d', 'ad6511aa-d4ed-3dda-9fcc-6c4580095607');
CREATE TABLE "myfirstmodule$trainingevent_location" (
	"myfirstmodule$trainingeventid" BIGINT NOT NULL,
	"myfirstmodule$locationid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$trainingeventid","myfirstmodule$locationid"),
	CONSTRAINT "uniq_myfirstmodule$trainingevent_location_myfirstmodule$trainingeventid" UNIQUE ("myfirstmodule$trainingeventid"));
CREATE INDEX "idx_myfirstmodule$trainingevent_location_myfirstmodule$location_myfirstmodule$trainingevent" ON "myfirstmodule$trainingevent_location" ("myfirstmodule$locationid" ASC,"myfirstmodule$trainingeventid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('089c17cb-8eae-4db8-afa1-6b02f5535c49', 'MyFirstModule.TrainingEvent_Location', 'myfirstmodule$trainingevent_location', 'dfcabae0-cbdd-4f4d-8030-2deabe3ac6c2', 'ce49ed4f-22c0-4f94-9d58-e6e2b9360a8c', 'myfirstmodule$trainingeventid', 'myfirstmodule$locationid', 'idx_myfirstmodule$trainingevent_location_myfirstmodule$location_myfirstmodule$trainingevent');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$trainingevent_location_myfirstmodule$trainingeventid', '089c17cb-8eae-4db8-afa1-6b02f5535c49', '0d5ccb02-d207-3aa4-b026-2f0801f4c2d5');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20231109 10:38:14';
