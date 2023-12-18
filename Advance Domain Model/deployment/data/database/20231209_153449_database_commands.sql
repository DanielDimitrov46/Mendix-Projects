DROP INDEX "idx_performancetest$staff_4_fullname_asc";
ALTER TABLE "system$task" RENAME TO "system$queuedtask";
ALTER TABLE "system$processedtask" RENAME TO "system$processedqueuetask";
ALTER TABLE "system$user" ADD "blockedsince" TIMESTAMP NULL;
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('5b1e816f-0495-4baa-9d21-f1e779923898', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'BlockedSince', 'blockedsince', 20, 0, '', false);
ALTER TABLE "soccersquad$player" ALTER COLUMN "emailaddress" RENAME TO "emailaddressold";
ALTER TABLE "soccersquad$player" ADD "submetaobjectname" VARCHAR_IGNORECASE(255) NULL;
UPDATE "soccersquad$player" SET "submetaobjectname" = 'SoccerSquad.Player';
CREATE INDEX "idx_soccersquad$player_submetaobjectname_asc" ON "soccersquad$player" ("submetaobjectname" ASC,"id" ASC);
UPDATE "mendixsystem$entity" SET "entity_name" = 'SoccerSquad.Player', "table_name" = 'soccersquad$player', "superentity_id" = 'fb931790-cc60-4038-a3fb-af2b12fe6be3', "remote" = false, "remote_primary_key" = false WHERE "id" = '3736cdd7-6873-4135-a824-715ca6abd849';
UPDATE "mendixsystem$attribute" SET "entity_id" = '3736cdd7-6873-4135-a824-715ca6abd849', "attribute_name" = 'EmailAddressOld', "column_name" = 'emailaddressold', "type" = 30, "length" = 200, "default_value" = '', "is_auto_number" = false WHERE "id" = '180c9ef9-f94b-4664-93cd-a023ee8f3400';
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c931f77e-680b-38db-8020-b8df6a18680b', '3736cdd7-6873-4135-a824-715ca6abd849', 'submetaobjectname', 'submetaobjectname', 30, 255, 'SoccerSquad.Player', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('2bd5b698-4d0f-312c-8158-142fe18fc9ee', '3736cdd7-6873-4135-a824-715ca6abd849', 'idx_soccersquad$player_submetaobjectname_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('2bd5b698-4d0f-312c-8158-142fe18fc9ee', 'c931f77e-680b-38db-8020-b8df6a18680b', false, 0);
ALTER TABLE "system$session" ADD "longlived" BOOLEAN NULL;
UPDATE "system$session" SET "longlived" = false;
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('875dc581-177c-457a-8406-814676ccdb05', '37f9fd49-5318-4c63-9a51-f761779b202f', 'LongLived', 'longlived', 10, 0, 'false', false);
DELETE FROM "mendixsystem$index"  WHERE "id" = '61b072df-4a8b-44aa-aa0c-3832eda33f45';
DELETE FROM "mendixsystem$index_column"  WHERE "index_id" = '61b072df-4a8b-44aa-aa0c-3832eda33f45';
ALTER SEQUENCE "system$task_sequence_mxseq" RENAME TO "system$queuedtask_sequence_mxseq";
ALTER TABLE "system$queuedtask" ADD "contextdata" VARCHAR_IGNORECASE(2147483647) NULL;
ALTER TABLE "system$queuedtask" ADD "useractionname" VARCHAR_IGNORECASE(200) NULL;
UPDATE "system$queuedtask" SET "xasid" = SUBSTRING("xasid" FROM 1 FOR 50);
ALTER TABLE "system$queuedtask" ALTER COLUMN "xasid" SET DATA TYPE VARCHAR_IGNORECASE(50);
ALTER TABLE "system$queuedtask" ADD "system$owner" BIGINT NULL;
ALTER TABLE "system$queuedtask" ADD "scheduledeventname" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "system$queuedtask" ADD "retry" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "system$queuedtask" ADD "contexttype" VARCHAR_IGNORECASE(14) NULL;
ALTER TABLE "system$queuedtask" ADD "startat" TIMESTAMP NULL;
CREATE INDEX "idx_system$queuedtask_queueid_asc_sequence_asc" ON "system$queuedtask" ("queueid" ASC,"sequence" ASC,"id" ASC);
CREATE INDEX "idx_system$queuedtask_system$owner" ON "system$queuedtask" ("system$owner" ASC,"id" ASC);
UPDATE "mendixsystem$sequence" SET "name" = 'system$queuedtask_sequence_mxseq' WHERE "attribute_id" = 'd26c3f20-7dc5-4a65-bbf6-c84ec5b5fe9f';
UPDATE "mendixsystem$entity" SET "entity_name" = 'System.QueuedTask', "table_name" = 'system$queuedtask', "superentity_id" = NULL, "remote" = false, "remote_primary_key" = false WHERE "id" = 'c6c131c8-8779-4213-9b26-a64e141f26a8';
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d6288735-aea7-416a-91d2-1735aa7c0ea3', 'c6c131c8-8779-4213-9b26-a64e141f26a8', 'ContextType', 'contexttype', 40, 14, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6534293a-7a10-451c-8b3d-a689d3a281f3', 'c6c131c8-8779-4213-9b26-a64e141f26a8', 'ContextData', 'contextdata', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b38b8b74-2e97-47aa-96c6-3a14ecef522c', 'c6c131c8-8779-4213-9b26-a64e141f26a8', 'UserActionName', 'useractionname', 30, 200, '', false);
UPDATE "mendixsystem$attribute" SET "entity_id" = 'c6c131c8-8779-4213-9b26-a64e141f26a8', "attribute_name" = 'XASId', "column_name" = 'xasid', "type" = 30, "length" = 50, "default_value" = '', "is_auto_number" = false WHERE "id" = '0918f273-80a5-42d6-ae35-a7a50ab61210';
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9b8a26f0-39d8-4419-b064-c58a60be8578', 'c6c131c8-8779-4213-9b26-a64e141f26a8', 'StartAt', 'startat', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a5c75f55-38b4-4061-a674-5cca84850223', 'c6c131c8-8779-4213-9b26-a64e141f26a8', 'Retry', 'retry', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('1cb5f39d-db9c-4f70-ac6a-ee3c5f5a1dcf', 'c6c131c8-8779-4213-9b26-a64e141f26a8', 'ScheduledEventName', 'scheduledeventname', 30, 200, '', false);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('f6de554a-f765-3d80-aa59-2b3da4167137', 'System.owner', 'system$owner', 'c6c131c8-8779-4213-9b26-a64e141f26a8', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('0eb7513a-a55e-4145-922a-1856104655f7', 'c6c131c8-8779-4213-9b26-a64e141f26a8', 'idx_system$queuedtask_queueid_asc_sequence_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('0eb7513a-a55e-4145-922a-1856104655f7', '77f66f6e-3794-4338-8a7d-eb4538dcd6db', false, 0);
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('0eb7513a-a55e-4145-922a-1856104655f7', 'd26c3f20-7dc5-4a65-bbf6-c84ec5b5fe9f', false, 1);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('8de203bb-c0c1-349b-8aef-037cdb0cd348', 'c6c131c8-8779-4213-9b26-a64e141f26a8', 'idx_system$queuedtask_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('8de203bb-c0c1-349b-8aef-037cdb0cd348', 'f6de554a-f765-3d80-aa59-2b3da4167137', false, 0);
ALTER TABLE "system$processedqueuetask" ADD "contextdata" VARCHAR_IGNORECASE(2147483647) NULL;
ALTER TABLE "system$processedqueuetask" ADD "duration" BIGINT NULL;
ALTER TABLE "system$processedqueuetask" ADD "useractionname" VARCHAR_IGNORECASE(200) NULL;
UPDATE "system$processedqueuetask" SET "xasid" = SUBSTRING("xasid" FROM 1 FOR 50);
ALTER TABLE "system$processedqueuetask" ALTER COLUMN "xasid" SET DATA TYPE VARCHAR_IGNORECASE(50);
ALTER TABLE "system$processedqueuetask" ADD "system$owner" BIGINT NULL;
ALTER TABLE "system$processedqueuetask" ADD "finished" TIMESTAMP NULL;
ALTER TABLE "system$processedqueuetask" ADD "scheduledeventname" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "system$processedqueuetask" ADD "contexttype" VARCHAR_IGNORECASE(14) NULL;
ALTER TABLE "system$processedqueuetask" ADD "startat" TIMESTAMP NULL;
CREATE INDEX "idx_system$processedqueuetask_system$owner" ON "system$processedqueuetask" ("system$owner" ASC,"id" ASC);
UPDATE "mendixsystem$entity" SET "entity_name" = 'System.ProcessedQueueTask', "table_name" = 'system$processedqueuetask', "superentity_id" = NULL, "remote" = false, "remote_primary_key" = false WHERE "id" = 'eb5c32a1-85ec-49d1-8bca-ecca779cd539';
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8e8e6dfa-87a2-413a-89c1-a2b23037b792', 'eb5c32a1-85ec-49d1-8bca-ecca779cd539', 'ContextType', 'contexttype', 40, 14, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7cbcf835-1193-4d91-84f5-40bde9ddb9e4', 'eb5c32a1-85ec-49d1-8bca-ecca779cd539', 'ContextData', 'contextdata', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c891eb17-76d6-4600-a96f-b02ef10aa921', 'eb5c32a1-85ec-49d1-8bca-ecca779cd539', 'UserActionName', 'useractionname', 30, 200, '', false);
UPDATE "mendixsystem$attribute" SET "entity_id" = 'eb5c32a1-85ec-49d1-8bca-ecca779cd539', "attribute_name" = 'XASId', "column_name" = 'xasid', "type" = 30, "length" = 50, "default_value" = '', "is_auto_number" = false WHERE "id" = 'e7792091-da19-4946-a07d-b11f857c4d1d';
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2b58adc9-b35a-4803-912d-e376a3ad89c9', 'eb5c32a1-85ec-49d1-8bca-ecca779cd539', 'StartAt', 'startat', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f4f115ad-2bb9-4452-9bfb-f666afdebbb4', 'eb5c32a1-85ec-49d1-8bca-ecca779cd539', 'Finished', 'finished', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6dab51ec-3ecc-43ac-a8d1-ba6815ad0fd7', 'eb5c32a1-85ec-49d1-8bca-ecca779cd539', 'Duration', 'duration', 4, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('526fe440-6d73-4c41-8f72-e5b5b4f2641e', 'eb5c32a1-85ec-49d1-8bca-ecca779cd539', 'ScheduledEventName', 'scheduledeventname', 30, 200, '', false);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('2a2739dd-9160-3616-8999-a7a147bf4cda', 'System.owner', 'system$owner', 'eb5c32a1-85ec-49d1-8bca-ecca779cd539', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('a28ff41f-1610-3353-9957-9e8d776b805e', 'eb5c32a1-85ec-49d1-8bca-ecca779cd539', 'idx_system$processedqueuetask_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('a28ff41f-1610-3353-9957-9e8d776b805e', '2a2739dd-9160-3616-8999-a7a147bf4cda', false, 0);
CREATE TABLE "system$workflow" (
	"id" BIGINT NOT NULL,
	"name" VARCHAR_IGNORECASE(200) NULL,
	"description" VARCHAR_IGNORECASE(2147483647) NULL,
	"starttime" TIMESTAMP NULL,
	"endtime" TIMESTAMP NULL,
	"duedate" TIMESTAMP NULL,
	"canberestarted" BOOLEAN NULL,
	"canbecontinued" BOOLEAN NULL,
	"state" VARCHAR_IGNORECASE(12) NULL,
	"reason" VARCHAR_IGNORECASE(2147483647) NULL,
	"previousstate" VARCHAR_IGNORECASE(12) NULL,
	"objectid" BIGINT NULL,
	"processingstate" VARCHAR_IGNORECASE(30) NULL,
	"system$owner" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_system$workflow_system$owner" ON "system$workflow" ("system$owner" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('2ae37bf5-ecb8-4c55-b967-d7383925b208', 'System.Workflow', 'system$workflow', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('77cf3524-fcfe-40cf-8ac0-b073015550ef', '2ae37bf5-ecb8-4c55-b967-d7383925b208', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8a6b4eb4-9b10-4060-a823-79dd4c19c217', '2ae37bf5-ecb8-4c55-b967-d7383925b208', 'Description', 'description', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c627be00-3ea1-4890-9621-d3dad9f11c21', '2ae37bf5-ecb8-4c55-b967-d7383925b208', 'StartTime', 'starttime', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('59f6ed7a-8e1a-46c5-a288-c60cdd1baf50', '2ae37bf5-ecb8-4c55-b967-d7383925b208', 'EndTime', 'endtime', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('80796d39-0dde-4af7-b619-53ec9950014b', '2ae37bf5-ecb8-4c55-b967-d7383925b208', 'DueDate', 'duedate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('49d88092-1ce9-46e5-baad-b6c22831824d', '2ae37bf5-ecb8-4c55-b967-d7383925b208', 'CanBeRestarted', 'canberestarted', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('dec2408c-8fea-4232-8208-cad1117ca406', '2ae37bf5-ecb8-4c55-b967-d7383925b208', 'CanBeContinued', 'canbecontinued', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ec48ea64-d4ae-42dd-8fbe-6c3716181dc7', '2ae37bf5-ecb8-4c55-b967-d7383925b208', 'State', 'state', 40, 12, 'InProgress', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('89e83bbd-6379-4601-89b4-825c02c7de6b', '2ae37bf5-ecb8-4c55-b967-d7383925b208', 'Reason', 'reason', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('4c70166c-8ebb-4105-a35a-d1e15a82d925', '2ae37bf5-ecb8-4c55-b967-d7383925b208', 'PreviousState', 'previousstate', 40, 12, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e8722447-9692-4c59-8a28-153a4f6ebddb', '2ae37bf5-ecb8-4c55-b967-d7383925b208', 'ObjectId', 'objectid', 4, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('cbff7155-11df-47da-8619-b8bd72f40604', '2ae37bf5-ecb8-4c55-b967-d7383925b208', 'ProcessingState', 'processingstate', 30, 30, 'Ready', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('ac892dd9-fb9e-3590-aaf5-e3e2c7fbc021', '2ae37bf5-ecb8-4c55-b967-d7383925b208', 'idx_system$workflow_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('ac892dd9-fb9e-3590-aaf5-e3e2c7fbc021', '2cf6fdd7-e448-3a4d-b70e-6d875c2136d7', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('2cf6fdd7-e448-3a4d-b70e-6d875c2136d7', 'System.owner', 'system$owner', '2ae37bf5-ecb8-4c55-b967-d7383925b208', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
CREATE TABLE "system$workflow_parentworkflow" (
	"system$workflowid1" BIGINT NOT NULL,
	"system$workflowid2" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowid1","system$workflowid2"),
	CONSTRAINT "uniq_system$workflow_parentworkflow_system$workflowid1" UNIQUE ("system$workflowid1"));
CREATE INDEX "idx_system$workflow_parentworkflow_system$workflow_system$workflow" ON "system$workflow_parentworkflow" ("system$workflowid2" ASC,"system$workflowid1" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('79314052-9dcc-47e5-954b-80ec631ddd41', 'System.Workflow_ParentWorkflow', 'system$workflow_parentworkflow', '2ae37bf5-ecb8-4c55-b967-d7383925b208', '2ae37bf5-ecb8-4c55-b967-d7383925b208', 'system$workflowid1', 'system$workflowid2', 'idx_system$workflow_parentworkflow_system$workflow_system$workflow');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_system$workflow_parentworkflow_system$workflowid1', '79314052-9dcc-47e5-954b-80ec631ddd41', '84b93b3b-9d0a-342e-b78b-17657b92fc22');
CREATE TABLE "system$workflow_workflowdefinition" (
	"system$workflowid" BIGINT NOT NULL,
	"system$workflowdefinitionid" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowid","system$workflowdefinitionid"),
	CONSTRAINT "uniq_system$workflow_workflowdefinition_system$workflowid" UNIQUE ("system$workflowid"));
CREATE INDEX "idx_system$workflow_workflowdefinition_system$workflowdefinition_system$workflow" ON "system$workflow_workflowdefinition" ("system$workflowdefinitionid" ASC,"system$workflowid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('77c87c19-f28d-4ca3-870c-351722cf5e9e', 'System.Workflow_WorkflowDefinition', 'system$workflow_workflowdefinition', '2ae37bf5-ecb8-4c55-b967-d7383925b208', '5c570d3b-7b31-44fe-abd6-269a234584c5', 'system$workflowid', 'system$workflowdefinitionid', 'idx_system$workflow_workflowdefinition_system$workflowdefinition_system$workflow');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_system$workflow_workflowdefinition_system$workflowid', '77c87c19-f28d-4ca3-870c-351722cf5e9e', '593e832a-6cbc-3208-b1a1-06b8b873428f');
CREATE TABLE "system$workflow_currentactivity" (
	"system$workflowid" BIGINT NOT NULL,
	"system$workflowactivityid" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowid","system$workflowactivityid"));
CREATE INDEX "idx_system$workflow_currentactivity_system$workflowactivity_system$workflow" ON "system$workflow_currentactivity" ("system$workflowactivityid" ASC,"system$workflowid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('58aa640e-8db7-479b-9f91-2425b009ee06', 'System.Workflow_CurrentActivity', 'system$workflow_currentactivity', '2ae37bf5-ecb8-4c55-b967-d7383925b208', 'a5952592-bb2c-4798-9805-f9ff91ad97de', 'system$workflowid', 'system$workflowactivityid', 'idx_system$workflow_currentactivity_system$workflowactivity_system$workflow');
CREATE TABLE "system$workflowusertaskdefinition" (
	"id" BIGINT NOT NULL,
	"name" VARCHAR_IGNORECASE(200) NULL,
	"isobsolete" BOOLEAN NULL,
	"modelguid" VARCHAR_IGNORECASE(36) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('e09e866f-288b-475c-9465-792cde8b878c', 'System.WorkflowUserTaskDefinition', 'system$workflowusertaskdefinition', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('895f51f8-ff84-4694-aa65-1ba19eaeca5e', 'e09e866f-288b-475c-9465-792cde8b878c', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a6f93dd6-2725-4746-8283-c5c1e1f16d3f', 'e09e866f-288b-475c-9465-792cde8b878c', 'IsObsolete', 'isobsolete', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('015434e4-2727-4ee8-aef4-49d17b16afb1', 'e09e866f-288b-475c-9465-792cde8b878c', 'ModelGUID', 'modelguid', 30, 36, '', false);
CREATE TABLE "system$workflowusertaskdefinition_workflowdefinition" (
	"system$workflowusertaskdefinitionid" BIGINT NOT NULL,
	"system$workflowdefinitionid" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowusertaskdefinitionid","system$workflowdefinitionid"),
	CONSTRAINT "uniq_system$workflowusertaskdefinition_workflowdefinition_system$workflowusertaskdefinitionid" UNIQUE ("system$workflowusertaskdefinitionid"));
CREATE INDEX "idx_system$workflowusertaskdefinition_workflowdefinition_system$workflowdefinition_system$workflowusertaskdefinition" ON "system$workflowusertaskdefinition_workflowdefinition" ("system$workflowdefinitionid" ASC,"system$workflowusertaskdefinitionid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('685c576c-19af-4ea7-983d-ece147c1cebc', 'System.WorkflowUserTaskDefinition_WorkflowDefinition', 'system$workflowusertaskdefinition_workflowdefinition', 'e09e866f-288b-475c-9465-792cde8b878c', '5c570d3b-7b31-44fe-abd6-269a234584c5', 'system$workflowusertaskdefinitionid', 'system$workflowdefinitionid', 'idx_system$workflowusertaskdefinition_workflowdefinition_system$workflowdefinition_system$workflowusertaskdefinition');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_system$workflowusertaskdefinition_workflowdefinition_system$workflowusertaskdefinitionid', '685c576c-19af-4ea7-983d-ece147c1cebc', 'ce3750f0-8db1-37ca-95b5-892696a3d9e2');
CREATE TABLE "system$workflowactivity" (
	"id" BIGINT NOT NULL,
	"modelguid" VARCHAR_IGNORECASE(36) NULL,
	"activityguid" VARCHAR_IGNORECASE(36) NULL,
	"caption" VARCHAR_IGNORECASE(2147483647) NULL,
	"state" VARCHAR_IGNORECASE(9) NULL,
	"starttime" TIMESTAMP NULL,
	"endtime" TIMESTAMP NULL,
	"error" VARCHAR_IGNORECASE(2147483647) NULL,
	"activityhash" VARCHAR_IGNORECASE(200) NULL,
	"ismigrationactivity" BOOLEAN NULL,
	"isderivedactivity" BOOLEAN NULL,
	"outcome" VARCHAR_IGNORECASE(200) NULL,
	"outcomemodelguid" VARCHAR_IGNORECASE(36) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('a5952592-bb2c-4798-9805-f9ff91ad97de', 'System.WorkflowActivity', 'system$workflowactivity', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('941e921b-8935-402e-9d93-7894c5cc9164', 'a5952592-bb2c-4798-9805-f9ff91ad97de', 'ModelGUID', 'modelguid', 30, 36, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('11384083-d925-4b16-a625-60af27227bb4', 'a5952592-bb2c-4798-9805-f9ff91ad97de', 'ActivityGUID', 'activityguid', 30, 36, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3236d0ea-2456-447a-b2ff-fc3b10a6ddb2', 'a5952592-bb2c-4798-9805-f9ff91ad97de', 'Caption', 'caption', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b0f8b9bd-f006-43a3-9c9f-edb70cd1642c', 'a5952592-bb2c-4798-9805-f9ff91ad97de', 'State', 'state', 40, 9, 'Started', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('1c9a62fd-2e39-4fd3-92a4-748940ae67ba', 'a5952592-bb2c-4798-9805-f9ff91ad97de', 'StartTime', 'starttime', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('dc169e92-887a-4fc5-a21e-51d99b41314b', 'a5952592-bb2c-4798-9805-f9ff91ad97de', 'EndTime', 'endtime', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3b8d6bea-dfb5-497b-b2ad-c423efbd66eb', 'a5952592-bb2c-4798-9805-f9ff91ad97de', 'Error', 'error', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('84cfff18-42dc-4442-b783-3ca923fcde81', 'a5952592-bb2c-4798-9805-f9ff91ad97de', 'ActivityHash', 'activityhash', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d78085f1-fdf5-40c1-93ae-30de543e4b81', 'a5952592-bb2c-4798-9805-f9ff91ad97de', 'IsMigrationActivity', 'ismigrationactivity', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('cace349b-8e30-437e-95df-c4fd4225490d', 'a5952592-bb2c-4798-9805-f9ff91ad97de', 'IsDerivedActivity', 'isderivedactivity', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a23daff4-8363-47ea-862f-4c85a29929a2', 'a5952592-bb2c-4798-9805-f9ff91ad97de', 'Outcome', 'outcome', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c39dca31-4f4a-4e52-a633-aa7840fd0894', 'a5952592-bb2c-4798-9805-f9ff91ad97de', 'OutcomeModelGUID', 'outcomemodelguid', 30, 36, '', false);
CREATE TABLE "system$workflowactivity_previousactivity" (
	"system$workflowactivityid1" BIGINT NOT NULL,
	"system$workflowactivityid2" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowactivityid1","system$workflowactivityid2"));
CREATE INDEX "idx_system$workflowactivity_previousactivity_system$workflowactivity_system$workflowactivity" ON "system$workflowactivity_previousactivity" ("system$workflowactivityid2" ASC,"system$workflowactivityid1" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('8d8c8ffc-08d6-4dc5-88f6-5b344763d948', 'System.WorkflowActivity_PreviousActivity', 'system$workflowactivity_previousactivity', 'a5952592-bb2c-4798-9805-f9ff91ad97de', 'a5952592-bb2c-4798-9805-f9ff91ad97de', 'system$workflowactivityid1', 'system$workflowactivityid2', 'idx_system$workflowactivity_previousactivity_system$workflowactivity_system$workflowactivity');
CREATE TABLE "system$workflowactivity_workflow" (
	"system$workflowactivityid" BIGINT NOT NULL,
	"system$workflowid" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowactivityid","system$workflowid"),
	CONSTRAINT "uniq_system$workflowactivity_workflow_system$workflowactivityid" UNIQUE ("system$workflowactivityid"));
CREATE INDEX "idx_system$workflowactivity_workflow_system$workflow_system$workflowactivity" ON "system$workflowactivity_workflow" ("system$workflowid" ASC,"system$workflowactivityid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('ef863cc9-2d20-4a74-af65-0320a76b6a10', 'System.WorkflowActivity_Workflow', 'system$workflowactivity_workflow', 'a5952592-bb2c-4798-9805-f9ff91ad97de', '2ae37bf5-ecb8-4c55-b967-d7383925b208', 'system$workflowactivityid', 'system$workflowid', 'idx_system$workflowactivity_workflow_system$workflow_system$workflowactivity');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_system$workflowactivity_workflow_system$workflowactivityid', 'ef863cc9-2d20-4a74-af65-0320a76b6a10', '56628087-ac77-34ca-bd95-b86020fc4ffa');
CREATE TABLE "system$workflowactivity_workflowversion" (
	"system$workflowactivityid" BIGINT NOT NULL,
	"system$workflowversionid" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowactivityid","system$workflowversionid"),
	CONSTRAINT "uniq_system$workflowactivity_workflowversion_system$workflowactivityid" UNIQUE ("system$workflowactivityid"));
CREATE INDEX "idx_system$workflowactivity_workflowversion_system$workflowversion_system$workflowactivity" ON "system$workflowactivity_workflowversion" ("system$workflowversionid" ASC,"system$workflowactivityid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('2e5166f9-7430-4265-8465-f7405d6fe1e9', 'System.WorkflowActivity_WorkflowVersion', 'system$workflowactivity_workflowversion', 'a5952592-bb2c-4798-9805-f9ff91ad97de', '30834a21-e81c-4cbf-a10b-5f60f5fddc82', 'system$workflowactivityid', 'system$workflowversionid', 'idx_system$workflowactivity_workflowversion_system$workflowversion_system$workflowactivity');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_system$workflowactivity_workflowversion_system$workflowactivityid', '2e5166f9-7430-4265-8465-f7405d6fe1e9', 'f25c7cf4-22a7-30e7-a3b6-1cda08ccc618');
CREATE TABLE "system$workflowactivity_workflowusertask" (
	"system$workflowactivityid" BIGINT NOT NULL,
	"system$workflowusertaskid" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowactivityid","system$workflowusertaskid"),
	CONSTRAINT "uniq_system$workflowactivity_workflowusertask_system$workflowactivityid" UNIQUE ("system$workflowactivityid"));
CREATE INDEX "idx_system$workflowactivity_workflowusertask_system$workflowusertask_system$workflowactivity" ON "system$workflowactivity_workflowusertask" ("system$workflowusertaskid" ASC,"system$workflowactivityid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('aaebf783-447c-4386-ba25-969132aa6f7c', 'System.WorkflowActivity_WorkflowUserTask', 'system$workflowactivity_workflowusertask', 'a5952592-bb2c-4798-9805-f9ff91ad97de', '3729d27c-735b-457a-b210-9dffb125c3f3', 'system$workflowactivityid', 'system$workflowusertaskid', 'idx_system$workflowactivity_workflowusertask_system$workflowusertask_system$workflowactivity');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_system$workflowactivity_workflowusertask_system$workflowactivityid', 'aaebf783-447c-4386-ba25-969132aa6f7c', '096b955d-f88f-303f-b43e-deef60b57065');
CREATE TABLE "system$workflowactivity_subworkflow" (
	"system$workflowactivityid" BIGINT NOT NULL,
	"system$workflowid" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowactivityid","system$workflowid"),
	CONSTRAINT "uniq_system$workflowactivity_subworkflow_system$workflowactivityid" UNIQUE ("system$workflowactivityid"));
CREATE INDEX "idx_system$workflowactivity_subworkflow_system$workflow_system$workflowactivity" ON "system$workflowactivity_subworkflow" ("system$workflowid" ASC,"system$workflowactivityid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('5c89ec5d-0378-4afd-afd4-0e7a9fde45a9', 'System.WorkflowActivity_SubWorkflow', 'system$workflowactivity_subworkflow', 'a5952592-bb2c-4798-9805-f9ff91ad97de', '2ae37bf5-ecb8-4c55-b967-d7383925b208', 'system$workflowactivityid', 'system$workflowid', 'idx_system$workflowactivity_subworkflow_system$workflow_system$workflowactivity');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_system$workflowactivity_subworkflow_system$workflowactivityid', '5c89ec5d-0378-4afd-afd4-0e7a9fde45a9', '2d65cc25-b704-3604-8f2b-e3c73d37fb2b');
CREATE TABLE "system$workflowactivity_taskactor" (
	"system$workflowactivityid" BIGINT NOT NULL,
	"system$userid" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowactivityid","system$userid"),
	CONSTRAINT "uniq_system$workflowactivity_taskactor_system$workflowactivityid" UNIQUE ("system$workflowactivityid"));
CREATE INDEX "idx_system$workflowactivity_taskactor_system$user_system$workflowactivity" ON "system$workflowactivity_taskactor" ("system$userid" ASC,"system$workflowactivityid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('63446029-b863-4c07-ab91-22219be89b70', 'System.WorkflowActivity_TaskActor', 'system$workflowactivity_taskactor', 'a5952592-bb2c-4798-9805-f9ff91ad97de', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'system$workflowactivityid', 'system$userid', 'idx_system$workflowactivity_taskactor_system$user_system$workflowactivity');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_system$workflowactivity_taskactor_system$workflowactivityid', '63446029-b863-4c07-ab91-22219be89b70', '38f7a539-d2df-398f-99b4-047c6f7ff859');
CREATE TABLE "system$taskqueuetoken" (
	"id" BIGINT NOT NULL,
	"queuename" VARCHAR_IGNORECASE(200) NULL,
	"xasid" VARCHAR_IGNORECASE(50) NULL,
	"validuntil" TIMESTAMP NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('bb60ef05-6d17-48ad-a4ef-559310c30c5b', 'System.TaskQueueToken', 'system$taskqueuetoken', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f1c72f88-9feb-409f-b592-385be28eed47', 'bb60ef05-6d17-48ad-a4ef-559310c30c5b', 'QueueName', 'queuename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('46add4ce-cd71-4db0-8fc7-0d1ab16954fa', 'bb60ef05-6d17-48ad-a4ef-559310c30c5b', 'XASId', 'xasid', 30, 50, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c05017ba-1faa-4f63-9d4c-06918a947700', 'bb60ef05-6d17-48ad-a4ef-559310c30c5b', 'ValidUntil', 'validuntil', 20, 0, '', false);
CREATE TABLE "system$workflowversion" (
	"id" BIGINT NOT NULL,
	"versionhash" VARCHAR_IGNORECASE(200) NULL,
	"modeljson" VARCHAR_IGNORECASE(2147483647) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('30834a21-e81c-4cbf-a10b-5f60f5fddc82', 'System.WorkflowVersion', 'system$workflowversion', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ee842048-ff1d-4ea4-80b3-2d1123437d5f', '30834a21-e81c-4cbf-a10b-5f60f5fddc82', 'VersionHash', 'versionhash', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2c5449d3-09f4-463f-8a99-439c6cb74fed', '30834a21-e81c-4cbf-a10b-5f60f5fddc82', 'ModelJSON', 'modeljson', 30, 0, '', false);
CREATE TABLE "system$workflowversion_workflowusertaskdefinition" (
	"system$workflowversionid" BIGINT NOT NULL,
	"system$workflowusertaskdefinitionid" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowversionid","system$workflowusertaskdefinitionid"));
CREATE INDEX "idx_system$workflowversion_workflowusertaskdefinition_system$workflowusertaskdefinition_system$workflowversion" ON "system$workflowversion_workflowusertaskdefinition" ("system$workflowusertaskdefinitionid" ASC,"system$workflowversionid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('3348e396-6643-4a5b-bcb1-a939cdcdf435', 'System.WorkflowVersion_WorkflowUserTaskDefinition', 'system$workflowversion_workflowusertaskdefinition', '30834a21-e81c-4cbf-a10b-5f60f5fddc82', 'e09e866f-288b-475c-9465-792cde8b878c', 'system$workflowversionid', 'system$workflowusertaskdefinitionid', 'idx_system$workflowversion_workflowusertaskdefinition_system$workflowusertaskdefinition_system$workflowversion');
CREATE TABLE "system$workflowversion_previousversion" (
	"system$workflowversionid1" BIGINT NOT NULL,
	"system$workflowversionid2" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowversionid1","system$workflowversionid2"),
	CONSTRAINT "uniq_system$workflowversion_previousversion_system$workflowversionid1" UNIQUE ("system$workflowversionid1"));
CREATE INDEX "idx_system$workflowversion_previousversion_system$workflowversion_system$workflowversion" ON "system$workflowversion_previousversion" ("system$workflowversionid2" ASC,"system$workflowversionid1" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('61a2af90-0720-41a0-bea9-8a3d60de71d0', 'System.WorkflowVersion_PreviousVersion', 'system$workflowversion_previousversion', '30834a21-e81c-4cbf-a10b-5f60f5fddc82', '30834a21-e81c-4cbf-a10b-5f60f5fddc82', 'system$workflowversionid1', 'system$workflowversionid2', 'idx_system$workflowversion_previousversion_system$workflowversion_system$workflowversion');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_system$workflowversion_previousversion_system$workflowversionid1', '61a2af90-0720-41a0-bea9-8a3d60de71d0', 'a0f7479f-37c0-39ac-9fb9-5589bd8627c5');
CREATE TABLE "system$workflowversion_workflowdefinition" (
	"system$workflowversionid" BIGINT NOT NULL,
	"system$workflowdefinitionid" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowversionid","system$workflowdefinitionid"),
	CONSTRAINT "uniq_system$workflowversion_workflowdefinition_system$workflowversionid" UNIQUE ("system$workflowversionid"));
CREATE INDEX "idx_system$workflowversion_workflowdefinition_system$workflowdefinition_system$workflowversion" ON "system$workflowversion_workflowdefinition" ("system$workflowdefinitionid" ASC,"system$workflowversionid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('c063e3e7-a440-47f0-8065-6fac7c723690', 'System.WorkflowVersion_WorkflowDefinition', 'system$workflowversion_workflowdefinition', '30834a21-e81c-4cbf-a10b-5f60f5fddc82', '5c570d3b-7b31-44fe-abd6-269a234584c5', 'system$workflowversionid', 'system$workflowdefinitionid', 'idx_system$workflowversion_workflowdefinition_system$workflowdefinition_system$workflowversion');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_system$workflowversion_workflowdefinition_system$workflowversionid', 'c063e3e7-a440-47f0-8065-6fac7c723690', '47c7ac0f-8b15-3178-ae6c-8b0cb0debb61');
CREATE TABLE "system$changehash" (
	"id" BIGINT NOT NULL,
	"objectid" BIGINT NULL,
	"attribute" VARCHAR_IGNORECASE(200) NULL,
	"hash" VARCHAR_IGNORECASE(200) NULL,
	"createddate" TIMESTAMP NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('24f72d72-3c66-46e4-a08b-09daf0f451d8', 'System.ChangeHash', 'system$changehash', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('47b5e625-85c7-431f-8aaa-3d1e532287f9', '24f72d72-3c66-46e4-a08b-09daf0f451d8', 'ObjectId', 'objectid', 4, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('28dc5eba-42c6-4602-ac97-35eda6b366b0', '24f72d72-3c66-46e4-a08b-09daf0f451d8', 'Attribute', 'attribute', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a142f7d6-8ed6-4753-8706-d5938e9879aa', '24f72d72-3c66-46e4-a08b-09daf0f451d8', 'Hash', 'hash', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('13f98cae-7256-37ee-a5de-fdb7aa36e8b5', '24f72d72-3c66-46e4-a08b-09daf0f451d8', 'createdDate', 'createddate', 20, 0, '', false);
CREATE TABLE "system$changehash_session" (
	"system$changehashid" BIGINT NOT NULL,
	"system$sessionid" BIGINT NOT NULL,
	PRIMARY KEY("system$changehashid","system$sessionid"),
	CONSTRAINT "uniq_system$changehash_session_system$changehashid" UNIQUE ("system$changehashid"));
CREATE INDEX "idx_system$changehash_session_system$session_system$changehash" ON "system$changehash_session" ("system$sessionid" ASC,"system$changehashid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('1aa853ae-4871-4f54-9716-af1e36b6b031', 'System.ChangeHash_Session', 'system$changehash_session', '24f72d72-3c66-46e4-a08b-09daf0f451d8', '37f9fd49-5318-4c63-9a51-f761779b202f', 'system$changehashid', 'system$sessionid', 'idx_system$changehash_session_system$session_system$changehash');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_system$changehash_session_system$changehashid', '1aa853ae-4871-4f54-9716-af1e36b6b031', 'e4d85c0c-652d-3e54-859c-3b0f1db86277');
CREATE TABLE "system$workflowdefinition" (
	"id" BIGINT NOT NULL,
	"name" VARCHAR_IGNORECASE(200) NULL,
	"title" VARCHAR_IGNORECASE(200) NULL,
	"isobsolete" BOOLEAN NULL,
	"islocked" BOOLEAN NULL,
	"modelguid" VARCHAR_IGNORECASE(36) NULL,
	PRIMARY KEY("id"),
	CONSTRAINT "uniq_system$workflowdefinition_modelguid" UNIQUE ("modelguid"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('5c570d3b-7b31-44fe-abd6-269a234584c5', 'System.WorkflowDefinition', 'system$workflowdefinition', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d16c4272-c9d3-4371-86f6-69eb263033e1', '5c570d3b-7b31-44fe-abd6-269a234584c5', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e023e8ca-3319-4698-a841-30430fdca099', '5c570d3b-7b31-44fe-abd6-269a234584c5', 'Title', 'title', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8554021f-9842-4c51-b124-86a102d33da7', '5c570d3b-7b31-44fe-abd6-269a234584c5', 'IsObsolete', 'isobsolete', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('5544e32c-48e4-4580-bac2-ed8a14f1e098', '5c570d3b-7b31-44fe-abd6-269a234584c5', 'IsLocked', 'islocked', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d61ef304-2773-4336-a146-8997dfccae8a', '5c570d3b-7b31-44fe-abd6-269a234584c5', 'ModelGUID', 'modelguid', 30, 36, '', false);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_system$workflowdefinition_modelguid', '5c570d3b-7b31-44fe-abd6-269a234584c5', 'd61ef304-2773-4336-a146-8997dfccae8a');
CREATE TABLE "system$workflowdefinition_currentworkflowversion" (
	"system$workflowdefinitionid" BIGINT NOT NULL,
	"system$workflowversionid" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowdefinitionid","system$workflowversionid"),
	CONSTRAINT "uniq_system$workflowdefinition_currentworkflowversion_system$workflowdefinitionid" UNIQUE ("system$workflowdefinitionid"));
CREATE INDEX "idx_system$workflowdefinition_currentworkflowversion_system$workflowversion_system$workflowdefinition" ON "system$workflowdefinition_currentworkflowversion" ("system$workflowversionid" ASC,"system$workflowdefinitionid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('2b065cdd-3d2c-4517-9727-ced57d97fd03', 'System.WorkflowDefinition_CurrentWorkflowVersion', 'system$workflowdefinition_currentworkflowversion', '5c570d3b-7b31-44fe-abd6-269a234584c5', '30834a21-e81c-4cbf-a10b-5f60f5fddc82', 'system$workflowdefinitionid', 'system$workflowversionid', 'idx_system$workflowdefinition_currentworkflowversion_system$workflowversion_system$workflowdefinition');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_system$workflowdefinition_currentworkflowversion_system$workflowdefinitionid', '2b065cdd-3d2c-4517-9727-ced57d97fd03', 'eb384fa0-c9cd-3568-bdd6-1501cb6e352e');
CREATE TABLE "system$databrokerentitymetadata" (
	"id" BIGINT NOT NULL,
	"entityid" VARCHAR_IGNORECASE(36) NULL,
	"memberdetails" VARCHAR_IGNORECASE(2147483647) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('df86cd1e-f9ac-42d4-bcd0-a185540a247a', 'System.DataBrokerEntityMetadata', 'system$databrokerentitymetadata', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9898404a-0a0e-48c5-b223-49323db632b5', 'df86cd1e-f9ac-42d4-bcd0-a185540a247a', 'EntityId', 'entityid', 30, 36, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0a53921a-933e-4272-99a3-d86715840c82', 'df86cd1e-f9ac-42d4-bcd0-a185540a247a', 'MemberDetails', 'memberdetails', 30, 0, '', false);
CREATE TABLE "system$workflowactivityusertaskoutcome" (
	"id" BIGINT NOT NULL,
	"outcome" VARCHAR_IGNORECASE(200) NULL,
	"time" TIMESTAMP NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('1ebda4ad-6e00-4b19-8b95-6b6261beb937', 'System.WorkflowActivityUserTaskOutcome', 'system$workflowactivityusertaskoutcome', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f854eb95-236e-4c3f-af60-0d72c0cbf27b', '1ebda4ad-6e00-4b19-8b95-6b6261beb937', 'Outcome', 'outcome', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9c9b1db9-e8ff-4192-b11d-4127162aa51a', '1ebda4ad-6e00-4b19-8b95-6b6261beb937', 'Time', 'time', 20, 0, '', false);
CREATE TABLE "system$workflowactivityusertaskoutcome_workflowactivity" (
	"system$workflowactivityusertaskoutcomeid" BIGINT NOT NULL,
	"system$workflowactivityid" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowactivityusertaskoutcomeid","system$workflowactivityid"),
	CONSTRAINT "uniq_system$workflowactivityusertaskoutcome_workflowactivity_system$workflowactivityusertaskoutcomeid" UNIQUE ("system$workflowactivityusertaskoutcomeid"));
CREATE INDEX "idx_system$workflowactivityusertaskoutcome_workflowactivity_system$workflowactivity_system$workflowactivityusertaskoutcome" ON "system$workflowactivityusertaskoutcome_workflowactivity" ("system$workflowactivityid" ASC,"system$workflowactivityusertaskoutcomeid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('9ce50251-ec5a-46d0-ba7e-cb91876078f0', 'System.WorkflowActivityUserTaskOutcome_WorkflowActivity', 'system$workflowactivityusertaskoutcome_workflowactivity', '1ebda4ad-6e00-4b19-8b95-6b6261beb937', 'a5952592-bb2c-4798-9805-f9ff91ad97de', 'system$workflowactivityusertaskoutcomeid', 'system$workflowactivityid', 'idx_system$workflowactivityusertaskoutcome_workflowactivity_system$workflowactivity_system$workflowactivityusertaskoutcome');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_system$workflowactivityusertaskoutcome_workflowactivity_system$workflowactivityusertaskoutcomeid', '9ce50251-ec5a-46d0-ba7e-cb91876078f0', 'ced1f439-bb5d-34eb-9344-68a02c7877e7');
CREATE TABLE "system$workflowactivityusertaskoutcome_user" (
	"system$workflowactivityusertaskoutcomeid" BIGINT NOT NULL,
	"system$userid" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowactivityusertaskoutcomeid","system$userid"),
	CONSTRAINT "uniq_system$workflowactivityusertaskoutcome_user_system$workflowactivityusertaskoutcomeid" UNIQUE ("system$workflowactivityusertaskoutcomeid"));
CREATE INDEX "idx_system$workflowactivityusertaskoutcome_user_system$user_system$workflowactivityusertaskoutcome" ON "system$workflowactivityusertaskoutcome_user" ("system$userid" ASC,"system$workflowactivityusertaskoutcomeid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('69f85619-f30b-427c-adb1-7be7ce8cc3dd', 'System.WorkflowActivityUserTaskOutcome_User', 'system$workflowactivityusertaskoutcome_user', '1ebda4ad-6e00-4b19-8b95-6b6261beb937', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'system$workflowactivityusertaskoutcomeid', 'system$userid', 'idx_system$workflowactivityusertaskoutcome_user_system$user_system$workflowactivityusertaskoutcome');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_system$workflowactivityusertaskoutcome_user_system$workflowactivityusertaskoutcomeid', '69f85619-f30b-427c-adb1-7be7ce8cc3dd', '0e354480-b4c1-3655-9f12-e34dc1488c2f');
CREATE TABLE "soccersquad$staff" (
	"id" BIGINT NOT NULL,
	"function" VARCHAR_IGNORECASE(16) NULL,
	"licensenumber" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('cc7601c5-c7a0-41f5-9fbd-37ecce90cc28', 'SoccerSquad.Staff', 'soccersquad$staff', '3736cdd7-6873-4135-a824-715ca6abd849', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('4e9bb54d-87ed-4019-b633-a507a855c17a', 'cc7601c5-c7a0-41f5-9fbd-37ecce90cc28', 'Function', 'function', 40, 16, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('18f4e4bb-4ee1-46dc-8097-f75bdcc8021c', 'cc7601c5-c7a0-41f5-9fbd-37ecce90cc28', 'LicenseNumber', 'licensenumber', 30, 200, '', false);
CREATE TABLE "soccersquad$staff_team" (
	"soccersquad$staffid" BIGINT NOT NULL,
	"soccersquad$teamid" BIGINT NOT NULL,
	PRIMARY KEY("soccersquad$staffid","soccersquad$teamid"),
	CONSTRAINT "uniq_soccersquad$staff_team_soccersquad$staffid" UNIQUE ("soccersquad$staffid"));
CREATE INDEX "idx_soccersquad$staff_team_soccersquad$team_soccersquad$staff" ON "soccersquad$staff_team" ("soccersquad$teamid" ASC,"soccersquad$staffid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('de2cd533-2aa7-4294-b85b-4da54d5fe4cd', 'SoccerSquad.Staff_Team', 'soccersquad$staff_team', 'cc7601c5-c7a0-41f5-9fbd-37ecce90cc28', '781caf18-5349-4d27-baab-9c6bf1c5a987', 'soccersquad$staffid', 'soccersquad$teamid', 'idx_soccersquad$staff_team_soccersquad$team_soccersquad$staff');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_soccersquad$staff_team_soccersquad$staffid', 'de2cd533-2aa7-4294-b85b-4da54d5fe4cd', '44a4010a-a5c1-366e-8450-0e026ae5a50f');
CREATE TABLE "soccersquad$person" (
	"id" BIGINT NOT NULL,
	"fullname" VARCHAR_IGNORECASE(200) NULL,
	"emailaddress" VARCHAR_IGNORECASE(200) NULL,
	"submetaobjectname" VARCHAR_IGNORECASE(255) NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_soccersquad$person_submetaobjectname_asc" ON "soccersquad$person" ("submetaobjectname" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('fb931790-cc60-4038-a3fb-af2b12fe6be3', 'SoccerSquad.Person', 'soccersquad$person', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7c7e6b20-2137-41ff-985b-b93e0e4821ae', 'fb931790-cc60-4038-a3fb-af2b12fe6be3', 'FullName', 'fullname', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6ebf61f9-431a-48fe-abb3-c3c7471fa179', 'fb931790-cc60-4038-a3fb-af2b12fe6be3', 'EmailAddress', 'emailaddress', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9d4fc5da-39ab-348a-ae1b-6cba06908a98', 'fb931790-cc60-4038-a3fb-af2b12fe6be3', 'submetaobjectname', 'submetaobjectname', 30, 255, 'SoccerSquad.Person', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('36d2575c-b08d-33a4-a9aa-b13063160667', 'fb931790-cc60-4038-a3fb-af2b12fe6be3', 'idx_soccersquad$person_submetaobjectname_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('36d2575c-b08d-33a4-a9aa-b13063160667', '9d4fc5da-39ab-348a-ae1b-6cba06908a98', false, 0);
CREATE TABLE "system$workflowusertaskoutcome" (
	"id" BIGINT NOT NULL,
	"outcome" VARCHAR_IGNORECASE(200) NULL,
	"time" TIMESTAMP NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('d753ad05-63c3-4d18-9424-1dd97c7d1a05', 'System.WorkflowUserTaskOutcome', 'system$workflowusertaskoutcome', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('1c43b5b0-f645-4bc1-83fe-2da08ef1eba4', 'd753ad05-63c3-4d18-9424-1dd97c7d1a05', 'Outcome', 'outcome', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2b63667d-dda0-4033-b432-679f51187ebb', 'd753ad05-63c3-4d18-9424-1dd97c7d1a05', 'Time', 'time', 20, 0, '', false);
CREATE TABLE "system$workflowusertaskoutcome_user" (
	"system$workflowusertaskoutcomeid" BIGINT NOT NULL,
	"system$userid" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowusertaskoutcomeid","system$userid"),
	CONSTRAINT "uniq_system$workflowusertaskoutcome_user_system$workflowusertaskoutcomeid" UNIQUE ("system$workflowusertaskoutcomeid"));
CREATE INDEX "idx_system$workflowusertaskoutcome_user_system$user_system$workflowusertaskoutcome" ON "system$workflowusertaskoutcome_user" ("system$userid" ASC,"system$workflowusertaskoutcomeid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('d49ae7eb-5886-4a82-8659-be0b01d13104', 'System.WorkflowUserTaskOutcome_User', 'system$workflowusertaskoutcome_user', 'd753ad05-63c3-4d18-9424-1dd97c7d1a05', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'system$workflowusertaskoutcomeid', 'system$userid', 'idx_system$workflowusertaskoutcome_user_system$user_system$workflowusertaskoutcome');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_system$workflowusertaskoutcome_user_system$workflowusertaskoutcomeid', 'd49ae7eb-5886-4a82-8659-be0b01d13104', '1416fe96-0847-37c7-8af0-e159dca1b3c7');
CREATE TABLE "system$workflowusertaskoutcome_workflowusertask" (
	"system$workflowusertaskoutcomeid" BIGINT NOT NULL,
	"system$workflowusertaskid" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowusertaskoutcomeid","system$workflowusertaskid"),
	CONSTRAINT "uniq_system$workflowusertaskoutcome_workflowusertask_system$workflowusertaskoutcomeid" UNIQUE ("system$workflowusertaskoutcomeid"));
CREATE INDEX "idx_system$workflowusertaskoutcome_workflowusertask_system$workflowusertask_system$workflowusertaskoutcome" ON "system$workflowusertaskoutcome_workflowusertask" ("system$workflowusertaskid" ASC,"system$workflowusertaskoutcomeid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('37818a79-121d-447e-aa9d-89e88b145180', 'System.WorkflowUserTaskOutcome_WorkflowUserTask', 'system$workflowusertaskoutcome_workflowusertask', 'd753ad05-63c3-4d18-9424-1dd97c7d1a05', '3729d27c-735b-457a-b210-9dffb125c3f3', 'system$workflowusertaskoutcomeid', 'system$workflowusertaskid', 'idx_system$workflowusertaskoutcome_workflowusertask_system$workflowusertask_system$workflowusertaskoutcome');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_system$workflowusertaskoutcome_workflowusertask_system$workflowusertaskoutcomeid', '37818a79-121d-447e-aa9d-89e88b145180', '350d214b-6b9c-3c5d-a6d2-3483fecc59d8');
CREATE TABLE "system$workflowusertask" (
	"id" BIGINT NOT NULL,
	"name" VARCHAR_IGNORECASE(2147483647) NULL,
	"description" VARCHAR_IGNORECASE(2147483647) NULL,
	"starttime" TIMESTAMP NULL,
	"duedate" TIMESTAMP NULL,
	"endtime" TIMESTAMP NULL,
	"outcome" VARCHAR_IGNORECASE(200) NULL,
	"state" VARCHAR_IGNORECASE(10) NULL,
	"completiontype" VARCHAR_IGNORECASE(9) NULL,
	"processingstate" VARCHAR_IGNORECASE(30) NULL,
	"error" VARCHAR_IGNORECASE(2147483647) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('3729d27c-735b-457a-b210-9dffb125c3f3', 'System.WorkflowUserTask', 'system$workflowusertask', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('122c4e1e-edda-4311-85b7-2a715626b869', '3729d27c-735b-457a-b210-9dffb125c3f3', 'Name', 'name', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('544b4b9a-c5ac-4785-8efb-647a51648024', '3729d27c-735b-457a-b210-9dffb125c3f3', 'Description', 'description', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('beeda34a-8cd1-4bbe-abd3-b18a3a0ea0ef', '3729d27c-735b-457a-b210-9dffb125c3f3', 'StartTime', 'starttime', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('17ae7bb0-2dea-4860-9c7b-f236aaf5a790', '3729d27c-735b-457a-b210-9dffb125c3f3', 'DueDate', 'duedate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('49503f62-1887-4823-bf94-db88a332f316', '3729d27c-735b-457a-b210-9dffb125c3f3', 'EndTime', 'endtime', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('047e7010-cbc4-4bba-bf64-774fa656d010', '3729d27c-735b-457a-b210-9dffb125c3f3', 'Outcome', 'outcome', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f87a5a98-730e-4c57-b6c4-ae09cd057e65', '3729d27c-735b-457a-b210-9dffb125c3f3', 'State', 'state', 40, 10, 'Created', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7d72fc37-c5cd-425d-82d2-0b8559b28314', '3729d27c-735b-457a-b210-9dffb125c3f3', 'CompletionType', 'completiontype', 40, 9, 'Single', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('99f67785-67f1-40e0-91dc-6cdec5e2b3e5', '3729d27c-735b-457a-b210-9dffb125c3f3', 'ProcessingState', 'processingstate', 30, 30, 'Ready', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('90233d09-6c96-487e-a89e-a31f29b81bd1', '3729d27c-735b-457a-b210-9dffb125c3f3', 'Error', 'error', 30, 0, '', false);
CREATE TABLE "system$workflowusertask_workflowusertaskdefinition" (
	"system$workflowusertaskid" BIGINT NOT NULL,
	"system$workflowusertaskdefinitionid" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowusertaskid","system$workflowusertaskdefinitionid"),
	CONSTRAINT "uniq_system$workflowusertask_workflowusertaskdefinition_system$workflowusertaskid" UNIQUE ("system$workflowusertaskid"));
CREATE INDEX "idx_system$workflowusertask_workflowusertaskdefinition_system$workflowusertaskdefinition_system$workflowusertask" ON "system$workflowusertask_workflowusertaskdefinition" ("system$workflowusertaskdefinitionid" ASC,"system$workflowusertaskid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('0169cc0e-491b-4ee3-812d-6bf3ba28e287', 'System.WorkflowUserTask_WorkflowUserTaskDefinition', 'system$workflowusertask_workflowusertaskdefinition', '3729d27c-735b-457a-b210-9dffb125c3f3', 'e09e866f-288b-475c-9465-792cde8b878c', 'system$workflowusertaskid', 'system$workflowusertaskdefinitionid', 'idx_system$workflowusertask_workflowusertaskdefinition_system$workflowusertaskdefinition_system$workflowusertask');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_system$workflowusertask_workflowusertaskdefinition_system$workflowusertaskid', '0169cc0e-491b-4ee3-812d-6bf3ba28e287', '0643c851-59f7-3428-92a1-a970ad21ad18');
CREATE TABLE "system$workflowusertask_workflow" (
	"system$workflowusertaskid" BIGINT NOT NULL,
	"system$workflowid" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowusertaskid","system$workflowid"),
	CONSTRAINT "uniq_system$workflowusertask_workflow_system$workflowusertaskid" UNIQUE ("system$workflowusertaskid"));
CREATE INDEX "idx_system$workflowusertask_workflow_system$workflow_system$workflowusertask" ON "system$workflowusertask_workflow" ("system$workflowid" ASC,"system$workflowusertaskid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('53a1c6d7-5e4d-4a2d-81ec-58fde4bbba8a', 'System.WorkflowUserTask_Workflow', 'system$workflowusertask_workflow', '3729d27c-735b-457a-b210-9dffb125c3f3', '2ae37bf5-ecb8-4c55-b967-d7383925b208', 'system$workflowusertaskid', 'system$workflowid', 'idx_system$workflowusertask_workflow_system$workflow_system$workflowusertask');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_system$workflowusertask_workflow_system$workflowusertaskid', '53a1c6d7-5e4d-4a2d-81ec-58fde4bbba8a', 'bb1eaa2c-e600-3a88-85d0-08d5f5ca94da');
CREATE TABLE "system$workflowusertask_assignee" (
	"system$workflowusertaskid" BIGINT NOT NULL,
	"system$userid" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowusertaskid","system$userid"),
	CONSTRAINT "uniq_system$workflowusertask_assignee_system$workflowusertaskid" UNIQUE ("system$workflowusertaskid"));
CREATE INDEX "idx_system$workflowusertask_assignee_system$user_system$workflowusertask" ON "system$workflowusertask_assignee" ("system$userid" ASC,"system$workflowusertaskid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('929fbbed-d3a8-4ea2-b6ad-b28de4f77776', 'System.WorkflowUserTask_Assignee', 'system$workflowusertask_assignee', '3729d27c-735b-457a-b210-9dffb125c3f3', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'system$workflowusertaskid', 'system$userid', 'idx_system$workflowusertask_assignee_system$user_system$workflowusertask');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_system$workflowusertask_assignee_system$workflowusertaskid', '929fbbed-d3a8-4ea2-b6ad-b28de4f77776', 'ed895e88-8fb4-3df0-b86f-faab883d19ec');
CREATE TABLE "system$workflowusertask_targetusers" (
	"system$workflowusertaskid" BIGINT NOT NULL,
	"system$userid" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowusertaskid","system$userid"));
CREATE INDEX "idx_system$workflowusertask_targetusers_system$user_system$workflowusertask" ON "system$workflowusertask_targetusers" ("system$userid" ASC,"system$workflowusertaskid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('2b9c1990-302f-474c-9341-9d5d23b27653', 'System.WorkflowUserTask_TargetUsers', 'system$workflowusertask_targetusers', '3729d27c-735b-457a-b210-9dffb125c3f3', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'system$workflowusertaskid', 'system$userid', 'idx_system$workflowusertask_targetusers_system$user_system$workflowusertask');
INSERT INTO "soccersquad$person" ("id", "submetaobjectname") SELECT  "id", "submetaobjectname" FROM "soccersquad$player" ORDER BY "id" ASC;
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20231209 15:34:49';
