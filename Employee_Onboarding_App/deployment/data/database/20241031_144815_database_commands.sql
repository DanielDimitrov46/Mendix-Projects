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
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('c3dfbfc2-2084-468e-95ee-4b3d91dd8a12', 'MxModelReflection.MxObjectReference', 'mxmodelreflection$mxobjectreference', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('5cc15645-19b8-4838-af9a-295bde8e36c9', 'c3dfbfc2-2084-468e-95ee-4b3d91dd8a12', 'CompleteName', 'completename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8fc1614a-eb56-43d7-a45f-11b69757686d', 'c3dfbfc2-2084-468e-95ee-4b3d91dd8a12', 'Module', 'module', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3d79cee7-a96c-45c6-a0ba-49d1338540f1', 'c3dfbfc2-2084-468e-95ee-4b3d91dd8a12', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ed0349f9-1b88-4db2-9647-68680f8b6441', 'c3dfbfc2-2084-468e-95ee-4b3d91dd8a12', 'ReadableName', 'readablename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('1d62b7d9-31c6-488a-825c-5146870747ce', 'c3dfbfc2-2084-468e-95ee-4b3d91dd8a12', 'ReferenceType', 'referencetype', 40, 12, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('4fdac976-d32b-446b-8a7e-230ec3dc7f33', 'c3dfbfc2-2084-468e-95ee-4b3d91dd8a12', 'AssociationOwner', 'associationowner', 40, 8, '_Default', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('4da83c4f-3a5e-448e-9a3f-4e4be881be9c', 'c3dfbfc2-2084-468e-95ee-4b3d91dd8a12', 'ParentEntity', 'parententity', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d96e8485-1dcf-3f9c-ab24-cee8be58d7a1', 'c3dfbfc2-2084-468e-95ee-4b3d91dd8a12', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('5c26e830-418c-3d35-9585-ea61bd7f959f', 'c3dfbfc2-2084-468e-95ee-4b3d91dd8a12', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('4970ec9d-bc53-3e89-b3ff-0be622180950', 'c3dfbfc2-2084-468e-95ee-4b3d91dd8a12', 'idx_mxmodelreflection$mxobjectreference_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('4970ec9d-bc53-3e89-b3ff-0be622180950', 'e08790d9-6c61-3848-b3fc-c89e680639f1', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('e821b894-e26f-39a8-9295-733d233180dd', 'c3dfbfc2-2084-468e-95ee-4b3d91dd8a12', 'idx_mxmodelreflection$mxobjectreference_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('e821b894-e26f-39a8-9295-733d233180dd', '2f884160-dd70-3c89-bb6f-5136e8f239ce', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('e08790d9-6c61-3848-b3fc-c89e680639f1', 'System.owner', 'system$owner', 'c3dfbfc2-2084-468e-95ee-4b3d91dd8a12', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner', 'frn_mxmodelreflection$mxobjectreference_system$owner', 2);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('2f884160-dd70-3c89-bb6f-5136e8f239ce', 'System.changedBy', 'system$changedby', 'c3dfbfc2-2084-468e-95ee-4b3d91dd8a12', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby', 'frn_mxmodelreflection$mxobjectreference_system$changedby', 2);
CREATE TABLE "encryption$pgpcertificate" (
	"id" BIGINT NOT NULL,
	"certificatetype" VARCHAR_IGNORECASE(10) NULL,
	"passphrase_plain" VARCHAR_IGNORECASE(20) NULL,
	"passphrase_encrypted" VARCHAR_IGNORECASE(100) NULL,
	"reference" VARCHAR_IGNORECASE(100) NULL,
	"emailaddress" VARCHAR_IGNORECASE(50) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('b5743322-38f8-4446-918b-4c7eff1a3bbf', 'Encryption.PGPCertificate', 'encryption$pgpcertificate', '170ce49d-f29c-4fac-99a6-b55e8a3aeb39', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d9d9f78b-5383-47af-a6c4-4dfa38fbea0b', 'b5743322-38f8-4446-918b-4c7eff1a3bbf', 'CertificateType', 'certificatetype', 40, 10, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d8da4c64-bc57-43de-87e1-aa0a3e8d97d2', 'b5743322-38f8-4446-918b-4c7eff1a3bbf', 'PassPhrase_Plain', 'passphrase_plain', 30, 20, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3ac2b1b2-e7bc-4a9c-bd63-3b5280f81a6c', 'b5743322-38f8-4446-918b-4c7eff1a3bbf', 'PassPhrase_Encrypted', 'passphrase_encrypted', 30, 100, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3471ac18-1141-4877-9771-b8fbc61065e8', 'b5743322-38f8-4446-918b-4c7eff1a3bbf', 'Reference', 'reference', 30, 100, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ac74fe5c-1187-4062-8436-34f470435304', 'b5743322-38f8-4446-918b-4c7eff1a3bbf', 'EmailAddress', 'emailaddress', 30, 50, '', false);
CREATE TABLE "email_connector$outgoingemailconfiguration" (
	"id" BIGINT NOT NULL,
	"outgoingprotocol" VARCHAR_IGNORECASE(4) NULL,
	"ssl" BOOLEAN NULL,
	"tls" BOOLEAN NULL,
	"sendmaxattempts" INT NULL,
	"serverhost" VARCHAR_IGNORECASE(2147483647) NULL,
	"serverport" INT NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$owner" BIGINT NULL,
	"system$changedby" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_email_connector$outgoingemailconfiguration_system$owner" ON "email_connector$outgoingemailconfiguration" ("system$owner" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$outgoingemailconfiguration_system$changedby" ON "email_connector$outgoingemailconfiguration" ("system$changedby" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('4e49c1f0-e615-4a3d-bc0f-5bcd2972e668', 'Email_Connector.OutgoingEmailConfiguration', 'email_connector$outgoingemailconfiguration', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2355fe64-64de-4cd3-a086-613113304910', '4e49c1f0-e615-4a3d-bc0f-5bcd2972e668', 'OutgoingProtocol', 'outgoingprotocol', 40, 4, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d02b710c-94f3-4ec6-b588-e366ae2c74a0', '4e49c1f0-e615-4a3d-bc0f-5bcd2972e668', 'SSL', 'ssl', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('15f5b845-12c4-452e-8309-869e820eaa47', '4e49c1f0-e615-4a3d-bc0f-5bcd2972e668', 'TLS', 'tls', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('5278d2bd-9516-42ad-9a65-aac21f3f734c', '4e49c1f0-e615-4a3d-bc0f-5bcd2972e668', 'SendMaxAttempts', 'sendmaxattempts', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('46f20d13-fdf8-4a4d-8ac7-230eacdc290c', '4e49c1f0-e615-4a3d-bc0f-5bcd2972e668', 'ServerHost', 'serverhost', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b4ce559d-f404-4625-b133-4837d3237f7c', '4e49c1f0-e615-4a3d-bc0f-5bcd2972e668', 'ServerPort', 'serverport', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f36f8f67-2842-31d4-abce-aa6c79a7005d', '4e49c1f0-e615-4a3d-bc0f-5bcd2972e668', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('37e7547e-9e89-3390-bef5-f17629002430', '4e49c1f0-e615-4a3d-bc0f-5bcd2972e668', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('fbd6fe62-39e2-327e-b2ec-02acc223b2e2', '4e49c1f0-e615-4a3d-bc0f-5bcd2972e668', 'idx_email_connector$outgoingemailconfiguration_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('fbd6fe62-39e2-327e-b2ec-02acc223b2e2', 'e8b4275c-56e6-36b4-963a-3d687a0ed027', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('acdaf6b2-7d6c-35e8-85bd-546a02dca25a', '4e49c1f0-e615-4a3d-bc0f-5bcd2972e668', 'idx_email_connector$outgoingemailconfiguration_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('acdaf6b2-7d6c-35e8-85bd-546a02dca25a', '2828d7bc-0307-3841-a6b1-835d74c00195', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('e8b4275c-56e6-36b4-963a-3d687a0ed027', 'System.owner', 'system$owner', '4e49c1f0-e615-4a3d-bc0f-5bcd2972e668', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner', 'frn_email_connector$outgoingemailconfiguration_system$owner', 2);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('2828d7bc-0307-3841-a6b1-835d74c00195', 'System.changedBy', 'system$changedby', '4e49c1f0-e615-4a3d-bc0f-5bcd2972e668', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby', 'frn_email_connector$outgoingemailconfiguration_system$changedby', 2);
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
	"fromdisplayname" VARCHAR_IGNORECASE(2147483647) NULL,
	"replyto" VARCHAR_IGNORECASE(2147483647) NULL,
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
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('c787ab56-4d50-42e4-bf6c-5260a24753a9', 'Email_Connector.EmailMessage', 'email_connector$emailmessage', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('17eebf0a-9215-4c35-9401-51cf2f286f0f', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'Subject', 'subject', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a2dcf1cf-5d5d-4717-b799-8263fcc37800', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'SentDate', 'sentdate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c2c8c29e-e7e4-4ed4-a30d-53b5e942be31', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'RetrieveDate', 'retrievedate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('566445ff-fd3a-4c44-9b39-33a641c20669', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'From', 'from', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('badc271d-ee63-4f40-853e-100f1e757394', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'To', 'to', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('04aae8fa-fa2d-4903-aa3a-68e956983d98', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'CC', 'cc', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('5d2940b8-ed09-417e-913b-b1cfb319137f', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'BCC', 'bcc', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3cb54bc7-da80-49cd-a6fe-c2d7ed6e07ba', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'Content', 'content', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f2439eb7-7546-4f4a-b74f-a08d67914be3', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'UseOnlyPlainText', 'useonlyplaintext', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3eac10f3-bba8-46c1-afed-96f3887074bb', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'hasAttachments', 'hasattachments', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d7ee495d-bfbf-451b-8732-2b973b6dc72e', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'Size', 'size', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('02532812-b649-479a-987a-f23641c6dd1f', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'FromDisplayName', 'fromdisplayname', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2dcd3dd4-ce70-486a-9e87-cc80423ee524', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'ReplyTo', 'replyto', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('017c8605-8162-4b60-b16b-99d2b90f22dd', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'PlainBody', 'plainbody', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('4c1d890c-33d7-4f01-a960-650e9b533f30', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'QueuedForSending', 'queuedforsending', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b3e51bc9-42cf-4266-9c97-e209314824fb', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'ResendAttempts', 'resendattempts', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6e9b9531-8a1f-4fb5-8668-33b0a40240d9', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'LastSendError', 'lastsenderror', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3a022e2b-2e42-43a3-9c57-68049c33127c', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'LastSendAttemptAt', 'lastsendattemptat', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c16ac8de-223b-410f-a58e-80718d2f5a9d', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'Status', 'status', 40, 8, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('45ec2b96-e5f9-4e2b-9770-6bc45e6ca27b', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'isSigned', 'issigned', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b05a3e6b-60a2-43cb-9a6e-a506db4d58ac', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'isEncrypted', 'isencrypted', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('efe7d12a-9822-4ef9-9ce7-bc6d800cb3b8', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'RecipientsToggle', 'recipientstoggle', 10, 0, 'false', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('530e5af3-84fd-440a-8a5c-4f0ab4b96e22', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'idx_email_connector$emailmessage_queuedforsending_asc_status_asc_lastsendattemptat_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('530e5af3-84fd-440a-8a5c-4f0ab4b96e22', '4c1d890c-33d7-4f01-a960-650e9b533f30', false, 0);
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('530e5af3-84fd-440a-8a5c-4f0ab4b96e22', 'c16ac8de-223b-410f-a58e-80718d2f5a9d', false, 1);
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('530e5af3-84fd-440a-8a5c-4f0ab4b96e22', '3a022e2b-2e42-43a3-9c57-68049c33127c', false, 2);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('17d7c17a-384c-40a6-9f83-c1118fd0e632', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'idx_email_connector$emailmessage_sentdate_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('17d7c17a-384c-40a6-9f83-c1118fd0e632', 'a2dcf1cf-5d5d-4717-b799-8263fcc37800', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('f3844495-6284-4f49-9405-c00cf417e60d', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'idx_email_connector$emailmessage_lastsendattemptat_asc_queuedforsending_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('f3844495-6284-4f49-9405-c00cf417e60d', '3a022e2b-2e42-43a3-9c57-68049c33127c', false, 0);
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('f3844495-6284-4f49-9405-c00cf417e60d', '4c1d890c-33d7-4f01-a960-650e9b533f30', false, 1);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('a63b8f74-48ea-3844-998e-27ee729fba99', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'idx_email_connector$emailmessage_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('a63b8f74-48ea-3844-998e-27ee729fba99', '33d0062e-196f-3c5b-816c-d383af30c14a', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('33d0062e-196f-3c5b-816c-d383af30c14a', 'System.owner', 'system$owner', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner', 'frn_email_connector$emailmessage_system$owner', 2);
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
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('fac1f279-96a2-4618-9da3-e1f718929565', 'MxModelReflection.Microflows', 'mxmodelreflection$microflows', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9437cc87-dcc1-4a0e-be3a-78ad0e946286', 'fac1f279-96a2-4618-9da3-e1f718929565', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2612da34-517a-4a6d-850b-3795c05f5595', 'fac1f279-96a2-4618-9da3-e1f718929565', 'Module', 'module', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('66e1bea6-635c-4f2e-9b79-4a8d4b203147', 'fac1f279-96a2-4618-9da3-e1f718929565', 'CompleteName', 'completename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('1d6f46a0-b7ae-345a-9e69-a90e1d9a7bd5', 'fac1f279-96a2-4618-9da3-e1f718929565', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e75b8d45-6bc4-3a41-a3ba-ca95cbb99498', 'fac1f279-96a2-4618-9da3-e1f718929565', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('74236def-a6fa-3ac5-9b9f-16b7398e91c6', 'fac1f279-96a2-4618-9da3-e1f718929565', 'idx_mxmodelreflection$microflows_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('74236def-a6fa-3ac5-9b9f-16b7398e91c6', 'b111d0c1-3cb4-37ab-8d82-9025f55798fe', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('49866df6-77d0-39ab-a576-4b7bd5d7e43e', 'fac1f279-96a2-4618-9da3-e1f718929565', 'idx_mxmodelreflection$microflows_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('49866df6-77d0-39ab-a576-4b7bd5d7e43e', 'b5402622-b3ba-36bc-9850-f95def58b837', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('b111d0c1-3cb4-37ab-8d82-9025f55798fe', 'System.changedBy', 'system$changedby', 'fac1f279-96a2-4618-9da3-e1f718929565', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby', 'frn_mxmodelreflection$microflows_system$changedby', 2);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('b5402622-b3ba-36bc-9850-f95def58b837', 'System.owner', 'system$owner', 'fac1f279-96a2-4618-9da3-e1f718929565', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner', 'frn_mxmodelreflection$microflows_system$owner', 2);
CREATE TABLE "encryption$exampleconfiguration" (
	"id" BIGINT NOT NULL,
	"title" VARCHAR_IGNORECASE(200) NULL,
	"username" VARCHAR_IGNORECASE(200) NULL,
	"password" VARCHAR_IGNORECASE(200) NULL,
	"createddate" TIMESTAMP NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('1a07ab09-cf9c-4cf5-ae98-c05da79c1270', 'Encryption.ExampleConfiguration', 'encryption$exampleconfiguration', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b1413b39-3c7f-41aa-a427-834c4cfee002', '1a07ab09-cf9c-4cf5-ae98-c05da79c1270', 'Title', 'title', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('5c868e62-4968-4d0c-baa6-955abdc864f6', '1a07ab09-cf9c-4cf5-ae98-c05da79c1270', 'Username', 'username', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d92c38b3-69bd-4530-8ade-96fbba10af78', '1a07ab09-cf9c-4cf5-ae98-c05da79c1270', 'Password', 'password', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('1e52e2da-0ef5-367d-86b7-6d8175aa5fdb', '1a07ab09-cf9c-4cf5-ae98-c05da79c1270', 'createdDate', 'createddate', 20, 0, '', false);
CREATE TABLE "email_connector$emailconnectorlog" (
	"id" BIGINT NOT NULL,
	"created" TIMESTAMP NULL,
	"logtype" VARCHAR_IGNORECASE(7) NULL,
	"errormessage" VARCHAR_IGNORECASE(2147483647) NULL,
	"triggeredinmf" VARCHAR_IGNORECASE(2147483647) NULL,
	"stacktrace" VARCHAR_IGNORECASE(2147483647) NULL,
	"message" VARCHAR_IGNORECASE(2147483647) NULL,
	"isunread" BOOLEAN NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_email_connector$emailconnectorlog_created_asc" ON "email_connector$emailconnectorlog" ("created" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('2b9fa84d-7c90-4099-b68f-372bf57e63c1', 'Email_Connector.EmailConnectorLog', 'email_connector$emailconnectorlog', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d2d31961-fbdd-41e2-8733-dc188f9e8015', '2b9fa84d-7c90-4099-b68f-372bf57e63c1', 'Created', 'created', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('af40ac9e-a35d-4391-b215-8361c1bfb072', '2b9fa84d-7c90-4099-b68f-372bf57e63c1', 'Logtype', 'logtype', 40, 7, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b7668a74-8d63-4439-a477-df057213811d', '2b9fa84d-7c90-4099-b68f-372bf57e63c1', 'ErrorMessage', 'errormessage', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e76e7bca-b65a-4cab-bc53-d1967fc16a24', '2b9fa84d-7c90-4099-b68f-372bf57e63c1', 'TriggeredInMF', 'triggeredinmf', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('77da7581-21c9-400d-ab65-5c4a2fa679bb', '2b9fa84d-7c90-4099-b68f-372bf57e63c1', 'StackTrace', 'stacktrace', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('714a6afb-abdb-43c7-a945-1a14fd4cdbed', '2b9fa84d-7c90-4099-b68f-372bf57e63c1', 'Message', 'message', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('95211d07-2423-4ee5-b069-f2a388560bf4', '2b9fa84d-7c90-4099-b68f-372bf57e63c1', 'IsUnread', 'isunread', 10, 0, 'true', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('f133443d-977f-41f4-87c8-4f78b44d5675', '2b9fa84d-7c90-4099-b68f-372bf57e63c1', 'idx_email_connector$emailconnectorlog_created_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('f133443d-977f-41f4-87c8-4f78b44d5675', 'd2d31961-fbdd-41e2-8733-dc188f9e8015', false, 0);
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
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('8d287716-1fbc-413d-9fe6-e6a8d18eda00', 'MxModelReflection.MxObjectMember', 'mxmodelreflection$mxobjectmember', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a7c6f241-790a-4105-b88c-75ac9f2457c9', '8d287716-1fbc-413d-9fe6-e6a8d18eda00', 'AttributeName', 'attributename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c4b6037e-d95a-47a2-b7e2-bd49a128ba9f', '8d287716-1fbc-413d-9fe6-e6a8d18eda00', 'AttributeType', 'attributetype', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('82f8d7fa-ed82-4602-8b3e-13d3a4275424', '8d287716-1fbc-413d-9fe6-e6a8d18eda00', 'AttributeTypeEnum', 'attributetypeenum', 40, 11, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('268e671d-d685-45c1-be17-16ba52a12771', '8d287716-1fbc-413d-9fe6-e6a8d18eda00', 'CompleteName', 'completename', 30, 400, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b2741a28-fef5-4732-bd10-a673f6941490', '8d287716-1fbc-413d-9fe6-e6a8d18eda00', 'DescriptiveName', 'descriptivename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6e2354a4-bd15-4005-965c-18e875a65b74', '8d287716-1fbc-413d-9fe6-e6a8d18eda00', 'FieldLength', 'fieldlength', 3, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('08040f1d-a837-4fdc-a28e-703aafb2225b', '8d287716-1fbc-413d-9fe6-e6a8d18eda00', 'IsVirtual', 'isvirtual', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('85252499-53f9-33f1-950e-ad7165fec671', '8d287716-1fbc-413d-9fe6-e6a8d18eda00', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('acf3f836-d53d-39c8-85dc-30db820c89de', '8d287716-1fbc-413d-9fe6-e6a8d18eda00', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e6550939-97bc-3f86-b329-2411793aa941', '8d287716-1fbc-413d-9fe6-e6a8d18eda00', 'submetaobjectname', 'submetaobjectname', 30, 255, 'MxModelReflection.MxObjectMember', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('1d8a9286-38c4-30f8-a2c6-c1a2e441d223', '8d287716-1fbc-413d-9fe6-e6a8d18eda00', 'idx_mxmodelreflection$mxobjectmember_submetaobjectname_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('1d8a9286-38c4-30f8-a2c6-c1a2e441d223', 'e6550939-97bc-3f86-b329-2411793aa941', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('dd6c2b68-5033-3271-b2da-81bb20e87b6f', '8d287716-1fbc-413d-9fe6-e6a8d18eda00', 'idx_mxmodelreflection$mxobjectmember_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('dd6c2b68-5033-3271-b2da-81bb20e87b6f', 'c1166c6a-5360-32ca-8853-bb1b59cccdf8', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('fbd43cc3-4eda-3999-9422-1a4aa88a3cd1', '8d287716-1fbc-413d-9fe6-e6a8d18eda00', 'idx_mxmodelreflection$mxobjectmember_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('fbd43cc3-4eda-3999-9422-1a4aa88a3cd1', '502dee11-752c-3e19-8b36-61f6211cfdc4', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('c1166c6a-5360-32ca-8853-bb1b59cccdf8', 'System.changedBy', 'system$changedby', '8d287716-1fbc-413d-9fe6-e6a8d18eda00', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby', 'frn_mxmodelreflection$mxobjectmember_system$changedby', 2);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('502dee11-752c-3e19-8b36-61f6211cfdc4', 'System.owner', 'system$owner', '8d287716-1fbc-413d-9fe6-e6a8d18eda00', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner', 'frn_mxmodelreflection$mxobjectmember_system$owner', 2);
CREATE TABLE "email_connector$oauthtoken" (
	"id" BIGINT NOT NULL,
	"token_type" VARCHAR_IGNORECASE(2147483647) NULL,
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
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('2e9c3eea-352a-41bb-8fed-0154ca51ea3e', 'Email_Connector.OAuthToken', 'email_connector$oauthtoken', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8bd6f88a-3b54-416d-bd9f-76fe5e0ce658', '2e9c3eea-352a-41bb-8fed-0154ca51ea3e', 'token_type', 'token_type', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f29b38f6-83b9-4480-8183-d8a7e0d8c082', '2e9c3eea-352a-41bb-8fed-0154ca51ea3e', 'scope', 'scope', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a86c0b3b-3cc9-467d-aab8-33e6b3dd3b54', '2e9c3eea-352a-41bb-8fed-0154ca51ea3e', 'expires_in', 'expires_in', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('08e47c2e-b164-4457-8e6f-9c8506ab7ce3', '2e9c3eea-352a-41bb-8fed-0154ca51ea3e', 'access_token', 'access_token', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('cbbfe26b-752c-4cc2-a9c3-90ea17e368cd', '2e9c3eea-352a-41bb-8fed-0154ca51ea3e', 'refresh_token', 'refresh_token', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e9c10abe-ad81-4ce9-9821-03420ce9751a', '2e9c3eea-352a-41bb-8fed-0154ca51ea3e', 'id_token', 'id_token', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('46145066-0b05-3cad-806a-43bb956860d4', '2e9c3eea-352a-41bb-8fed-0154ca51ea3e', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('be984e05-4718-3dc1-907a-c4f223e2e03c', '2e9c3eea-352a-41bb-8fed-0154ca51ea3e', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('70378a2e-d203-33a6-9043-63dc9329c7e7', '2e9c3eea-352a-41bb-8fed-0154ca51ea3e', 'idx_email_connector$oauthtoken_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('70378a2e-d203-33a6-9043-63dc9329c7e7', 'e63b92be-4078-385a-a8cf-45882313064f', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('150fcaea-1973-3c9f-93ac-6dfc5b0bb520', '2e9c3eea-352a-41bb-8fed-0154ca51ea3e', 'idx_email_connector$oauthtoken_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('150fcaea-1973-3c9f-93ac-6dfc5b0bb520', '4651f85d-f9e8-36c9-8283-c59fabf52948', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('e63b92be-4078-385a-a8cf-45882313064f', 'System.owner', 'system$owner', '2e9c3eea-352a-41bb-8fed-0154ca51ea3e', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner', 'frn_email_connector$oauthtoken_system$owner', 2);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('4651f85d-f9e8-36c9-8283-c59fabf52948', 'System.changedBy', 'system$changedby', '2e9c3eea-352a-41bb-8fed-0154ca51ea3e', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby', 'frn_email_connector$oauthtoken_system$changedby', 2);
CREATE TABLE "email_connector$emailheader" (
	"id" BIGINT NOT NULL,
	"key" VARCHAR_IGNORECASE(2147483647) NULL,
	"value" VARCHAR_IGNORECASE(2147483647) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('6946269c-318b-4118-ad57-1d03eced663a', 'Email_Connector.EmailHeader', 'email_connector$emailheader', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e7272438-b534-4a74-929d-b39455f53e8d', '6946269c-318b-4118-ad57-1d03eced663a', 'Key', 'key', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b8e3bbe3-a338-4e26-af36-3bfb219e436d', '6946269c-318b-4118-ad57-1d03eced663a', 'Value', 'value', 30, 0, '', false);
CREATE TABLE "email_connector$incomingemailconfiguration" (
	"id" BIGINT NOT NULL,
	"incomingprotocol" VARCHAR_IGNORECASE(5) NULL,
	"folder" VARCHAR_IGNORECASE(2147483647) NULL,
	"usebatchimport" BOOLEAN NULL,
	"batchsize" INT NULL,
	"handling" VARCHAR_IGNORECASE(13) NULL,
	"movefolder" VARCHAR_IGNORECASE(2147483647) NULL,
	"processinlineimage" BOOLEAN NULL,
	"fetchstrategy" VARCHAR_IGNORECASE(6) NULL,
	"notifyonnewemails" BOOLEAN NULL,
	"serverhost" VARCHAR_IGNORECASE(2147483647) NULL,
	"serverport" INT NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$owner" BIGINT NULL,
	"system$changedby" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_email_connector$incomingemailconfiguration_system$owner" ON "email_connector$incomingemailconfiguration" ("system$owner" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$incomingemailconfiguration_system$changedby" ON "email_connector$incomingemailconfiguration" ("system$changedby" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('e613d8ef-bcaf-4920-8d3b-af1d45012d41', 'Email_Connector.IncomingEmailConfiguration', 'email_connector$incomingemailconfiguration', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('dfccc2ef-1937-46d3-b662-9e14af54ac66', 'e613d8ef-bcaf-4920-8d3b-af1d45012d41', 'IncomingProtocol', 'incomingprotocol', 40, 5, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0eb9b394-c2c1-4213-958d-78f2d6ec5e87', 'e613d8ef-bcaf-4920-8d3b-af1d45012d41', 'Folder', 'folder', 30, 0, 'INBOX', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('85bd86bf-4f8f-4d82-ac4a-0bf37583f1ed', 'e613d8ef-bcaf-4920-8d3b-af1d45012d41', 'UseBatchImport', 'usebatchimport', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e74e7a77-d117-4078-aa12-b68ad89009e3', 'e613d8ef-bcaf-4920-8d3b-af1d45012d41', 'BatchSize', 'batchsize', 3, 0, '50', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('17f190f1-1ba9-4a7c-ae47-f7c96c0ba331', 'e613d8ef-bcaf-4920-8d3b-af1d45012d41', 'Handling', 'handling', 40, 13, 'NoHandling', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('80d8df32-1f5c-4a39-9899-d1acc3f254b2', 'e613d8ef-bcaf-4920-8d3b-af1d45012d41', 'MoveFolder', 'movefolder', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('df9ed717-02a7-43ad-a421-0649dc50f400', 'e613d8ef-bcaf-4920-8d3b-af1d45012d41', 'ProcessInlineImage', 'processinlineimage', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e1e5c84b-bd7e-4fb4-81fb-64f4c3175bf5', 'e613d8ef-bcaf-4920-8d3b-af1d45012d41', 'FetchStrategy', 'fetchstrategy', 40, 6, 'Latest', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('522f8cbb-6f32-4ba6-878b-f74c5df4a585', 'e613d8ef-bcaf-4920-8d3b-af1d45012d41', 'NotifyOnNewEmails', 'notifyonnewemails', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('eab459f7-fdf5-4df2-82fe-b72a4d6cbe55', 'e613d8ef-bcaf-4920-8d3b-af1d45012d41', 'ServerHost', 'serverhost', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('5de16389-dc80-4f82-9332-9a46726998dc', 'e613d8ef-bcaf-4920-8d3b-af1d45012d41', 'ServerPort', 'serverport', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ad8cac33-5b74-3123-82e9-0551d6156ab4', 'e613d8ef-bcaf-4920-8d3b-af1d45012d41', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8846610e-3f62-38b1-bdc8-f8183c189165', 'e613d8ef-bcaf-4920-8d3b-af1d45012d41', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('40e509e3-2e9f-3990-91c1-346edbc2990d', 'e613d8ef-bcaf-4920-8d3b-af1d45012d41', 'idx_email_connector$incomingemailconfiguration_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('40e509e3-2e9f-3990-91c1-346edbc2990d', 'd5f4325e-bacb-3e0b-9b82-81e3028e9e38', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('7df5b526-398c-37e8-8e7d-1d3b9f7c2b0b', 'e613d8ef-bcaf-4920-8d3b-af1d45012d41', 'idx_email_connector$incomingemailconfiguration_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('7df5b526-398c-37e8-8e7d-1d3b9f7c2b0b', '5c678b4e-e1db-3f30-9540-5e2e88035564', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('d5f4325e-bacb-3e0b-9b82-81e3028e9e38', 'System.owner', 'system$owner', 'e613d8ef-bcaf-4920-8d3b-af1d45012d41', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner', 'frn_email_connector$incomingemailconfiguration_system$owner', 2);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('5c678b4e-e1db-3f30-9540-5e2e88035564', 'System.changedBy', 'system$changedby', 'e613d8ef-bcaf-4920-8d3b-af1d45012d41', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby', 'frn_email_connector$incomingemailconfiguration_system$changedby', 2);
CREATE TABLE "email_connector$attachment" (
	"id" BIGINT NOT NULL,
	"contentid" VARCHAR_IGNORECASE(2147483647) NULL,
	"attachmentname" VARCHAR_IGNORECASE(2147483647) NULL,
	"attachmentsize" INT NULL,
	"attachmentcontenttype" VARCHAR_IGNORECASE(2147483647) NULL,
	"position" VARCHAR_IGNORECASE(10) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('aa202002-b18a-40b8-ab38-109afd5ec688', 'Email_Connector.Attachment', 'email_connector$attachment', '170ce49d-f29c-4fac-99a6-b55e8a3aeb39', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('69fa9fda-f012-4b55-b978-51d5c97153f6', 'aa202002-b18a-40b8-ab38-109afd5ec688', 'ContentID', 'contentid', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('18bb0682-8ef0-42e9-b2ac-f4be6ada58c9', 'aa202002-b18a-40b8-ab38-109afd5ec688', 'attachmentName', 'attachmentname', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('088ec870-57b9-489f-abb4-c2d341a8e7b0', 'aa202002-b18a-40b8-ab38-109afd5ec688', 'attachmentSize', 'attachmentsize', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b26088a0-51ab-42bc-80ae-911c5d9c8a62', 'aa202002-b18a-40b8-ab38-109afd5ec688', 'attachmentContentType', 'attachmentcontenttype', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('cb1f9186-34c2-4b0e-8474-a9e04f5db02b', 'aa202002-b18a-40b8-ab38-109afd5ec688', 'Position', 'position', 40, 10, '', false);
CREATE TABLE "email_connector$ldapconfiguration" (
	"id" BIGINT NOT NULL,
	"ldaphost" VARCHAR_IGNORECASE(2147483647) NULL,
	"ldapport" INT NULL,
	"ldapusername" VARCHAR_IGNORECASE(2147483647) NULL,
	"ldappassword" VARCHAR_IGNORECASE(2147483647) NULL,
	"isssl" BOOLEAN NULL,
	"basedn" VARCHAR_IGNORECASE(2147483647) NULL,
	"authtype" VARCHAR_IGNORECASE(6) NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$owner" BIGINT NULL,
	"system$changedby" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_email_connector$ldapconfiguration_system$owner" ON "email_connector$ldapconfiguration" ("system$owner" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$ldapconfiguration_system$changedby" ON "email_connector$ldapconfiguration" ("system$changedby" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('fd79ce52-beef-4c1b-abb4-d2ad190703c4', 'Email_Connector.LDAPConfiguration', 'email_connector$ldapconfiguration', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('70818235-ce87-49ec-b935-9df9c0d47cfa', 'fd79ce52-beef-4c1b-abb4-d2ad190703c4', 'LDAPHost', 'ldaphost', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c4b696ea-6f7f-42ff-b95f-2bcb63146090', 'fd79ce52-beef-4c1b-abb4-d2ad190703c4', 'LDAPPort', 'ldapport', 3, 0, '389', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('49ae9502-1304-4726-a7e5-e59e8d53680a', 'fd79ce52-beef-4c1b-abb4-d2ad190703c4', 'LDAPUsername', 'ldapusername', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9e0a6b04-76a4-4eaf-a362-5b8e4dcebf7a', 'fd79ce52-beef-4c1b-abb4-d2ad190703c4', 'LDAPPassword', 'ldappassword', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('569dfe5c-1fb4-4871-a4a3-40481ce1fc5c', 'fd79ce52-beef-4c1b-abb4-d2ad190703c4', 'isSSL', 'isssl', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0df7b60d-5229-49d5-84de-07ee245e83a7', 'fd79ce52-beef-4c1b-abb4-d2ad190703c4', 'BaseDN', 'basedn', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('cb4ed195-0224-4d88-8bf0-1af6f836ecc2', 'fd79ce52-beef-4c1b-abb4-d2ad190703c4', 'AuthType', 'authtype', 40, 6, 'none', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e4eaae3f-fd9f-3dfb-a717-e646b744dbef', 'fd79ce52-beef-4c1b-abb4-d2ad190703c4', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c1ba40f4-d08b-30e6-ab55-c6e270357927', 'fd79ce52-beef-4c1b-abb4-d2ad190703c4', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('d529ed5a-b80a-3e93-93fa-dfc9c65d5d97', 'fd79ce52-beef-4c1b-abb4-d2ad190703c4', 'idx_email_connector$ldapconfiguration_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('d529ed5a-b80a-3e93-93fa-dfc9c65d5d97', 'b39888d2-df10-3793-9aa4-4d943336ade6', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('210f0726-e4a0-3dbc-8c35-e4e73fa074a5', 'fd79ce52-beef-4c1b-abb4-d2ad190703c4', 'idx_email_connector$ldapconfiguration_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('210f0726-e4a0-3dbc-8c35-e4e73fa074a5', '2f7738ce-ed0a-3ebd-8f98-cb9b80bc0fa4', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('b39888d2-df10-3793-9aa4-4d943336ade6', 'System.owner', 'system$owner', 'fd79ce52-beef-4c1b-abb4-d2ad190703c4', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner', 'frn_email_connector$ldapconfiguration_system$owner', 2);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('2f7738ce-ed0a-3ebd-8f98-cb9b80bc0fa4', 'System.changedBy', 'system$changedby', 'fd79ce52-beef-4c1b-abb4-d2ad190703c4', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby', 'frn_email_connector$ldapconfiguration_system$changedby', 2);
CREATE TABLE "email_connector$emailaccount" (
	"id" BIGINT NOT NULL,
	"username" VARCHAR_IGNORECASE(2147483647) NULL,
	"mailaddress" VARCHAR_IGNORECASE(2147483647) NULL,
	"password" VARCHAR_IGNORECASE(2147483647) NULL,
	"timeout" INT NULL,
	"sanitizeemailbodyforxssscript" BOOLEAN NULL,
	"isp12configured" BOOLEAN NULL,
	"isldapconfigured" BOOLEAN NULL,
	"isincomingemailconfigured" BOOLEAN NULL,
	"isoutgoingemailconfigured" BOOLEAN NULL,
	"fromdisplayname" VARCHAR_IGNORECASE(2147483647) NULL,
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
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('c1712745-65db-456a-b4c1-783409406870', 'Email_Connector.EmailAccount', 'email_connector$emailaccount', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('95403c3d-8949-4a5e-a3c6-04d62010c0a9', 'c1712745-65db-456a-b4c1-783409406870', 'Username', 'username', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6dde87cc-6ef9-43bc-801d-1b2b23e6bed7', 'c1712745-65db-456a-b4c1-783409406870', 'MailAddress', 'mailaddress', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('5452d41b-7682-48e1-a163-b90902c0fae4', 'c1712745-65db-456a-b4c1-783409406870', 'Password', 'password', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2b53f2d3-f7db-4a49-96e7-e46201fc6560', 'c1712745-65db-456a-b4c1-783409406870', 'Timeout', 'timeout', 3, 0, '20000', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('70755f9f-efb8-4ac5-9c7c-b0f033c435b1', 'c1712745-65db-456a-b4c1-783409406870', 'sanitizeEmailBodyForXSSScript', 'sanitizeemailbodyforxssscript', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('eeaf9148-0fc3-47c9-b215-ea18e0c5836b', 'c1712745-65db-456a-b4c1-783409406870', 'isP12Configured', 'isp12configured', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('bb669a33-5b83-4620-b66b-e528bf65b930', 'c1712745-65db-456a-b4c1-783409406870', 'isLDAPConfigured', 'isldapconfigured', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('55ba7b55-578e-4b05-b0e0-93f81307d38e', 'c1712745-65db-456a-b4c1-783409406870', 'isIncomingEmailConfigured', 'isincomingemailconfigured', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a3057613-ad85-4b08-88a7-97f4fbdcf1ae', 'c1712745-65db-456a-b4c1-783409406870', 'isOutgoingEmailConfigured', 'isoutgoingemailconfigured', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7ec45d53-740f-4027-8c12-56f71fca2d29', 'c1712745-65db-456a-b4c1-783409406870', 'FromDisplayName', 'fromdisplayname', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('4ee0f568-8e09-498c-b6ab-0242d0574750', 'c1712745-65db-456a-b4c1-783409406870', 'UseSSLCheckServerIdentity', 'usesslcheckserveridentity', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2b1d9da3-a157-4f34-b53d-c5721184f9fd', 'c1712745-65db-456a-b4c1-783409406870', 'IsSharedMailbox', 'issharedmailbox', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('558e46a9-96f1-4388-adfb-e80121e237fc', 'c1712745-65db-456a-b4c1-783409406870', 'isOAuthUsed', 'isoauthused', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('fd79b89f-43c6-464d-91ef-7c42a11f94b2', 'c1712745-65db-456a-b4c1-783409406870', 'isEmailConfigAutoDetect', 'isemailconfigautodetect', 10, 0, 'true', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('1fe76f6d-6af0-4acc-b2da-42f22c865b3b', 'c1712745-65db-456a-b4c1-783409406870', 'ComposeEmail', 'composeemail', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('4274f8ea-9557-3cca-9deb-4559a563e4a1', 'c1712745-65db-456a-b4c1-783409406870', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('58d63578-361d-30a1-9663-442e37675220', 'c1712745-65db-456a-b4c1-783409406870', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('f09bf975-2ce8-3fd2-8ea9-f9860c4c8dd6', 'c1712745-65db-456a-b4c1-783409406870', 'idx_email_connector$emailaccount_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('f09bf975-2ce8-3fd2-8ea9-f9860c4c8dd6', '6516d7a1-7a19-3e9c-b3c9-f694087bf165', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('bae4b729-3a16-3762-ab22-2d93df004fa6', 'c1712745-65db-456a-b4c1-783409406870', 'idx_email_connector$emailaccount_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('bae4b729-3a16-3762-ab22-2d93df004fa6', '45c53270-8561-3d7f-be5c-c546eba7b435', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('6516d7a1-7a19-3e9c-b3c9-f694087bf165', 'System.owner', 'system$owner', 'c1712745-65db-456a-b4c1-783409406870', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner', 'frn_email_connector$emailaccount_system$owner', 2);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('45c53270-8561-3d7f-be5c-c546eba7b435', 'System.changedBy', 'system$changedby', 'c1712745-65db-456a-b4c1-783409406870', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby', 'frn_email_connector$emailaccount_system$changedby', 2);
CREATE TABLE "email_connector$scopeselected" (
	"id" BIGINT NOT NULL,
	"scopestring" VARCHAR_IGNORECASE(2147483647) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('a3962be5-cd0e-4717-b408-7eaf10364e97', 'Email_Connector.ScopeSelected', 'email_connector$scopeselected', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8a586978-b418-46be-b5de-948748a5e97f', 'a3962be5-cd0e-4717-b408-7eaf10364e97', 'ScopeString', 'scopestring', 30, 0, '', false);
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
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('51bad690-5319-47b7-9cd2-e14cc4aaa1e7', 'MxModelReflection.MxObjectType', 'mxmodelreflection$mxobjecttype', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2de4bd57-eeb4-4ca7-888a-a0a371b6bb1f', '51bad690-5319-47b7-9cd2-e14cc4aaa1e7', 'CompleteName', 'completename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e90c9b31-cbf1-4726-9264-701a348e7502', '51bad690-5319-47b7-9cd2-e14cc4aaa1e7', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('82c92484-5587-46f4-8bba-3d2158ca31a2', '51bad690-5319-47b7-9cd2-e14cc4aaa1e7', 'Module', 'module', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2bb608d2-5901-459f-bbea-f4bf52910644', '51bad690-5319-47b7-9cd2-e14cc4aaa1e7', 'ReadableName', 'readablename', 30, 400, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f6f5d41d-8fc0-44f6-b3bb-3abd7bd3dfb2', '51bad690-5319-47b7-9cd2-e14cc4aaa1e7', 'PersistenceType', 'persistencetype', 40, 14, 'Persistable', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3bcb8ddb-eefd-357d-b27d-c3b562b5c680', '51bad690-5319-47b7-9cd2-e14cc4aaa1e7', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('018c7be4-15d9-3340-9efe-71bb1ecdf7d8', '51bad690-5319-47b7-9cd2-e14cc4aaa1e7', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('cb363424-ab31-317e-8581-22b258223bf5', '51bad690-5319-47b7-9cd2-e14cc4aaa1e7', 'idx_mxmodelreflection$mxobjecttype_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('cb363424-ab31-317e-8581-22b258223bf5', 'aa51b9d6-6c64-3063-b266-74359685a5d1', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('a2d9217f-faad-3f36-abab-7119439008c1', '51bad690-5319-47b7-9cd2-e14cc4aaa1e7', 'idx_mxmodelreflection$mxobjecttype_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('a2d9217f-faad-3f36-abab-7119439008c1', '3e4c7c28-882d-3050-a1ac-883db3f8a2d6', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('aa51b9d6-6c64-3063-b266-74359685a5d1', 'System.owner', 'system$owner', '51bad690-5319-47b7-9cd2-e14cc4aaa1e7', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner', 'frn_mxmodelreflection$mxobjecttype_system$owner', 2);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('3e4c7c28-882d-3050-a1ac-883db3f8a2d6', 'System.changedBy', 'system$changedby', '51bad690-5319-47b7-9cd2-e14cc4aaa1e7', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby', 'frn_mxmodelreflection$mxobjecttype_system$changedby', 2);
CREATE TABLE "email_connector$oauthnonce" (
	"id" BIGINT NOT NULL,
	"state" VARCHAR_IGNORECASE(2147483647) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('e2318a2c-8906-4996-bf6b-54a65d96cc59', 'Email_Connector.OAuthNonce', 'email_connector$oauthnonce', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('49ea12f9-d3de-42a0-8fc2-65d29ba9576f', 'e2318a2c-8906-4996-bf6b-54a65d96cc59', 'State', 'state', 30, 0, '', false);
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
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('436d68cf-8cc8-4969-94c5-952607361022', 'MxModelReflection.ValueType', 'mxmodelreflection$valuetype', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('4dda531d-75c1-47bf-940f-e0a5ee7b5d76', '436d68cf-8cc8-4969-94c5-952607361022', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('51c6a8a3-9149-450e-b262-afc67a7a68de', '436d68cf-8cc8-4969-94c5-952607361022', 'TypeEnum', 'typeenum', 40, 11, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6a05b793-c241-3860-bd7a-9ae369521b4e', '436d68cf-8cc8-4969-94c5-952607361022', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f89ee406-d138-3981-a615-93dfd2318d9d', '436d68cf-8cc8-4969-94c5-952607361022', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('dd744091-0bbb-3bde-8eb4-aa663a9c02bd', '436d68cf-8cc8-4969-94c5-952607361022', 'idx_mxmodelreflection$valuetype_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('dd744091-0bbb-3bde-8eb4-aa663a9c02bd', '727a0489-4d72-3c2f-9f45-cb770639f40a', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('40d1b277-4cc2-3b31-b9b2-91222eda0cd3', '436d68cf-8cc8-4969-94c5-952607361022', 'idx_mxmodelreflection$valuetype_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('40d1b277-4cc2-3b31-b9b2-91222eda0cd3', '25140fe9-151d-3fe7-866e-db1d61c9d462', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('727a0489-4d72-3c2f-9f45-cb770639f40a', 'System.changedBy', 'system$changedby', '436d68cf-8cc8-4969-94c5-952607361022', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby', 'frn_mxmodelreflection$valuetype_system$changedby', 2);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('25140fe9-151d-3fe7-866e-db1d61c9d462', 'System.owner', 'system$owner', '436d68cf-8cc8-4969-94c5-952607361022', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner', 'frn_mxmodelreflection$valuetype_system$owner', 2);
CREATE TABLE "email_connector$querystring" (
	"id" BIGINT NOT NULL,
	"param" VARCHAR_IGNORECASE(2147483647) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('e58cfcee-86a3-44a4-add1-7ceb11749e91', 'Email_Connector.QueryString', 'email_connector$querystring', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('050fc584-505b-44a2-91fc-5080308df22e', 'e58cfcee-86a3-44a4-add1-7ceb11749e91', 'Param', 'param', 30, 0, '', false);
CREATE TABLE "mxmodelreflection$mxobjectenum" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('717e7446-68c4-4235-bf4b-f7f8dfbdfaaa', 'MxModelReflection.MxObjectEnum', 'mxmodelreflection$mxobjectenum', '8d287716-1fbc-413d-9fe6-e6a8d18eda00', false, false);
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
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('188e55a6-90ba-4a8f-9b93-3d4eb8e31943', 'MxModelReflection.MxObjectEnumValue', 'mxmodelreflection$mxobjectenumvalue', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('465eb099-e36b-497c-99ee-b92579672459', '188e55a6-90ba-4a8f-9b93-3d4eb8e31943', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d9b36d47-5435-37c8-8608-8a2c637cda7c', '188e55a6-90ba-4a8f-9b93-3d4eb8e31943', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('900d36d9-3c27-3def-93e0-c65c3dacf92f', '188e55a6-90ba-4a8f-9b93-3d4eb8e31943', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('f58cb08d-d0ab-3c01-802f-d517a2b27e6b', '188e55a6-90ba-4a8f-9b93-3d4eb8e31943', 'idx_mxmodelreflection$mxobjectenumvalue_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('f58cb08d-d0ab-3c01-802f-d517a2b27e6b', 'c1b05084-f0e4-3557-a86b-87ad01149710', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('a4626e84-0f5f-3eb3-b83b-9dbb51e9fc89', '188e55a6-90ba-4a8f-9b93-3d4eb8e31943', 'idx_mxmodelreflection$mxobjectenumvalue_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('a4626e84-0f5f-3eb3-b83b-9dbb51e9fc89', '2c8cfad7-5d3d-3107-b542-56a035bafbba', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('c1b05084-f0e4-3557-a86b-87ad01149710', 'System.owner', 'system$owner', '188e55a6-90ba-4a8f-9b93-3d4eb8e31943', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner', 'frn_mxmodelreflection$mxobjectenumvalue_system$owner', 2);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('2c8cfad7-5d3d-3107-b542-56a035bafbba', 'System.changedBy', 'system$changedby', '188e55a6-90ba-4a8f-9b93-3d4eb8e31943', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby', 'frn_mxmodelreflection$mxobjectenumvalue_system$changedby', 2);
CREATE TABLE "mxmodelreflection$dbsizeestimate" (
	"id" BIGINT NOT NULL,
	"nrofrecords" INT NULL,
	"calculatedsizeinbytes" BIGINT NULL,
	"calculatedsizeinkilobytes" BIGINT NULL,
	"findobjecttype" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('667d5ba1-bd73-42cd-b9aa-3fc56d7ee76e', 'MxModelReflection.DbSizeEstimate', 'mxmodelreflection$dbsizeestimate', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0269e36c-cf9e-4ed7-950e-87fe07057cc3', '667d5ba1-bd73-42cd-b9aa-3fc56d7ee76e', 'NrOfRecords', 'nrofrecords', 3, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('59cf5426-a97f-4839-a8d6-e183cd2dd549', '667d5ba1-bd73-42cd-b9aa-3fc56d7ee76e', 'CalculatedSizeInBytes', 'calculatedsizeinbytes', 4, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c2616be0-c81f-4804-9eb8-bd7d74bef633', '667d5ba1-bd73-42cd-b9aa-3fc56d7ee76e', 'CalculatedSizeInKiloBytes', 'calculatedsizeinkilobytes', 4, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('24042018-a69a-404a-9dbd-5d03f7e4a6e7', '667d5ba1-bd73-42cd-b9aa-3fc56d7ee76e', 'FindObjectType', 'findobjecttype', 30, 200, '', false);
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
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('077b887d-7976-41e9-b6e0-3ebefddcd05b', 'MxModelReflection.Parameter', 'mxmodelreflection$parameter', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('380eaf0a-ebd8-47f9-af68-331e787d6790', '077b887d-7976-41e9-b6e0-3ebefddcd05b', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8d08d09c-5bfa-35eb-a875-c2bdf817b8e4', '077b887d-7976-41e9-b6e0-3ebefddcd05b', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('56004e67-78d3-3213-981d-0bcdf76259b2', '077b887d-7976-41e9-b6e0-3ebefddcd05b', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('1af9a88e-340d-3299-88c7-06e49f5fcf7d', '077b887d-7976-41e9-b6e0-3ebefddcd05b', 'idx_mxmodelreflection$parameter_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('1af9a88e-340d-3299-88c7-06e49f5fcf7d', '6dd4a4a5-5e5f-3bfa-a97a-c9ab086d1afb', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('4ef2a269-ca13-308a-9d0a-42eabc1412c7', '077b887d-7976-41e9-b6e0-3ebefddcd05b', 'idx_mxmodelreflection$parameter_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('4ef2a269-ca13-308a-9d0a-42eabc1412c7', 'ab83bfc6-3715-39f6-b610-1b64ebcd567c', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('6dd4a4a5-5e5f-3bfa-a97a-c9ab086d1afb', 'System.changedBy', 'system$changedby', '077b887d-7976-41e9-b6e0-3ebefddcd05b', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby', 'frn_mxmodelreflection$parameter_system$changedby', 2);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('ab83bfc6-3715-39f6-b610-1b64ebcd567c', 'System.owner', 'system$owner', '077b887d-7976-41e9-b6e0-3ebefddcd05b', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner', 'frn_mxmodelreflection$parameter_system$owner', 2);
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
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('8333919a-d46a-4aca-9a4d-8aad39c6430e', 'MxModelReflection.Token', 'mxmodelreflection$token', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a2f2aa9b-692e-42db-9b00-938fcfc8bb16', '8333919a-d46a-4aca-9a4d-8aad39c6430e', 'Token', 'token', 30, 50, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('edbe75dc-8c61-4025-842a-1587349f5ab0', '8333919a-d46a-4aca-9a4d-8aad39c6430e', 'Prefix', 'prefix', 30, 3, '{%', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c8824528-addd-4057-a169-d49f47b1ec4d', '8333919a-d46a-4aca-9a4d-8aad39c6430e', 'Suffix', 'suffix', 30, 3, '%}', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('62f82525-8181-42a3-868a-1ccff139cf1f', '8333919a-d46a-4aca-9a4d-8aad39c6430e', 'CombinedToken', 'combinedtoken', 30, 56, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('cd7c7420-e40b-44b7-af44-4ab1790b4f62', '8333919a-d46a-4aca-9a4d-8aad39c6430e', 'Description', 'description', 30, 300, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('14ef234e-9700-466a-8284-f39ddf93e826', '8333919a-d46a-4aca-9a4d-8aad39c6430e', 'MetaModelPath', 'metamodelpath', 30, 1000, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e03718c5-e6fd-49f6-a2f6-323bee56bb4e', '8333919a-d46a-4aca-9a4d-8aad39c6430e', 'TokenType', 'tokentype', 40, 9, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('55a30c8f-48de-4240-8b71-843c2c0d77b2', '8333919a-d46a-4aca-9a4d-8aad39c6430e', 'Status', 'status', 40, 7, 'Invalid', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('cad3a66b-bd22-4fd7-8f60-eac4e4b664a9', '8333919a-d46a-4aca-9a4d-8aad39c6430e', 'FindObjectStart', 'findobjectstart', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d27176f5-e0dc-48ab-814c-c69f9d21ce4e', '8333919a-d46a-4aca-9a4d-8aad39c6430e', 'FindObjectReference', 'findobjectreference', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c9387760-df2e-434d-9be9-e3d0d236bd15', '8333919a-d46a-4aca-9a4d-8aad39c6430e', 'FindReference', 'findreference', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('69f60d31-d096-4b5e-938d-5e8c366d3869', '8333919a-d46a-4aca-9a4d-8aad39c6430e', 'FindMember', 'findmember', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('feb575df-0328-46f2-92fa-200109ff16b7', '8333919a-d46a-4aca-9a4d-8aad39c6430e', 'FindMemberReference', 'findmemberreference', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('64db9f77-de32-41e6-a41b-3646cf4570a3', '8333919a-d46a-4aca-9a4d-8aad39c6430e', 'IsOptional', 'isoptional', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0c23ee1c-5365-4fe6-8cea-59b876cddb2f', '8333919a-d46a-4aca-9a4d-8aad39c6430e', 'DisplayPattern', 'displaypattern', 30, 50, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('747d22ec-c068-3733-855d-012af72e3769', '8333919a-d46a-4aca-9a4d-8aad39c6430e', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('305768e5-b1d7-38f7-8282-51e11538049d', '8333919a-d46a-4aca-9a4d-8aad39c6430e', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('9630d113-14f5-43b4-8983-6f02f7169fd3', '8333919a-d46a-4aca-9a4d-8aad39c6430e', 'idx_mxmodelreflection$token_combinedtoken_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('9630d113-14f5-43b4-8983-6f02f7169fd3', '62f82525-8181-42a3-868a-1ccff139cf1f', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('f820a215-83fa-39d6-a0a7-724bd14be577', '8333919a-d46a-4aca-9a4d-8aad39c6430e', 'idx_mxmodelreflection$token_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('f820a215-83fa-39d6-a0a7-724bd14be577', 'fe097223-10eb-3858-9cf4-d9bc99430e0f', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('21048823-5d76-3f13-b135-7643f8f7a6db', '8333919a-d46a-4aca-9a4d-8aad39c6430e', 'idx_mxmodelreflection$token_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('21048823-5d76-3f13-b135-7643f8f7a6db', 'd1781450-1bc0-354b-94d4-2c23313c41c0', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('fe097223-10eb-3858-9cf4-d9bc99430e0f', 'System.changedBy', 'system$changedby', '8333919a-d46a-4aca-9a4d-8aad39c6430e', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby', 'frn_mxmodelreflection$token_system$changedby', 2);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('d1781450-1bc0-354b-94d4-2c23313c41c0', 'System.owner', 'system$owner', '8333919a-d46a-4aca-9a4d-8aad39c6430e', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner', 'frn_mxmodelreflection$token_system$owner', 2);
CREATE TABLE "email_connector$emailtemplateexportfile" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('33e57d01-0bd0-4961-882d-4daef3f98c13', 'Email_Connector.EmailTemplateExportFile', 'email_connector$emailtemplateexportfile', '170ce49d-f29c-4fac-99a6-b55e8a3aeb39', false, false);
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
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('3d65d607-9c60-4be5-96ac-68206a0d8a15', 'MxModelReflection.MxObjectEnumCaptions', 'mxmodelreflection$mxobjectenumcaptions', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('bd0eb1a6-8771-4511-8e9d-ea29e90880ce', '3d65d607-9c60-4be5-96ac-68206a0d8a15', 'Caption', 'caption', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3cdc7c4e-0252-4616-a4d2-794a992336dd', '3d65d607-9c60-4be5-96ac-68206a0d8a15', 'LanguageCode', 'languagecode', 30, 8, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a4052d23-7840-44e5-a5b3-ff55e8aa6548', '3d65d607-9c60-4be5-96ac-68206a0d8a15', 'LanguageName', 'languagename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('cf14563d-d69c-39f5-8260-8037a56dd3b1', '3d65d607-9c60-4be5-96ac-68206a0d8a15', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ad8254b8-05e1-3364-91a8-f150741f8a3f', '3d65d607-9c60-4be5-96ac-68206a0d8a15', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('1d2bd2b9-fca2-3041-ab89-3ab972218c95', '3d65d607-9c60-4be5-96ac-68206a0d8a15', 'idx_mxmodelreflection$mxobjectenumcaptions_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('1d2bd2b9-fca2-3041-ab89-3ab972218c95', '4a78f19e-3901-37d7-a43b-b199f76bfdb8', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('0bde0924-edb8-3c03-92f4-570d0b01778b', '3d65d607-9c60-4be5-96ac-68206a0d8a15', 'idx_mxmodelreflection$mxobjectenumcaptions_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('0bde0924-edb8-3c03-92f4-570d0b01778b', 'a5c61073-64d7-30c2-8f4b-d33a30f5adff', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('4a78f19e-3901-37d7-a43b-b199f76bfdb8', 'System.owner', 'system$owner', '3d65d607-9c60-4be5-96ac-68206a0d8a15', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner', 'frn_mxmodelreflection$mxobjectenumcaptions_system$owner', 2);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('a5c61073-64d7-30c2-8f4b-d33a30f5adff', 'System.changedBy', 'system$changedby', '3d65d607-9c60-4be5-96ac-68206a0d8a15', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby', 'frn_mxmodelreflection$mxobjectenumcaptions_system$changedby', 2);
CREATE TABLE "mxmodelreflection$module" (
	"id" BIGINT NOT NULL,
	"modulename" VARCHAR_IGNORECASE(200) NULL,
	"synchronizeobjectswithinmodule" BOOLEAN NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('559c479c-5523-4b96-a04f-419b5c8e6930', 'MxModelReflection.Module', 'mxmodelreflection$module', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f7e1ae29-8ede-4aae-a84a-1b32060128ef', '559c479c-5523-4b96-a04f-419b5c8e6930', 'ModuleName', 'modulename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0c8a4210-dd8b-4b61-a455-b3634f9d2c38', '559c479c-5523-4b96-a04f-419b5c8e6930', 'SynchronizeObjectsWithinModule', 'synchronizeobjectswithinmodule', 10, 0, 'false', false);
CREATE TABLE "email_connector$pk12certificate" (
	"id" BIGINT NOT NULL,
	"passphrase" VARCHAR_IGNORECASE(2147483647) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('9d18d4d9-6e25-49b7-9770-24c7c388d215', 'Email_Connector.Pk12Certificate', 'email_connector$pk12certificate', '170ce49d-f29c-4fac-99a6-b55e8a3aeb39', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7fdf109f-3a03-404d-9950-29d5dc67955d', '9d18d4d9-6e25-49b7-9770-24c7c388d215', 'Passphrase', 'passphrase', 30, 0, '', false);
CREATE TABLE "email_connector$emailtemplate" (
	"id" BIGINT NOT NULL,
	"templatename" VARCHAR_IGNORECASE(2147483647) NULL,
	"creationdate" TIMESTAMP NULL,
	"subject" VARCHAR_IGNORECASE(2147483647) NULL,
	"sentdate" TIMESTAMP NULL,
	"to" VARCHAR_IGNORECASE(2147483647) NULL,
	"cc" VARCHAR_IGNORECASE(2147483647) NULL,
	"bcc" VARCHAR_IGNORECASE(2147483647) NULL,
	"content" VARCHAR_IGNORECASE(2147483647) NULL,
	"useonlyplaintext" BOOLEAN NULL,
	"hasattachment" BOOLEAN NULL,
	"replyto" VARCHAR_IGNORECASE(2147483647) NULL,
	"plainbody" VARCHAR_IGNORECASE(2147483647) NULL,
	"fromdisplayname" VARCHAR_IGNORECASE(2147483647) NULL,
	"signed" BOOLEAN NULL,
	"encrypted" BOOLEAN NULL,
	"recipientstoggle" BOOLEAN NULL,
	"fromaddress" VARCHAR_IGNORECASE(2147483647) NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$changedby" BIGINT NULL,
	"system$owner" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_email_connector$emailtemplate_system$changedby" ON "email_connector$emailtemplate" ("system$changedby" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$emailtemplate_system$owner" ON "email_connector$emailtemplate" ("system$owner" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', 'Email_Connector.EmailTemplate', 'email_connector$emailtemplate', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('34f3d229-39e0-46ed-acdc-81a90e1d2489', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', 'TemplateName', 'templatename', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('5727ca2a-96e9-47c2-a8e1-c88235b86b55', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', 'CreationDate', 'creationdate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6b1f9bf3-494a-4b06-bb84-586136eee032', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', 'Subject', 'subject', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0b3451b3-c164-41cb-b47b-d44f1ef06207', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', 'SentDate', 'sentdate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('726f5c5b-7abb-47c8-92b1-1db86fdc2316', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', 'To', 'to', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('de9a3216-9202-430b-ba83-f4a15f49711f', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', 'CC', 'cc', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8266fda4-fd18-4df8-aaf1-7cf2e0493241', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', 'BCC', 'bcc', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0777bf7e-ce3e-447a-934f-b86d490f21b7', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', 'Content', 'content', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9e0f423c-ad33-4d1e-a505-0783f1cb9d4a', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', 'UseOnlyPlainText', 'useonlyplaintext', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f3617699-c495-4948-bf4c-8bff3e7fce2d', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', 'hasAttachment', 'hasattachment', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2d2f962d-6469-4597-8ed3-20ed59a5285c', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', 'ReplyTo', 'replyto', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('1c2f0e27-5419-4b26-a1e2-14ef06c0ddd4', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', 'PlainBody', 'plainbody', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2a8125ca-7ec7-4303-9dbb-4b504df039c7', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', 'FromDisplayName', 'fromdisplayname', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('1e326d86-69e5-40c0-8771-7bf5129484f8', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', 'Signed', 'signed', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('45a3829f-0790-4ac1-8e3a-8c2d4a34de66', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', 'Encrypted', 'encrypted', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b6bd240f-240f-4954-bb7f-8569710782a1', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', 'RecipientsToggle', 'recipientstoggle', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('dab50977-c2e3-4c43-afad-47ad00fd24fe', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', 'FromAddress', 'fromaddress', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('85ed518d-7502-3050-970e-7534e2db59c8', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('165efd64-2c60-3767-a848-1d08a79d21c9', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('b6ddf5cf-586c-3dab-a19a-53ffa853a21a', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', 'idx_email_connector$emailtemplate_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('b6ddf5cf-586c-3dab-a19a-53ffa853a21a', '467efb65-b7f4-3f60-aa66-8a02b118b5b2', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('09bab869-52ff-386d-afb2-73e055dd9ee2', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', 'idx_email_connector$emailtemplate_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('09bab869-52ff-386d-afb2-73e055dd9ee2', 'd7d2102f-4319-3b35-b90b-06fd81dd08ce', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('467efb65-b7f4-3f60-aa66-8a02b118b5b2', 'System.changedBy', 'system$changedby', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby', 'frn_email_connector$emailtemplate_system$changedby', 2);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('d7d2102f-4319-3b35-b90b-06fd81dd08ce', 'System.owner', 'system$owner', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner', 'frn_email_connector$emailtemplate_system$owner', 2);
CREATE TABLE "email_connector$oauthprovider" (
	"id" BIGINT NOT NULL,
	"name" VARCHAR_IGNORECASE(2147483647) NULL,
	"clientid" VARCHAR_IGNORECASE(2147483647) NULL,
	"clientsecret" VARCHAR_IGNORECASE(2147483647) NULL,
	"openidwellknownmetadatauri" VARCHAR_IGNORECASE(2147483647) NULL,
	"authorizationendpoint" VARCHAR_IGNORECASE(2147483647) NULL,
	"tokenendpoint" VARCHAR_IGNORECASE(2147483647) NULL,
	"emaildomain" VARCHAR_IGNORECASE(2147483647) NULL,
	"callbackoperationpath" VARCHAR_IGNORECASE(2147483647) NULL,
	"callbackurl" VARCHAR_IGNORECASE(2147483647) NULL,
	"oauthtype" VARCHAR_IGNORECASE(11) NULL,
	"tenantid" VARCHAR_IGNORECASE(2147483647) NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$changedby" BIGINT NULL,
	"system$owner" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_email_connector$oauthprovider_system$changedby" ON "email_connector$oauthprovider" ("system$changedby" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$oauthprovider_system$owner" ON "email_connector$oauthprovider" ("system$owner" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('0b6949b2-3592-4312-96bc-237fc4b7c0af', 'Email_Connector.OAuthProvider', 'email_connector$oauthprovider', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6849adcf-288f-4ea3-bd62-9cf90174b0a6', '0b6949b2-3592-4312-96bc-237fc4b7c0af', 'Name', 'name', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('63a722df-348d-4c12-a65b-3e7b7675b82e', '0b6949b2-3592-4312-96bc-237fc4b7c0af', 'ClientID', 'clientid', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('92d054b4-0534-49a9-a006-b79c13a63fc3', '0b6949b2-3592-4312-96bc-237fc4b7c0af', 'ClientSecret', 'clientsecret', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c8c6671b-28be-41d4-b843-eeb4bb6486d8', '0b6949b2-3592-4312-96bc-237fc4b7c0af', 'OpenIDWellKnownMetadataUri', 'openidwellknownmetadatauri', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('1fae5f87-c5ca-4d33-ac89-a94e444f199f', '0b6949b2-3592-4312-96bc-237fc4b7c0af', 'AuthorizationEndpoint', 'authorizationendpoint', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('65fea316-2674-4b42-993d-efe7b63f170f', '0b6949b2-3592-4312-96bc-237fc4b7c0af', 'TokenEndpoint', 'tokenendpoint', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9631b2d3-79d3-4a06-abaf-c2366d554a9a', '0b6949b2-3592-4312-96bc-237fc4b7c0af', 'EmailDomain', 'emaildomain', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ddaaf479-6c0c-45cc-98ea-0ea96b07cb27', '0b6949b2-3592-4312-96bc-237fc4b7c0af', 'CallbackOperationPath', 'callbackoperationpath', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('075fbdff-e952-4620-a11c-b3810a20f3a4', '0b6949b2-3592-4312-96bc-237fc4b7c0af', 'CallbackURL', 'callbackurl', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b52d498b-7aaf-49d2-9292-179c7f91e38d', '0b6949b2-3592-4312-96bc-237fc4b7c0af', 'OAuthType', 'oauthtype', 40, 11, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('fed180a1-70c3-4b74-b013-30ae7c1cc633', '0b6949b2-3592-4312-96bc-237fc4b7c0af', 'TenantID', 'tenantid', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d4582842-8735-3f1e-82f4-90f7e0970d63', '0b6949b2-3592-4312-96bc-237fc4b7c0af', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('4244a1d7-3120-3468-8306-83b5cc0d4251', '0b6949b2-3592-4312-96bc-237fc4b7c0af', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('c6a7fc1c-d4d9-3399-be51-3bbec54e7daf', '0b6949b2-3592-4312-96bc-237fc4b7c0af', 'idx_email_connector$oauthprovider_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('c6a7fc1c-d4d9-3399-be51-3bbec54e7daf', '16572477-ee85-3e03-80f0-026d764b83c7', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('ee3e9131-845f-3746-af19-bedc38f1d936', '0b6949b2-3592-4312-96bc-237fc4b7c0af', 'idx_email_connector$oauthprovider_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('ee3e9131-845f-3746-af19-bedc38f1d936', 'c84ebde4-aa51-3bb9-8d07-737ef806f62a', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('16572477-ee85-3e03-80f0-026d764b83c7', 'System.changedBy', 'system$changedby', '0b6949b2-3592-4312-96bc-237fc4b7c0af', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby', 'frn_email_connector$oauthprovider_system$changedby', 2);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "child_fkc_name", "child_fkc_action") VALUES ('c84ebde4-aa51-3bb9-8d07-737ef806f62a', 'System.owner', 'system$owner', '0b6949b2-3592-4312-96bc-237fc4b7c0af', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner', 'frn_email_connector$oauthprovider_system$owner', 2);
CREATE TABLE "mxmodelreflection$mxobjectreference_mxobjecttype_parent" (
	"mxmodelreflection$mxobjectreferenceid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjectreferenceid","mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "frn_mxmodelreflection$mxobjectreference_mxobjecttype_parent_mxmodelreflection$mxobjectreferenceid" FOREIGN KEY ( "mxmodelreflection$mxobjectreferenceid" ) REFERENCES "mxmodelreflection$mxobjectreference" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_mxmodelreflection$mxobjectreference_mxobjecttype_parent_mxmodelreflection$mxobjecttypeid" FOREIGN KEY ( "mxmodelreflection$mxobjecttypeid" ) REFERENCES "mxmodelreflection$mxobjecttype" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_mxmodelreflection$mxobjectreference_mxobjecttype_parent_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjectreference" ON "mxmodelreflection$mxobjectreference_mxobjecttype_parent" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$mxobjectreferenceid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('c32cdea3-4752-46a7-8812-5249d3d39835', 'MxModelReflection.MxObjectReference_MxObjectType_Parent', 'mxmodelreflection$mxobjectreference_mxobjecttype_parent', 'c3dfbfc2-2084-468e-95ee-4b3d91dd8a12', '51bad690-5319-47b7-9cd2-e14cc4aaa1e7', 'mxmodelreflection$mxobjectreferenceid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$mxobjectreference_mxobjecttype_parent_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjectreference', 'frn_mxmodelreflection$mxobjectreference_mxobjecttype_parent_mxmodelreflection$mxobjectreferenceid', 'frn_mxmodelreflection$mxobjectreference_mxobjecttype_parent_mxmodelreflection$mxobjecttypeid', 0, 0);
CREATE TABLE "mxmodelreflection$mxobjectreference_mxobjecttype" (
	"mxmodelreflection$mxobjectreferenceid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjectreferenceid","mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "frn_mxmodelreflection$mxobjectreference_mxobjecttype_mxmodelreflection$mxobjectreferenceid" FOREIGN KEY ( "mxmodelreflection$mxobjectreferenceid" ) REFERENCES "mxmodelreflection$mxobjectreference" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_mxmodelreflection$mxobjectreference_mxobjecttype_mxmodelreflection$mxobjecttypeid" FOREIGN KEY ( "mxmodelreflection$mxobjecttypeid" ) REFERENCES "mxmodelreflection$mxobjecttype" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_mxmodelreflection$mxobjectreference_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjectreference" ON "mxmodelreflection$mxobjectreference_mxobjecttype" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$mxobjectreferenceid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('9bb14f40-20b5-4e7f-bf7c-305501bbc00a', 'MxModelReflection.MxObjectReference_MxObjectType', 'mxmodelreflection$mxobjectreference_mxobjecttype', 'c3dfbfc2-2084-468e-95ee-4b3d91dd8a12', '51bad690-5319-47b7-9cd2-e14cc4aaa1e7', 'mxmodelreflection$mxobjectreferenceid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$mxobjectreference_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjectreference', 'frn_mxmodelreflection$mxobjectreference_mxobjecttype_mxmodelreflection$mxobjectreferenceid', 'frn_mxmodelreflection$mxobjectreference_mxobjecttype_mxmodelreflection$mxobjecttypeid', 0, 0);
CREATE TABLE "mxmodelreflection$mxobjectreference_module" (
	"mxmodelreflection$mxobjectreferenceid" BIGINT NOT NULL,
	"mxmodelreflection$moduleid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjectreferenceid","mxmodelreflection$moduleid"),
	CONSTRAINT "uniq_mxmodelreflection$mxobjectreference_module_mxmodelreflection$mxobjectreferenceid" UNIQUE ("mxmodelreflection$mxobjectreferenceid"),
	CONSTRAINT "frn_mxmodelreflection$mxobjectreference_module_mxmodelreflection$mxobjectreferenceid" FOREIGN KEY ( "mxmodelreflection$mxobjectreferenceid" ) REFERENCES "mxmodelreflection$mxobjectreference" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_mxmodelreflection$mxobjectreference_module_mxmodelreflection$moduleid" FOREIGN KEY ( "mxmodelreflection$moduleid" ) REFERENCES "mxmodelreflection$module" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_mxmodelreflection$mxobjectreference_module_mxmodelreflection$module_mxmodelreflection$mxobjectreference" ON "mxmodelreflection$mxobjectreference_module" ("mxmodelreflection$moduleid" ASC,"mxmodelreflection$mxobjectreferenceid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('32423bdd-d404-474f-9e2a-16b76d350e9a', 'MxModelReflection.MxObjectReference_Module', 'mxmodelreflection$mxobjectreference_module', 'c3dfbfc2-2084-468e-95ee-4b3d91dd8a12', '559c479c-5523-4b96-a04f-419b5c8e6930', 'mxmodelreflection$mxobjectreferenceid', 'mxmodelreflection$moduleid', 'idx_mxmodelreflection$mxobjectreference_module_mxmodelreflection$module_mxmodelreflection$mxobjectreference', 'frn_mxmodelreflection$mxobjectreference_module_mxmodelreflection$mxobjectreferenceid', 'frn_mxmodelreflection$mxobjectreference_module_mxmodelreflection$moduleid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$mxobjectreference_module_mxmodelreflection$mxobjectreferenceid', '32423bdd-d404-474f-9e2a-16b76d350e9a', '07f7c235-007a-36d9-ad05-5783ec763a25');
CREATE TABLE "mxmodelreflection$mxobjectreference_mxobjecttype_child" (
	"mxmodelreflection$mxobjectreferenceid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjectreferenceid","mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "frn_mxmodelreflection$mxobjectreference_mxobjecttype_child_mxmodelreflection$mxobjectreferenceid" FOREIGN KEY ( "mxmodelreflection$mxobjectreferenceid" ) REFERENCES "mxmodelreflection$mxobjectreference" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_mxmodelreflection$mxobjectreference_mxobjecttype_child_mxmodelreflection$mxobjecttypeid" FOREIGN KEY ( "mxmodelreflection$mxobjecttypeid" ) REFERENCES "mxmodelreflection$mxobjecttype" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_mxmodelreflection$mxobjectreference_mxobjecttype_child_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjectreference" ON "mxmodelreflection$mxobjectreference_mxobjecttype_child" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$mxobjectreferenceid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('97624fa5-97e7-431a-8d44-731a06923bfc', 'MxModelReflection.MxObjectReference_MxObjectType_Child', 'mxmodelreflection$mxobjectreference_mxobjecttype_child', 'c3dfbfc2-2084-468e-95ee-4b3d91dd8a12', '51bad690-5319-47b7-9cd2-e14cc4aaa1e7', 'mxmodelreflection$mxobjectreferenceid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$mxobjectreference_mxobjecttype_child_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjectreference', 'frn_mxmodelreflection$mxobjectreference_mxobjecttype_child_mxmodelreflection$mxobjectreferenceid', 'frn_mxmodelreflection$mxobjectreference_mxobjecttype_child_mxmodelreflection$mxobjecttypeid', 0, 0);
CREATE TABLE "encryption$secretkey_publickey" (
	"encryption$pgpcertificateid1" BIGINT NOT NULL,
	"encryption$pgpcertificateid2" BIGINT NOT NULL,
	PRIMARY KEY("encryption$pgpcertificateid1","encryption$pgpcertificateid2"),
	CONSTRAINT "uniq_encryption$secretkey_publickey_encryption$pgpcertificateid1" UNIQUE ("encryption$pgpcertificateid1"),
	CONSTRAINT "frn_encryption$secretkey_publickey_encryption$pgpcertificateid1" FOREIGN KEY ( "encryption$pgpcertificateid1" ) REFERENCES "encryption$pgpcertificate" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_encryption$secretkey_publickey_encryption$pgpcertificateid2" FOREIGN KEY ( "encryption$pgpcertificateid2" ) REFERENCES "encryption$pgpcertificate" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_encryption$secretkey_publickey_encryption$pgpcertificate_encryption$pgpcertificate" ON "encryption$secretkey_publickey" ("encryption$pgpcertificateid2" ASC,"encryption$pgpcertificateid1" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('05197b98-c8e3-4384-9e68-3f93c6edfb89', 'Encryption.SecretKey_PublicKey', 'encryption$secretkey_publickey', 'b5743322-38f8-4446-918b-4c7eff1a3bbf', 'b5743322-38f8-4446-918b-4c7eff1a3bbf', 'encryption$pgpcertificateid1', 'encryption$pgpcertificateid2', 'idx_encryption$secretkey_publickey_encryption$pgpcertificate_encryption$pgpcertificate', 'frn_encryption$secretkey_publickey_encryption$pgpcertificateid1', 'frn_encryption$secretkey_publickey_encryption$pgpcertificateid2', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_encryption$secretkey_publickey_encryption$pgpcertificateid1', '05197b98-c8e3-4384-9e68-3f93c6edfb89', '03df6e9a-1b53-3f30-9fe2-b05697ce0283');
CREATE TABLE "email_connector$outgoingemailconfiguration_emailaccount" (
	"email_connector$outgoingemailconfigurationid" BIGINT NOT NULL,
	"email_connector$emailaccountid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$outgoingemailconfigurationid","email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$outgoingemailconfiguration_emailaccount_email_connector$emailaccountid" UNIQUE ("email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$outgoingemailconfiguration_emailaccount_email_connector$outgoingemailconfigurationid" UNIQUE ("email_connector$outgoingemailconfigurationid"),
	CONSTRAINT "frn_email_connector$outgoingemailconfiguration_emailaccount_email_connector$outgoingemailconfigurationid" FOREIGN KEY ( "email_connector$outgoingemailconfigurationid" ) REFERENCES "email_connector$outgoingemailconfiguration" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_email_connector$outgoingemailconfiguration_emailaccount_email_connector$emailaccountid" FOREIGN KEY ( "email_connector$emailaccountid" ) REFERENCES "email_connector$emailaccount" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_email_connector$outgoingemailconfiguration_emailaccount" ON "email_connector$outgoingemailconfiguration_emailaccount" ("email_connector$emailaccountid" ASC,"email_connector$outgoingemailconfigurationid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('6be5b24f-4196-4378-9364-b6301b8e7828', 'Email_Connector.OutgoingEmailConfiguration_EmailAccount', 'email_connector$outgoingemailconfiguration_emailaccount', '4e49c1f0-e615-4a3d-bc0f-5bcd2972e668', 'c1712745-65db-456a-b4c1-783409406870', 'email_connector$outgoingemailconfigurationid', 'email_connector$emailaccountid', 'idx_email_connector$outgoingemailconfiguration_emailaccount', 'frn_email_connector$outgoingemailconfiguration_emailaccount_email_connector$outgoingemailconfigurationid', 'frn_email_connector$outgoingemailconfiguration_emailaccount_email_connector$emailaccountid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$outgoingemailconfiguration_emailaccount_email_connector$emailaccountid', '6be5b24f-4196-4378-9364-b6301b8e7828', 'dabaaebc-2b81-3cfc-ac51-3f7f89d63770');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$outgoingemailconfiguration_emailaccount_email_connector$outgoingemailconfigurationid', '6be5b24f-4196-4378-9364-b6301b8e7828', '7c1b3bca-bc21-3873-84b9-b49fd9bec6cb');
CREATE TABLE "email_connector$emailmessage_emailaccount" (
	"email_connector$emailmessageid" BIGINT NOT NULL,
	"email_connector$emailaccountid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailmessageid","email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$emailmessage_emailaccount_email_connector$emailmessageid" UNIQUE ("email_connector$emailmessageid"),
	CONSTRAINT "frn_email_connector$emailmessage_emailaccount_email_connector$emailmessageid" FOREIGN KEY ( "email_connector$emailmessageid" ) REFERENCES "email_connector$emailmessage" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_email_connector$emailmessage_emailaccount_email_connector$emailaccountid" FOREIGN KEY ( "email_connector$emailaccountid" ) REFERENCES "email_connector$emailaccount" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_email_connector$emailmessage_emailaccount_email_connector$emailaccount_email_connector$emailmessage" ON "email_connector$emailmessage_emailaccount" ("email_connector$emailaccountid" ASC,"email_connector$emailmessageid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('b3a9b744-be68-4a01-9d6f-02b92d2b537e', 'Email_Connector.EmailMessage_EmailAccount', 'email_connector$emailmessage_emailaccount', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'c1712745-65db-456a-b4c1-783409406870', 'email_connector$emailmessageid', 'email_connector$emailaccountid', 'idx_email_connector$emailmessage_emailaccount_email_connector$emailaccount_email_connector$emailmessage', 'frn_email_connector$emailmessage_emailaccount_email_connector$emailmessageid', 'frn_email_connector$emailmessage_emailaccount_email_connector$emailaccountid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailmessage_emailaccount_email_connector$emailmessageid', 'b3a9b744-be68-4a01-9d6f-02b92d2b537e', '460fd1af-5018-339a-a05d-ba80a8d6cb1e');
CREATE TABLE "email_connector$emailmessage_emailtemplate" (
	"email_connector$emailmessageid" BIGINT NOT NULL,
	"email_connector$emailtemplateid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailmessageid","email_connector$emailtemplateid"),
	CONSTRAINT "uniq_email_connector$emailmessage_emailtemplate_email_connector$emailmessageid" UNIQUE ("email_connector$emailmessageid"),
	CONSTRAINT "frn_email_connector$emailmessage_emailtemplate_email_connector$emailmessageid" FOREIGN KEY ( "email_connector$emailmessageid" ) REFERENCES "email_connector$emailmessage" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_email_connector$emailmessage_emailtemplate_email_connector$emailtemplateid" FOREIGN KEY ( "email_connector$emailtemplateid" ) REFERENCES "email_connector$emailtemplate" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_email_connector$emailmessage_emailtemplate_email_connector$emailtemplate_email_connector$emailmessage" ON "email_connector$emailmessage_emailtemplate" ("email_connector$emailtemplateid" ASC,"email_connector$emailmessageid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('e9ab0ada-93a6-4512-9be2-26fefac45a6a', 'Email_Connector.EmailMessage_EmailTemplate', 'email_connector$emailmessage_emailtemplate', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', 'email_connector$emailmessageid', 'email_connector$emailtemplateid', 'idx_email_connector$emailmessage_emailtemplate_email_connector$emailtemplate_email_connector$emailmessage', 'frn_email_connector$emailmessage_emailtemplate_email_connector$emailmessageid', 'frn_email_connector$emailmessage_emailtemplate_email_connector$emailtemplateid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailmessage_emailtemplate_email_connector$emailmessageid', 'e9ab0ada-93a6-4512-9be2-26fefac45a6a', '4f209b40-8372-3d3c-8bf4-6d5cb527f2df');
CREATE TABLE "mxmodelreflection$microflows_output_type" (
	"mxmodelreflection$microflowsid" BIGINT NOT NULL,
	"mxmodelreflection$valuetypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$microflowsid","mxmodelreflection$valuetypeid"),
	CONSTRAINT "uniq_mxmodelreflection$microflows_output_type_mxmodelreflection$microflowsid" UNIQUE ("mxmodelreflection$microflowsid"),
	CONSTRAINT "frn_mxmodelreflection$microflows_output_type_mxmodelreflection$microflowsid" FOREIGN KEY ( "mxmodelreflection$microflowsid" ) REFERENCES "mxmodelreflection$microflows" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_mxmodelreflection$microflows_output_type_mxmodelreflection$valuetypeid" FOREIGN KEY ( "mxmodelreflection$valuetypeid" ) REFERENCES "mxmodelreflection$valuetype" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_mxmodelreflection$microflows_output_type_mxmodelreflection$valuetype_mxmodelreflection$microflows" ON "mxmodelreflection$microflows_output_type" ("mxmodelreflection$valuetypeid" ASC,"mxmodelreflection$microflowsid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('b18ffe07-25b8-41c3-b75e-cdf493e51032', 'MxModelReflection.Microflows_Output_Type', 'mxmodelreflection$microflows_output_type', 'fac1f279-96a2-4618-9da3-e1f718929565', '436d68cf-8cc8-4969-94c5-952607361022', 'mxmodelreflection$microflowsid', 'mxmodelreflection$valuetypeid', 'idx_mxmodelreflection$microflows_output_type_mxmodelreflection$valuetype_mxmodelreflection$microflows', 'frn_mxmodelreflection$microflows_output_type_mxmodelreflection$microflowsid', 'frn_mxmodelreflection$microflows_output_type_mxmodelreflection$valuetypeid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$microflows_output_type_mxmodelreflection$microflowsid', 'b18ffe07-25b8-41c3-b75e-cdf493e51032', '01466c18-8694-361c-a4af-6e99e89d283b');
CREATE TABLE "mxmodelreflection$microflows_module" (
	"mxmodelreflection$microflowsid" BIGINT NOT NULL,
	"mxmodelreflection$moduleid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$microflowsid","mxmodelreflection$moduleid"),
	CONSTRAINT "uniq_mxmodelreflection$microflows_module_mxmodelreflection$microflowsid" UNIQUE ("mxmodelreflection$microflowsid"),
	CONSTRAINT "frn_mxmodelreflection$microflows_module_mxmodelreflection$microflowsid" FOREIGN KEY ( "mxmodelreflection$microflowsid" ) REFERENCES "mxmodelreflection$microflows" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_mxmodelreflection$microflows_module_mxmodelreflection$moduleid" FOREIGN KEY ( "mxmodelreflection$moduleid" ) REFERENCES "mxmodelreflection$module" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_mxmodelreflection$microflows_module_mxmodelreflection$module_mxmodelreflection$microflows" ON "mxmodelreflection$microflows_module" ("mxmodelreflection$moduleid" ASC,"mxmodelreflection$microflowsid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('0ef43801-8b62-4b4a-9eb8-8220d6b26a5b', 'MxModelReflection.Microflows_Module', 'mxmodelreflection$microflows_module', 'fac1f279-96a2-4618-9da3-e1f718929565', '559c479c-5523-4b96-a04f-419b5c8e6930', 'mxmodelreflection$microflowsid', 'mxmodelreflection$moduleid', 'idx_mxmodelreflection$microflows_module_mxmodelreflection$module_mxmodelreflection$microflows', 'frn_mxmodelreflection$microflows_module_mxmodelreflection$microflowsid', 'frn_mxmodelreflection$microflows_module_mxmodelreflection$moduleid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$microflows_module_mxmodelreflection$microflowsid', '0ef43801-8b62-4b4a-9eb8-8220d6b26a5b', '7f9daebc-2a85-3fd3-b741-3b46e8d11328');
CREATE TABLE "mxmodelreflection$microflows_inputparameter" (
	"mxmodelreflection$microflowsid" BIGINT NOT NULL,
	"mxmodelreflection$parameterid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$microflowsid","mxmodelreflection$parameterid"),
	CONSTRAINT "frn_mxmodelreflection$microflows_inputparameter_mxmodelreflection$microflowsid" FOREIGN KEY ( "mxmodelreflection$microflowsid" ) REFERENCES "mxmodelreflection$microflows" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_mxmodelreflection$microflows_inputparameter_mxmodelreflection$parameterid" FOREIGN KEY ( "mxmodelreflection$parameterid" ) REFERENCES "mxmodelreflection$parameter" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_mxmodelreflection$microflows_inputparameter_mxmodelreflection$parameter_mxmodelreflection$microflows" ON "mxmodelreflection$microflows_inputparameter" ("mxmodelreflection$parameterid" ASC,"mxmodelreflection$microflowsid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('2d75abab-f261-4b54-b532-55fa63ae2efd', 'MxModelReflection.Microflows_InputParameter', 'mxmodelreflection$microflows_inputparameter', 'fac1f279-96a2-4618-9da3-e1f718929565', '077b887d-7976-41e9-b6e0-3ebefddcd05b', 'mxmodelreflection$microflowsid', 'mxmodelreflection$parameterid', 'idx_mxmodelreflection$microflows_inputparameter_mxmodelreflection$parameter_mxmodelreflection$microflows', 'frn_mxmodelreflection$microflows_inputparameter_mxmodelreflection$microflowsid', 'frn_mxmodelreflection$microflows_inputparameter_mxmodelreflection$parameterid', 0, 0);
CREATE TABLE "email_connector$emailconnectorlog_emailmessage" (
	"email_connector$emailconnectorlogid" BIGINT NOT NULL,
	"email_connector$emailmessageid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailconnectorlogid","email_connector$emailmessageid"),
	CONSTRAINT "uniq_email_connector$emailconnectorlog_emailmessage_email_connector$emailconnectorlogid" UNIQUE ("email_connector$emailconnectorlogid"),
	CONSTRAINT "frn_email_connector$emailconnectorlog_emailmessage_email_connector$emailconnectorlogid" FOREIGN KEY ( "email_connector$emailconnectorlogid" ) REFERENCES "email_connector$emailconnectorlog" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_email_connector$emailconnectorlog_emailmessage_email_connector$emailmessageid" FOREIGN KEY ( "email_connector$emailmessageid" ) REFERENCES "email_connector$emailmessage" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_email_connector$emailconnectorlog_emailmessage_email_connector$emailmessage_email_connector$emailconnectorlog" ON "email_connector$emailconnectorlog_emailmessage" ("email_connector$emailmessageid" ASC,"email_connector$emailconnectorlogid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('9e85900a-40e8-4117-ba2a-3e12b706f0b2', 'Email_Connector.EmailConnectorLog_EmailMessage', 'email_connector$emailconnectorlog_emailmessage', '2b9fa84d-7c90-4099-b68f-372bf57e63c1', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'email_connector$emailconnectorlogid', 'email_connector$emailmessageid', 'idx_email_connector$emailconnectorlog_emailmessage_email_connector$emailmessage_email_connector$emailconnectorlog', 'frn_email_connector$emailconnectorlog_emailmessage_email_connector$emailconnectorlogid', 'frn_email_connector$emailconnectorlog_emailmessage_email_connector$emailmessageid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailconnectorlog_emailmessage_email_connector$emailconnectorlogid', '9e85900a-40e8-4117-ba2a-3e12b706f0b2', '3dce238d-ff68-3746-bfa1-62e7c675a2d7');
CREATE TABLE "email_connector$emailconnectorlog_emailaccount" (
	"email_connector$emailconnectorlogid" BIGINT NOT NULL,
	"email_connector$emailaccountid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailconnectorlogid","email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$emailconnectorlog_emailaccount_email_connector$emailconnectorlogid" UNIQUE ("email_connector$emailconnectorlogid"),
	CONSTRAINT "frn_email_connector$emailconnectorlog_emailaccount_email_connector$emailconnectorlogid" FOREIGN KEY ( "email_connector$emailconnectorlogid" ) REFERENCES "email_connector$emailconnectorlog" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_email_connector$emailconnectorlog_emailaccount_email_connector$emailaccountid" FOREIGN KEY ( "email_connector$emailaccountid" ) REFERENCES "email_connector$emailaccount" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_email_connector$emailconnectorlog_emailaccount_email_connector$emailaccount_email_connector$emailconnectorlog" ON "email_connector$emailconnectorlog_emailaccount" ("email_connector$emailaccountid" ASC,"email_connector$emailconnectorlogid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('26f4df55-c582-4af1-b68f-eb61ffb9c9f6', 'Email_Connector.EmailConnectorLog_EmailAccount', 'email_connector$emailconnectorlog_emailaccount', '2b9fa84d-7c90-4099-b68f-372bf57e63c1', 'c1712745-65db-456a-b4c1-783409406870', 'email_connector$emailconnectorlogid', 'email_connector$emailaccountid', 'idx_email_connector$emailconnectorlog_emailaccount_email_connector$emailaccount_email_connector$emailconnectorlog', 'frn_email_connector$emailconnectorlog_emailaccount_email_connector$emailconnectorlogid', 'frn_email_connector$emailconnectorlog_emailaccount_email_connector$emailaccountid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailconnectorlog_emailaccount_email_connector$emailconnectorlogid', '26f4df55-c582-4af1-b68f-eb61ffb9c9f6', '50bc0622-1304-3dc0-8f24-c9ac1614328a');
CREATE TABLE "mxmodelreflection$mxobjectmember_type" (
	"mxmodelreflection$mxobjectmemberid" BIGINT NOT NULL,
	"mxmodelreflection$valuetypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjectmemberid","mxmodelreflection$valuetypeid"),
	CONSTRAINT "uniq_mxmodelreflection$mxobjectmember_type_mxmodelreflection$mxobjectmemberid" UNIQUE ("mxmodelreflection$mxobjectmemberid"),
	CONSTRAINT "frn_mxmodelreflection$mxobjectmember_type_mxmodelreflection$mxobjectmemberid" FOREIGN KEY ( "mxmodelreflection$mxobjectmemberid" ) REFERENCES "mxmodelreflection$mxobjectmember" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_mxmodelreflection$mxobjectmember_type_mxmodelreflection$valuetypeid" FOREIGN KEY ( "mxmodelreflection$valuetypeid" ) REFERENCES "mxmodelreflection$valuetype" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_mxmodelreflection$mxobjectmember_type_mxmodelreflection$valuetype_mxmodelreflection$mxobjectmember" ON "mxmodelreflection$mxobjectmember_type" ("mxmodelreflection$valuetypeid" ASC,"mxmodelreflection$mxobjectmemberid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('68236fc4-4520-4e27-b4e6-9a16de460fe1', 'MxModelReflection.MxObjectMember_Type', 'mxmodelreflection$mxobjectmember_type', '8d287716-1fbc-413d-9fe6-e6a8d18eda00', '436d68cf-8cc8-4969-94c5-952607361022', 'mxmodelreflection$mxobjectmemberid', 'mxmodelreflection$valuetypeid', 'idx_mxmodelreflection$mxobjectmember_type_mxmodelreflection$valuetype_mxmodelreflection$mxobjectmember', 'frn_mxmodelreflection$mxobjectmember_type_mxmodelreflection$mxobjectmemberid', 'frn_mxmodelreflection$mxobjectmember_type_mxmodelreflection$valuetypeid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$mxobjectmember_type_mxmodelreflection$mxobjectmemberid', '68236fc4-4520-4e27-b4e6-9a16de460fe1', '3cecc260-9afd-30b0-a6db-386e359a1212');
CREATE TABLE "mxmodelreflection$mxobjectmember_mxobjecttype" (
	"mxmodelreflection$mxobjectmemberid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjectmemberid","mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "uniq_mxmodelreflection$mxobjectmember_mxobjecttype_mxmodelreflection$mxobjectmemberid" UNIQUE ("mxmodelreflection$mxobjectmemberid"),
	CONSTRAINT "frn_mxmodelreflection$mxobjectmember_mxobjecttype_mxmodelreflection$mxobjectmemberid" FOREIGN KEY ( "mxmodelreflection$mxobjectmemberid" ) REFERENCES "mxmodelreflection$mxobjectmember" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_mxmodelreflection$mxobjectmember_mxobjecttype_mxmodelreflection$mxobjecttypeid" FOREIGN KEY ( "mxmodelreflection$mxobjecttypeid" ) REFERENCES "mxmodelreflection$mxobjecttype" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_mxmodelreflection$mxobjectmember_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjectmember" ON "mxmodelreflection$mxobjectmember_mxobjecttype" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$mxobjectmemberid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('517d6ded-4be1-4c92-bb29-2af9769fcb0a', 'MxModelReflection.MxObjectMember_MxObjectType', 'mxmodelreflection$mxobjectmember_mxobjecttype', '8d287716-1fbc-413d-9fe6-e6a8d18eda00', '51bad690-5319-47b7-9cd2-e14cc4aaa1e7', 'mxmodelreflection$mxobjectmemberid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$mxobjectmember_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjectmember', 'frn_mxmodelreflection$mxobjectmember_mxobjecttype_mxmodelreflection$mxobjectmemberid', 'frn_mxmodelreflection$mxobjectmember_mxobjecttype_mxmodelreflection$mxobjecttypeid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$mxobjectmember_mxobjecttype_mxmodelreflection$mxobjectmemberid', '517d6ded-4be1-4c92-bb29-2af9769fcb0a', '6a34aeb8-d7f8-3ca1-98b2-8a94631eb62d');
CREATE TABLE "email_connector$emailheader_emailmessage" (
	"email_connector$emailheaderid" BIGINT NOT NULL,
	"email_connector$emailmessageid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailheaderid","email_connector$emailmessageid"),
	CONSTRAINT "uniq_email_connector$emailheader_emailmessage_email_connector$emailheaderid" UNIQUE ("email_connector$emailheaderid"),
	CONSTRAINT "frn_email_connector$emailheader_emailmessage_email_connector$emailheaderid" FOREIGN KEY ( "email_connector$emailheaderid" ) REFERENCES "email_connector$emailheader" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_email_connector$emailheader_emailmessage_email_connector$emailmessageid" FOREIGN KEY ( "email_connector$emailmessageid" ) REFERENCES "email_connector$emailmessage" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_email_connector$emailheader_emailmessage_email_connector$emailmessage_email_connector$emailheader" ON "email_connector$emailheader_emailmessage" ("email_connector$emailmessageid" ASC,"email_connector$emailheaderid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('f99c60e9-f78a-410c-8b87-c7ca5f073902', 'Email_Connector.EmailHeader_EmailMessage', 'email_connector$emailheader_emailmessage', '6946269c-318b-4118-ad57-1d03eced663a', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'email_connector$emailheaderid', 'email_connector$emailmessageid', 'idx_email_connector$emailheader_emailmessage_email_connector$emailmessage_email_connector$emailheader', 'frn_email_connector$emailheader_emailmessage_email_connector$emailheaderid', 'frn_email_connector$emailheader_emailmessage_email_connector$emailmessageid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailheader_emailmessage_email_connector$emailheaderid', 'f99c60e9-f78a-410c-8b87-c7ca5f073902', 'c4ebbdae-4c19-3905-9e9e-73f00c3e1393');
CREATE TABLE "email_connector$incomingemailconfiguration_emailaccount" (
	"email_connector$incomingemailconfigurationid" BIGINT NOT NULL,
	"email_connector$emailaccountid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$incomingemailconfigurationid","email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$incomingemailconfiguration_emailaccount_email_connector$emailaccountid" UNIQUE ("email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$incomingemailconfiguration_emailaccount_email_connector$incomingemailconfigurationid" UNIQUE ("email_connector$incomingemailconfigurationid"),
	CONSTRAINT "frn_email_connector$incomingemailconfiguration_emailaccount_email_connector$incomingemailconfigurationid" FOREIGN KEY ( "email_connector$incomingemailconfigurationid" ) REFERENCES "email_connector$incomingemailconfiguration" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_email_connector$incomingemailconfiguration_emailaccount_email_connector$emailaccountid" FOREIGN KEY ( "email_connector$emailaccountid" ) REFERENCES "email_connector$emailaccount" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_email_connector$incomingemailconfiguration_emailaccount" ON "email_connector$incomingemailconfiguration_emailaccount" ("email_connector$emailaccountid" ASC,"email_connector$incomingemailconfigurationid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('47ec4082-b60c-4366-8e4c-e04bd864f354', 'Email_Connector.IncomingEmailConfiguration_EmailAccount', 'email_connector$incomingemailconfiguration_emailaccount', 'e613d8ef-bcaf-4920-8d3b-af1d45012d41', 'c1712745-65db-456a-b4c1-783409406870', 'email_connector$incomingemailconfigurationid', 'email_connector$emailaccountid', 'idx_email_connector$incomingemailconfiguration_emailaccount', 'frn_email_connector$incomingemailconfiguration_emailaccount_email_connector$incomingemailconfigurationid', 'frn_email_connector$incomingemailconfiguration_emailaccount_email_connector$emailaccountid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$incomingemailconfiguration_emailaccount_email_connector$emailaccountid', '47ec4082-b60c-4366-8e4c-e04bd864f354', '076ba528-8d91-3e9f-add7-84edcebbb093');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$incomingemailconfiguration_emailaccount_email_connector$incomingemailconfigurationid', '47ec4082-b60c-4366-8e4c-e04bd864f354', '42d5f348-96af-3bf8-91cd-9897a236efcb');
CREATE TABLE "email_connector$attachment_emailmessage" (
	"email_connector$attachmentid" BIGINT NOT NULL,
	"email_connector$emailmessageid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$attachmentid","email_connector$emailmessageid"),
	CONSTRAINT "uniq_email_connector$attachment_emailmessage_email_connector$attachmentid" UNIQUE ("email_connector$attachmentid"),
	CONSTRAINT "frn_email_connector$attachment_emailmessage_email_connector$attachmentid" FOREIGN KEY ( "email_connector$attachmentid" ) REFERENCES "email_connector$attachment" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_email_connector$attachment_emailmessage_email_connector$emailmessageid" FOREIGN KEY ( "email_connector$emailmessageid" ) REFERENCES "email_connector$emailmessage" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_email_connector$attachment_emailmessage_email_connector$emailmessage_email_connector$attachment" ON "email_connector$attachment_emailmessage" ("email_connector$emailmessageid" ASC,"email_connector$attachmentid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('db9ef469-41ee-4fd2-b169-2ea298a6e9ad', 'Email_Connector.Attachment_EmailMessage', 'email_connector$attachment_emailmessage', 'aa202002-b18a-40b8-ab38-109afd5ec688', 'c787ab56-4d50-42e4-bf6c-5260a24753a9', 'email_connector$attachmentid', 'email_connector$emailmessageid', 'idx_email_connector$attachment_emailmessage_email_connector$emailmessage_email_connector$attachment', 'frn_email_connector$attachment_emailmessage_email_connector$attachmentid', 'frn_email_connector$attachment_emailmessage_email_connector$emailmessageid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$attachment_emailmessage_email_connector$attachmentid', 'db9ef469-41ee-4fd2-b169-2ea298a6e9ad', '1637f5c4-43f5-3543-aaa5-d9755db158c9');
CREATE TABLE "email_connector$attachment_emailtemplate" (
	"email_connector$attachmentid" BIGINT NOT NULL,
	"email_connector$emailtemplateid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$attachmentid","email_connector$emailtemplateid"),
	CONSTRAINT "uniq_email_connector$attachment_emailtemplate_email_connector$attachmentid" UNIQUE ("email_connector$attachmentid"),
	CONSTRAINT "frn_email_connector$attachment_emailtemplate_email_connector$attachmentid" FOREIGN KEY ( "email_connector$attachmentid" ) REFERENCES "email_connector$attachment" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_email_connector$attachment_emailtemplate_email_connector$emailtemplateid" FOREIGN KEY ( "email_connector$emailtemplateid" ) REFERENCES "email_connector$emailtemplate" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_email_connector$attachment_emailtemplate_email_connector$emailtemplate_email_connector$attachment" ON "email_connector$attachment_emailtemplate" ("email_connector$emailtemplateid" ASC,"email_connector$attachmentid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('4f4ed5e3-2d44-4fdf-89ec-8a6dd6f0efc0', 'Email_Connector.Attachment_EmailTemplate', 'email_connector$attachment_emailtemplate', 'aa202002-b18a-40b8-ab38-109afd5ec688', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', 'email_connector$attachmentid', 'email_connector$emailtemplateid', 'idx_email_connector$attachment_emailtemplate_email_connector$emailtemplate_email_connector$attachment', 'frn_email_connector$attachment_emailtemplate_email_connector$attachmentid', 'frn_email_connector$attachment_emailtemplate_email_connector$emailtemplateid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$attachment_emailtemplate_email_connector$attachmentid', '4f4ed5e3-2d44-4fdf-89ec-8a6dd6f0efc0', '6bde3ada-e458-302f-a275-c13d57b25afd');
CREATE TABLE "email_connector$emailaccount_ldapconfiguration" (
	"email_connector$emailaccountid" BIGINT NOT NULL,
	"email_connector$ldapconfigurationid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailaccountid","email_connector$ldapconfigurationid"),
	CONSTRAINT "uniq_email_connector$emailaccount_ldapconfiguration_email_connector$ldapconfigurationid" UNIQUE ("email_connector$ldapconfigurationid"),
	CONSTRAINT "uniq_email_connector$emailaccount_ldapconfiguration_email_connector$emailaccountid" UNIQUE ("email_connector$emailaccountid"),
	CONSTRAINT "frn_email_connector$emailaccount_ldapconfiguration_email_connector$emailaccountid" FOREIGN KEY ( "email_connector$emailaccountid" ) REFERENCES "email_connector$emailaccount" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_email_connector$emailaccount_ldapconfiguration_email_connector$ldapconfigurationid" FOREIGN KEY ( "email_connector$ldapconfigurationid" ) REFERENCES "email_connector$ldapconfiguration" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_email_connector$emailaccount_ldapconfiguration_email_connector$ldapconfiguration_email_connector$emailaccount" ON "email_connector$emailaccount_ldapconfiguration" ("email_connector$ldapconfigurationid" ASC,"email_connector$emailaccountid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('d662f30b-bd7e-4bf6-8474-7e3ca9f8dd82', 'Email_Connector.EmailAccount_LDAPConfiguration', 'email_connector$emailaccount_ldapconfiguration', 'c1712745-65db-456a-b4c1-783409406870', 'fd79ce52-beef-4c1b-abb4-d2ad190703c4', 'email_connector$emailaccountid', 'email_connector$ldapconfigurationid', 'idx_email_connector$emailaccount_ldapconfiguration_email_connector$ldapconfiguration_email_connector$emailaccount', 'frn_email_connector$emailaccount_ldapconfiguration_email_connector$emailaccountid', 'frn_email_connector$emailaccount_ldapconfiguration_email_connector$ldapconfigurationid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailaccount_ldapconfiguration_email_connector$ldapconfigurationid', 'd662f30b-bd7e-4bf6-8474-7e3ca9f8dd82', 'e9605341-d3b1-3fd9-8982-525bbbc8b45f');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailaccount_ldapconfiguration_email_connector$emailaccountid', 'd662f30b-bd7e-4bf6-8474-7e3ca9f8dd82', '27fcd471-b5ca-3cb1-bbb0-ca53879c9277');
CREATE TABLE "email_connector$emailaccount_oauthprovider" (
	"email_connector$emailaccountid" BIGINT NOT NULL,
	"email_connector$oauthproviderid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailaccountid","email_connector$oauthproviderid"),
	CONSTRAINT "uniq_email_connector$emailaccount_oauthprovider_email_connector$emailaccountid" UNIQUE ("email_connector$emailaccountid"),
	CONSTRAINT "frn_email_connector$emailaccount_oauthprovider_email_connector$emailaccountid" FOREIGN KEY ( "email_connector$emailaccountid" ) REFERENCES "email_connector$emailaccount" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_email_connector$emailaccount_oauthprovider_email_connector$oauthproviderid" FOREIGN KEY ( "email_connector$oauthproviderid" ) REFERENCES "email_connector$oauthprovider" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_email_connector$emailaccount_oauthprovider_email_connector$oauthprovider_email_connector$emailaccount" ON "email_connector$emailaccount_oauthprovider" ("email_connector$oauthproviderid" ASC,"email_connector$emailaccountid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('e0ea488d-3866-4965-a462-ba982497ced6', 'Email_Connector.EmailAccount_OAuthProvider', 'email_connector$emailaccount_oauthprovider', 'c1712745-65db-456a-b4c1-783409406870', '0b6949b2-3592-4312-96bc-237fc4b7c0af', 'email_connector$emailaccountid', 'email_connector$oauthproviderid', 'idx_email_connector$emailaccount_oauthprovider_email_connector$oauthprovider_email_connector$emailaccount', 'frn_email_connector$emailaccount_oauthprovider_email_connector$emailaccountid', 'frn_email_connector$emailaccount_oauthprovider_email_connector$oauthproviderid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailaccount_oauthprovider_email_connector$emailaccountid', 'e0ea488d-3866-4965-a462-ba982497ced6', '7dd33b4e-18c2-3e4d-aed3-e898aeb3108d');
CREATE TABLE "email_connector$emailaccount_oauthtoken" (
	"email_connector$emailaccountid" BIGINT NOT NULL,
	"email_connector$oauthtokenid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailaccountid","email_connector$oauthtokenid"),
	CONSTRAINT "uniq_email_connector$emailaccount_oauthtoken_email_connector$oauthtokenid" UNIQUE ("email_connector$oauthtokenid"),
	CONSTRAINT "uniq_email_connector$emailaccount_oauthtoken_email_connector$emailaccountid" UNIQUE ("email_connector$emailaccountid"),
	CONSTRAINT "frn_email_connector$emailaccount_oauthtoken_email_connector$emailaccountid" FOREIGN KEY ( "email_connector$emailaccountid" ) REFERENCES "email_connector$emailaccount" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_email_connector$emailaccount_oauthtoken_email_connector$oauthtokenid" FOREIGN KEY ( "email_connector$oauthtokenid" ) REFERENCES "email_connector$oauthtoken" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_email_connector$emailaccount_oauthtoken_email_connector$oauthtoken_email_connector$emailaccount" ON "email_connector$emailaccount_oauthtoken" ("email_connector$oauthtokenid" ASC,"email_connector$emailaccountid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('66dacc64-a943-48ff-bac5-a1716518f877', 'Email_Connector.EmailAccount_OAuthToken', 'email_connector$emailaccount_oauthtoken', 'c1712745-65db-456a-b4c1-783409406870', '2e9c3eea-352a-41bb-8fed-0154ca51ea3e', 'email_connector$emailaccountid', 'email_connector$oauthtokenid', 'idx_email_connector$emailaccount_oauthtoken_email_connector$oauthtoken_email_connector$emailaccount', 'frn_email_connector$emailaccount_oauthtoken_email_connector$emailaccountid', 'frn_email_connector$emailaccount_oauthtoken_email_connector$oauthtokenid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailaccount_oauthtoken_email_connector$oauthtokenid', '66dacc64-a943-48ff-bac5-a1716518f877', 'b1058102-29e0-38e6-9a6f-969f75a16b49');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailaccount_oauthtoken_email_connector$emailaccountid', '66dacc64-a943-48ff-bac5-a1716518f877', '8b431bb4-e1f6-3591-8de5-4f685c0be87e');
CREATE TABLE "email_connector$scopeselected_oauthprovider" (
	"email_connector$scopeselectedid" BIGINT NOT NULL,
	"email_connector$oauthproviderid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$scopeselectedid","email_connector$oauthproviderid"),
	CONSTRAINT "uniq_email_connector$scopeselected_oauthprovider_email_connector$scopeselectedid" UNIQUE ("email_connector$scopeselectedid"),
	CONSTRAINT "frn_email_connector$scopeselected_oauthprovider_email_connector$scopeselectedid" FOREIGN KEY ( "email_connector$scopeselectedid" ) REFERENCES "email_connector$scopeselected" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_email_connector$scopeselected_oauthprovider_email_connector$oauthproviderid" FOREIGN KEY ( "email_connector$oauthproviderid" ) REFERENCES "email_connector$oauthprovider" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_email_connector$scopeselected_oauthprovider_email_connector$oauthprovider_email_connector$scopeselected" ON "email_connector$scopeselected_oauthprovider" ("email_connector$oauthproviderid" ASC,"email_connector$scopeselectedid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('d3719da9-414a-4b53-be30-7eeb77e1b12f', 'Email_Connector.ScopeSelected_OAuthProvider', 'email_connector$scopeselected_oauthprovider', 'a3962be5-cd0e-4717-b408-7eaf10364e97', '0b6949b2-3592-4312-96bc-237fc4b7c0af', 'email_connector$scopeselectedid', 'email_connector$oauthproviderid', 'idx_email_connector$scopeselected_oauthprovider_email_connector$oauthprovider_email_connector$scopeselected', 'frn_email_connector$scopeselected_oauthprovider_email_connector$scopeselectedid', 'frn_email_connector$scopeselected_oauthprovider_email_connector$oauthproviderid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$scopeselected_oauthprovider_email_connector$scopeselectedid', 'd3719da9-414a-4b53-be30-7eeb77e1b12f', '94ebd8f6-03cb-3f5e-b572-9c9a4beff16e');
CREATE TABLE "mxmodelreflection$mxobjecttype_subclassof_mxobjecttype" (
	"mxmodelreflection$mxobjecttypeid1" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid2" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjecttypeid1","mxmodelreflection$mxobjecttypeid2"),
	CONSTRAINT "frn_mxmodelreflection$mxobjecttype_subclassof_mxobjecttype_mxmodelreflection$mxobjecttypeid1" FOREIGN KEY ( "mxmodelreflection$mxobjecttypeid1" ) REFERENCES "mxmodelreflection$mxobjecttype" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_mxmodelreflection$mxobjecttype_subclassof_mxobjecttype_mxmodelreflection$mxobjecttypeid2" FOREIGN KEY ( "mxmodelreflection$mxobjecttypeid2" ) REFERENCES "mxmodelreflection$mxobjecttype" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_mxmodelreflection$mxobjecttype_subclassof_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjecttype" ON "mxmodelreflection$mxobjecttype_subclassof_mxobjecttype" ("mxmodelreflection$mxobjecttypeid2" ASC,"mxmodelreflection$mxobjecttypeid1" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('e2123489-bba4-47c5-8f5e-bb7ccb7495c8', 'MxModelReflection.MxObjectType_SubClassOf_MxObjectType', 'mxmodelreflection$mxobjecttype_subclassof_mxobjecttype', '51bad690-5319-47b7-9cd2-e14cc4aaa1e7', '51bad690-5319-47b7-9cd2-e14cc4aaa1e7', 'mxmodelreflection$mxobjecttypeid1', 'mxmodelreflection$mxobjecttypeid2', 'idx_mxmodelreflection$mxobjecttype_subclassof_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjecttype', 'frn_mxmodelreflection$mxobjecttype_subclassof_mxobjecttype_mxmodelreflection$mxobjecttypeid1', 'frn_mxmodelreflection$mxobjecttype_subclassof_mxobjecttype_mxmodelreflection$mxobjecttypeid2', 0, 0);
CREATE TABLE "mxmodelreflection$mxobjecttype_module" (
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	"mxmodelreflection$moduleid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjecttypeid","mxmodelreflection$moduleid"),
	CONSTRAINT "uniq_mxmodelreflection$mxobjecttype_module_mxmodelreflection$mxobjecttypeid" UNIQUE ("mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "frn_mxmodelreflection$mxobjecttype_module_mxmodelreflection$mxobjecttypeid" FOREIGN KEY ( "mxmodelreflection$mxobjecttypeid" ) REFERENCES "mxmodelreflection$mxobjecttype" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_mxmodelreflection$mxobjecttype_module_mxmodelreflection$moduleid" FOREIGN KEY ( "mxmodelreflection$moduleid" ) REFERENCES "mxmodelreflection$module" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_mxmodelreflection$mxobjecttype_module_mxmodelreflection$module_mxmodelreflection$mxobjecttype" ON "mxmodelreflection$mxobjecttype_module" ("mxmodelreflection$moduleid" ASC,"mxmodelreflection$mxobjecttypeid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('2fc019a7-e902-42e9-949a-fbf4e713aa1d', 'MxModelReflection.MxObjectType_Module', 'mxmodelreflection$mxobjecttype_module', '51bad690-5319-47b7-9cd2-e14cc4aaa1e7', '559c479c-5523-4b96-a04f-419b5c8e6930', 'mxmodelreflection$mxobjecttypeid', 'mxmodelreflection$moduleid', 'idx_mxmodelreflection$mxobjecttype_module_mxmodelreflection$module_mxmodelreflection$mxobjecttype', 'frn_mxmodelreflection$mxobjecttype_module_mxmodelreflection$mxobjecttypeid', 'frn_mxmodelreflection$mxobjecttype_module_mxmodelreflection$moduleid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$mxobjecttype_module_mxmodelreflection$mxobjecttypeid', '2fc019a7-e902-42e9-949a-fbf4e713aa1d', '45030952-7b9c-394e-9b37-f4f9752375aa');
CREATE TABLE "email_connector$oauthnonce_emailaccount" (
	"email_connector$oauthnonceid" BIGINT NOT NULL,
	"email_connector$emailaccountid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$oauthnonceid","email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$oauthnonce_emailaccount_email_connector$oauthnonceid" UNIQUE ("email_connector$oauthnonceid"),
	CONSTRAINT "frn_email_connector$oauthnonce_emailaccount_email_connector$oauthnonceid" FOREIGN KEY ( "email_connector$oauthnonceid" ) REFERENCES "email_connector$oauthnonce" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_email_connector$oauthnonce_emailaccount_email_connector$emailaccountid" FOREIGN KEY ( "email_connector$emailaccountid" ) REFERENCES "email_connector$emailaccount" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_email_connector$oauthnonce_emailaccount_email_connector$emailaccount_email_connector$oauthnonce" ON "email_connector$oauthnonce_emailaccount" ("email_connector$emailaccountid" ASC,"email_connector$oauthnonceid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('8d44a5d6-7218-4b04-9a4e-7e804e84c6fc', 'Email_Connector.OAuthNonce_EmailAccount', 'email_connector$oauthnonce_emailaccount', 'e2318a2c-8906-4996-bf6b-54a65d96cc59', 'c1712745-65db-456a-b4c1-783409406870', 'email_connector$oauthnonceid', 'email_connector$emailaccountid', 'idx_email_connector$oauthnonce_emailaccount_email_connector$emailaccount_email_connector$oauthnonce', 'frn_email_connector$oauthnonce_emailaccount_email_connector$oauthnonceid', 'frn_email_connector$oauthnonce_emailaccount_email_connector$emailaccountid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$oauthnonce_emailaccount_email_connector$oauthnonceid', '8d44a5d6-7218-4b04-9a4e-7e804e84c6fc', '7047c231-03c0-3d75-b6ef-0fa1a2e89eeb');
CREATE TABLE "mxmodelreflection$valuetype_mxobjecttype" (
	"mxmodelreflection$valuetypeid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$valuetypeid","mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "uniq_mxmodelreflection$valuetype_mxobjecttype_mxmodelreflection$valuetypeid" UNIQUE ("mxmodelreflection$valuetypeid"),
	CONSTRAINT "frn_mxmodelreflection$valuetype_mxobjecttype_mxmodelreflection$valuetypeid" FOREIGN KEY ( "mxmodelreflection$valuetypeid" ) REFERENCES "mxmodelreflection$valuetype" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_mxmodelreflection$valuetype_mxobjecttype_mxmodelreflection$mxobjecttypeid" FOREIGN KEY ( "mxmodelreflection$mxobjecttypeid" ) REFERENCES "mxmodelreflection$mxobjecttype" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_mxmodelreflection$valuetype_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$valuetype" ON "mxmodelreflection$valuetype_mxobjecttype" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$valuetypeid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('8c1154bf-d2df-493c-b260-4e332d98f516', 'MxModelReflection.ValueType_MxObjectType', 'mxmodelreflection$valuetype_mxobjecttype', '436d68cf-8cc8-4969-94c5-952607361022', '51bad690-5319-47b7-9cd2-e14cc4aaa1e7', 'mxmodelreflection$valuetypeid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$valuetype_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$valuetype', 'frn_mxmodelreflection$valuetype_mxobjecttype_mxmodelreflection$valuetypeid', 'frn_mxmodelreflection$valuetype_mxobjecttype_mxmodelreflection$mxobjecttypeid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$valuetype_mxobjecttype_mxmodelreflection$valuetypeid', '8c1154bf-d2df-493c-b260-4e332d98f516', '9c2bea76-937a-3d68-a59a-b7ce8ab9307d');
CREATE TABLE "email_connector$querystring_oauthprovider" (
	"email_connector$querystringid" BIGINT NOT NULL,
	"email_connector$oauthproviderid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$querystringid","email_connector$oauthproviderid"),
	CONSTRAINT "uniq_email_connector$querystring_oauthprovider_email_connector$querystringid" UNIQUE ("email_connector$querystringid"),
	CONSTRAINT "frn_email_connector$querystring_oauthprovider_email_connector$querystringid" FOREIGN KEY ( "email_connector$querystringid" ) REFERENCES "email_connector$querystring" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_email_connector$querystring_oauthprovider_email_connector$oauthproviderid" FOREIGN KEY ( "email_connector$oauthproviderid" ) REFERENCES "email_connector$oauthprovider" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_email_connector$querystring_oauthprovider_email_connector$oauthprovider_email_connector$querystring" ON "email_connector$querystring_oauthprovider" ("email_connector$oauthproviderid" ASC,"email_connector$querystringid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('1392d98a-b029-4a6e-b7e3-0518a36d9309', 'Email_Connector.QueryString_OAuthProvider', 'email_connector$querystring_oauthprovider', 'e58cfcee-86a3-44a4-add1-7ceb11749e91', '0b6949b2-3592-4312-96bc-237fc4b7c0af', 'email_connector$querystringid', 'email_connector$oauthproviderid', 'idx_email_connector$querystring_oauthprovider_email_connector$oauthprovider_email_connector$querystring', 'frn_email_connector$querystring_oauthprovider_email_connector$querystringid', 'frn_email_connector$querystring_oauthprovider_email_connector$oauthproviderid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$querystring_oauthprovider_email_connector$querystringid', '1392d98a-b029-4a6e-b7e3-0518a36d9309', 'be9d1ca1-052a-31cb-816a-4dc48c84d606');
CREATE TABLE "mxmodelreflection$values" (
	"mxmodelreflection$mxobjectenumid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjectenumvalueid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjectenumid","mxmodelreflection$mxobjectenumvalueid"),
	CONSTRAINT "frn_mxmodelreflection$values_mxmodelreflection$mxobjectenumid" FOREIGN KEY ( "mxmodelreflection$mxobjectenumid" ) REFERENCES "mxmodelreflection$mxobjectenum" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_mxmodelreflection$values_mxmodelreflection$mxobjectenumvalueid" FOREIGN KEY ( "mxmodelreflection$mxobjectenumvalueid" ) REFERENCES "mxmodelreflection$mxobjectenumvalue" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_mxmodelreflection$values_mxmodelreflection$mxobjectenumvalue_mxmodelreflection$mxobjectenum" ON "mxmodelreflection$values" ("mxmodelreflection$mxobjectenumvalueid" ASC,"mxmodelreflection$mxobjectenumid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('304528da-4ccd-4e5d-a2e4-d8c3acac63d0', 'MxModelReflection.Values', 'mxmodelreflection$values', '717e7446-68c4-4235-bf4b-f7f8dfbdfaaa', '188e55a6-90ba-4a8f-9b93-3d4eb8e31943', 'mxmodelreflection$mxobjectenumid', 'mxmodelreflection$mxobjectenumvalueid', 'idx_mxmodelreflection$values_mxmodelreflection$mxobjectenumvalue_mxmodelreflection$mxobjectenum', 'frn_mxmodelreflection$values_mxmodelreflection$mxobjectenumid', 'frn_mxmodelreflection$values_mxmodelreflection$mxobjectenumvalueid', 0, 0);
CREATE TABLE "mxmodelreflection$captions" (
	"mxmodelreflection$mxobjectenumvalueid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjectenumcaptionsid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjectenumvalueid","mxmodelreflection$mxobjectenumcaptionsid"),
	CONSTRAINT "frn_mxmodelreflection$captions_mxmodelreflection$mxobjectenumvalueid" FOREIGN KEY ( "mxmodelreflection$mxobjectenumvalueid" ) REFERENCES "mxmodelreflection$mxobjectenumvalue" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_mxmodelreflection$captions_mxmodelreflection$mxobjectenumcaptionsid" FOREIGN KEY ( "mxmodelreflection$mxobjectenumcaptionsid" ) REFERENCES "mxmodelreflection$mxobjectenumcaptions" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_mxmodelreflection$captions_mxmodelreflection$mxobjectenumcaptions_mxmodelreflection$mxobjectenumvalue" ON "mxmodelreflection$captions" ("mxmodelreflection$mxobjectenumcaptionsid" ASC,"mxmodelreflection$mxobjectenumvalueid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('63b6db29-907f-4113-9b74-00d8001a02dd', 'MxModelReflection.Captions', 'mxmodelreflection$captions', '188e55a6-90ba-4a8f-9b93-3d4eb8e31943', '3d65d607-9c60-4be5-96ac-68206a0d8a15', 'mxmodelreflection$mxobjectenumvalueid', 'mxmodelreflection$mxobjectenumcaptionsid', 'idx_mxmodelreflection$captions_mxmodelreflection$mxobjectenumcaptions_mxmodelreflection$mxobjectenumvalue', 'frn_mxmodelreflection$captions_mxmodelreflection$mxobjectenumvalueid', 'frn_mxmodelreflection$captions_mxmodelreflection$mxobjectenumcaptionsid', 0, 0);
CREATE TABLE "mxmodelreflection$dbsizeestimate_mxobjecttype" (
	"mxmodelreflection$dbsizeestimateid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$dbsizeestimateid","mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "uniq_mxmodelreflection$dbsizeestimate_mxobjecttype_mxmodelreflection$dbsizeestimateid" UNIQUE ("mxmodelreflection$dbsizeestimateid"),
	CONSTRAINT "frn_mxmodelreflection$dbsizeestimate_mxobjecttype_mxmodelreflection$dbsizeestimateid" FOREIGN KEY ( "mxmodelreflection$dbsizeestimateid" ) REFERENCES "mxmodelreflection$dbsizeestimate" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_mxmodelreflection$dbsizeestimate_mxobjecttype_mxmodelreflection$mxobjecttypeid" FOREIGN KEY ( "mxmodelreflection$mxobjecttypeid" ) REFERENCES "mxmodelreflection$mxobjecttype" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_mxmodelreflection$dbsizeestimate_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$dbsizeestimate" ON "mxmodelreflection$dbsizeestimate_mxobjecttype" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$dbsizeestimateid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('c988b5e2-7e3e-4bc9-852e-1c424afbb893', 'MxModelReflection.DbSizeEstimate_MxObjectType', 'mxmodelreflection$dbsizeestimate_mxobjecttype', '667d5ba1-bd73-42cd-b9aa-3fc56d7ee76e', '51bad690-5319-47b7-9cd2-e14cc4aaa1e7', 'mxmodelreflection$dbsizeestimateid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$dbsizeestimate_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$dbsizeestimate', 'frn_mxmodelreflection$dbsizeestimate_mxobjecttype_mxmodelreflection$dbsizeestimateid', 'frn_mxmodelreflection$dbsizeestimate_mxobjecttype_mxmodelreflection$mxobjecttypeid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$dbsizeestimate_mxobjecttype_mxmodelreflection$dbsizeestimateid', 'c988b5e2-7e3e-4bc9-852e-1c424afbb893', 'e1560554-b7ff-3454-9133-1d132f2c63fa');
CREATE TABLE "mxmodelreflection$parameter_mxobjecttype" (
	"mxmodelreflection$parameterid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$parameterid","mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "uniq_mxmodelreflection$parameter_mxobjecttype_mxmodelreflection$parameterid" UNIQUE ("mxmodelreflection$parameterid"),
	CONSTRAINT "frn_mxmodelreflection$parameter_mxobjecttype_mxmodelreflection$parameterid" FOREIGN KEY ( "mxmodelreflection$parameterid" ) REFERENCES "mxmodelreflection$parameter" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_mxmodelreflection$parameter_mxobjecttype_mxmodelreflection$mxobjecttypeid" FOREIGN KEY ( "mxmodelreflection$mxobjecttypeid" ) REFERENCES "mxmodelreflection$mxobjecttype" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_mxmodelreflection$parameter_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$parameter" ON "mxmodelreflection$parameter_mxobjecttype" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$parameterid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('234b8514-4be3-4406-957c-97fe0547cb35', 'MxModelReflection.Parameter_MxObjectType', 'mxmodelreflection$parameter_mxobjecttype', '077b887d-7976-41e9-b6e0-3ebefddcd05b', '51bad690-5319-47b7-9cd2-e14cc4aaa1e7', 'mxmodelreflection$parameterid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$parameter_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$parameter', 'frn_mxmodelreflection$parameter_mxobjecttype_mxmodelreflection$parameterid', 'frn_mxmodelreflection$parameter_mxobjecttype_mxmodelreflection$mxobjecttypeid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$parameter_mxobjecttype_mxmodelreflection$parameterid', '234b8514-4be3-4406-957c-97fe0547cb35', '1e94bc9b-4c4a-38e0-923e-b99c3d309657');
CREATE TABLE "mxmodelreflection$parameter_valuetype" (
	"mxmodelreflection$parameterid" BIGINT NOT NULL,
	"mxmodelreflection$valuetypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$parameterid","mxmodelreflection$valuetypeid"),
	CONSTRAINT "uniq_mxmodelreflection$parameter_valuetype_mxmodelreflection$parameterid" UNIQUE ("mxmodelreflection$parameterid"),
	CONSTRAINT "frn_mxmodelreflection$parameter_valuetype_mxmodelreflection$parameterid" FOREIGN KEY ( "mxmodelreflection$parameterid" ) REFERENCES "mxmodelreflection$parameter" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_mxmodelreflection$parameter_valuetype_mxmodelreflection$valuetypeid" FOREIGN KEY ( "mxmodelreflection$valuetypeid" ) REFERENCES "mxmodelreflection$valuetype" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_mxmodelreflection$parameter_valuetype_mxmodelreflection$valuetype_mxmodelreflection$parameter" ON "mxmodelreflection$parameter_valuetype" ("mxmodelreflection$valuetypeid" ASC,"mxmodelreflection$parameterid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('9fcf2778-ef37-44e5-b173-df6673d0aa5a', 'MxModelReflection.Parameter_ValueType', 'mxmodelreflection$parameter_valuetype', '077b887d-7976-41e9-b6e0-3ebefddcd05b', '436d68cf-8cc8-4969-94c5-952607361022', 'mxmodelreflection$parameterid', 'mxmodelreflection$valuetypeid', 'idx_mxmodelreflection$parameter_valuetype_mxmodelreflection$valuetype_mxmodelreflection$parameter', 'frn_mxmodelreflection$parameter_valuetype_mxmodelreflection$parameterid', 'frn_mxmodelreflection$parameter_valuetype_mxmodelreflection$valuetypeid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$parameter_valuetype_mxmodelreflection$parameterid', '9fcf2778-ef37-44e5-b173-df6673d0aa5a', '58413d46-51a4-3876-afaf-8c6b64b5ec62');
CREATE TABLE "mxmodelreflection$token_mxobjecttype_start" (
	"mxmodelreflection$tokenid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$tokenid","mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "uniq_mxmodelreflection$token_mxobjecttype_start_mxmodelreflection$tokenid" UNIQUE ("mxmodelreflection$tokenid"),
	CONSTRAINT "frn_mxmodelreflection$token_mxobjecttype_start_mxmodelreflection$tokenid" FOREIGN KEY ( "mxmodelreflection$tokenid" ) REFERENCES "mxmodelreflection$token" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_mxmodelreflection$token_mxobjecttype_start_mxmodelreflection$mxobjecttypeid" FOREIGN KEY ( "mxmodelreflection$mxobjecttypeid" ) REFERENCES "mxmodelreflection$mxobjecttype" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_mxmodelreflection$token_mxobjecttype_start_mxmodelreflection$mxobjecttype_mxmodelreflection$token" ON "mxmodelreflection$token_mxobjecttype_start" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$tokenid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('0704bf35-ea4e-47ea-88fb-c5a49c6e1125', 'MxModelReflection.Token_MxObjectType_Start', 'mxmodelreflection$token_mxobjecttype_start', '8333919a-d46a-4aca-9a4d-8aad39c6430e', '51bad690-5319-47b7-9cd2-e14cc4aaa1e7', 'mxmodelreflection$tokenid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$token_mxobjecttype_start_mxmodelreflection$mxobjecttype_mxmodelreflection$token', 'frn_mxmodelreflection$token_mxobjecttype_start_mxmodelreflection$tokenid', 'frn_mxmodelreflection$token_mxobjecttype_start_mxmodelreflection$mxobjecttypeid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$token_mxobjecttype_start_mxmodelreflection$tokenid', '0704bf35-ea4e-47ea-88fb-c5a49c6e1125', 'ce3d9cb1-fdd2-3a61-8138-fc8163180683');
CREATE TABLE "mxmodelreflection$token_mxobjectreference" (
	"mxmodelreflection$tokenid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjectreferenceid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$tokenid","mxmodelreflection$mxobjectreferenceid"),
	CONSTRAINT "uniq_mxmodelreflection$token_mxobjectreference_mxmodelreflection$tokenid" UNIQUE ("mxmodelreflection$tokenid"),
	CONSTRAINT "frn_mxmodelreflection$token_mxobjectreference_mxmodelreflection$tokenid" FOREIGN KEY ( "mxmodelreflection$tokenid" ) REFERENCES "mxmodelreflection$token" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_mxmodelreflection$token_mxobjectreference_mxmodelreflection$mxobjectreferenceid" FOREIGN KEY ( "mxmodelreflection$mxobjectreferenceid" ) REFERENCES "mxmodelreflection$mxobjectreference" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_mxmodelreflection$token_mxobjectreference_mxmodelreflection$mxobjectreference_mxmodelreflection$token" ON "mxmodelreflection$token_mxobjectreference" ("mxmodelreflection$mxobjectreferenceid" ASC,"mxmodelreflection$tokenid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('6e5fc3f3-8ce7-4d6b-850c-f2a338671025', 'MxModelReflection.Token_MxObjectReference', 'mxmodelreflection$token_mxobjectreference', '8333919a-d46a-4aca-9a4d-8aad39c6430e', 'c3dfbfc2-2084-468e-95ee-4b3d91dd8a12', 'mxmodelreflection$tokenid', 'mxmodelreflection$mxobjectreferenceid', 'idx_mxmodelreflection$token_mxobjectreference_mxmodelreflection$mxobjectreference_mxmodelreflection$token', 'frn_mxmodelreflection$token_mxobjectreference_mxmodelreflection$tokenid', 'frn_mxmodelreflection$token_mxobjectreference_mxmodelreflection$mxobjectreferenceid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$token_mxobjectreference_mxmodelreflection$tokenid', '6e5fc3f3-8ce7-4d6b-850c-f2a338671025', 'e2a58b5f-d4ab-34cb-acc4-a877161095f1');
CREATE TABLE "mxmodelreflection$token_mxobjecttype_referenced" (
	"mxmodelreflection$tokenid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$tokenid","mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "uniq_mxmodelreflection$token_mxobjecttype_referenced_mxmodelreflection$tokenid" UNIQUE ("mxmodelreflection$tokenid"),
	CONSTRAINT "frn_mxmodelreflection$token_mxobjecttype_referenced_mxmodelreflection$tokenid" FOREIGN KEY ( "mxmodelreflection$tokenid" ) REFERENCES "mxmodelreflection$token" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_mxmodelreflection$token_mxobjecttype_referenced_mxmodelreflection$mxobjecttypeid" FOREIGN KEY ( "mxmodelreflection$mxobjecttypeid" ) REFERENCES "mxmodelreflection$mxobjecttype" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_mxmodelreflection$token_mxobjecttype_referenced_mxmodelreflection$mxobjecttype_mxmodelreflection$token" ON "mxmodelreflection$token_mxobjecttype_referenced" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$tokenid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('18458a10-f7de-49b0-8e60-c0b50fc5eabd', 'MxModelReflection.Token_MxObjectType_Referenced', 'mxmodelreflection$token_mxobjecttype_referenced', '8333919a-d46a-4aca-9a4d-8aad39c6430e', '51bad690-5319-47b7-9cd2-e14cc4aaa1e7', 'mxmodelreflection$tokenid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$token_mxobjecttype_referenced_mxmodelreflection$mxobjecttype_mxmodelreflection$token', 'frn_mxmodelreflection$token_mxobjecttype_referenced_mxmodelreflection$tokenid', 'frn_mxmodelreflection$token_mxobjecttype_referenced_mxmodelreflection$mxobjecttypeid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$token_mxobjecttype_referenced_mxmodelreflection$tokenid', '18458a10-f7de-49b0-8e60-c0b50fc5eabd', '6c822f06-6a78-3a15-bdd1-7df6f0206706');
CREATE TABLE "mxmodelreflection$token_mxobjectmember" (
	"mxmodelreflection$tokenid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjectmemberid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$tokenid","mxmodelreflection$mxobjectmemberid"),
	CONSTRAINT "uniq_mxmodelreflection$token_mxobjectmember_mxmodelreflection$tokenid" UNIQUE ("mxmodelreflection$tokenid"),
	CONSTRAINT "frn_mxmodelreflection$token_mxobjectmember_mxmodelreflection$tokenid" FOREIGN KEY ( "mxmodelreflection$tokenid" ) REFERENCES "mxmodelreflection$token" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_mxmodelreflection$token_mxobjectmember_mxmodelreflection$mxobjectmemberid" FOREIGN KEY ( "mxmodelreflection$mxobjectmemberid" ) REFERENCES "mxmodelreflection$mxobjectmember" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_mxmodelreflection$token_mxobjectmember_mxmodelreflection$mxobjectmember_mxmodelreflection$token" ON "mxmodelreflection$token_mxobjectmember" ("mxmodelreflection$mxobjectmemberid" ASC,"mxmodelreflection$tokenid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('fc43e039-01d1-4e9f-8a46-8f5119be3a57', 'MxModelReflection.Token_MxObjectMember', 'mxmodelreflection$token_mxobjectmember', '8333919a-d46a-4aca-9a4d-8aad39c6430e', '8d287716-1fbc-413d-9fe6-e6a8d18eda00', 'mxmodelreflection$tokenid', 'mxmodelreflection$mxobjectmemberid', 'idx_mxmodelreflection$token_mxobjectmember_mxmodelreflection$mxobjectmember_mxmodelreflection$token', 'frn_mxmodelreflection$token_mxobjectmember_mxmodelreflection$tokenid', 'frn_mxmodelreflection$token_mxobjectmember_mxmodelreflection$mxobjectmemberid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$token_mxobjectmember_mxmodelreflection$tokenid', 'fc43e039-01d1-4e9f-8a46-8f5119be3a57', 'b6893fec-f757-3c0f-a358-dc670128431a');
CREATE TABLE "email_connector$pk12certificate_emailaccount" (
	"email_connector$pk12certificateid" BIGINT NOT NULL,
	"email_connector$emailaccountid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$pk12certificateid","email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$pk12certificate_emailaccount_email_connector$emailaccountid" UNIQUE ("email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$pk12certificate_emailaccount_email_connector$pk12certificateid" UNIQUE ("email_connector$pk12certificateid"),
	CONSTRAINT "frn_email_connector$pk12certificate_emailaccount_email_connector$pk12certificateid" FOREIGN KEY ( "email_connector$pk12certificateid" ) REFERENCES "email_connector$pk12certificate" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_email_connector$pk12certificate_emailaccount_email_connector$emailaccountid" FOREIGN KEY ( "email_connector$emailaccountid" ) REFERENCES "email_connector$emailaccount" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_email_connector$pk12certificate_emailaccount_email_connector$emailaccount_email_connector$pk12certificate" ON "email_connector$pk12certificate_emailaccount" ("email_connector$emailaccountid" ASC,"email_connector$pk12certificateid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('c4a14e22-18f4-4211-b681-d3bb7650fa13', 'Email_Connector.Pk12Certificate_EmailAccount', 'email_connector$pk12certificate_emailaccount', '9d18d4d9-6e25-49b7-9770-24c7c388d215', 'c1712745-65db-456a-b4c1-783409406870', 'email_connector$pk12certificateid', 'email_connector$emailaccountid', 'idx_email_connector$pk12certificate_emailaccount_email_connector$emailaccount_email_connector$pk12certificate', 'frn_email_connector$pk12certificate_emailaccount_email_connector$pk12certificateid', 'frn_email_connector$pk12certificate_emailaccount_email_connector$emailaccountid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$pk12certificate_emailaccount_email_connector$emailaccountid', 'c4a14e22-18f4-4211-b681-d3bb7650fa13', '36a102df-cad8-35f2-b7d3-ba026e1f734a');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$pk12certificate_emailaccount_email_connector$pk12certificateid', 'c4a14e22-18f4-4211-b681-d3bb7650fa13', '8fdc5446-97ba-39d9-b671-f66418cc9932');
CREATE TABLE "email_connector$emailtemplate_mxobjecttype" (
	"email_connector$emailtemplateid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailtemplateid","mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "uniq_email_connector$emailtemplate_mxobjecttype_email_connector$emailtemplateid" UNIQUE ("email_connector$emailtemplateid"),
	CONSTRAINT "frn_email_connector$emailtemplate_mxobjecttype_email_connector$emailtemplateid" FOREIGN KEY ( "email_connector$emailtemplateid" ) REFERENCES "email_connector$emailtemplate" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_email_connector$emailtemplate_mxobjecttype_mxmodelreflection$mxobjecttypeid" FOREIGN KEY ( "mxmodelreflection$mxobjecttypeid" ) REFERENCES "mxmodelreflection$mxobjecttype" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_email_connector$emailtemplate_mxobjecttype_mxmodelreflection$mxobjecttype_email_connector$emailtemplate" ON "email_connector$emailtemplate_mxobjecttype" ("mxmodelreflection$mxobjecttypeid" ASC,"email_connector$emailtemplateid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('a5dedb79-b51c-4ea2-96c0-d34f8f82503a', 'Email_Connector.EmailTemplate_MxObjectType', 'email_connector$emailtemplate_mxobjecttype', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', '51bad690-5319-47b7-9cd2-e14cc4aaa1e7', 'email_connector$emailtemplateid', 'mxmodelreflection$mxobjecttypeid', 'idx_email_connector$emailtemplate_mxobjecttype_mxmodelreflection$mxobjecttype_email_connector$emailtemplate', 'frn_email_connector$emailtemplate_mxobjecttype_email_connector$emailtemplateid', 'frn_email_connector$emailtemplate_mxobjecttype_mxmodelreflection$mxobjecttypeid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailtemplate_mxobjecttype_email_connector$emailtemplateid', 'a5dedb79-b51c-4ea2-96c0-d34f8f82503a', 'a1996730-b0ac-36b6-9ad9-6f563a427770');
CREATE TABLE "email_connector$emailtemplate_token" (
	"email_connector$emailtemplateid" BIGINT NOT NULL,
	"mxmodelreflection$tokenid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailtemplateid","mxmodelreflection$tokenid"),
	CONSTRAINT "frn_email_connector$emailtemplate_token_email_connector$emailtemplateid" FOREIGN KEY ( "email_connector$emailtemplateid" ) REFERENCES "email_connector$emailtemplate" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_email_connector$emailtemplate_token_mxmodelreflection$tokenid" FOREIGN KEY ( "mxmodelreflection$tokenid" ) REFERENCES "mxmodelreflection$token" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_email_connector$emailtemplate_token_mxmodelreflection$token_email_connector$emailtemplate" ON "email_connector$emailtemplate_token" ("mxmodelreflection$tokenid" ASC,"email_connector$emailtemplateid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('d79f3753-5657-45f2-85f7-5aee1e396e3f', 'Email_Connector.EmailTemplate_Token', 'email_connector$emailtemplate_token', '82fa4dff-f8b7-4a71-b722-1c7b512e1c5e', '8333919a-d46a-4aca-9a4d-8aad39c6430e', 'email_connector$emailtemplateid', 'mxmodelreflection$tokenid', 'idx_email_connector$emailtemplate_token_mxmodelreflection$token_email_connector$emailtemplate', 'frn_email_connector$emailtemplate_token_email_connector$emailtemplateid', 'frn_email_connector$emailtemplate_token_mxmodelreflection$tokenid', 0, 0);
ALTER TABLE "mxmodelreflection$mxobjectreference" ADD CONSTRAINT "frn_mxmodelreflection$mxobjectreference_system$owner" FOREIGN KEY ( "system$owner" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "mxmodelreflection$mxobjectreference" ADD CONSTRAINT "frn_mxmodelreflection$mxobjectreference_system$changedby" FOREIGN KEY ( "system$changedby" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "email_connector$outgoingemailconfiguration" ADD CONSTRAINT "frn_email_connector$outgoingemailconfiguration_system$changedby" FOREIGN KEY ( "system$changedby" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "email_connector$outgoingemailconfiguration" ADD CONSTRAINT "frn_email_connector$outgoingemailconfiguration_system$owner" FOREIGN KEY ( "system$owner" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "email_connector$emailmessage" ADD CONSTRAINT "frn_email_connector$emailmessage_system$owner" FOREIGN KEY ( "system$owner" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "mxmodelreflection$microflows" ADD CONSTRAINT "frn_mxmodelreflection$microflows_system$owner" FOREIGN KEY ( "system$owner" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "mxmodelreflection$microflows" ADD CONSTRAINT "frn_mxmodelreflection$microflows_system$changedby" FOREIGN KEY ( "system$changedby" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "mxmodelreflection$mxobjectmember" ADD CONSTRAINT "frn_mxmodelreflection$mxobjectmember_system$changedby" FOREIGN KEY ( "system$changedby" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "mxmodelreflection$mxobjectmember" ADD CONSTRAINT "frn_mxmodelreflection$mxobjectmember_system$owner" FOREIGN KEY ( "system$owner" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "email_connector$oauthtoken" ADD CONSTRAINT "frn_email_connector$oauthtoken_system$changedby" FOREIGN KEY ( "system$changedby" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "email_connector$oauthtoken" ADD CONSTRAINT "frn_email_connector$oauthtoken_system$owner" FOREIGN KEY ( "system$owner" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "email_connector$incomingemailconfiguration" ADD CONSTRAINT "frn_email_connector$incomingemailconfiguration_system$owner" FOREIGN KEY ( "system$owner" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "email_connector$incomingemailconfiguration" ADD CONSTRAINT "frn_email_connector$incomingemailconfiguration_system$changedby" FOREIGN KEY ( "system$changedby" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "email_connector$ldapconfiguration" ADD CONSTRAINT "frn_email_connector$ldapconfiguration_system$owner" FOREIGN KEY ( "system$owner" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "email_connector$ldapconfiguration" ADD CONSTRAINT "frn_email_connector$ldapconfiguration_system$changedby" FOREIGN KEY ( "system$changedby" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "email_connector$emailaccount" ADD CONSTRAINT "frn_email_connector$emailaccount_system$changedby" FOREIGN KEY ( "system$changedby" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "email_connector$emailaccount" ADD CONSTRAINT "frn_email_connector$emailaccount_system$owner" FOREIGN KEY ( "system$owner" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "mxmodelreflection$mxobjecttype" ADD CONSTRAINT "frn_mxmodelreflection$mxobjecttype_system$changedby" FOREIGN KEY ( "system$changedby" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "mxmodelreflection$mxobjecttype" ADD CONSTRAINT "frn_mxmodelreflection$mxobjecttype_system$owner" FOREIGN KEY ( "system$owner" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "mxmodelreflection$valuetype" ADD CONSTRAINT "frn_mxmodelreflection$valuetype_system$changedby" FOREIGN KEY ( "system$changedby" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "mxmodelreflection$valuetype" ADD CONSTRAINT "frn_mxmodelreflection$valuetype_system$owner" FOREIGN KEY ( "system$owner" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "mxmodelreflection$mxobjectenumvalue" ADD CONSTRAINT "frn_mxmodelreflection$mxobjectenumvalue_system$changedby" FOREIGN KEY ( "system$changedby" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "mxmodelreflection$mxobjectenumvalue" ADD CONSTRAINT "frn_mxmodelreflection$mxobjectenumvalue_system$owner" FOREIGN KEY ( "system$owner" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "mxmodelreflection$parameter" ADD CONSTRAINT "frn_mxmodelreflection$parameter_system$changedby" FOREIGN KEY ( "system$changedby" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "mxmodelreflection$parameter" ADD CONSTRAINT "frn_mxmodelreflection$parameter_system$owner" FOREIGN KEY ( "system$owner" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "mxmodelreflection$token" ADD CONSTRAINT "frn_mxmodelreflection$token_system$owner" FOREIGN KEY ( "system$owner" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "mxmodelreflection$token" ADD CONSTRAINT "frn_mxmodelreflection$token_system$changedby" FOREIGN KEY ( "system$changedby" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "mxmodelreflection$mxobjectenumcaptions" ADD CONSTRAINT "frn_mxmodelreflection$mxobjectenumcaptions_system$owner" FOREIGN KEY ( "system$owner" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "mxmodelreflection$mxobjectenumcaptions" ADD CONSTRAINT "frn_mxmodelreflection$mxobjectenumcaptions_system$changedby" FOREIGN KEY ( "system$changedby" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "email_connector$emailtemplate" ADD CONSTRAINT "frn_email_connector$emailtemplate_system$changedby" FOREIGN KEY ( "system$changedby" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "email_connector$emailtemplate" ADD CONSTRAINT "frn_email_connector$emailtemplate_system$owner" FOREIGN KEY ( "system$owner" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "email_connector$oauthprovider" ADD CONSTRAINT "frn_email_connector$oauthprovider_system$changedby" FOREIGN KEY ( "system$changedby" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
ALTER TABLE "email_connector$oauthprovider" ADD CONSTRAINT "frn_email_connector$oauthprovider_system$owner" FOREIGN KEY ( "system$owner" ) REFERENCES "system$user" ( "id" ) ON DELETE SET NULL;
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20241031 14:48:15';
