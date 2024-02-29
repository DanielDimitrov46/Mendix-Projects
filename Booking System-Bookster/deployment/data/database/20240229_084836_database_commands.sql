CREATE TABLE "mxmodelreflection$mxobjectreference" (
	"id" BIGINT NOT NULL,
	"completename" VARCHAR_IGNORECASE(200) NULL,
	"module" VARCHAR_IGNORECASE(200) NULL,
	"name" VARCHAR_IGNORECASE(200) NULL,
	"readablename" VARCHAR_IGNORECASE(200) NULL,
	"referencetype" VARCHAR_IGNORECASE(12) NULL,
	"associationowner" VARCHAR_IGNORECASE(8) NULL,
	"parententity" VARCHAR_IGNORECASE(200) NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$owner" BIGINT NULL,
	"system$changedby" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_mxmodelreflection$mxobjectreference_system$owner" ON "mxmodelreflection$mxobjectreference" ("system$owner" ASC,"id" ASC);
CREATE INDEX "idx_mxmodelreflection$mxobjectreference_system$changedby" ON "mxmodelreflection$mxobjectreference" ("system$changedby" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('1286d18b-2747-476d-9ba9-27a2a0529227', 'MxModelReflection.MxObjectReference', 'mxmodelreflection$mxobjectreference', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f4783d9a-50f3-43af-81f7-6a1798e4a811', '1286d18b-2747-476d-9ba9-27a2a0529227', 'CompleteName', 'completename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b69eaf3f-03ce-4fdc-9a9f-acfc174f3560', '1286d18b-2747-476d-9ba9-27a2a0529227', 'Module', 'module', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('655f156b-94c0-4a69-9759-4671e1a92b39', '1286d18b-2747-476d-9ba9-27a2a0529227', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('dc36d8b4-2e81-4b2e-a9ff-3b498501ff3c', '1286d18b-2747-476d-9ba9-27a2a0529227', 'ReadableName', 'readablename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('fa2ef098-27c4-43d1-8c56-2b16259dcd06', '1286d18b-2747-476d-9ba9-27a2a0529227', 'ReferenceType', 'referencetype', 40, 12, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('759e88c2-36f6-479a-9cb7-19cf3eaa7ffc', '1286d18b-2747-476d-9ba9-27a2a0529227', 'AssociationOwner', 'associationowner', 40, 8, '_Default', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('14085b2e-f7fb-4dc1-8934-63c066d5ac71', '1286d18b-2747-476d-9ba9-27a2a0529227', 'ParentEntity', 'parententity', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f73e959d-5fc2-334b-84cd-84343879693f', '1286d18b-2747-476d-9ba9-27a2a0529227', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('799aba6e-82f8-3ff9-bfdf-062d59c6d754', '1286d18b-2747-476d-9ba9-27a2a0529227', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('5580fa76-c989-3a58-aa8b-8d1489c4782a', '1286d18b-2747-476d-9ba9-27a2a0529227', 'idx_mxmodelreflection$mxobjectreference_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('5580fa76-c989-3a58-aa8b-8d1489c4782a', '7b2aa5bb-52ca-30a4-a26e-32726b452750', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('f8a30621-3d76-3fc9-b7e5-fc5a41460ef0', '1286d18b-2747-476d-9ba9-27a2a0529227', 'idx_mxmodelreflection$mxobjectreference_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('f8a30621-3d76-3fc9-b7e5-fc5a41460ef0', 'b6e0b909-98a1-3ac8-89fb-3c01704e81c5', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('7b2aa5bb-52ca-30a4-a26e-32726b452750', 'System.owner', 'system$owner', '1286d18b-2747-476d-9ba9-27a2a0529227', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('b6e0b909-98a1-3ac8-89fb-3c01704e81c5', 'System.changedBy', 'system$changedby', '1286d18b-2747-476d-9ba9-27a2a0529227', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
CREATE TABLE "encryption$pgpcertificate" (
	"id" BIGINT NOT NULL,
	"certificatetype" VARCHAR_IGNORECASE(10) NULL,
	"passphrase_plain" VARCHAR_IGNORECASE(20) NULL,
	"passphrase_encrypted" VARCHAR_IGNORECASE(100) NULL,
	"reference" VARCHAR_IGNORECASE(100) NULL,
	"emailaddress" VARCHAR_IGNORECASE(50) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('cf9cd400-8cea-4fe7-8b57-0e3c9997a4be', 'Encryption.PGPCertificate', 'encryption$pgpcertificate', '170ce49d-f29c-4fac-99a6-b55e8a3aeb39', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('817d7aaf-c7f7-4650-86e5-2e7f9ec6cb65', 'cf9cd400-8cea-4fe7-8b57-0e3c9997a4be', 'CertificateType', 'certificatetype', 40, 10, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('868ed88b-d460-44f8-a68d-05e193f4b4ad', 'cf9cd400-8cea-4fe7-8b57-0e3c9997a4be', 'PassPhrase_Plain', 'passphrase_plain', 30, 20, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('538faa31-6907-4b3b-97fc-a3d2f5ebbb14', 'cf9cd400-8cea-4fe7-8b57-0e3c9997a4be', 'PassPhrase_Encrypted', 'passphrase_encrypted', 30, 100, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('90fb300e-cb73-4f3e-898f-5b2d4de360f2', 'cf9cd400-8cea-4fe7-8b57-0e3c9997a4be', 'Reference', 'reference', 30, 100, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('375091cb-2841-4ccd-b902-7cd8bdf5239c', 'cf9cd400-8cea-4fe7-8b57-0e3c9997a4be', 'EmailAddress', 'emailaddress', 30, 50, '', false);
CREATE TABLE "email_connector$outgoingemailconfiguration" (
	"id" BIGINT NOT NULL,
	"outgoingprotocol" VARCHAR_IGNORECASE(4) NULL,
	"ssl" BOOLEAN NULL,
	"tls" BOOLEAN NULL,
	"sendmaxattempts" INT NULL,
	"serverhost" VARCHAR_IGNORECASE(200) NULL,
	"serverport" INT NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$owner" BIGINT NULL,
	"system$changedby" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_email_connector$outgoingemailconfiguration_system$owner" ON "email_connector$outgoingemailconfiguration" ("system$owner" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$outgoingemailconfiguration_system$changedby" ON "email_connector$outgoingemailconfiguration" ("system$changedby" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('5e6b8d4e-7689-4767-a568-2a1d7995a544', 'Email_Connector.OutgoingEmailConfiguration', 'email_connector$outgoingemailconfiguration', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('20d51dd0-db72-48cb-90bd-7053ae68bfc7', '5e6b8d4e-7689-4767-a568-2a1d7995a544', 'OutgoingProtocol', 'outgoingprotocol', 40, 4, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('af3d35e9-b6b0-4e18-9a4d-6b924248dd63', '5e6b8d4e-7689-4767-a568-2a1d7995a544', 'SSL', 'ssl', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d64d1a5f-cb2d-46f6-b965-8ac59d6fffb9', '5e6b8d4e-7689-4767-a568-2a1d7995a544', 'TLS', 'tls', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b25b7ac5-3006-424e-b2da-b9c2729e2574', '5e6b8d4e-7689-4767-a568-2a1d7995a544', 'SendMaxAttempts', 'sendmaxattempts', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('972f1c35-1ee6-4134-91bd-7c8e5f316392', '5e6b8d4e-7689-4767-a568-2a1d7995a544', 'ServerHost', 'serverhost', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3386e4e8-5af1-4431-96f8-1cda6656cc05', '5e6b8d4e-7689-4767-a568-2a1d7995a544', 'ServerPort', 'serverport', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b2b3116e-de90-3218-98a2-8dfe3f9babef', '5e6b8d4e-7689-4767-a568-2a1d7995a544', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('56239f27-2460-3963-ab10-77c72ca32eaa', '5e6b8d4e-7689-4767-a568-2a1d7995a544', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('dae4885e-f833-3da3-b86b-9ac63570663b', '5e6b8d4e-7689-4767-a568-2a1d7995a544', 'idx_email_connector$outgoingemailconfiguration_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('dae4885e-f833-3da3-b86b-9ac63570663b', '2b94320b-63b0-349c-8ae5-b7a242d60728', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('fcc9f1fe-f456-3125-80ac-2d1571474c23', '5e6b8d4e-7689-4767-a568-2a1d7995a544', 'idx_email_connector$outgoingemailconfiguration_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('fcc9f1fe-f456-3125-80ac-2d1571474c23', '63b6dda5-953f-3ec8-94fc-aebc19c5a14f', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('2b94320b-63b0-349c-8ae5-b7a242d60728', 'System.owner', 'system$owner', '5e6b8d4e-7689-4767-a568-2a1d7995a544', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('63b6dda5-953f-3ec8-94fc-aebc19c5a14f', 'System.changedBy', 'system$changedby', '5e6b8d4e-7689-4767-a568-2a1d7995a544', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
CREATE TABLE "email_connector$emailmessage" (
	"id" BIGINT NOT NULL,
	"subject" VARCHAR_IGNORECASE(2147483647) NULL,
	"sentdate" TIMESTAMP NULL,
	"retrievedate" TIMESTAMP NULL,
	"from" VARCHAR_IGNORECASE(2147483647) NULL,
	"to" VARCHAR_IGNORECASE(2147483647) NULL,
	"cc" VARCHAR_IGNORECASE(2147483647) NULL,
	"bcc" VARCHAR_IGNORECASE(2147483647) NULL,
	"content" VARCHAR_IGNORECASE(2147483647) NULL,
	"useonlyplaintext" BOOLEAN NULL,
	"hasattachments" BOOLEAN NULL,
	"size" INT NULL,
	"fromdisplayname" VARCHAR_IGNORECASE(200) NULL,
	"replyto" VARCHAR_IGNORECASE(200) NULL,
	"plainbody" VARCHAR_IGNORECASE(2147483647) NULL,
	"queuedforsending" BOOLEAN NULL,
	"resendattempts" INT NULL,
	"lastsenderror" VARCHAR_IGNORECASE(2147483647) NULL,
	"lastsendattemptat" TIMESTAMP NULL,
	"status" VARCHAR_IGNORECASE(8) NULL,
	"issigned" BOOLEAN NULL,
	"isencrypted" BOOLEAN NULL,
	"recipientstoggle" BOOLEAN NULL,
	"system$owner" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_email_connector$emailmessage_queuedforsending_asc_status_asc_lastsendattemptat_asc" ON "email_connector$emailmessage" ("queuedforsending" ASC,"status" ASC,"lastsendattemptat" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$emailmessage_sentdate_asc" ON "email_connector$emailmessage" ("sentdate" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$emailmessage_lastsendattemptat_asc_queuedforsending_asc" ON "email_connector$emailmessage" ("lastsendattemptat" ASC,"queuedforsending" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$emailmessage_system$owner" ON "email_connector$emailmessage" ("system$owner" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('50fb3f2f-1674-4839-ac72-bf17412679e3', 'Email_Connector.EmailMessage', 'email_connector$emailmessage', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0fd2e71a-0a74-47cb-b75c-3f5ef28bd95b', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'Subject', 'subject', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a9919465-e4f4-4a8e-aa0e-c02393463cc8', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'SentDate', 'sentdate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f1e418e6-8d97-4a81-a395-17133c363bf6', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'RetrieveDate', 'retrievedate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6329d99d-8ba8-42d3-bc1b-0663d74288ec', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'From', 'from', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('44c421fe-a202-4fe8-9fce-cc714a20931b', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'To', 'to', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2c933615-6eb1-47ec-b3d1-162b847198f6', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'CC', 'cc', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('1e1350fa-038e-46b0-997b-1b5c8475f843', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'BCC', 'bcc', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9932332a-cb85-4a4c-85c7-6f038d4987fe', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'Content', 'content', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b1e4dd08-55b5-4812-8c91-b96b3a9c4f73', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'UseOnlyPlainText', 'useonlyplaintext', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('14e0dbcf-4849-4510-9767-07320ef9948c', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'hasAttachments', 'hasattachments', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('00e7bf11-6bd0-4f5d-847f-e381a0f2e25e', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'Size', 'size', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('fba7990d-c126-414b-a188-efc290d80e5f', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'FromDisplayName', 'fromdisplayname', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('91f0ac0c-8e53-4914-8fb3-652d15c4eef8', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'ReplyTo', 'replyto', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3ddae092-9d2a-4ca2-b014-641bbe5fb3de', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'PlainBody', 'plainbody', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('70761742-7163-4bce-9210-2b3f4269ec64', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'QueuedForSending', 'queuedforsending', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7da1fd49-e6f1-4e21-b33b-1bdd8485c9b7', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'ResendAttempts', 'resendattempts', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('91571699-6ea9-4e49-80a4-74b3a0f94356', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'LastSendError', 'lastsenderror', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('fcc04dbe-4b3e-4972-a1b5-b44b9b36a1e2', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'LastSendAttemptAt', 'lastsendattemptat', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('fc514edd-358d-4685-8d6a-c7639849c3c2', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'Status', 'status', 40, 8, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('dca1de06-08bb-41b7-8910-46f3d677084b', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'isSigned', 'issigned', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ae467401-734b-4ba6-af4c-3f881ef27aee', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'isEncrypted', 'isencrypted', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('dca51ce0-f3c6-4b3e-bdc0-066ae644de1a', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'RecipientsToggle', 'recipientstoggle', 10, 0, 'false', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('0b22a94e-b5a4-45f3-94fc-c64e7d2bbdf0', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'idx_email_connector$emailmessage_queuedforsending_asc_status_asc_lastsendattemptat_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('0b22a94e-b5a4-45f3-94fc-c64e7d2bbdf0', '70761742-7163-4bce-9210-2b3f4269ec64', false, 0);
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('0b22a94e-b5a4-45f3-94fc-c64e7d2bbdf0', 'fc514edd-358d-4685-8d6a-c7639849c3c2', false, 1);
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('0b22a94e-b5a4-45f3-94fc-c64e7d2bbdf0', 'fcc04dbe-4b3e-4972-a1b5-b44b9b36a1e2', false, 2);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('2b9d8f06-28bf-4da2-bf29-9efbf0736615', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'idx_email_connector$emailmessage_sentdate_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('2b9d8f06-28bf-4da2-bf29-9efbf0736615', 'a9919465-e4f4-4a8e-aa0e-c02393463cc8', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('e6431e8a-d2e9-417b-94ec-b2aebac6689e', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'idx_email_connector$emailmessage_lastsendattemptat_asc_queuedforsending_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('e6431e8a-d2e9-417b-94ec-b2aebac6689e', 'fcc04dbe-4b3e-4972-a1b5-b44b9b36a1e2', false, 0);
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('e6431e8a-d2e9-417b-94ec-b2aebac6689e', '70761742-7163-4bce-9210-2b3f4269ec64', false, 1);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('c124d70d-0246-3dd9-bad3-b1b6b86acfbd', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'idx_email_connector$emailmessage_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('c124d70d-0246-3dd9-bad3-b1b6b86acfbd', '6ad400ff-dc10-3f18-92a7-bcca1b085bd4', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('6ad400ff-dc10-3f18-92a7-bcca1b085bd4', 'System.owner', 'system$owner', '50fb3f2f-1674-4839-ac72-bf17412679e3', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
CREATE TABLE "mxmodelreflection$microflows" (
	"id" BIGINT NOT NULL,
	"name" VARCHAR_IGNORECASE(200) NULL,
	"module" VARCHAR_IGNORECASE(200) NULL,
	"completename" VARCHAR_IGNORECASE(200) NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$changedby" BIGINT NULL,
	"system$owner" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_mxmodelreflection$microflows_system$changedby" ON "mxmodelreflection$microflows" ("system$changedby" ASC,"id" ASC);
CREATE INDEX "idx_mxmodelreflection$microflows_system$owner" ON "mxmodelreflection$microflows" ("system$owner" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('8166140f-3aef-411d-bef3-e549f47fdd2d', 'MxModelReflection.Microflows', 'mxmodelreflection$microflows', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('41888261-7e88-45f3-a343-149944f232f5', '8166140f-3aef-411d-bef3-e549f47fdd2d', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9b2c72bf-2b10-448a-b10d-1a207edc6f5d', '8166140f-3aef-411d-bef3-e549f47fdd2d', 'Module', 'module', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('79203a02-e128-438b-b6dd-553432b8b255', '8166140f-3aef-411d-bef3-e549f47fdd2d', 'CompleteName', 'completename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2f747441-533b-34c9-8a3f-24d6234a4591', '8166140f-3aef-411d-bef3-e549f47fdd2d', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('de205848-f008-327f-b3db-e67458416854', '8166140f-3aef-411d-bef3-e549f47fdd2d', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('1e57aac7-ee30-3ef5-90b8-df3be8f9bb28', '8166140f-3aef-411d-bef3-e549f47fdd2d', 'idx_mxmodelreflection$microflows_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('1e57aac7-ee30-3ef5-90b8-df3be8f9bb28', 'e49ba1f0-6267-3bef-be21-9dc421e42f6d', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('1dfd6def-2e76-3847-8e1a-44110d4fb67a', '8166140f-3aef-411d-bef3-e549f47fdd2d', 'idx_mxmodelreflection$microflows_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('1dfd6def-2e76-3847-8e1a-44110d4fb67a', '41a1d155-586f-3dd9-b98a-c6638bdb6140', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('e49ba1f0-6267-3bef-be21-9dc421e42f6d', 'System.changedBy', 'system$changedby', '8166140f-3aef-411d-bef3-e549f47fdd2d', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('41a1d155-586f-3dd9-b98a-c6638bdb6140', 'System.owner', 'system$owner', '8166140f-3aef-411d-bef3-e549f47fdd2d', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
CREATE TABLE "encryption$exampleconfiguration" (
	"id" BIGINT NOT NULL,
	"title" VARCHAR_IGNORECASE(200) NULL,
	"username" VARCHAR_IGNORECASE(200) NULL,
	"password" VARCHAR_IGNORECASE(200) NULL,
	"createddate" TIMESTAMP NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('ae01a1e1-0ced-4282-b3bf-9782c091bda7', 'Encryption.ExampleConfiguration', 'encryption$exampleconfiguration', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('67009a1f-1508-4ad9-99bb-d6c9e2467883', 'ae01a1e1-0ced-4282-b3bf-9782c091bda7', 'Title', 'title', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('87f03d82-7514-43da-9f98-8709dc72fa8e', 'ae01a1e1-0ced-4282-b3bf-9782c091bda7', 'Username', 'username', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('727833e2-9b0c-435d-a19c-8ed56b45cad6', 'ae01a1e1-0ced-4282-b3bf-9782c091bda7', 'Password', 'password', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3b41c290-f114-3355-a2fd-08cc9e2f7cd6', 'ae01a1e1-0ced-4282-b3bf-9782c091bda7', 'createdDate', 'createddate', 20, 0, '', false);
CREATE TABLE "email_connector$emailconnectorlog" (
	"id" BIGINT NOT NULL,
	"created" TIMESTAMP NULL,
	"logtype" VARCHAR_IGNORECASE(7) NULL,
	"errormessage" VARCHAR_IGNORECASE(2147483647) NULL,
	"triggeredinmf" VARCHAR_IGNORECASE(200) NULL,
	"stacktrace" VARCHAR_IGNORECASE(2147483647) NULL,
	"message" VARCHAR_IGNORECASE(200) NULL,
	"isunread" BOOLEAN NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_email_connector$emailconnectorlog_created_asc" ON "email_connector$emailconnectorlog" ("created" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('48acf90b-6a47-479b-8144-c77e587a1c71', 'Email_Connector.EmailConnectorLog', 'email_connector$emailconnectorlog', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('846b8bfb-fce3-44fb-8888-c2dfac1a45fc', '48acf90b-6a47-479b-8144-c77e587a1c71', 'Created', 'created', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('4eaba3c3-8115-44ef-8fc3-ee171e8a180f', '48acf90b-6a47-479b-8144-c77e587a1c71', 'Logtype', 'logtype', 40, 7, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2ae9e2d3-1b4a-431f-b378-436dbb69da0b', '48acf90b-6a47-479b-8144-c77e587a1c71', 'ErrorMessage', 'errormessage', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0c6cd885-b393-459f-8aca-2ddceaba3d0b', '48acf90b-6a47-479b-8144-c77e587a1c71', 'TriggeredInMF', 'triggeredinmf', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('5f3f6c63-2634-4514-b972-f0f1a62aa357', '48acf90b-6a47-479b-8144-c77e587a1c71', 'StackTrace', 'stacktrace', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e8d50083-5b5a-4e45-b98c-918eeb20a469', '48acf90b-6a47-479b-8144-c77e587a1c71', 'Message', 'message', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('23600289-6abf-40c3-af44-200f03ff99d8', '48acf90b-6a47-479b-8144-c77e587a1c71', 'IsUnread', 'isunread', 10, 0, 'true', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('01923647-3b0f-4286-818c-eb76115f705f', '48acf90b-6a47-479b-8144-c77e587a1c71', 'idx_email_connector$emailconnectorlog_created_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('01923647-3b0f-4286-818c-eb76115f705f', '846b8bfb-fce3-44fb-8888-c2dfac1a45fc', false, 0);
CREATE TABLE "mxmodelreflection$mxobjectmember" (
	"id" BIGINT NOT NULL,
	"attributename" VARCHAR_IGNORECASE(200) NULL,
	"attributetype" VARCHAR_IGNORECASE(200) NULL,
	"attributetypeenum" VARCHAR_IGNORECASE(11) NULL,
	"completename" VARCHAR_IGNORECASE(400) NULL,
	"descriptivename" VARCHAR_IGNORECASE(200) NULL,
	"fieldlength" INT NULL,
	"isvirtual" BOOLEAN NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"submetaobjectname" VARCHAR_IGNORECASE(255) NULL,
	"system$changedby" BIGINT NULL,
	"system$owner" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_mxmodelreflection$mxobjectmember_submetaobjectname_asc" ON "mxmodelreflection$mxobjectmember" ("submetaobjectname" ASC,"id" ASC);
CREATE INDEX "idx_mxmodelreflection$mxobjectmember_system$changedby" ON "mxmodelreflection$mxobjectmember" ("system$changedby" ASC,"id" ASC);
CREATE INDEX "idx_mxmodelreflection$mxobjectmember_system$owner" ON "mxmodelreflection$mxobjectmember" ("system$owner" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('a7781bef-d108-4a79-bf4b-d220be34b365', 'MxModelReflection.MxObjectMember', 'mxmodelreflection$mxobjectmember', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b41a9641-501f-46e9-a7e2-db1b77267d25', 'a7781bef-d108-4a79-bf4b-d220be34b365', 'AttributeName', 'attributename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6233d080-b0d0-4531-b20c-667894b8b213', 'a7781bef-d108-4a79-bf4b-d220be34b365', 'AttributeType', 'attributetype', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a059613c-b10c-463f-9188-07ef9bc405e9', 'a7781bef-d108-4a79-bf4b-d220be34b365', 'AttributeTypeEnum', 'attributetypeenum', 40, 11, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a51b2c53-ea82-42e9-86d8-e90d5b15d55e', 'a7781bef-d108-4a79-bf4b-d220be34b365', 'CompleteName', 'completename', 30, 400, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8d0a6a70-62d2-4f4f-9f3a-8d54990b11c1', 'a7781bef-d108-4a79-bf4b-d220be34b365', 'DescriptiveName', 'descriptivename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e7150184-6a21-48fe-860f-0a6c02c2e4d7', 'a7781bef-d108-4a79-bf4b-d220be34b365', 'FieldLength', 'fieldlength', 3, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c0575f91-7448-4fb1-a552-9b5e9f07dde0', 'a7781bef-d108-4a79-bf4b-d220be34b365', 'IsVirtual', 'isvirtual', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('99612601-b53c-3865-9a63-37b24c29aaf2', 'a7781bef-d108-4a79-bf4b-d220be34b365', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('023cd660-6c51-3e42-9614-f5081a1425f5', 'a7781bef-d108-4a79-bf4b-d220be34b365', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('15f4b6e6-a813-3dfb-80d2-7386f6a905d7', 'a7781bef-d108-4a79-bf4b-d220be34b365', 'submetaobjectname', 'submetaobjectname', 30, 255, 'MxModelReflection.MxObjectMember', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('84894c80-1a67-3bc7-b936-81130c2cc150', 'a7781bef-d108-4a79-bf4b-d220be34b365', 'idx_mxmodelreflection$mxobjectmember_submetaobjectname_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('84894c80-1a67-3bc7-b936-81130c2cc150', '15f4b6e6-a813-3dfb-80d2-7386f6a905d7', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('bc08260c-bb7d-3e1f-adf3-2fc095d083c5', 'a7781bef-d108-4a79-bf4b-d220be34b365', 'idx_mxmodelreflection$mxobjectmember_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('bc08260c-bb7d-3e1f-adf3-2fc095d083c5', '1e711e35-66e8-3ceb-a41a-30d705e8135d', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('fe20a3df-a6fb-3912-baab-e802f8812157', 'a7781bef-d108-4a79-bf4b-d220be34b365', 'idx_mxmodelreflection$mxobjectmember_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('fe20a3df-a6fb-3912-baab-e802f8812157', 'b921321b-816b-32ab-8a07-0c7e8eab9ec0', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('1e711e35-66e8-3ceb-a41a-30d705e8135d', 'System.changedBy', 'system$changedby', 'a7781bef-d108-4a79-bf4b-d220be34b365', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('b921321b-816b-32ab-8a07-0c7e8eab9ec0', 'System.owner', 'system$owner', 'a7781bef-d108-4a79-bf4b-d220be34b365', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
CREATE TABLE "email_connector$oauthtoken" (
	"id" BIGINT NOT NULL,
	"token_type" VARCHAR_IGNORECASE(200) NULL,
	"scope" VARCHAR_IGNORECASE(2147483647) NULL,
	"expires_in" INT NULL,
	"access_token" VARCHAR_IGNORECASE(2147483647) NULL,
	"refresh_token" VARCHAR_IGNORECASE(2147483647) NULL,
	"id_token" VARCHAR_IGNORECASE(2147483647) NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$owner" BIGINT NULL,
	"system$changedby" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_email_connector$oauthtoken_system$owner" ON "email_connector$oauthtoken" ("system$owner" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$oauthtoken_system$changedby" ON "email_connector$oauthtoken" ("system$changedby" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('c5ec0a9e-54e6-45cf-8403-98482562fb6a', 'Email_Connector.OAuthToken', 'email_connector$oauthtoken', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('131796b8-70cd-4333-a9b3-13d6b1571464', 'c5ec0a9e-54e6-45cf-8403-98482562fb6a', 'token_type', 'token_type', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b560acfe-6b10-4fe0-b9f3-212f3e36fd30', 'c5ec0a9e-54e6-45cf-8403-98482562fb6a', 'scope', 'scope', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('191821dd-b758-4fb9-bb17-374bd595c81b', 'c5ec0a9e-54e6-45cf-8403-98482562fb6a', 'expires_in', 'expires_in', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('056e3e3e-c0d2-4246-9fe4-65ff6a80ff20', 'c5ec0a9e-54e6-45cf-8403-98482562fb6a', 'access_token', 'access_token', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('320c1dcc-0ec0-42bc-add9-c2147ecb4c42', 'c5ec0a9e-54e6-45cf-8403-98482562fb6a', 'refresh_token', 'refresh_token', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('304276ca-aeaf-48e5-a57a-7580cc6122e4', 'c5ec0a9e-54e6-45cf-8403-98482562fb6a', 'id_token', 'id_token', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('fd4adbb8-c431-3a11-8080-930268be6f45', 'c5ec0a9e-54e6-45cf-8403-98482562fb6a', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('26bf142d-ca24-36d1-9509-717ce7e7dd36', 'c5ec0a9e-54e6-45cf-8403-98482562fb6a', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('80cf3021-4835-37ec-9f24-b9b36892c69f', 'c5ec0a9e-54e6-45cf-8403-98482562fb6a', 'idx_email_connector$oauthtoken_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('80cf3021-4835-37ec-9f24-b9b36892c69f', 'a53cf747-ec6b-3a58-9722-44ad9c04ec34', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('fcf4fc55-c2da-3788-9779-7c6be2ac0fe1', 'c5ec0a9e-54e6-45cf-8403-98482562fb6a', 'idx_email_connector$oauthtoken_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('fcf4fc55-c2da-3788-9779-7c6be2ac0fe1', 'a4d3d1c1-8b8f-3086-9213-bcaff7930827', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('a53cf747-ec6b-3a58-9722-44ad9c04ec34', 'System.owner', 'system$owner', 'c5ec0a9e-54e6-45cf-8403-98482562fb6a', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('a4d3d1c1-8b8f-3086-9213-bcaff7930827', 'System.changedBy', 'system$changedby', 'c5ec0a9e-54e6-45cf-8403-98482562fb6a', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
CREATE TABLE "email_connector$emailheader" (
	"id" BIGINT NOT NULL,
	"key" VARCHAR_IGNORECASE(200) NULL,
	"value" VARCHAR_IGNORECASE(2147483647) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('dba45c1e-ddce-4bed-b540-ef544def0b8a', 'Email_Connector.EmailHeader', 'email_connector$emailheader', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8607899a-0251-4e9e-ae13-f01feaff30ed', 'dba45c1e-ddce-4bed-b540-ef544def0b8a', 'Key', 'key', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7c5955bb-b47e-4b89-b4dc-0ca79753957f', 'dba45c1e-ddce-4bed-b540-ef544def0b8a', 'Value', 'value', 30, 0, '', false);
CREATE TABLE "email_connector$incomingemailconfiguration" (
	"id" BIGINT NOT NULL,
	"incomingprotocol" VARCHAR_IGNORECASE(5) NULL,
	"folder" VARCHAR_IGNORECASE(200) NULL,
	"usebatchimport" BOOLEAN NULL,
	"batchsize" INT NULL,
	"handling" VARCHAR_IGNORECASE(13) NULL,
	"movefolder" VARCHAR_IGNORECASE(200) NULL,
	"processinlineimage" BOOLEAN NULL,
	"fetchstrategy" VARCHAR_IGNORECASE(6) NULL,
	"notifyonnewemails" BOOLEAN NULL,
	"serverhost" VARCHAR_IGNORECASE(200) NULL,
	"serverport" INT NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$owner" BIGINT NULL,
	"system$changedby" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_email_connector$incomingemailconfiguration_system$owner" ON "email_connector$incomingemailconfiguration" ("system$owner" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$incomingemailconfiguration_system$changedby" ON "email_connector$incomingemailconfiguration" ("system$changedby" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('7c697696-43e5-4450-99a5-deeca9687bfe', 'Email_Connector.IncomingEmailConfiguration', 'email_connector$incomingemailconfiguration', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('75a45ddf-d487-47a7-bc33-7af5cefbbc44', '7c697696-43e5-4450-99a5-deeca9687bfe', 'IncomingProtocol', 'incomingprotocol', 40, 5, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8470a8a8-9403-4ff0-9aa4-c4a2c85be061', '7c697696-43e5-4450-99a5-deeca9687bfe', 'Folder', 'folder', 30, 200, 'INBOX', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('4357b9ab-561a-421b-ae0b-fbc927c86f86', '7c697696-43e5-4450-99a5-deeca9687bfe', 'UseBatchImport', 'usebatchimport', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e08d6ace-ed7e-4e34-b3bc-f50a883105bc', '7c697696-43e5-4450-99a5-deeca9687bfe', 'BatchSize', 'batchsize', 3, 0, '50', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('309f4d1a-362f-4ca7-8c0b-e9e6b318e586', '7c697696-43e5-4450-99a5-deeca9687bfe', 'Handling', 'handling', 40, 13, 'NoHandling', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('cd9cfbe6-f54f-4559-a4de-5f122a762f7f', '7c697696-43e5-4450-99a5-deeca9687bfe', 'MoveFolder', 'movefolder', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('be89ad89-9299-4272-8604-ac3434c9daec', '7c697696-43e5-4450-99a5-deeca9687bfe', 'ProcessInlineImage', 'processinlineimage', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('1415b21b-ec95-42ab-87b9-30ac9935be9b', '7c697696-43e5-4450-99a5-deeca9687bfe', 'FetchStrategy', 'fetchstrategy', 40, 6, 'Latest', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f1668533-f6c2-417e-b4e2-ee379990521d', '7c697696-43e5-4450-99a5-deeca9687bfe', 'NotifyOnNewEmails', 'notifyonnewemails', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e3f298a7-73a3-43ca-9859-cdad0226d5f5', '7c697696-43e5-4450-99a5-deeca9687bfe', 'ServerHost', 'serverhost', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8e4a22b9-9979-44cd-9123-82d0edb2f9e4', '7c697696-43e5-4450-99a5-deeca9687bfe', 'ServerPort', 'serverport', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9a7ed8a9-d9ec-379e-8758-0b9933c2b337', '7c697696-43e5-4450-99a5-deeca9687bfe', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c4e5418d-b8fb-3bb0-b607-fa04ac21dd68', '7c697696-43e5-4450-99a5-deeca9687bfe', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('c7d2ec40-3200-3b6f-a429-704bf6dc2fdf', '7c697696-43e5-4450-99a5-deeca9687bfe', 'idx_email_connector$incomingemailconfiguration_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('c7d2ec40-3200-3b6f-a429-704bf6dc2fdf', 'c9467ee5-e14e-3050-a8ab-7de68b307c1c', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('5711d527-f02f-3c2e-a0a5-d30847bd81c3', '7c697696-43e5-4450-99a5-deeca9687bfe', 'idx_email_connector$incomingemailconfiguration_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('5711d527-f02f-3c2e-a0a5-d30847bd81c3', 'bac88df8-ea05-3de2-ac53-b0fd806a8ccd', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('c9467ee5-e14e-3050-a8ab-7de68b307c1c', 'System.owner', 'system$owner', '7c697696-43e5-4450-99a5-deeca9687bfe', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('bac88df8-ea05-3de2-ac53-b0fd806a8ccd', 'System.changedBy', 'system$changedby', '7c697696-43e5-4450-99a5-deeca9687bfe', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
CREATE TABLE "email_connector$attachment" (
	"id" BIGINT NOT NULL,
	"contentid" VARCHAR_IGNORECASE(2147483647) NULL,
	"attachmentname" VARCHAR_IGNORECASE(2147483647) NULL,
	"attachmentsize" INT NULL,
	"attachmentcontenttype" VARCHAR_IGNORECASE(2147483647) NULL,
	"position" VARCHAR_IGNORECASE(10) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('201b3b91-4e66-4644-bfb1-c8349b868ee3', 'Email_Connector.Attachment', 'email_connector$attachment', '170ce49d-f29c-4fac-99a6-b55e8a3aeb39', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e0a51cc8-b10e-4866-ae99-7321537dba68', '201b3b91-4e66-4644-bfb1-c8349b868ee3', 'ContentID', 'contentid', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('4b2c1003-6894-479a-ae30-99d048e4efc4', '201b3b91-4e66-4644-bfb1-c8349b868ee3', 'attachmentName', 'attachmentname', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c4b2245f-3bd6-4890-b1f0-e0b2441f4fef', '201b3b91-4e66-4644-bfb1-c8349b868ee3', 'attachmentSize', 'attachmentsize', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('78884cbc-23a5-4e86-b158-347805020698', '201b3b91-4e66-4644-bfb1-c8349b868ee3', 'attachmentContentType', 'attachmentcontenttype', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8472da80-e329-47dc-a592-9c4145c598ed', '201b3b91-4e66-4644-bfb1-c8349b868ee3', 'Position', 'position', 40, 10, '', false);
CREATE TABLE "email_connector$ldapconfiguration" (
	"id" BIGINT NOT NULL,
	"ldaphost" VARCHAR_IGNORECASE(200) NULL,
	"ldapport" INT NULL,
	"ldapusername" VARCHAR_IGNORECASE(200) NULL,
	"ldappassword" VARCHAR_IGNORECASE(200) NULL,
	"isssl" BOOLEAN NULL,
	"basedn" VARCHAR_IGNORECASE(200) NULL,
	"authtype" VARCHAR_IGNORECASE(6) NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$owner" BIGINT NULL,
	"system$changedby" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_email_connector$ldapconfiguration_system$owner" ON "email_connector$ldapconfiguration" ("system$owner" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$ldapconfiguration_system$changedby" ON "email_connector$ldapconfiguration" ("system$changedby" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('66a6ff44-e0ec-480f-aecd-dcf5ee184525', 'Email_Connector.LDAPConfiguration', 'email_connector$ldapconfiguration', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('fc3a910e-e1ee-436b-8771-7abfa89871ef', '66a6ff44-e0ec-480f-aecd-dcf5ee184525', 'LDAPHost', 'ldaphost', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('512f0e3b-fbc5-4a98-ae07-1354dc9d64f0', '66a6ff44-e0ec-480f-aecd-dcf5ee184525', 'LDAPPort', 'ldapport', 3, 0, '389', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('071d8673-deba-4d9a-a48b-d017c00f8c89', '66a6ff44-e0ec-480f-aecd-dcf5ee184525', 'LDAPUsername', 'ldapusername', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('774b0d94-8682-4ffa-b5b2-1ab53ae9b00f', '66a6ff44-e0ec-480f-aecd-dcf5ee184525', 'LDAPPassword', 'ldappassword', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3c9da5c8-6e46-4cb0-a854-99c77ecf0568', '66a6ff44-e0ec-480f-aecd-dcf5ee184525', 'isSSL', 'isssl', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('63bc6979-59ee-44aa-a111-54daa41dc7b6', '66a6ff44-e0ec-480f-aecd-dcf5ee184525', 'BaseDN', 'basedn', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('60e9a627-ea01-49f4-b0e7-d664119cd488', '66a6ff44-e0ec-480f-aecd-dcf5ee184525', 'AuthType', 'authtype', 40, 6, 'none', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ceaf7daa-9dcc-3524-bc82-240ad42c18e8', '66a6ff44-e0ec-480f-aecd-dcf5ee184525', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('60878c92-0af6-3901-9e4e-c88dd2c49725', '66a6ff44-e0ec-480f-aecd-dcf5ee184525', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('8dfb212e-9773-3ac1-94df-00c2d93677d8', '66a6ff44-e0ec-480f-aecd-dcf5ee184525', 'idx_email_connector$ldapconfiguration_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('8dfb212e-9773-3ac1-94df-00c2d93677d8', '3dfb1e58-1bd9-31df-a5a6-52ef9a3d4797', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('139c4dc4-3fe5-35bf-8e0d-8972c0068c00', '66a6ff44-e0ec-480f-aecd-dcf5ee184525', 'idx_email_connector$ldapconfiguration_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('139c4dc4-3fe5-35bf-8e0d-8972c0068c00', 'ac36ecae-7658-3a18-8cdc-ca6646f7a7f4', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('3dfb1e58-1bd9-31df-a5a6-52ef9a3d4797', 'System.owner', 'system$owner', '66a6ff44-e0ec-480f-aecd-dcf5ee184525', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('ac36ecae-7658-3a18-8cdc-ca6646f7a7f4', 'System.changedBy', 'system$changedby', '66a6ff44-e0ec-480f-aecd-dcf5ee184525', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
CREATE TABLE "email_connector$emailaccount" (
	"id" BIGINT NOT NULL,
	"username" VARCHAR_IGNORECASE(200) NULL,
	"mailaddress" VARCHAR_IGNORECASE(200) NULL,
	"password" VARCHAR_IGNORECASE(2147483647) NULL,
	"timeout" INT NULL,
	"sanitizeemailbodyforxssscript" BOOLEAN NULL,
	"isp12configured" BOOLEAN NULL,
	"isldapconfigured" BOOLEAN NULL,
	"isincomingemailconfigured" BOOLEAN NULL,
	"isoutgoingemailconfigured" BOOLEAN NULL,
	"fromdisplayname" VARCHAR_IGNORECASE(200) NULL,
	"usesslcheckserveridentity" BOOLEAN NULL,
	"issharedmailbox" BOOLEAN NULL,
	"isoauthused" BOOLEAN NULL,
	"isemailconfigautodetect" BOOLEAN NULL,
	"composeemail" BOOLEAN NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$owner" BIGINT NULL,
	"system$changedby" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_email_connector$emailaccount_system$owner" ON "email_connector$emailaccount" ("system$owner" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$emailaccount_system$changedby" ON "email_connector$emailaccount" ("system$changedby" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('21905011-4df2-4119-a3ca-1ecbc4ad9647', 'Email_Connector.EmailAccount', 'email_connector$emailaccount', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ad17bac3-705c-4401-97be-8ed4211ea659', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'Username', 'username', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f9538c20-5d3d-4513-97ba-a2a00ea2aaf2', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'MailAddress', 'mailaddress', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9a8be642-14fd-42c3-8a93-ecf6212c70f3', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'Password', 'password', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('cf2a0c1f-d956-45ee-9bb3-ddb9211415bb', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'Timeout', 'timeout', 3, 0, '20000', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9e25854f-3fec-4a86-99b8-66c5324f8420', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'sanitizeEmailBodyForXSSScript', 'sanitizeemailbodyforxssscript', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d24a70d3-9aa6-43ce-9175-711897a4a7e8', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'isP12Configured', 'isp12configured', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('46a31a43-14ea-4a31-8efb-c7d04e20fa42', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'isLDAPConfigured', 'isldapconfigured', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0de3a0d5-8d5b-4b8f-9be8-dcc20f4587e4', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'isIncomingEmailConfigured', 'isincomingemailconfigured', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('fb9bf6de-9ff2-4bf4-aeff-f010c83a3cb4', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'isOutgoingEmailConfigured', 'isoutgoingemailconfigured', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a833f787-3185-4299-9e67-3057be27a02d', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'FromDisplayName', 'fromdisplayname', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8d0dad06-f365-4211-b236-45c8ceb99372', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'UseSSLCheckServerIdentity', 'usesslcheckserveridentity', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7f45a62b-be94-4178-baad-0c176125cc4c', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'IsSharedMailbox', 'issharedmailbox', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0d68f86e-2a74-4049-96a8-9728b5b86bf1', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'isOAuthUsed', 'isoauthused', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('21c1b8de-1d63-44c3-85e4-d6c189a81bc1', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'isEmailConfigAutoDetect', 'isemailconfigautodetect', 10, 0, 'true', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f5305e3a-a4b2-4ad6-8b6b-a64a1ecaea9c', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'ComposeEmail', 'composeemail', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b849483d-4f5d-362b-8ad5-2f35691d7669', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ef3df608-883f-3f05-92e9-12eb1bd4d7b1', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('d4c8cde6-2520-3982-9bd6-8f4b22145abb', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'idx_email_connector$emailaccount_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('d4c8cde6-2520-3982-9bd6-8f4b22145abb', '9109f41a-d66c-332d-a5ea-a46d273a09ab', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('4e40b551-cdf9-3219-9e87-cfb03c2c6f59', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'idx_email_connector$emailaccount_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('4e40b551-cdf9-3219-9e87-cfb03c2c6f59', 'f70cd49f-86ee-33a5-b288-8135a3cada49', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('9109f41a-d66c-332d-a5ea-a46d273a09ab', 'System.owner', 'system$owner', '21905011-4df2-4119-a3ca-1ecbc4ad9647', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('f70cd49f-86ee-33a5-b288-8135a3cada49', 'System.changedBy', 'system$changedby', '21905011-4df2-4119-a3ca-1ecbc4ad9647', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
CREATE TABLE "email_connector$scopeselected" (
	"id" BIGINT NOT NULL,
	"scopestring" VARCHAR_IGNORECASE(1000) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('cf0471d1-d0e6-4ed4-9761-339834ba6233', 'Email_Connector.ScopeSelected', 'email_connector$scopeselected', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('288d9824-df7d-4f6d-873a-1ff66cbf5a4d', 'cf0471d1-d0e6-4ed4-9761-339834ba6233', 'ScopeString', 'scopestring', 30, 1000, '', false);
CREATE TABLE "mxmodelreflection$mxobjecttype" (
	"id" BIGINT NOT NULL,
	"completename" VARCHAR_IGNORECASE(200) NULL,
	"name" VARCHAR_IGNORECASE(200) NULL,
	"module" VARCHAR_IGNORECASE(200) NULL,
	"readablename" VARCHAR_IGNORECASE(400) NULL,
	"persistencetype" VARCHAR_IGNORECASE(14) NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$owner" BIGINT NULL,
	"system$changedby" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_mxmodelreflection$mxobjecttype_system$owner" ON "mxmodelreflection$mxobjecttype" ("system$owner" ASC,"id" ASC);
CREATE INDEX "idx_mxmodelreflection$mxobjecttype_system$changedby" ON "mxmodelreflection$mxobjecttype" ("system$changedby" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', 'MxModelReflection.MxObjectType', 'mxmodelreflection$mxobjecttype', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('cf5fd2f7-47c0-4e6a-8709-3edd4c6f7c5a', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', 'CompleteName', 'completename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d2d81c14-c53b-47c8-8dfc-b7fb4a9ec8d8', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3b58847d-c418-4253-b332-6af4d45e06b5', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', 'Module', 'module', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3a96a178-eb25-46ef-9698-5d8e1d2710e7', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', 'ReadableName', 'readablename', 30, 400, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('4fd5cdc7-9699-4355-a420-ba4cb59c1acc', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', 'PersistenceType', 'persistencetype', 40, 14, 'Persistable', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('87d98949-e810-3b78-b97d-65888b9ccf50', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('032884b5-e384-3abe-927f-d5d63fe6dd91', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('2fb6043a-a2f5-3ed3-9ea5-7e493783a40a', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', 'idx_mxmodelreflection$mxobjecttype_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('2fb6043a-a2f5-3ed3-9ea5-7e493783a40a', 'bd6a1314-1a6b-3777-949e-74774f28145d', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('9d5c798e-b1bc-362b-96ba-927b9e162e25', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', 'idx_mxmodelreflection$mxobjecttype_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('9d5c798e-b1bc-362b-96ba-927b9e162e25', '2acaabae-01cf-3740-b4dc-c8b2d75c598b', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('bd6a1314-1a6b-3777-949e-74774f28145d', 'System.owner', 'system$owner', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('2acaabae-01cf-3740-b4dc-c8b2d75c598b', 'System.changedBy', 'system$changedby', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
CREATE TABLE "email_connector$oauthnonce" (
	"id" BIGINT NOT NULL,
	"state" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('6bafd16f-5e2c-4b78-8373-bf3805afc6ab', 'Email_Connector.OAuthNonce', 'email_connector$oauthnonce', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('5d971b1d-5308-474f-9404-ebd6e6903868', '6bafd16f-5e2c-4b78-8373-bf3805afc6ab', 'State', 'state', 30, 200, '', false);
CREATE TABLE "mxmodelreflection$valuetype" (
	"id" BIGINT NOT NULL,
	"name" VARCHAR_IGNORECASE(200) NULL,
	"typeenum" VARCHAR_IGNORECASE(11) NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$changedby" BIGINT NULL,
	"system$owner" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_mxmodelreflection$valuetype_system$changedby" ON "mxmodelreflection$valuetype" ("system$changedby" ASC,"id" ASC);
CREATE INDEX "idx_mxmodelreflection$valuetype_system$owner" ON "mxmodelreflection$valuetype" ("system$owner" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('4dfa9b1a-ebd8-421a-b917-e8ab7fd52e86', 'MxModelReflection.ValueType', 'mxmodelreflection$valuetype', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('60803b95-c905-46a7-80e9-307368f0ca2b', '4dfa9b1a-ebd8-421a-b917-e8ab7fd52e86', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a5552055-9041-4328-8cab-5b4146f7cf23', '4dfa9b1a-ebd8-421a-b917-e8ab7fd52e86', 'TypeEnum', 'typeenum', 40, 11, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('5901255c-8705-356c-b525-576aedbdcae1', '4dfa9b1a-ebd8-421a-b917-e8ab7fd52e86', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('42c82a68-a243-3662-8408-1b681db6a8bf', '4dfa9b1a-ebd8-421a-b917-e8ab7fd52e86', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('d7ba9365-1bcc-306a-afcd-1d92af5b004e', '4dfa9b1a-ebd8-421a-b917-e8ab7fd52e86', 'idx_mxmodelreflection$valuetype_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('d7ba9365-1bcc-306a-afcd-1d92af5b004e', '29367ff5-6cad-333c-93ca-268d0091d34a', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('21a7eb8d-2e33-3843-97a0-57e705991c97', '4dfa9b1a-ebd8-421a-b917-e8ab7fd52e86', 'idx_mxmodelreflection$valuetype_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('21a7eb8d-2e33-3843-97a0-57e705991c97', '6b2a066e-c5b3-30c4-bd52-e49fb23115f1', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('29367ff5-6cad-333c-93ca-268d0091d34a', 'System.changedBy', 'system$changedby', '4dfa9b1a-ebd8-421a-b917-e8ab7fd52e86', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('6b2a066e-c5b3-30c4-bd52-e49fb23115f1', 'System.owner', 'system$owner', '4dfa9b1a-ebd8-421a-b917-e8ab7fd52e86', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
CREATE TABLE "email_connector$querystring" (
	"id" BIGINT NOT NULL,
	"param" VARCHAR_IGNORECASE(1000) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('3f7a4762-e697-4604-8f0f-919cb5ac1806', 'Email_Connector.QueryString', 'email_connector$querystring', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ab4ad325-2d5e-46b3-838c-ddbe39791caf', '3f7a4762-e697-4604-8f0f-919cb5ac1806', 'Param', 'param', 30, 1000, '', false);
CREATE TABLE "mxmodelreflection$mxobjectenum" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('90033e8a-9b42-4e72-94a5-722420d182d0', 'MxModelReflection.MxObjectEnum', 'mxmodelreflection$mxobjectenum', 'a7781bef-d108-4a79-bf4b-d220be34b365', false, false);
CREATE TABLE "mxmodelreflection$mxobjectenumvalue" (
	"id" BIGINT NOT NULL,
	"name" VARCHAR_IGNORECASE(200) NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$owner" BIGINT NULL,
	"system$changedby" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_mxmodelreflection$mxobjectenumvalue_system$owner" ON "mxmodelreflection$mxobjectenumvalue" ("system$owner" ASC,"id" ASC);
CREATE INDEX "idx_mxmodelreflection$mxobjectenumvalue_system$changedby" ON "mxmodelreflection$mxobjectenumvalue" ("system$changedby" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('108b8d54-d35b-4815-b66d-1f10fac55fe8', 'MxModelReflection.MxObjectEnumValue', 'mxmodelreflection$mxobjectenumvalue', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0d60e74b-7f01-4655-b0bb-501be2af0dfa', '108b8d54-d35b-4815-b66d-1f10fac55fe8', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f774f920-cc39-36df-951d-d3488cd2328c', '108b8d54-d35b-4815-b66d-1f10fac55fe8', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7fc8bc20-8232-3ad6-b276-70ddcba59022', '108b8d54-d35b-4815-b66d-1f10fac55fe8', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('05ff543e-8905-3dfb-9639-aa863072f608', '108b8d54-d35b-4815-b66d-1f10fac55fe8', 'idx_mxmodelreflection$mxobjectenumvalue_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('05ff543e-8905-3dfb-9639-aa863072f608', '37edd47e-aef1-33b5-a7b7-c6cb36be523e', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('d1beefb2-ab1a-3d5b-b603-e2bd98bccf17', '108b8d54-d35b-4815-b66d-1f10fac55fe8', 'idx_mxmodelreflection$mxobjectenumvalue_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('d1beefb2-ab1a-3d5b-b603-e2bd98bccf17', '9d28067f-71e2-34ad-a109-8b1b461f12c3', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('37edd47e-aef1-33b5-a7b7-c6cb36be523e', 'System.owner', 'system$owner', '108b8d54-d35b-4815-b66d-1f10fac55fe8', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('9d28067f-71e2-34ad-a109-8b1b461f12c3', 'System.changedBy', 'system$changedby', '108b8d54-d35b-4815-b66d-1f10fac55fe8', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
CREATE TABLE "mxmodelreflection$dbsizeestimate" (
	"id" BIGINT NOT NULL,
	"nrofrecords" INT NULL,
	"calculatedsizeinbytes" BIGINT NULL,
	"calculatedsizeinkilobytes" BIGINT NULL,
	"findobjecttype" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('b83eb118-2cb7-4216-909f-11a9d0991a60', 'MxModelReflection.DbSizeEstimate', 'mxmodelreflection$dbsizeestimate', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('38723e33-550d-4d8e-9744-fc2e561f19b6', 'b83eb118-2cb7-4216-909f-11a9d0991a60', 'NrOfRecords', 'nrofrecords', 3, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('aab1fa49-c9b2-4080-95e5-d3111ff613c1', 'b83eb118-2cb7-4216-909f-11a9d0991a60', 'CalculatedSizeInBytes', 'calculatedsizeinbytes', 4, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f0c474e5-f2b4-4888-afb4-1ae237349ee7', 'b83eb118-2cb7-4216-909f-11a9d0991a60', 'CalculatedSizeInKiloBytes', 'calculatedsizeinkilobytes', 4, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8139624e-1dae-4411-89fb-536bf318f993', 'b83eb118-2cb7-4216-909f-11a9d0991a60', 'FindObjectType', 'findobjecttype', 30, 200, '', false);
CREATE TABLE "mxmodelreflection$parameter" (
	"id" BIGINT NOT NULL,
	"name" VARCHAR_IGNORECASE(200) NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$changedby" BIGINT NULL,
	"system$owner" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_mxmodelreflection$parameter_system$changedby" ON "mxmodelreflection$parameter" ("system$changedby" ASC,"id" ASC);
CREATE INDEX "idx_mxmodelreflection$parameter_system$owner" ON "mxmodelreflection$parameter" ("system$owner" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('c054e166-636e-47fb-967f-e812a2de5b49', 'MxModelReflection.Parameter', 'mxmodelreflection$parameter', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('16efa3aa-61db-4f2f-a1b7-b3769274296e', 'c054e166-636e-47fb-967f-e812a2de5b49', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c69418e3-5e3f-39e0-aa94-6724e5c3fc2c', 'c054e166-636e-47fb-967f-e812a2de5b49', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('34d53750-1c76-35e7-8916-f26b3d2d8cfe', 'c054e166-636e-47fb-967f-e812a2de5b49', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('89068b3f-31c7-319a-8cbb-0d7078f02a09', 'c054e166-636e-47fb-967f-e812a2de5b49', 'idx_mxmodelreflection$parameter_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('89068b3f-31c7-319a-8cbb-0d7078f02a09', '5d442027-95ac-384d-b216-cf82dd8d3ed4', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('a3f92656-ddd2-3c42-ad93-9be60140a1b5', 'c054e166-636e-47fb-967f-e812a2de5b49', 'idx_mxmodelreflection$parameter_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('a3f92656-ddd2-3c42-ad93-9be60140a1b5', '49ce6c73-0b89-3c17-ab47-f6f4c432df99', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('5d442027-95ac-384d-b216-cf82dd8d3ed4', 'System.changedBy', 'system$changedby', 'c054e166-636e-47fb-967f-e812a2de5b49', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('49ce6c73-0b89-3c17-ab47-f6f4c432df99', 'System.owner', 'system$owner', 'c054e166-636e-47fb-967f-e812a2de5b49', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
CREATE TABLE "mxmodelreflection$token" (
	"id" BIGINT NOT NULL,
	"token" VARCHAR_IGNORECASE(50) NULL,
	"prefix" VARCHAR_IGNORECASE(3) NULL,
	"suffix" VARCHAR_IGNORECASE(3) NULL,
	"combinedtoken" VARCHAR_IGNORECASE(56) NULL,
	"description" VARCHAR_IGNORECASE(300) NULL,
	"metamodelpath" VARCHAR_IGNORECASE(1000) NULL,
	"tokentype" VARCHAR_IGNORECASE(9) NULL,
	"status" VARCHAR_IGNORECASE(7) NULL,
	"findobjectstart" VARCHAR_IGNORECASE(200) NULL,
	"findobjectreference" VARCHAR_IGNORECASE(200) NULL,
	"findreference" VARCHAR_IGNORECASE(200) NULL,
	"findmember" VARCHAR_IGNORECASE(200) NULL,
	"findmemberreference" VARCHAR_IGNORECASE(200) NULL,
	"isoptional" BOOLEAN NULL,
	"displaypattern" VARCHAR_IGNORECASE(50) NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$changedby" BIGINT NULL,
	"system$owner" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_mxmodelreflection$token_combinedtoken_asc" ON "mxmodelreflection$token" ("combinedtoken" ASC,"id" ASC);
CREATE INDEX "idx_mxmodelreflection$token_system$changedby" ON "mxmodelreflection$token" ("system$changedby" ASC,"id" ASC);
CREATE INDEX "idx_mxmodelreflection$token_system$owner" ON "mxmodelreflection$token" ("system$owner" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', 'MxModelReflection.Token', 'mxmodelreflection$token', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('274d1baa-b03b-42d2-8b4e-72485a804331', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', 'Token', 'token', 30, 50, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f1f3af8c-e07b-4426-afe5-6f6753b44790', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', 'Prefix', 'prefix', 30, 3, '{%', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('08fdf56e-4e44-4686-b8b7-829dfd0b08aa', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', 'Suffix', 'suffix', 30, 3, '%}', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7197437a-ab1f-4fca-8ca8-9036351c501e', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', 'CombinedToken', 'combinedtoken', 30, 56, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('baf313db-9583-4dc5-8640-67abcefcdac9', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', 'Description', 'description', 30, 300, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b2ef3358-9d96-4a5f-849c-e973307da6b2', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', 'MetaModelPath', 'metamodelpath', 30, 1000, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f6bc6036-b456-4b8b-8d16-84c89882d72e', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', 'TokenType', 'tokentype', 40, 9, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6c2c440a-b0d7-4158-8b7d-dfc6e763ae4e', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', 'Status', 'status', 40, 7, 'Invalid', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7fbac54b-da6a-4946-949d-2bb8d6cbb581', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', 'FindObjectStart', 'findobjectstart', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3cac74b7-06fe-405f-a6a2-425f9d42c9d6', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', 'FindObjectReference', 'findobjectreference', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('abdbdd0d-94a3-4eef-9ab1-761950c63c51', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', 'FindReference', 'findreference', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('300e6141-aff0-4d0f-9c73-c8961f7e635c', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', 'FindMember', 'findmember', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d223a28e-b110-4e1b-84f0-72dec42f3210', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', 'FindMemberReference', 'findmemberreference', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('351dcf07-7de3-4729-9a29-188feee35aa8', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', 'IsOptional', 'isoptional', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('45b3b464-b0bf-4861-96ca-323c90a3321f', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', 'DisplayPattern', 'displaypattern', 30, 50, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f819ac86-2ba5-3474-bb03-17c3eac6702c', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('abfb2a9d-1a23-3c64-9fbd-d3b67958f8b9', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('d138b39e-30a7-4930-8b07-1479c870d710', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', 'idx_mxmodelreflection$token_combinedtoken_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('d138b39e-30a7-4930-8b07-1479c870d710', '7197437a-ab1f-4fca-8ca8-9036351c501e', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('103d1eff-ec3f-35ea-8df9-817f64b40fd7', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', 'idx_mxmodelreflection$token_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('103d1eff-ec3f-35ea-8df9-817f64b40fd7', '0e72db46-98c2-3031-8e92-84288439f85a', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('322e9479-4d43-33a4-b262-3fa001d679ff', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', 'idx_mxmodelreflection$token_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('322e9479-4d43-33a4-b262-3fa001d679ff', 'fe7f3c76-32b5-31ab-b760-c40b0f9829c6', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('0e72db46-98c2-3031-8e92-84288439f85a', 'System.changedBy', 'system$changedby', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('fe7f3c76-32b5-31ab-b760-c40b0f9829c6', 'System.owner', 'system$owner', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
CREATE TABLE "mxmodelreflection$mxobjectenumcaptions" (
	"id" BIGINT NOT NULL,
	"caption" VARCHAR_IGNORECASE(200) NULL,
	"languagecode" VARCHAR_IGNORECASE(8) NULL,
	"languagename" VARCHAR_IGNORECASE(200) NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$owner" BIGINT NULL,
	"system$changedby" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_mxmodelreflection$mxobjectenumcaptions_system$owner" ON "mxmodelreflection$mxobjectenumcaptions" ("system$owner" ASC,"id" ASC);
CREATE INDEX "idx_mxmodelreflection$mxobjectenumcaptions_system$changedby" ON "mxmodelreflection$mxobjectenumcaptions" ("system$changedby" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('0dcd468f-80ae-4ca0-9edd-ff663a4cee84', 'MxModelReflection.MxObjectEnumCaptions', 'mxmodelreflection$mxobjectenumcaptions', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('80ce9a60-fa88-44bd-abde-5daa6d8dcb23', '0dcd468f-80ae-4ca0-9edd-ff663a4cee84', 'Caption', 'caption', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('76a2f21c-6acb-41d5-bdbf-950ebcab2709', '0dcd468f-80ae-4ca0-9edd-ff663a4cee84', 'LanguageCode', 'languagecode', 30, 8, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('472abe1e-01a7-415f-8576-045aa2d056c6', '0dcd468f-80ae-4ca0-9edd-ff663a4cee84', 'LanguageName', 'languagename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('4e2397c5-a785-366d-9d7d-2ac03c3535f6', '0dcd468f-80ae-4ca0-9edd-ff663a4cee84', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7545aa71-24dc-3ebf-b2a2-0b3b1d671904', '0dcd468f-80ae-4ca0-9edd-ff663a4cee84', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('16f6b3ca-63fa-30d6-aafb-0bce10d9f6d5', '0dcd468f-80ae-4ca0-9edd-ff663a4cee84', 'idx_mxmodelreflection$mxobjectenumcaptions_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('16f6b3ca-63fa-30d6-aafb-0bce10d9f6d5', '22e9c90d-ba19-3c0a-86fe-644d76838652', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('f3d3e68b-dcf4-37ba-97be-d16ba0e06b8d', '0dcd468f-80ae-4ca0-9edd-ff663a4cee84', 'idx_mxmodelreflection$mxobjectenumcaptions_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('f3d3e68b-dcf4-37ba-97be-d16ba0e06b8d', '515f5f69-141d-3085-b9d4-085731ee78ae', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('22e9c90d-ba19-3c0a-86fe-644d76838652', 'System.owner', 'system$owner', '0dcd468f-80ae-4ca0-9edd-ff663a4cee84', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('515f5f69-141d-3085-b9d4-085731ee78ae', 'System.changedBy', 'system$changedby', '0dcd468f-80ae-4ca0-9edd-ff663a4cee84', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
CREATE TABLE "mxmodelreflection$module" (
	"id" BIGINT NOT NULL,
	"modulename" VARCHAR_IGNORECASE(200) NULL,
	"synchronizeobjectswithinmodule" BOOLEAN NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('9cb716ab-c920-4e97-914c-e6721140bfb2', 'MxModelReflection.Module', 'mxmodelreflection$module', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('dc2204fc-d113-4a06-b09f-88ff4f9caff9', '9cb716ab-c920-4e97-914c-e6721140bfb2', 'ModuleName', 'modulename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b1db88de-7b60-4f49-af6a-9f0b6099e92c', '9cb716ab-c920-4e97-914c-e6721140bfb2', 'SynchronizeObjectsWithinModule', 'synchronizeobjectswithinmodule', 10, 0, 'false', false);
CREATE TABLE "email_connector$pk12certificate" (
	"id" BIGINT NOT NULL,
	"passphrase" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('535e5d97-cc91-44ef-8f5f-169d0657c54a', 'Email_Connector.Pk12Certificate', 'email_connector$pk12certificate', '170ce49d-f29c-4fac-99a6-b55e8a3aeb39', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ea3a70a8-6683-475d-812e-364e98b89649', '535e5d97-cc91-44ef-8f5f-169d0657c54a', 'Passphrase', 'passphrase', 30, 200, '', false);
CREATE TABLE "email_connector$emailtemplate" (
	"id" BIGINT NOT NULL,
	"templatename" VARCHAR_IGNORECASE(200) NULL,
	"creationdate" TIMESTAMP NULL,
	"subject" VARCHAR_IGNORECASE(200) NULL,
	"sentdate" TIMESTAMP NULL,
	"to" VARCHAR_IGNORECASE(2147483647) NULL,
	"cc" VARCHAR_IGNORECASE(2147483647) NULL,
	"bcc" VARCHAR_IGNORECASE(2147483647) NULL,
	"content" VARCHAR_IGNORECASE(2147483647) NULL,
	"useonlyplaintext" BOOLEAN NULL,
	"hasattachment" BOOLEAN NULL,
	"replyto" VARCHAR_IGNORECASE(200) NULL,
	"plainbody" VARCHAR_IGNORECASE(2147483647) NULL,
	"fromdisplayname" VARCHAR_IGNORECASE(200) NULL,
	"signed" BOOLEAN NULL,
	"encrypted" BOOLEAN NULL,
	"recipientstoggle" BOOLEAN NULL,
	"fromaddress" VARCHAR_IGNORECASE(200) NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$changedby" BIGINT NULL,
	"system$owner" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_email_connector$emailtemplate_system$changedby" ON "email_connector$emailtemplate" ("system$changedby" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$emailtemplate_system$owner" ON "email_connector$emailtemplate" ("system$owner" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('641cff6b-1218-4e06-b266-e796ea8f18fd', 'Email_Connector.EmailTemplate', 'email_connector$emailtemplate', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('246cfd7c-8165-49df-a908-7d8982c9d7f4', '641cff6b-1218-4e06-b266-e796ea8f18fd', 'TemplateName', 'templatename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a0e3a370-280b-47ee-8335-3fa02e2a9fe1', '641cff6b-1218-4e06-b266-e796ea8f18fd', 'CreationDate', 'creationdate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7f170718-d599-4cc7-a43f-ca6f6f3c054f', '641cff6b-1218-4e06-b266-e796ea8f18fd', 'Subject', 'subject', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('59feddf4-6ed7-4cca-ae1a-580a704882e5', '641cff6b-1218-4e06-b266-e796ea8f18fd', 'SentDate', 'sentdate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('11ea9195-efbc-43f1-8a69-b06389d5002e', '641cff6b-1218-4e06-b266-e796ea8f18fd', 'To', 'to', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('918bedd4-c6b4-4b67-a140-5ea475bfa847', '641cff6b-1218-4e06-b266-e796ea8f18fd', 'CC', 'cc', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ff885375-7104-474e-b2c6-fb88f8a1a842', '641cff6b-1218-4e06-b266-e796ea8f18fd', 'BCC', 'bcc', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c526c189-c6ba-4cbc-94ea-adb680da66a1', '641cff6b-1218-4e06-b266-e796ea8f18fd', 'Content', 'content', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ecd7693d-8d9f-4872-8dd3-f9b5d105fd92', '641cff6b-1218-4e06-b266-e796ea8f18fd', 'UseOnlyPlainText', 'useonlyplaintext', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('fb5de923-b612-42cf-9e10-19f3c8773a48', '641cff6b-1218-4e06-b266-e796ea8f18fd', 'hasAttachment', 'hasattachment', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('427e9771-689b-4bbd-ba0e-fc2ca9d240ba', '641cff6b-1218-4e06-b266-e796ea8f18fd', 'ReplyTo', 'replyto', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c6aac9b9-64cf-430e-9acc-58302bb8734a', '641cff6b-1218-4e06-b266-e796ea8f18fd', 'PlainBody', 'plainbody', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('31f84376-9bdc-47d7-8ef4-de9cf7eeb043', '641cff6b-1218-4e06-b266-e796ea8f18fd', 'FromDisplayName', 'fromdisplayname', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0a282259-b704-45bc-b5ca-0bf32d0b0067', '641cff6b-1218-4e06-b266-e796ea8f18fd', 'Signed', 'signed', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b3827224-4dfd-429b-ae0e-e0232923084c', '641cff6b-1218-4e06-b266-e796ea8f18fd', 'Encrypted', 'encrypted', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ebdfb900-93fd-49be-adc5-ba2859050e41', '641cff6b-1218-4e06-b266-e796ea8f18fd', 'RecipientsToggle', 'recipientstoggle', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f885e294-2914-4356-82d2-be803864fa06', '641cff6b-1218-4e06-b266-e796ea8f18fd', 'FromAddress', 'fromaddress', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9095950a-3d34-336c-a559-f185b1613e70', '641cff6b-1218-4e06-b266-e796ea8f18fd', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('154c2ad2-fdf9-39cb-8589-d56e1953cbac', '641cff6b-1218-4e06-b266-e796ea8f18fd', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('9661c869-dfa5-3e88-a8d2-01ffddb7a067', '641cff6b-1218-4e06-b266-e796ea8f18fd', 'idx_email_connector$emailtemplate_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('9661c869-dfa5-3e88-a8d2-01ffddb7a067', '7f448ad0-c4cd-35ec-b1a1-23617f252019', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('9325a274-b413-3489-a1af-68341f3548fc', '641cff6b-1218-4e06-b266-e796ea8f18fd', 'idx_email_connector$emailtemplate_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('9325a274-b413-3489-a1af-68341f3548fc', '0c08034c-a875-3526-9761-83a98e040e6a', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('7f448ad0-c4cd-35ec-b1a1-23617f252019', 'System.changedBy', 'system$changedby', '641cff6b-1218-4e06-b266-e796ea8f18fd', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('0c08034c-a875-3526-9761-83a98e040e6a', 'System.owner', 'system$owner', '641cff6b-1218-4e06-b266-e796ea8f18fd', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
CREATE TABLE "email_connector$oauthprovider" (
	"id" BIGINT NOT NULL,
	"name" VARCHAR_IGNORECASE(50) NULL,
	"clientid" VARCHAR_IGNORECASE(2147483647) NULL,
	"clientsecret" VARCHAR_IGNORECASE(2147483647) NULL,
	"openidwellknownmetadatauri" VARCHAR_IGNORECASE(700) NULL,
	"authorizationendpoint" VARCHAR_IGNORECASE(700) NULL,
	"tokenendpoint" VARCHAR_IGNORECASE(700) NULL,
	"emaildomain" VARCHAR_IGNORECASE(200) NULL,
	"callbackoperationpath" VARCHAR_IGNORECASE(200) NULL,
	"callbackurl" VARCHAR_IGNORECASE(200) NULL,
	"oauthtype" VARCHAR_IGNORECASE(11) NULL,
	"tenantid" VARCHAR_IGNORECASE(200) NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$changedby" BIGINT NULL,
	"system$owner" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_email_connector$oauthprovider_system$changedby" ON "email_connector$oauthprovider" ("system$changedby" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$oauthprovider_system$owner" ON "email_connector$oauthprovider" ("system$owner" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('8dd945bc-8ff1-404a-87c4-8cabf667f4f2', 'Email_Connector.OAuthProvider', 'email_connector$oauthprovider', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('fb9f1cac-d959-424f-897f-e5d846e45b12', '8dd945bc-8ff1-404a-87c4-8cabf667f4f2', 'Name', 'name', 30, 50, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('33a7ecf4-7c48-4785-86f3-e5983be0654e', '8dd945bc-8ff1-404a-87c4-8cabf667f4f2', 'ClientID', 'clientid', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('72d26e78-cbd7-48be-95a1-552aff11b28b', '8dd945bc-8ff1-404a-87c4-8cabf667f4f2', 'ClientSecret', 'clientsecret', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('774f8abd-e8f4-4eb3-a0f6-43971c0f9377', '8dd945bc-8ff1-404a-87c4-8cabf667f4f2', 'OpenIDWellKnownMetadataUri', 'openidwellknownmetadatauri', 30, 700, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a683f72d-1018-49a5-a1ec-ac59a5d0be3a', '8dd945bc-8ff1-404a-87c4-8cabf667f4f2', 'AuthorizationEndpoint', 'authorizationendpoint', 30, 700, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9a870cfe-ab46-421c-83bf-887e9093e38f', '8dd945bc-8ff1-404a-87c4-8cabf667f4f2', 'TokenEndpoint', 'tokenendpoint', 30, 700, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b19748f9-fbcf-48ef-85c0-108c14301e10', '8dd945bc-8ff1-404a-87c4-8cabf667f4f2', 'EmailDomain', 'emaildomain', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('db75255d-4ca9-4bcd-bf08-ce6dd9ceca1e', '8dd945bc-8ff1-404a-87c4-8cabf667f4f2', 'CallbackOperationPath', 'callbackoperationpath', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3bf013a9-b849-4c6b-b679-beea1f84d4a8', '8dd945bc-8ff1-404a-87c4-8cabf667f4f2', 'CallbackURL', 'callbackurl', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d129bcf4-419d-408c-a5dc-4ce06a37d8be', '8dd945bc-8ff1-404a-87c4-8cabf667f4f2', 'OAuthType', 'oauthtype', 40, 11, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('dad5fe82-e55e-474f-b774-ab3666c81094', '8dd945bc-8ff1-404a-87c4-8cabf667f4f2', 'TenantID', 'tenantid', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('23ab334f-d003-3ada-894d-839bb102409f', '8dd945bc-8ff1-404a-87c4-8cabf667f4f2', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7614b2f7-513c-33c0-a65a-5568efe1cf3e', '8dd945bc-8ff1-404a-87c4-8cabf667f4f2', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('f2a221e7-2b30-3ad2-8027-b86626e09386', '8dd945bc-8ff1-404a-87c4-8cabf667f4f2', 'idx_email_connector$oauthprovider_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('f2a221e7-2b30-3ad2-8027-b86626e09386', 'f9da4f86-4b4f-301f-8c44-6f12b585b34d', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('b6ab7612-e436-37ce-9fc4-e07fae47e5e7', '8dd945bc-8ff1-404a-87c4-8cabf667f4f2', 'idx_email_connector$oauthprovider_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('b6ab7612-e436-37ce-9fc4-e07fae47e5e7', '6ad8b1ea-0423-3289-bafd-4c2a22139418', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('f9da4f86-4b4f-301f-8c44-6f12b585b34d', 'System.changedBy', 'system$changedby', '8dd945bc-8ff1-404a-87c4-8cabf667f4f2', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('6ad8b1ea-0423-3289-bafd-4c2a22139418', 'System.owner', 'system$owner', '8dd945bc-8ff1-404a-87c4-8cabf667f4f2', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
CREATE TABLE "mxmodelreflection$mxobjectreference_mxobjecttype_parent" (
	"mxmodelreflection$mxobjectreferenceid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjectreferenceid","mxmodelreflection$mxobjecttypeid"));
CREATE INDEX "idx_mxmodelreflection$mxobjectreference_mxobjecttype_parent_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjectreference" ON "mxmodelreflection$mxobjectreference_mxobjecttype_parent" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$mxobjectreferenceid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('840bd1bd-dfb7-494c-8347-223361fbbdf7', 'MxModelReflection.MxObjectReference_MxObjectType_Parent', 'mxmodelreflection$mxobjectreference_mxobjecttype_parent', '1286d18b-2747-476d-9ba9-27a2a0529227', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', 'mxmodelreflection$mxobjectreferenceid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$mxobjectreference_mxobjecttype_parent_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjectreference');
CREATE TABLE "mxmodelreflection$mxobjectreference_mxobjecttype" (
	"mxmodelreflection$mxobjectreferenceid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjectreferenceid","mxmodelreflection$mxobjecttypeid"));
CREATE INDEX "idx_mxmodelreflection$mxobjectreference_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjectreference" ON "mxmodelreflection$mxobjectreference_mxobjecttype" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$mxobjectreferenceid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('e00538d6-1d98-48e0-964d-446a74f96b47', 'MxModelReflection.MxObjectReference_MxObjectType', 'mxmodelreflection$mxobjectreference_mxobjecttype', '1286d18b-2747-476d-9ba9-27a2a0529227', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', 'mxmodelreflection$mxobjectreferenceid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$mxobjectreference_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjectreference');
CREATE TABLE "mxmodelreflection$mxobjectreference_module" (
	"mxmodelreflection$mxobjectreferenceid" BIGINT NOT NULL,
	"mxmodelreflection$moduleid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjectreferenceid","mxmodelreflection$moduleid"),
	CONSTRAINT "uniq_mxmodelreflection$mxobjectreference_module_mxmodelreflection$mxobjectreferenceid" UNIQUE ("mxmodelreflection$mxobjectreferenceid"));
CREATE INDEX "idx_mxmodelreflection$mxobjectreference_module_mxmodelreflection$module_mxmodelreflection$mxobjectreference" ON "mxmodelreflection$mxobjectreference_module" ("mxmodelreflection$moduleid" ASC,"mxmodelreflection$mxobjectreferenceid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('2a208853-8964-494d-a68b-d6fe53e44410', 'MxModelReflection.MxObjectReference_Module', 'mxmodelreflection$mxobjectreference_module', '1286d18b-2747-476d-9ba9-27a2a0529227', '9cb716ab-c920-4e97-914c-e6721140bfb2', 'mxmodelreflection$mxobjectreferenceid', 'mxmodelreflection$moduleid', 'idx_mxmodelreflection$mxobjectreference_module_mxmodelreflection$module_mxmodelreflection$mxobjectreference');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$mxobjectreference_module_mxmodelreflection$mxobjectreferenceid', '2a208853-8964-494d-a68b-d6fe53e44410', 'f7ac33c6-4d3a-388a-b1f8-8e622666ae01');
CREATE TABLE "mxmodelreflection$mxobjectreference_mxobjecttype_child" (
	"mxmodelreflection$mxobjectreferenceid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjectreferenceid","mxmodelreflection$mxobjecttypeid"));
CREATE INDEX "idx_mxmodelreflection$mxobjectreference_mxobjecttype_child_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjectreference" ON "mxmodelreflection$mxobjectreference_mxobjecttype_child" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$mxobjectreferenceid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('1bc1e11f-1d1e-4b16-a212-0e1218ea3f17', 'MxModelReflection.MxObjectReference_MxObjectType_Child', 'mxmodelreflection$mxobjectreference_mxobjecttype_child', '1286d18b-2747-476d-9ba9-27a2a0529227', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', 'mxmodelreflection$mxobjectreferenceid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$mxobjectreference_mxobjecttype_child_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjectreference');
CREATE TABLE "encryption$secretkey_publickey" (
	"encryption$pgpcertificateid1" BIGINT NOT NULL,
	"encryption$pgpcertificateid2" BIGINT NOT NULL,
	PRIMARY KEY("encryption$pgpcertificateid1","encryption$pgpcertificateid2"),
	CONSTRAINT "uniq_encryption$secretkey_publickey_encryption$pgpcertificateid1" UNIQUE ("encryption$pgpcertificateid1"));
CREATE INDEX "idx_encryption$secretkey_publickey_encryption$pgpcertificate_encryption$pgpcertificate" ON "encryption$secretkey_publickey" ("encryption$pgpcertificateid2" ASC,"encryption$pgpcertificateid1" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('0e3a965c-4960-47ca-bce3-d242598cd808', 'Encryption.SecretKey_PublicKey', 'encryption$secretkey_publickey', 'cf9cd400-8cea-4fe7-8b57-0e3c9997a4be', 'cf9cd400-8cea-4fe7-8b57-0e3c9997a4be', 'encryption$pgpcertificateid1', 'encryption$pgpcertificateid2', 'idx_encryption$secretkey_publickey_encryption$pgpcertificate_encryption$pgpcertificate');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_encryption$secretkey_publickey_encryption$pgpcertificateid1', '0e3a965c-4960-47ca-bce3-d242598cd808', 'f563c86e-f88f-30a2-8d7a-948ee6465f66');
CREATE TABLE "email_connector$outgoingemailconfiguration_emailaccount" (
	"email_connector$outgoingemailconfigurationid" BIGINT NOT NULL,
	"email_connector$emailaccountid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$outgoingemailconfigurationid","email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$outgoingemailconfiguration_emailaccount_email_connector$emailaccountid" UNIQUE ("email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$outgoingemailconfiguration_emailaccount_email_connector$outgoingemailconfigurationid" UNIQUE ("email_connector$outgoingemailconfigurationid"));
CREATE INDEX "idx_email_connector$outgoingemailconfiguration_emailaccount" ON "email_connector$outgoingemailconfiguration_emailaccount" ("email_connector$emailaccountid" ASC,"email_connector$outgoingemailconfigurationid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('e8587583-0c5d-4d27-9e7c-dd0c63ce1b70', 'Email_Connector.OutgoingEmailConfiguration_EmailAccount', 'email_connector$outgoingemailconfiguration_emailaccount', '5e6b8d4e-7689-4767-a568-2a1d7995a544', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'email_connector$outgoingemailconfigurationid', 'email_connector$emailaccountid', 'idx_email_connector$outgoingemailconfiguration_emailaccount');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$outgoingemailconfiguration_emailaccount_email_connector$emailaccountid', 'e8587583-0c5d-4d27-9e7c-dd0c63ce1b70', '86917fc5-7748-3543-94ed-1a4444c2b125');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$outgoingemailconfiguration_emailaccount_email_connector$outgoingemailconfigurationid', 'e8587583-0c5d-4d27-9e7c-dd0c63ce1b70', '30046c9f-9862-374d-bb01-4a70cf84a441');
CREATE TABLE "email_connector$emailmessage_emailaccount" (
	"email_connector$emailmessageid" BIGINT NOT NULL,
	"email_connector$emailaccountid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailmessageid","email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$emailmessage_emailaccount_email_connector$emailmessageid" UNIQUE ("email_connector$emailmessageid"));
CREATE INDEX "idx_email_connector$emailmessage_emailaccount_email_connector$emailaccount_email_connector$emailmessage" ON "email_connector$emailmessage_emailaccount" ("email_connector$emailaccountid" ASC,"email_connector$emailmessageid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('0105c6f5-ad26-4954-a012-27a117b551be', 'Email_Connector.EmailMessage_EmailAccount', 'email_connector$emailmessage_emailaccount', '50fb3f2f-1674-4839-ac72-bf17412679e3', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'email_connector$emailmessageid', 'email_connector$emailaccountid', 'idx_email_connector$emailmessage_emailaccount_email_connector$emailaccount_email_connector$emailmessage');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailmessage_emailaccount_email_connector$emailmessageid', '0105c6f5-ad26-4954-a012-27a117b551be', 'd388b33b-43d5-35ec-b021-77c2ad72e5e5');
CREATE TABLE "email_connector$emailmessage_emailtemplate" (
	"email_connector$emailmessageid" BIGINT NOT NULL,
	"email_connector$emailtemplateid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailmessageid","email_connector$emailtemplateid"),
	CONSTRAINT "uniq_email_connector$emailmessage_emailtemplate_email_connector$emailmessageid" UNIQUE ("email_connector$emailmessageid"));
CREATE INDEX "idx_email_connector$emailmessage_emailtemplate_email_connector$emailtemplate_email_connector$emailmessage" ON "email_connector$emailmessage_emailtemplate" ("email_connector$emailtemplateid" ASC,"email_connector$emailmessageid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('fd2e2c15-8893-4a5f-9dc7-663e713d2e8e', 'Email_Connector.EmailMessage_EmailTemplate', 'email_connector$emailmessage_emailtemplate', '50fb3f2f-1674-4839-ac72-bf17412679e3', '641cff6b-1218-4e06-b266-e796ea8f18fd', 'email_connector$emailmessageid', 'email_connector$emailtemplateid', 'idx_email_connector$emailmessage_emailtemplate_email_connector$emailtemplate_email_connector$emailmessage');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailmessage_emailtemplate_email_connector$emailmessageid', 'fd2e2c15-8893-4a5f-9dc7-663e713d2e8e', 'ab6c0c09-4375-3ac8-a24b-69fc18d58f0a');
CREATE TABLE "mxmodelreflection$microflows_output_type" (
	"mxmodelreflection$microflowsid" BIGINT NOT NULL,
	"mxmodelreflection$valuetypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$microflowsid","mxmodelreflection$valuetypeid"),
	CONSTRAINT "uniq_mxmodelreflection$microflows_output_type_mxmodelreflection$microflowsid" UNIQUE ("mxmodelreflection$microflowsid"));
CREATE INDEX "idx_mxmodelreflection$microflows_output_type_mxmodelreflection$valuetype_mxmodelreflection$microflows" ON "mxmodelreflection$microflows_output_type" ("mxmodelreflection$valuetypeid" ASC,"mxmodelreflection$microflowsid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('ffbfb1c8-81ef-491d-addb-295a2b71c0fc', 'MxModelReflection.Microflows_Output_Type', 'mxmodelreflection$microflows_output_type', '8166140f-3aef-411d-bef3-e549f47fdd2d', '4dfa9b1a-ebd8-421a-b917-e8ab7fd52e86', 'mxmodelreflection$microflowsid', 'mxmodelreflection$valuetypeid', 'idx_mxmodelreflection$microflows_output_type_mxmodelreflection$valuetype_mxmodelreflection$microflows');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$microflows_output_type_mxmodelreflection$microflowsid', 'ffbfb1c8-81ef-491d-addb-295a2b71c0fc', 'e5dbba6b-fe16-3575-be2b-646fe5268d4d');
CREATE TABLE "mxmodelreflection$microflows_module" (
	"mxmodelreflection$microflowsid" BIGINT NOT NULL,
	"mxmodelreflection$moduleid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$microflowsid","mxmodelreflection$moduleid"),
	CONSTRAINT "uniq_mxmodelreflection$microflows_module_mxmodelreflection$microflowsid" UNIQUE ("mxmodelreflection$microflowsid"));
CREATE INDEX "idx_mxmodelreflection$microflows_module_mxmodelreflection$module_mxmodelreflection$microflows" ON "mxmodelreflection$microflows_module" ("mxmodelreflection$moduleid" ASC,"mxmodelreflection$microflowsid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('b2b648ed-2d76-4cbd-b686-db97d8c2c40f', 'MxModelReflection.Microflows_Module', 'mxmodelreflection$microflows_module', '8166140f-3aef-411d-bef3-e549f47fdd2d', '9cb716ab-c920-4e97-914c-e6721140bfb2', 'mxmodelreflection$microflowsid', 'mxmodelreflection$moduleid', 'idx_mxmodelreflection$microflows_module_mxmodelreflection$module_mxmodelreflection$microflows');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$microflows_module_mxmodelreflection$microflowsid', 'b2b648ed-2d76-4cbd-b686-db97d8c2c40f', '2c3ca23c-a223-3aac-a978-b4f116bbc94a');
CREATE TABLE "mxmodelreflection$microflows_inputparameter" (
	"mxmodelreflection$microflowsid" BIGINT NOT NULL,
	"mxmodelreflection$parameterid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$microflowsid","mxmodelreflection$parameterid"));
CREATE INDEX "idx_mxmodelreflection$microflows_inputparameter_mxmodelreflection$parameter_mxmodelreflection$microflows" ON "mxmodelreflection$microflows_inputparameter" ("mxmodelreflection$parameterid" ASC,"mxmodelreflection$microflowsid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('efeae8df-fc30-40ca-b604-b1ef1f1dafba', 'MxModelReflection.Microflows_InputParameter', 'mxmodelreflection$microflows_inputparameter', '8166140f-3aef-411d-bef3-e549f47fdd2d', 'c054e166-636e-47fb-967f-e812a2de5b49', 'mxmodelreflection$microflowsid', 'mxmodelreflection$parameterid', 'idx_mxmodelreflection$microflows_inputparameter_mxmodelreflection$parameter_mxmodelreflection$microflows');
CREATE TABLE "email_connector$emailconnectorlog_emailmessage" (
	"email_connector$emailconnectorlogid" BIGINT NOT NULL,
	"email_connector$emailmessageid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailconnectorlogid","email_connector$emailmessageid"),
	CONSTRAINT "uniq_email_connector$emailconnectorlog_emailmessage_email_connector$emailconnectorlogid" UNIQUE ("email_connector$emailconnectorlogid"));
CREATE INDEX "idx_email_connector$emailconnectorlog_emailmessage_email_connector$emailmessage_email_connector$emailconnectorlog" ON "email_connector$emailconnectorlog_emailmessage" ("email_connector$emailmessageid" ASC,"email_connector$emailconnectorlogid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('96a5f2cd-36c0-4e3a-af27-4b3f35f5be31', 'Email_Connector.EmailConnectorLog_EmailMessage', 'email_connector$emailconnectorlog_emailmessage', '48acf90b-6a47-479b-8144-c77e587a1c71', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'email_connector$emailconnectorlogid', 'email_connector$emailmessageid', 'idx_email_connector$emailconnectorlog_emailmessage_email_connector$emailmessage_email_connector$emailconnectorlog');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailconnectorlog_emailmessage_email_connector$emailconnectorlogid', '96a5f2cd-36c0-4e3a-af27-4b3f35f5be31', '86a101fd-fcbb-3eb7-85c0-08c614084646');
CREATE TABLE "email_connector$emailconnectorlog_emailaccount" (
	"email_connector$emailconnectorlogid" BIGINT NOT NULL,
	"email_connector$emailaccountid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailconnectorlogid","email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$emailconnectorlog_emailaccount_email_connector$emailconnectorlogid" UNIQUE ("email_connector$emailconnectorlogid"));
CREATE INDEX "idx_email_connector$emailconnectorlog_emailaccount_email_connector$emailaccount_email_connector$emailconnectorlog" ON "email_connector$emailconnectorlog_emailaccount" ("email_connector$emailaccountid" ASC,"email_connector$emailconnectorlogid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('95b87faf-0f51-4038-a4d9-7e106bd58fb4', 'Email_Connector.EmailConnectorLog_EmailAccount', 'email_connector$emailconnectorlog_emailaccount', '48acf90b-6a47-479b-8144-c77e587a1c71', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'email_connector$emailconnectorlogid', 'email_connector$emailaccountid', 'idx_email_connector$emailconnectorlog_emailaccount_email_connector$emailaccount_email_connector$emailconnectorlog');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailconnectorlog_emailaccount_email_connector$emailconnectorlogid', '95b87faf-0f51-4038-a4d9-7e106bd58fb4', '248713a1-52d7-3d72-91bb-2d85e3df763b');
CREATE TABLE "mxmodelreflection$mxobjectmember_type" (
	"mxmodelreflection$mxobjectmemberid" BIGINT NOT NULL,
	"mxmodelreflection$valuetypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjectmemberid","mxmodelreflection$valuetypeid"),
	CONSTRAINT "uniq_mxmodelreflection$mxobjectmember_type_mxmodelreflection$mxobjectmemberid" UNIQUE ("mxmodelreflection$mxobjectmemberid"));
CREATE INDEX "idx_mxmodelreflection$mxobjectmember_type_mxmodelreflection$valuetype_mxmodelreflection$mxobjectmember" ON "mxmodelreflection$mxobjectmember_type" ("mxmodelreflection$valuetypeid" ASC,"mxmodelreflection$mxobjectmemberid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('2ccbeabc-74bd-4fa2-82c2-eb0bcc81a4e7', 'MxModelReflection.MxObjectMember_Type', 'mxmodelreflection$mxobjectmember_type', 'a7781bef-d108-4a79-bf4b-d220be34b365', '4dfa9b1a-ebd8-421a-b917-e8ab7fd52e86', 'mxmodelreflection$mxobjectmemberid', 'mxmodelreflection$valuetypeid', 'idx_mxmodelreflection$mxobjectmember_type_mxmodelreflection$valuetype_mxmodelreflection$mxobjectmember');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$mxobjectmember_type_mxmodelreflection$mxobjectmemberid', '2ccbeabc-74bd-4fa2-82c2-eb0bcc81a4e7', '6616a18c-61ec-3b1a-a7f5-57927cffe1a6');
CREATE TABLE "mxmodelreflection$mxobjectmember_mxobjecttype" (
	"mxmodelreflection$mxobjectmemberid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjectmemberid","mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "uniq_mxmodelreflection$mxobjectmember_mxobjecttype_mxmodelreflection$mxobjectmemberid" UNIQUE ("mxmodelreflection$mxobjectmemberid"));
CREATE INDEX "idx_mxmodelreflection$mxobjectmember_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjectmember" ON "mxmodelreflection$mxobjectmember_mxobjecttype" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$mxobjectmemberid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('f22b874d-97fa-449f-8f15-17fde466f857', 'MxModelReflection.MxObjectMember_MxObjectType', 'mxmodelreflection$mxobjectmember_mxobjecttype', 'a7781bef-d108-4a79-bf4b-d220be34b365', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', 'mxmodelreflection$mxobjectmemberid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$mxobjectmember_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjectmember');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$mxobjectmember_mxobjecttype_mxmodelreflection$mxobjectmemberid', 'f22b874d-97fa-449f-8f15-17fde466f857', 'a72aaa43-b65a-3462-9ebd-6200b4cfb461');
CREATE TABLE "email_connector$emailheader_emailmessage" (
	"email_connector$emailheaderid" BIGINT NOT NULL,
	"email_connector$emailmessageid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailheaderid","email_connector$emailmessageid"),
	CONSTRAINT "uniq_email_connector$emailheader_emailmessage_email_connector$emailheaderid" UNIQUE ("email_connector$emailheaderid"));
CREATE INDEX "idx_email_connector$emailheader_emailmessage_email_connector$emailmessage_email_connector$emailheader" ON "email_connector$emailheader_emailmessage" ("email_connector$emailmessageid" ASC,"email_connector$emailheaderid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('720dd5b0-3d50-4d56-9fe9-c8fab2c5fb0f', 'Email_Connector.EmailHeader_EmailMessage', 'email_connector$emailheader_emailmessage', 'dba45c1e-ddce-4bed-b540-ef544def0b8a', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'email_connector$emailheaderid', 'email_connector$emailmessageid', 'idx_email_connector$emailheader_emailmessage_email_connector$emailmessage_email_connector$emailheader');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailheader_emailmessage_email_connector$emailheaderid', '720dd5b0-3d50-4d56-9fe9-c8fab2c5fb0f', '7ffcda96-0e3d-3482-a306-cb37450445b5');
CREATE TABLE "email_connector$incomingemailconfiguration_emailaccount" (
	"email_connector$incomingemailconfigurationid" BIGINT NOT NULL,
	"email_connector$emailaccountid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$incomingemailconfigurationid","email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$incomingemailconfiguration_emailaccount_email_connector$emailaccountid" UNIQUE ("email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$incomingemailconfiguration_emailaccount_email_connector$incomingemailconfigurationid" UNIQUE ("email_connector$incomingemailconfigurationid"));
CREATE INDEX "idx_email_connector$incomingemailconfiguration_emailaccount" ON "email_connector$incomingemailconfiguration_emailaccount" ("email_connector$emailaccountid" ASC,"email_connector$incomingemailconfigurationid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('97f1c33a-1234-4d65-8c90-b214de028eab', 'Email_Connector.IncomingEmailConfiguration_EmailAccount', 'email_connector$incomingemailconfiguration_emailaccount', '7c697696-43e5-4450-99a5-deeca9687bfe', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'email_connector$incomingemailconfigurationid', 'email_connector$emailaccountid', 'idx_email_connector$incomingemailconfiguration_emailaccount');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$incomingemailconfiguration_emailaccount_email_connector$emailaccountid', '97f1c33a-1234-4d65-8c90-b214de028eab', '5715d20a-48ec-3910-abab-6c9dff443ae3');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$incomingemailconfiguration_emailaccount_email_connector$incomingemailconfigurationid', '97f1c33a-1234-4d65-8c90-b214de028eab', '84892cae-9a84-3a6c-832d-b365fcb7dffe');
CREATE TABLE "email_connector$attachment_emailmessage" (
	"email_connector$attachmentid" BIGINT NOT NULL,
	"email_connector$emailmessageid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$attachmentid","email_connector$emailmessageid"),
	CONSTRAINT "uniq_email_connector$attachment_emailmessage_email_connector$attachmentid" UNIQUE ("email_connector$attachmentid"));
CREATE INDEX "idx_email_connector$attachment_emailmessage_email_connector$emailmessage_email_connector$attachment" ON "email_connector$attachment_emailmessage" ("email_connector$emailmessageid" ASC,"email_connector$attachmentid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('46534c4d-54cc-4ec7-ba42-9b7b3ea1af39', 'Email_Connector.Attachment_EmailMessage', 'email_connector$attachment_emailmessage', '201b3b91-4e66-4644-bfb1-c8349b868ee3', '50fb3f2f-1674-4839-ac72-bf17412679e3', 'email_connector$attachmentid', 'email_connector$emailmessageid', 'idx_email_connector$attachment_emailmessage_email_connector$emailmessage_email_connector$attachment');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$attachment_emailmessage_email_connector$attachmentid', '46534c4d-54cc-4ec7-ba42-9b7b3ea1af39', '0d8b5555-12bb-3129-a462-badf6017a80b');
CREATE TABLE "email_connector$attachment_emailtemplate" (
	"email_connector$attachmentid" BIGINT NOT NULL,
	"email_connector$emailtemplateid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$attachmentid","email_connector$emailtemplateid"),
	CONSTRAINT "uniq_email_connector$attachment_emailtemplate_email_connector$attachmentid" UNIQUE ("email_connector$attachmentid"));
CREATE INDEX "idx_email_connector$attachment_emailtemplate_email_connector$emailtemplate_email_connector$attachment" ON "email_connector$attachment_emailtemplate" ("email_connector$emailtemplateid" ASC,"email_connector$attachmentid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('d2a8e4c5-cdca-44e4-8de3-39259629e889', 'Email_Connector.Attachment_EmailTemplate', 'email_connector$attachment_emailtemplate', '201b3b91-4e66-4644-bfb1-c8349b868ee3', '641cff6b-1218-4e06-b266-e796ea8f18fd', 'email_connector$attachmentid', 'email_connector$emailtemplateid', 'idx_email_connector$attachment_emailtemplate_email_connector$emailtemplate_email_connector$attachment');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$attachment_emailtemplate_email_connector$attachmentid', 'd2a8e4c5-cdca-44e4-8de3-39259629e889', '89b800f4-605d-3772-9bd6-c0f84f5370a0');
CREATE TABLE "email_connector$emailaccount_ldapconfiguration" (
	"email_connector$emailaccountid" BIGINT NOT NULL,
	"email_connector$ldapconfigurationid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailaccountid","email_connector$ldapconfigurationid"),
	CONSTRAINT "uniq_email_connector$emailaccount_ldapconfiguration_email_connector$ldapconfigurationid" UNIQUE ("email_connector$ldapconfigurationid"),
	CONSTRAINT "uniq_email_connector$emailaccount_ldapconfiguration_email_connector$emailaccountid" UNIQUE ("email_connector$emailaccountid"));
CREATE INDEX "idx_email_connector$emailaccount_ldapconfiguration_email_connector$ldapconfiguration_email_connector$emailaccount" ON "email_connector$emailaccount_ldapconfiguration" ("email_connector$ldapconfigurationid" ASC,"email_connector$emailaccountid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('f07502c9-d2ed-44de-ba94-081c5ae4cb78', 'Email_Connector.EmailAccount_LDAPConfiguration', 'email_connector$emailaccount_ldapconfiguration', '21905011-4df2-4119-a3ca-1ecbc4ad9647', '66a6ff44-e0ec-480f-aecd-dcf5ee184525', 'email_connector$emailaccountid', 'email_connector$ldapconfigurationid', 'idx_email_connector$emailaccount_ldapconfiguration_email_connector$ldapconfiguration_email_connector$emailaccount');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailaccount_ldapconfiguration_email_connector$ldapconfigurationid', 'f07502c9-d2ed-44de-ba94-081c5ae4cb78', 'abc1ff14-7df1-3f32-9261-a56a447db065');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailaccount_ldapconfiguration_email_connector$emailaccountid', 'f07502c9-d2ed-44de-ba94-081c5ae4cb78', '4042d1f6-d462-3c9f-9cda-c18523756a10');
CREATE TABLE "email_connector$emailaccount_oauthtoken" (
	"email_connector$emailaccountid" BIGINT NOT NULL,
	"email_connector$oauthtokenid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailaccountid","email_connector$oauthtokenid"),
	CONSTRAINT "uniq_email_connector$emailaccount_oauthtoken_email_connector$oauthtokenid" UNIQUE ("email_connector$oauthtokenid"),
	CONSTRAINT "uniq_email_connector$emailaccount_oauthtoken_email_connector$emailaccountid" UNIQUE ("email_connector$emailaccountid"));
CREATE INDEX "idx_email_connector$emailaccount_oauthtoken_email_connector$oauthtoken_email_connector$emailaccount" ON "email_connector$emailaccount_oauthtoken" ("email_connector$oauthtokenid" ASC,"email_connector$emailaccountid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('e724c28a-e0bb-42c0-8d88-0676bc25b1c2', 'Email_Connector.EmailAccount_OAuthToken', 'email_connector$emailaccount_oauthtoken', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'c5ec0a9e-54e6-45cf-8403-98482562fb6a', 'email_connector$emailaccountid', 'email_connector$oauthtokenid', 'idx_email_connector$emailaccount_oauthtoken_email_connector$oauthtoken_email_connector$emailaccount');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailaccount_oauthtoken_email_connector$oauthtokenid', 'e724c28a-e0bb-42c0-8d88-0676bc25b1c2', '234c7815-6e9c-308d-a4cf-c50354767b72');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailaccount_oauthtoken_email_connector$emailaccountid', 'e724c28a-e0bb-42c0-8d88-0676bc25b1c2', '2435991d-fd29-3750-b455-f167a3b5eaff');
CREATE TABLE "email_connector$emailaccount_oauthprovider" (
	"email_connector$emailaccountid" BIGINT NOT NULL,
	"email_connector$oauthproviderid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailaccountid","email_connector$oauthproviderid"),
	CONSTRAINT "uniq_email_connector$emailaccount_oauthprovider_email_connector$emailaccountid" UNIQUE ("email_connector$emailaccountid"));
CREATE INDEX "idx_email_connector$emailaccount_oauthprovider_email_connector$oauthprovider_email_connector$emailaccount" ON "email_connector$emailaccount_oauthprovider" ("email_connector$oauthproviderid" ASC,"email_connector$emailaccountid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('61088a40-743f-4b67-be9a-043726128e87', 'Email_Connector.EmailAccount_OAuthProvider', 'email_connector$emailaccount_oauthprovider', '21905011-4df2-4119-a3ca-1ecbc4ad9647', '8dd945bc-8ff1-404a-87c4-8cabf667f4f2', 'email_connector$emailaccountid', 'email_connector$oauthproviderid', 'idx_email_connector$emailaccount_oauthprovider_email_connector$oauthprovider_email_connector$emailaccount');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailaccount_oauthprovider_email_connector$emailaccountid', '61088a40-743f-4b67-be9a-043726128e87', '55bfe292-74c2-3538-b81b-c75e8eeb128b');
CREATE TABLE "email_connector$scopeselected_oauthprovider" (
	"email_connector$scopeselectedid" BIGINT NOT NULL,
	"email_connector$oauthproviderid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$scopeselectedid","email_connector$oauthproviderid"),
	CONSTRAINT "uniq_email_connector$scopeselected_oauthprovider_email_connector$scopeselectedid" UNIQUE ("email_connector$scopeselectedid"));
CREATE INDEX "idx_email_connector$scopeselected_oauthprovider_email_connector$oauthprovider_email_connector$scopeselected" ON "email_connector$scopeselected_oauthprovider" ("email_connector$oauthproviderid" ASC,"email_connector$scopeselectedid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('885c6493-cd38-402c-a121-818b42b50725', 'Email_Connector.ScopeSelected_OAuthProvider', 'email_connector$scopeselected_oauthprovider', 'cf0471d1-d0e6-4ed4-9761-339834ba6233', '8dd945bc-8ff1-404a-87c4-8cabf667f4f2', 'email_connector$scopeselectedid', 'email_connector$oauthproviderid', 'idx_email_connector$scopeselected_oauthprovider_email_connector$oauthprovider_email_connector$scopeselected');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$scopeselected_oauthprovider_email_connector$scopeselectedid', '885c6493-cd38-402c-a121-818b42b50725', 'ceced0c6-e31e-3b08-9e5b-d4699b9ccca9');
CREATE TABLE "mxmodelreflection$mxobjecttype_subclassof_mxobjecttype" (
	"mxmodelreflection$mxobjecttypeid1" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid2" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjecttypeid1","mxmodelreflection$mxobjecttypeid2"));
CREATE INDEX "idx_mxmodelreflection$mxobjecttype_subclassof_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjecttype" ON "mxmodelreflection$mxobjecttype_subclassof_mxobjecttype" ("mxmodelreflection$mxobjecttypeid2" ASC,"mxmodelreflection$mxobjecttypeid1" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('c1815ef9-d216-408c-8c9d-0053d160e0e2', 'MxModelReflection.MxObjectType_SubClassOf_MxObjectType', 'mxmodelreflection$mxobjecttype_subclassof_mxobjecttype', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', 'mxmodelreflection$mxobjecttypeid1', 'mxmodelreflection$mxobjecttypeid2', 'idx_mxmodelreflection$mxobjecttype_subclassof_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjecttype');
CREATE TABLE "mxmodelreflection$mxobjecttype_module" (
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	"mxmodelreflection$moduleid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjecttypeid","mxmodelreflection$moduleid"),
	CONSTRAINT "uniq_mxmodelreflection$mxobjecttype_module_mxmodelreflection$mxobjecttypeid" UNIQUE ("mxmodelreflection$mxobjecttypeid"));
CREATE INDEX "idx_mxmodelreflection$mxobjecttype_module_mxmodelreflection$module_mxmodelreflection$mxobjecttype" ON "mxmodelreflection$mxobjecttype_module" ("mxmodelreflection$moduleid" ASC,"mxmodelreflection$mxobjecttypeid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('3843d7ac-2370-472f-a079-f0367f4a5040', 'MxModelReflection.MxObjectType_Module', 'mxmodelreflection$mxobjecttype_module', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', '9cb716ab-c920-4e97-914c-e6721140bfb2', 'mxmodelreflection$mxobjecttypeid', 'mxmodelreflection$moduleid', 'idx_mxmodelreflection$mxobjecttype_module_mxmodelreflection$module_mxmodelreflection$mxobjecttype');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$mxobjecttype_module_mxmodelreflection$mxobjecttypeid', '3843d7ac-2370-472f-a079-f0367f4a5040', '5aece5c3-234e-3c9f-94c0-3f94cd7f8537');
CREATE TABLE "email_connector$oauthnonce_emailaccount" (
	"email_connector$oauthnonceid" BIGINT NOT NULL,
	"email_connector$emailaccountid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$oauthnonceid","email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$oauthnonce_emailaccount_email_connector$oauthnonceid" UNIQUE ("email_connector$oauthnonceid"));
CREATE INDEX "idx_email_connector$oauthnonce_emailaccount_email_connector$emailaccount_email_connector$oauthnonce" ON "email_connector$oauthnonce_emailaccount" ("email_connector$emailaccountid" ASC,"email_connector$oauthnonceid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('803a83ff-ce38-4dae-aca4-a2ea37b3cea0', 'Email_Connector.OAuthNonce_EmailAccount', 'email_connector$oauthnonce_emailaccount', '6bafd16f-5e2c-4b78-8373-bf3805afc6ab', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'email_connector$oauthnonceid', 'email_connector$emailaccountid', 'idx_email_connector$oauthnonce_emailaccount_email_connector$emailaccount_email_connector$oauthnonce');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$oauthnonce_emailaccount_email_connector$oauthnonceid', '803a83ff-ce38-4dae-aca4-a2ea37b3cea0', '3a7f4373-1690-308a-947e-ea18d7cd20eb');
CREATE TABLE "mxmodelreflection$valuetype_mxobjecttype" (
	"mxmodelreflection$valuetypeid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$valuetypeid","mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "uniq_mxmodelreflection$valuetype_mxobjecttype_mxmodelreflection$valuetypeid" UNIQUE ("mxmodelreflection$valuetypeid"));
CREATE INDEX "idx_mxmodelreflection$valuetype_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$valuetype" ON "mxmodelreflection$valuetype_mxobjecttype" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$valuetypeid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('4b8d09ea-c4cd-429a-8e8b-5897d2b729a8', 'MxModelReflection.ValueType_MxObjectType', 'mxmodelreflection$valuetype_mxobjecttype', '4dfa9b1a-ebd8-421a-b917-e8ab7fd52e86', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', 'mxmodelreflection$valuetypeid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$valuetype_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$valuetype');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$valuetype_mxobjecttype_mxmodelreflection$valuetypeid', '4b8d09ea-c4cd-429a-8e8b-5897d2b729a8', '4d26d06b-a721-33b0-abcb-4e78b6911774');
CREATE TABLE "email_connector$querystring_oauthprovider" (
	"email_connector$querystringid" BIGINT NOT NULL,
	"email_connector$oauthproviderid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$querystringid","email_connector$oauthproviderid"),
	CONSTRAINT "uniq_email_connector$querystring_oauthprovider_email_connector$querystringid" UNIQUE ("email_connector$querystringid"));
CREATE INDEX "idx_email_connector$querystring_oauthprovider_email_connector$oauthprovider_email_connector$querystring" ON "email_connector$querystring_oauthprovider" ("email_connector$oauthproviderid" ASC,"email_connector$querystringid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('d6c63b88-803c-4f82-893e-5f01eb2728e5', 'Email_Connector.QueryString_OAuthProvider', 'email_connector$querystring_oauthprovider', '3f7a4762-e697-4604-8f0f-919cb5ac1806', '8dd945bc-8ff1-404a-87c4-8cabf667f4f2', 'email_connector$querystringid', 'email_connector$oauthproviderid', 'idx_email_connector$querystring_oauthprovider_email_connector$oauthprovider_email_connector$querystring');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$querystring_oauthprovider_email_connector$querystringid', 'd6c63b88-803c-4f82-893e-5f01eb2728e5', '606fd13b-1588-322c-ac26-12c2cb8f86a0');
CREATE TABLE "mxmodelreflection$values" (
	"mxmodelreflection$mxobjectenumid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjectenumvalueid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjectenumid","mxmodelreflection$mxobjectenumvalueid"));
CREATE INDEX "idx_mxmodelreflection$values_mxmodelreflection$mxobjectenumvalue_mxmodelreflection$mxobjectenum" ON "mxmodelreflection$values" ("mxmodelreflection$mxobjectenumvalueid" ASC,"mxmodelreflection$mxobjectenumid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('941583cf-3b7d-4002-a283-9ae58ae04967', 'MxModelReflection.Values', 'mxmodelreflection$values', '90033e8a-9b42-4e72-94a5-722420d182d0', '108b8d54-d35b-4815-b66d-1f10fac55fe8', 'mxmodelreflection$mxobjectenumid', 'mxmodelreflection$mxobjectenumvalueid', 'idx_mxmodelreflection$values_mxmodelreflection$mxobjectenumvalue_mxmodelreflection$mxobjectenum');
CREATE TABLE "mxmodelreflection$captions" (
	"mxmodelreflection$mxobjectenumvalueid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjectenumcaptionsid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjectenumvalueid","mxmodelreflection$mxobjectenumcaptionsid"));
CREATE INDEX "idx_mxmodelreflection$captions_mxmodelreflection$mxobjectenumcaptions_mxmodelreflection$mxobjectenumvalue" ON "mxmodelreflection$captions" ("mxmodelreflection$mxobjectenumcaptionsid" ASC,"mxmodelreflection$mxobjectenumvalueid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('55610e06-b9ac-47f9-97f4-af0717a6914c', 'MxModelReflection.Captions', 'mxmodelreflection$captions', '108b8d54-d35b-4815-b66d-1f10fac55fe8', '0dcd468f-80ae-4ca0-9edd-ff663a4cee84', 'mxmodelreflection$mxobjectenumvalueid', 'mxmodelreflection$mxobjectenumcaptionsid', 'idx_mxmodelreflection$captions_mxmodelreflection$mxobjectenumcaptions_mxmodelreflection$mxobjectenumvalue');
CREATE TABLE "mxmodelreflection$dbsizeestimate_mxobjecttype" (
	"mxmodelreflection$dbsizeestimateid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$dbsizeestimateid","mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "uniq_mxmodelreflection$dbsizeestimate_mxobjecttype_mxmodelreflection$dbsizeestimateid" UNIQUE ("mxmodelreflection$dbsizeestimateid"));
CREATE INDEX "idx_mxmodelreflection$dbsizeestimate_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$dbsizeestimate" ON "mxmodelreflection$dbsizeestimate_mxobjecttype" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$dbsizeestimateid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('742c6b5c-8f7c-41dd-a6b1-f5a5ba1e80af', 'MxModelReflection.DbSizeEstimate_MxObjectType', 'mxmodelreflection$dbsizeestimate_mxobjecttype', 'b83eb118-2cb7-4216-909f-11a9d0991a60', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', 'mxmodelreflection$dbsizeestimateid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$dbsizeestimate_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$dbsizeestimate');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$dbsizeestimate_mxobjecttype_mxmodelreflection$dbsizeestimateid', '742c6b5c-8f7c-41dd-a6b1-f5a5ba1e80af', '1a4b83a6-bac9-3b39-bfc3-43155b720add');
CREATE TABLE "mxmodelreflection$parameter_mxobjecttype" (
	"mxmodelreflection$parameterid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$parameterid","mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "uniq_mxmodelreflection$parameter_mxobjecttype_mxmodelreflection$parameterid" UNIQUE ("mxmodelreflection$parameterid"));
CREATE INDEX "idx_mxmodelreflection$parameter_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$parameter" ON "mxmodelreflection$parameter_mxobjecttype" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$parameterid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('f831df62-03e5-4665-afd7-751a7eb95914', 'MxModelReflection.Parameter_MxObjectType', 'mxmodelreflection$parameter_mxobjecttype', 'c054e166-636e-47fb-967f-e812a2de5b49', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', 'mxmodelreflection$parameterid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$parameter_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$parameter');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$parameter_mxobjecttype_mxmodelreflection$parameterid', 'f831df62-03e5-4665-afd7-751a7eb95914', 'bb807917-f2e3-3d00-bd81-471fafbaf698');
CREATE TABLE "mxmodelreflection$parameter_valuetype" (
	"mxmodelreflection$parameterid" BIGINT NOT NULL,
	"mxmodelreflection$valuetypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$parameterid","mxmodelreflection$valuetypeid"),
	CONSTRAINT "uniq_mxmodelreflection$parameter_valuetype_mxmodelreflection$parameterid" UNIQUE ("mxmodelreflection$parameterid"));
CREATE INDEX "idx_mxmodelreflection$parameter_valuetype_mxmodelreflection$valuetype_mxmodelreflection$parameter" ON "mxmodelreflection$parameter_valuetype" ("mxmodelreflection$valuetypeid" ASC,"mxmodelreflection$parameterid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('c7f0838a-03fd-43eb-aa6b-9035f3a6cdbb', 'MxModelReflection.Parameter_ValueType', 'mxmodelreflection$parameter_valuetype', 'c054e166-636e-47fb-967f-e812a2de5b49', '4dfa9b1a-ebd8-421a-b917-e8ab7fd52e86', 'mxmodelreflection$parameterid', 'mxmodelreflection$valuetypeid', 'idx_mxmodelreflection$parameter_valuetype_mxmodelreflection$valuetype_mxmodelreflection$parameter');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$parameter_valuetype_mxmodelreflection$parameterid', 'c7f0838a-03fd-43eb-aa6b-9035f3a6cdbb', '0ee1841e-059a-3e10-8d82-d16e95055cac');
CREATE TABLE "mxmodelreflection$token_mxobjecttype_start" (
	"mxmodelreflection$tokenid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$tokenid","mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "uniq_mxmodelreflection$token_mxobjecttype_start_mxmodelreflection$tokenid" UNIQUE ("mxmodelreflection$tokenid"));
CREATE INDEX "idx_mxmodelreflection$token_mxobjecttype_start_mxmodelreflection$mxobjecttype_mxmodelreflection$token" ON "mxmodelreflection$token_mxobjecttype_start" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$tokenid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('cab629f4-ae1c-48c0-a5ee-b29d8ef9547e', 'MxModelReflection.Token_MxObjectType_Start', 'mxmodelreflection$token_mxobjecttype_start', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', 'mxmodelreflection$tokenid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$token_mxobjecttype_start_mxmodelreflection$mxobjecttype_mxmodelreflection$token');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$token_mxobjecttype_start_mxmodelreflection$tokenid', 'cab629f4-ae1c-48c0-a5ee-b29d8ef9547e', '3216b43c-f5ee-3533-be4a-786b6dce6012');
CREATE TABLE "mxmodelreflection$token_mxobjectreference" (
	"mxmodelreflection$tokenid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjectreferenceid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$tokenid","mxmodelreflection$mxobjectreferenceid"),
	CONSTRAINT "uniq_mxmodelreflection$token_mxobjectreference_mxmodelreflection$tokenid" UNIQUE ("mxmodelreflection$tokenid"));
CREATE INDEX "idx_mxmodelreflection$token_mxobjectreference_mxmodelreflection$mxobjectreference_mxmodelreflection$token" ON "mxmodelreflection$token_mxobjectreference" ("mxmodelreflection$mxobjectreferenceid" ASC,"mxmodelreflection$tokenid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('da6617f9-59b8-4568-a73f-92dea60ffee6', 'MxModelReflection.Token_MxObjectReference', 'mxmodelreflection$token_mxobjectreference', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', '1286d18b-2747-476d-9ba9-27a2a0529227', 'mxmodelreflection$tokenid', 'mxmodelreflection$mxobjectreferenceid', 'idx_mxmodelreflection$token_mxobjectreference_mxmodelreflection$mxobjectreference_mxmodelreflection$token');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$token_mxobjectreference_mxmodelreflection$tokenid', 'da6617f9-59b8-4568-a73f-92dea60ffee6', '5ba832ec-caa5-30c2-a66b-255a36312bd6');
CREATE TABLE "mxmodelreflection$token_mxobjecttype_referenced" (
	"mxmodelreflection$tokenid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$tokenid","mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "uniq_mxmodelreflection$token_mxobjecttype_referenced_mxmodelreflection$tokenid" UNIQUE ("mxmodelreflection$tokenid"));
CREATE INDEX "idx_mxmodelreflection$token_mxobjecttype_referenced_mxmodelreflection$mxobjecttype_mxmodelreflection$token" ON "mxmodelreflection$token_mxobjecttype_referenced" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$tokenid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('4712c2a1-5fb9-4f05-aa98-11f97f24f7e0', 'MxModelReflection.Token_MxObjectType_Referenced', 'mxmodelreflection$token_mxobjecttype_referenced', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', 'mxmodelreflection$tokenid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$token_mxobjecttype_referenced_mxmodelreflection$mxobjecttype_mxmodelreflection$token');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$token_mxobjecttype_referenced_mxmodelreflection$tokenid', '4712c2a1-5fb9-4f05-aa98-11f97f24f7e0', '50e30945-03c2-30c4-9df3-72887afcacf7');
CREATE TABLE "mxmodelreflection$token_mxobjectmember" (
	"mxmodelreflection$tokenid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjectmemberid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$tokenid","mxmodelreflection$mxobjectmemberid"),
	CONSTRAINT "uniq_mxmodelreflection$token_mxobjectmember_mxmodelreflection$tokenid" UNIQUE ("mxmodelreflection$tokenid"));
CREATE INDEX "idx_mxmodelreflection$token_mxobjectmember_mxmodelreflection$mxobjectmember_mxmodelreflection$token" ON "mxmodelreflection$token_mxobjectmember" ("mxmodelreflection$mxobjectmemberid" ASC,"mxmodelreflection$tokenid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('b713d694-154e-4953-9dd7-6e7693da0d3d', 'MxModelReflection.Token_MxObjectMember', 'mxmodelreflection$token_mxobjectmember', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', 'a7781bef-d108-4a79-bf4b-d220be34b365', 'mxmodelreflection$tokenid', 'mxmodelreflection$mxobjectmemberid', 'idx_mxmodelreflection$token_mxobjectmember_mxmodelreflection$mxobjectmember_mxmodelreflection$token');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$token_mxobjectmember_mxmodelreflection$tokenid', 'b713d694-154e-4953-9dd7-6e7693da0d3d', '09a0d967-b736-3146-a031-92504bf55b19');
CREATE TABLE "email_connector$pk12certificate_emailaccount" (
	"email_connector$pk12certificateid" BIGINT NOT NULL,
	"email_connector$emailaccountid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$pk12certificateid","email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$pk12certificate_emailaccount_email_connector$emailaccountid" UNIQUE ("email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$pk12certificate_emailaccount_email_connector$pk12certificateid" UNIQUE ("email_connector$pk12certificateid"));
CREATE INDEX "idx_email_connector$pk12certificate_emailaccount_email_connector$emailaccount_email_connector$pk12certificate" ON "email_connector$pk12certificate_emailaccount" ("email_connector$emailaccountid" ASC,"email_connector$pk12certificateid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('133f65eb-d5af-4029-8c4d-0bfa821f35a4', 'Email_Connector.Pk12Certificate_EmailAccount', 'email_connector$pk12certificate_emailaccount', '535e5d97-cc91-44ef-8f5f-169d0657c54a', '21905011-4df2-4119-a3ca-1ecbc4ad9647', 'email_connector$pk12certificateid', 'email_connector$emailaccountid', 'idx_email_connector$pk12certificate_emailaccount_email_connector$emailaccount_email_connector$pk12certificate');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$pk12certificate_emailaccount_email_connector$emailaccountid', '133f65eb-d5af-4029-8c4d-0bfa821f35a4', 'ad98866d-eadd-3b51-be64-992e6bd3852f');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$pk12certificate_emailaccount_email_connector$pk12certificateid', '133f65eb-d5af-4029-8c4d-0bfa821f35a4', '42dcb15d-2e47-3603-8cb7-b0d713a8e68a');
CREATE TABLE "email_connector$emailtemplate_mxobjecttype" (
	"email_connector$emailtemplateid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailtemplateid","mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "uniq_email_connector$emailtemplate_mxobjecttype_email_connector$emailtemplateid" UNIQUE ("email_connector$emailtemplateid"));
CREATE INDEX "idx_email_connector$emailtemplate_mxobjecttype_mxmodelreflection$mxobjecttype_email_connector$emailtemplate" ON "email_connector$emailtemplate_mxobjecttype" ("mxmodelreflection$mxobjecttypeid" ASC,"email_connector$emailtemplateid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('d4416ad8-5eac-4a69-a7ff-cc8f8eecf0bd', 'Email_Connector.EmailTemplate_MxObjectType', 'email_connector$emailtemplate_mxobjecttype', '641cff6b-1218-4e06-b266-e796ea8f18fd', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', 'email_connector$emailtemplateid', 'mxmodelreflection$mxobjecttypeid', 'idx_email_connector$emailtemplate_mxobjecttype_mxmodelreflection$mxobjecttype_email_connector$emailtemplate');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailtemplate_mxobjecttype_email_connector$emailtemplateid', 'd4416ad8-5eac-4a69-a7ff-cc8f8eecf0bd', 'ce129c61-ae58-3497-852f-c7b9d044ba99');
CREATE TABLE "email_connector$emailtemplate_token" (
	"email_connector$emailtemplateid" BIGINT NOT NULL,
	"mxmodelreflection$tokenid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailtemplateid","mxmodelreflection$tokenid"));
CREATE INDEX "idx_email_connector$emailtemplate_token_mxmodelreflection$token_email_connector$emailtemplate" ON "email_connector$emailtemplate_token" ("mxmodelreflection$tokenid" ASC,"email_connector$emailtemplateid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('91f997ee-0a1d-4328-ab6a-205c3486d5a3', 'Email_Connector.EmailTemplate_Token', 'email_connector$emailtemplate_token', '641cff6b-1218-4e06-b266-e796ea8f18fd', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', 'email_connector$emailtemplateid', 'mxmodelreflection$tokenid', 'idx_email_connector$emailtemplate_token_mxmodelreflection$token_email_connector$emailtemplate');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240229 08:48:36';
