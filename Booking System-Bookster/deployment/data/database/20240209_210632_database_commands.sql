CREATE TABLE "oidc$clientconfiguration" (
	"id" BIGINT NOT NULL,
	"alias" VARCHAR_IGNORECASE(200) NULL,
	"clientid" VARCHAR_IGNORECASE(2147483647) NULL,
	"clientassertion" VARCHAR_IGNORECASE(20) NULL,
	"encryptedclientsecret" VARCHAR_IGNORECASE(1000) NULL,
	"isdefault" BOOLEAN NULL,
	"active" BOOLEAN NULL,
	"wellknownconfiguri" VARCHAR_IGNORECASE(500) NULL,
	"authorizationendpoint" VARCHAR_IGNORECASE(500) NULL,
	"tokenendpoint" VARCHAR_IGNORECASE(500) NULL,
	"userinfoendpoint" VARCHAR_IGNORECASE(500) NULL,
	"endsessionendpoint" VARCHAR_IGNORECASE(500) NULL,
	"jwksuri" VARCHAR_IGNORECASE(500) NULL,
	"issuer" VARCHAR_IGNORECASE(500) NULL,
	"provisioningflow" VARCHAR_IGNORECASE(23) NULL,
	"responsemode" VARCHAR_IGNORECASE(9) NULL,
	"usepcke" BOOLEAN NULL,
	"customcallbackurl" VARCHAR_IGNORECASE(1024) NULL,
	"parseroles" BOOLEAN NULL,
	"clientauthenticationmethod" VARCHAR_IGNORECASE(19) NULL,
	"introspectionendpoint" VARCHAR_IGNORECASE(500) NULL,
	"isdeploytime" BOOLEAN NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$changedby" BIGINT NULL,
	"system$owner" BIGINT NULL,
	PRIMARY KEY("id"),
	CONSTRAINT "uniq_oidc$clientconfiguration_alias" UNIQUE ("alias"));
CREATE INDEX "idx_oidc$clientconfiguration_system$changedby" ON "oidc$clientconfiguration" ("system$changedby" ASC,"id" ASC);
CREATE INDEX "idx_oidc$clientconfiguration_system$owner" ON "oidc$clientconfiguration" ("system$owner" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('8359816a-f5e5-4a72-9ac9-21f351787608', 'OIDC.ClientConfiguration', 'oidc$clientconfiguration', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6d98d01e-1457-40a1-a405-be6f81a262b3', '8359816a-f5e5-4a72-9ac9-21f351787608', 'Alias', 'alias', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3d9e8d18-4eaa-4934-98d9-00eac1a9b079', '8359816a-f5e5-4a72-9ac9-21f351787608', 'ClientID', 'clientid', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6a397a26-e1b8-4e3f-9ada-b23ce859b95d', '8359816a-f5e5-4a72-9ac9-21f351787608', 'ClientAssertion', 'clientassertion', 40, 20, 'CLIENT_ID_AND_SECRET', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('88ad9094-284b-4982-802d-77c9bb698c23', '8359816a-f5e5-4a72-9ac9-21f351787608', 'EncryptedClientSecret', 'encryptedclientsecret', 30, 1000, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e7cdebbf-51a2-4027-9d29-c1b01ee212fe', '8359816a-f5e5-4a72-9ac9-21f351787608', 'IsDefault', 'isdefault', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('dd7865f7-4209-4298-b23e-7a11dbf4a914', '8359816a-f5e5-4a72-9ac9-21f351787608', 'Active', 'active', 10, 0, 'true', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('53b61c9d-0fec-42dc-9782-7fa0ed12d3ff', '8359816a-f5e5-4a72-9ac9-21f351787608', 'WellKnownConfigUri', 'wellknownconfiguri', 30, 500, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('19e0385a-8e07-4a6e-b256-dfedded6575f', '8359816a-f5e5-4a72-9ac9-21f351787608', 'AuthorizationEndpoint', 'authorizationendpoint', 30, 500, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('5a53d3c7-8c54-41b8-b3bf-c6ab9e163b72', '8359816a-f5e5-4a72-9ac9-21f351787608', 'TokenEndpoint', 'tokenendpoint', 30, 500, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c0c7e66d-9851-48e8-8de1-8fc14ba75d83', '8359816a-f5e5-4a72-9ac9-21f351787608', 'UserInfoEndpoint', 'userinfoendpoint', 30, 500, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('82d02c28-bc96-49ad-b5cc-19748c941819', '8359816a-f5e5-4a72-9ac9-21f351787608', 'EndSessionEndpoint', 'endsessionendpoint', 30, 500, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a46d48ad-8ba3-429f-a42b-22d8d6d7a126', '8359816a-f5e5-4a72-9ac9-21f351787608', 'JWKSUri', 'jwksuri', 30, 500, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('326b9d1d-82d1-43e7-bcfa-65168b33642e', '8359816a-f5e5-4a72-9ac9-21f351787608', 'Issuer', 'issuer', 30, 500, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('54364d32-e5a6-4fce-b67d-3e7d1c6f81bc', '8359816a-f5e5-4a72-9ac9-21f351787608', 'ProvisioningFlow', 'provisioningflow', 40, 23, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('07c2b671-204d-4335-a42d-253069cbb807', '8359816a-f5e5-4a72-9ac9-21f351787608', 'ResponseMode', 'responsemode', 40, 9, 'query', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3a843ac0-8b44-40c5-9e35-d5dcb9524e1b', '8359816a-f5e5-4a72-9ac9-21f351787608', 'UsePCKE', 'usepcke', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e898184a-f6a9-462d-b847-6a5a2727ae58', '8359816a-f5e5-4a72-9ac9-21f351787608', 'CustomCallbackURL', 'customcallbackurl', 30, 1024, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ed98f61f-35b3-40e2-89fe-d870c61311f2', '8359816a-f5e5-4a72-9ac9-21f351787608', 'parseroles', 'parseroles', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b985512a-95ae-466e-a852-e9007b8d47ba', '8359816a-f5e5-4a72-9ac9-21f351787608', 'ClientAuthenticationMethod', 'clientauthenticationmethod', 40, 19, 'client_secret_basic', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('865f87c7-e775-4c9c-9720-6cbf15e6a77b', '8359816a-f5e5-4a72-9ac9-21f351787608', 'IntrospectionEndpoint', 'introspectionendpoint', 30, 500, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c6570272-8e09-4741-b500-432a33856fef', '8359816a-f5e5-4a72-9ac9-21f351787608', 'IsDeployTime', 'isdeploytime', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a5662c56-99aa-3e82-ac50-81aa85b36f30', '8359816a-f5e5-4a72-9ac9-21f351787608', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ca80b8e8-c041-3813-9307-0dc8bfef2ec2', '8359816a-f5e5-4a72-9ac9-21f351787608', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('1e4a31cb-814e-390e-91ab-5bfce4ae6a3c', '8359816a-f5e5-4a72-9ac9-21f351787608', 'idx_oidc$clientconfiguration_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('1e4a31cb-814e-390e-91ab-5bfce4ae6a3c', '4b270166-7c7f-3318-859b-7777b9f2c3ed', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('dc668cb4-f81d-3d2a-9a42-d8ab88bcb353', '8359816a-f5e5-4a72-9ac9-21f351787608', 'idx_oidc$clientconfiguration_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('dc668cb4-f81d-3d2a-9a42-d8ab88bcb353', '87c7c7f0-6df0-3a0d-a4f5-5498e1a9c3c0', false, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_oidc$clientconfiguration_alias', '8359816a-f5e5-4a72-9ac9-21f351787608', '6d98d01e-1457-40a1-a405-be6f81a262b3');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('4b270166-7c7f-3318-859b-7777b9f2c3ed', 'System.changedBy', 'system$changedby', '8359816a-f5e5-4a72-9ac9-21f351787608', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('87c7c7f0-6df0-3a0d-a4f5-5498e1a9c3c0', 'System.owner', 'system$owner', '8359816a-f5e5-4a72-9ac9-21f351787608', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
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
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('06ea8885-cb5c-4575-995a-0016b24bf109', 'MxModelReflection.MxObjectReference', 'mxmodelreflection$mxobjectreference', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9052473b-4959-4dcc-80b8-dd53efb85e22', '06ea8885-cb5c-4575-995a-0016b24bf109', 'CompleteName', 'completename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('050e2448-ac91-42a5-988e-d0da6ab38038', '06ea8885-cb5c-4575-995a-0016b24bf109', 'Module', 'module', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('49149ce0-f4e2-468d-b751-f86d33d0a14a', '06ea8885-cb5c-4575-995a-0016b24bf109', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a019ac71-107c-4486-aa6e-cf5b8e6a3f04', '06ea8885-cb5c-4575-995a-0016b24bf109', 'ReadableName', 'readablename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d9885bfc-ca8a-4243-823c-19ebed666bd8', '06ea8885-cb5c-4575-995a-0016b24bf109', 'ReferenceType', 'referencetype', 40, 12, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6917ede9-b871-4977-b963-644e661c34d2', '06ea8885-cb5c-4575-995a-0016b24bf109', 'AssociationOwner', 'associationowner', 40, 8, '_Default', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6c30cd37-7f22-47f8-b578-0d4913106ede', '06ea8885-cb5c-4575-995a-0016b24bf109', 'ParentEntity', 'parententity', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0d75b9c2-10e6-32e2-8968-612417ff45af', '06ea8885-cb5c-4575-995a-0016b24bf109', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('54c7d61a-9120-318c-8da7-f1287ea7d3e2', '06ea8885-cb5c-4575-995a-0016b24bf109', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('b22169b2-3af9-3283-8893-b957e02b8814', '06ea8885-cb5c-4575-995a-0016b24bf109', 'idx_mxmodelreflection$mxobjectreference_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('b22169b2-3af9-3283-8893-b957e02b8814', 'b716174d-663d-3ba7-8b5d-61bb718e3782', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('7f5f6347-ac9a-3a60-899a-7fca4882aa1a', '06ea8885-cb5c-4575-995a-0016b24bf109', 'idx_mxmodelreflection$mxobjectreference_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('7f5f6347-ac9a-3a60-899a-7fca4882aa1a', '0fcd2659-89ef-3181-b319-3d771bb6a3f4', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('b716174d-663d-3ba7-8b5d-61bb718e3782', 'System.owner', 'system$owner', '06ea8885-cb5c-4575-995a-0016b24bf109', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('0fcd2659-89ef-3181-b319-3d771bb6a3f4', 'System.changedBy', 'system$changedby', '06ea8885-cb5c-4575-995a-0016b24bf109', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
CREATE TABLE "encryption$pgpcertificate" (
	"id" BIGINT NOT NULL,
	"certificatetype" VARCHAR_IGNORECASE(10) NULL,
	"passphrase_plain" VARCHAR_IGNORECASE(20) NULL,
	"passphrase_encrypted" VARCHAR_IGNORECASE(100) NULL,
	"reference" VARCHAR_IGNORECASE(100) NULL,
	"emailaddress" VARCHAR_IGNORECASE(50) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('64eab119-b085-4314-9766-c0a7320b9355', 'Encryption.PGPCertificate', 'encryption$pgpcertificate', '170ce49d-f29c-4fac-99a6-b55e8a3aeb39', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ed304744-b416-4b91-b723-4662ffabf91a', '64eab119-b085-4314-9766-c0a7320b9355', 'CertificateType', 'certificatetype', 40, 10, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8fe9d8a3-213d-440a-bc08-148cef1fa6ee', '64eab119-b085-4314-9766-c0a7320b9355', 'PassPhrase_Plain', 'passphrase_plain', 30, 20, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('91256b6c-6cb0-4269-8c16-6274d5303533', '64eab119-b085-4314-9766-c0a7320b9355', 'PassPhrase_Encrypted', 'passphrase_encrypted', 30, 100, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7664532b-ecdd-4147-b5e9-cf6a057b5bba', '64eab119-b085-4314-9766-c0a7320b9355', 'Reference', 'reference', 30, 100, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7f56b3a5-0a6f-47c4-b120-9476cc9f7ffc', '64eab119-b085-4314-9766-c0a7320b9355', 'EmailAddress', 'emailaddress', 30, 50, '', false);
CREATE TABLE "oidc$token" (
	"id" BIGINT NOT NULL,
	"access_token" VARCHAR_IGNORECASE(2147483647) NULL,
	"refresh_token" VARCHAR_IGNORECASE(2147483647) NULL,
	"_id" VARCHAR_IGNORECASE(2147483647) NULL,
	"id_token" VARCHAR_IGNORECASE(2147483647) NULL,
	"token_type" VARCHAR_IGNORECASE(2147483647) NULL,
	"expires_in" INT NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$owner" BIGINT NULL,
	"system$changedby" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_oidc$token_system$owner" ON "oidc$token" ("system$owner" ASC,"id" ASC);
CREATE INDEX "idx_oidc$token_system$changedby" ON "oidc$token" ("system$changedby" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('2e3f96ca-79f3-4529-93f6-f5e649c1f657', 'OIDC.Token', 'oidc$token', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('71da421e-20df-4ed8-a126-2b7d38f5c95a', '2e3f96ca-79f3-4529-93f6-f5e649c1f657', 'Access_token', 'access_token', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8c8f4212-e94c-42f4-a671-7d0b40d31c22', '2e3f96ca-79f3-4529-93f6-f5e649c1f657', 'Refresh_token', 'refresh_token', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6500017b-5a64-466b-9d54-940d8892e081', '2e3f96ca-79f3-4529-93f6-f5e649c1f657', '_id', '_id', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d583efe5-f6de-462f-aa0b-3105db668773', '2e3f96ca-79f3-4529-93f6-f5e649c1f657', 'Id_token', 'id_token', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('33eda408-7cb7-4107-b28e-20c9c4238920', '2e3f96ca-79f3-4529-93f6-f5e649c1f657', 'Token_type', 'token_type', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3bae4ef8-c0bc-4036-908b-1d8fed62af6e', '2e3f96ca-79f3-4529-93f6-f5e649c1f657', 'Expires_in', 'expires_in', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('1dbdbae2-cee7-31bc-922c-93f61e2749e1', '2e3f96ca-79f3-4529-93f6-f5e649c1f657', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8eb115e8-d4c1-36fd-8ec0-3ae196da0851', '2e3f96ca-79f3-4529-93f6-f5e649c1f657', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('8b05e429-ac4c-33c5-82b3-af29e351e3b0', '2e3f96ca-79f3-4529-93f6-f5e649c1f657', 'idx_oidc$token_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('8b05e429-ac4c-33c5-82b3-af29e351e3b0', '16facb1b-77d2-3d08-98b9-950d3ee8226c', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('22e918cb-f85f-34da-b53a-c4ac36ab96f6', '2e3f96ca-79f3-4529-93f6-f5e649c1f657', 'idx_oidc$token_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('22e918cb-f85f-34da-b53a-c4ac36ab96f6', '7b5582ce-929a-359f-b43e-429fe58b145a', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('16facb1b-77d2-3d08-98b9-950d3ee8226c', 'System.owner', 'system$owner', '2e3f96ca-79f3-4529-93f6-f5e649c1f657', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('7b5582ce-929a-359f-b43e-429fe58b145a', 'System.changedBy', 'system$changedby', '2e3f96ca-79f3-4529-93f6-f5e649c1f657', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
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
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('ef5ffc76-f753-44f2-83fb-77b6f78f28ae', 'MxModelReflection.Microflows', 'mxmodelreflection$microflows', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('49f6d21f-ce45-466c-b219-f6e78adabd78', 'ef5ffc76-f753-44f2-83fb-77b6f78f28ae', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('738ee842-afe3-45a6-b7c8-6a96c1d3ad54', 'ef5ffc76-f753-44f2-83fb-77b6f78f28ae', 'Module', 'module', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('47e043ee-2e41-41d5-995c-8bbef93242a9', 'ef5ffc76-f753-44f2-83fb-77b6f78f28ae', 'CompleteName', 'completename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('03930f2e-9dc0-33d0-8bf1-b5193fb17cd0', 'ef5ffc76-f753-44f2-83fb-77b6f78f28ae', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d2ba63dd-1061-3d44-bbad-0254a45cf6e1', 'ef5ffc76-f753-44f2-83fb-77b6f78f28ae', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('d20f0397-c3e2-3fcf-a8fa-985ac5784da6', 'ef5ffc76-f753-44f2-83fb-77b6f78f28ae', 'idx_mxmodelreflection$microflows_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('d20f0397-c3e2-3fcf-a8fa-985ac5784da6', 'c3083944-21a5-3db6-9e8f-d463e89ff142', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('ef13127a-a19b-3094-a719-45cccb30f158', 'ef5ffc76-f753-44f2-83fb-77b6f78f28ae', 'idx_mxmodelreflection$microflows_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('ef13127a-a19b-3094-a719-45cccb30f158', '20bbba0f-ac84-3540-9eda-56ac6373bd6a', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('c3083944-21a5-3db6-9e8f-d463e89ff142', 'System.changedBy', 'system$changedby', 'ef5ffc76-f753-44f2-83fb-77b6f78f28ae', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('20bbba0f-ac84-3540-9eda-56ac6373bd6a', 'System.owner', 'system$owner', 'ef5ffc76-f753-44f2-83fb-77b6f78f28ae', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
CREATE TABLE "encryption$exampleconfiguration" (
	"id" BIGINT NOT NULL,
	"title" VARCHAR_IGNORECASE(200) NULL,
	"username" VARCHAR_IGNORECASE(200) NULL,
	"password" VARCHAR_IGNORECASE(200) NULL,
	"createddate" TIMESTAMP NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('41989d3d-b2c6-4c02-a1be-6f4a2f284730', 'Encryption.ExampleConfiguration', 'encryption$exampleconfiguration', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0cc8c114-aa76-445d-aec0-7dec0d2f4b74', '41989d3d-b2c6-4c02-a1be-6f4a2f284730', 'Title', 'title', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b66f9190-0a42-48f5-9e6c-51d9e05076b3', '41989d3d-b2c6-4c02-a1be-6f4a2f284730', 'Username', 'username', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a6fd1bef-80f7-4ec8-88a7-40051dc8032f', '41989d3d-b2c6-4c02-a1be-6f4a2f284730', 'Password', 'password', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a79b0d20-57e9-36db-a2ba-85037853eb12', '41989d3d-b2c6-4c02-a1be-6f4a2f284730', 'createdDate', 'createddate', 20, 0, '', false);
CREATE TABLE "oidc$acr" (
	"id" BIGINT NOT NULL,
	"value" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('fd8fc033-e40f-4e2a-bd93-ba1afb516460', 'OIDC.Acr', 'oidc$acr', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('792bb935-2d11-466c-9a6c-2e59d4d76553', 'fd8fc033-e40f-4e2a-bd93-ba1afb516460', 'Value', 'value', 30, 200, '', false);
CREATE TABLE "oidc$scopeset" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('f93f1c5b-ed6e-4ea5-9def-f433bce8a40e', 'OIDC.ScopeSet', 'oidc$scopeset', false, false);
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
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('0d8f431b-b62f-4e0a-b545-dbd82619e552', 'MxModelReflection.MxObjectMember', 'mxmodelreflection$mxobjectmember', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('4cce7394-952f-4f29-af35-441a431c7669', '0d8f431b-b62f-4e0a-b545-dbd82619e552', 'AttributeName', 'attributename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6ea2f782-0e38-40a8-b811-265eefcedde7', '0d8f431b-b62f-4e0a-b545-dbd82619e552', 'AttributeType', 'attributetype', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('37dad441-7d05-49e5-8254-3f477ddb11d3', '0d8f431b-b62f-4e0a-b545-dbd82619e552', 'AttributeTypeEnum', 'attributetypeenum', 40, 11, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('73615d67-b7d7-4c9a-9515-068c3b8d8567', '0d8f431b-b62f-4e0a-b545-dbd82619e552', 'CompleteName', 'completename', 30, 400, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('cafb17aa-af7d-4206-b161-68c167bd2391', '0d8f431b-b62f-4e0a-b545-dbd82619e552', 'DescriptiveName', 'descriptivename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('acc91db4-ba1e-457b-ab55-e01548b335d6', '0d8f431b-b62f-4e0a-b545-dbd82619e552', 'FieldLength', 'fieldlength', 3, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f26da7a5-9518-4a65-9921-efddd1323412', '0d8f431b-b62f-4e0a-b545-dbd82619e552', 'IsVirtual', 'isvirtual', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c7cdf4fa-f38d-37c4-89af-a32d63da483e', '0d8f431b-b62f-4e0a-b545-dbd82619e552', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('1f758922-e339-3371-8120-12f002802860', '0d8f431b-b62f-4e0a-b545-dbd82619e552', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2952a4dc-213f-34f0-8ad2-f7897efbbe57', '0d8f431b-b62f-4e0a-b545-dbd82619e552', 'submetaobjectname', 'submetaobjectname', 30, 255, 'MxModelReflection.MxObjectMember', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('57cb53b9-b894-3358-8a22-0bcaa5248308', '0d8f431b-b62f-4e0a-b545-dbd82619e552', 'idx_mxmodelreflection$mxobjectmember_submetaobjectname_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('57cb53b9-b894-3358-8a22-0bcaa5248308', '2952a4dc-213f-34f0-8ad2-f7897efbbe57', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('7cb4de16-6ff8-3948-bcba-85533fcc17c7', '0d8f431b-b62f-4e0a-b545-dbd82619e552', 'idx_mxmodelreflection$mxobjectmember_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('7cb4de16-6ff8-3948-bcba-85533fcc17c7', 'ca00282d-72a7-3e01-9cac-702e8ea66a5e', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('e294473b-7869-3e43-ba87-b7ab2c907044', '0d8f431b-b62f-4e0a-b545-dbd82619e552', 'idx_mxmodelreflection$mxobjectmember_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('e294473b-7869-3e43-ba87-b7ab2c907044', 'f9c40acf-54db-31d2-a65e-2ac1b1147787', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('ca00282d-72a7-3e01-9cac-702e8ea66a5e', 'System.changedBy', 'system$changedby', '0d8f431b-b62f-4e0a-b545-dbd82619e552', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('f9c40acf-54db-31d2-a65e-2ac1b1147787', 'System.owner', 'system$owner', '0d8f431b-b62f-4e0a-b545-dbd82619e552', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
CREATE TABLE "oidc$claim" (
	"id" BIGINT NOT NULL,
	"value" VARCHAR_IGNORECASE(2048) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('0cd35e0e-f4e4-46a0-92ff-2500fee3362d', 'OIDC.Claim', 'oidc$claim', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2dd38fe3-1f99-44c7-bca9-248700b5e6d9', '0cd35e0e-f4e4-46a0-92ff-2500fee3362d', 'Value', 'value', 30, 2048, '', false);
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
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('e08dbedf-fedd-4638-9cd4-2fe31c60c108', 'MxModelReflection.MxObjectType', 'mxmodelreflection$mxobjecttype', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b0bfc13b-220a-4fdd-bb40-5c9d0cd7b897', 'e08dbedf-fedd-4638-9cd4-2fe31c60c108', 'CompleteName', 'completename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9c0b5357-f4ee-4894-9737-06d8ae80ab45', 'e08dbedf-fedd-4638-9cd4-2fe31c60c108', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3bd12cd7-8970-4861-96d1-d1d1b02bff71', 'e08dbedf-fedd-4638-9cd4-2fe31c60c108', 'Module', 'module', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('22197170-ca63-409c-b642-ee1782e34576', 'e08dbedf-fedd-4638-9cd4-2fe31c60c108', 'ReadableName', 'readablename', 30, 400, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('cf6292bb-6977-4cb5-8d63-2de304c554de', 'e08dbedf-fedd-4638-9cd4-2fe31c60c108', 'PersistenceType', 'persistencetype', 40, 14, 'Persistable', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('761e9a91-7015-33a0-8e2a-f60f3b7ec2c1', 'e08dbedf-fedd-4638-9cd4-2fe31c60c108', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a52b28e1-1735-385c-a443-686a9c4b8854', 'e08dbedf-fedd-4638-9cd4-2fe31c60c108', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('c1574de8-b5db-371d-acc0-b489bc7308a4', 'e08dbedf-fedd-4638-9cd4-2fe31c60c108', 'idx_mxmodelreflection$mxobjecttype_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('c1574de8-b5db-371d-acc0-b489bc7308a4', 'fb0e884a-f341-35a0-9531-4aaa2c4f31a3', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('bdcac352-22a2-3c33-8532-20e6c3eac9f3', 'e08dbedf-fedd-4638-9cd4-2fe31c60c108', 'idx_mxmodelreflection$mxobjecttype_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('bdcac352-22a2-3c33-8532-20e6c3eac9f3', '3f1dd9fe-e821-31a1-bc1c-59acaff76791', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('fb0e884a-f341-35a0-9531-4aaa2c4f31a3', 'System.owner', 'system$owner', 'e08dbedf-fedd-4638-9cd4-2fe31c60c108', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('3f1dd9fe-e821-31a1-bc1c-59acaff76791', 'System.changedBy', 'system$changedby', 'e08dbedf-fedd-4638-9cd4-2fe31c60c108', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
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
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('4c9229e3-596c-4834-a2bf-6e876bee3134', 'MxModelReflection.ValueType', 'mxmodelreflection$valuetype', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e9c6d7b6-0b89-4be1-99aa-97168e18baaf', '4c9229e3-596c-4834-a2bf-6e876bee3134', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('469ac675-e357-4159-8c28-8c44d63970c1', '4c9229e3-596c-4834-a2bf-6e876bee3134', 'TypeEnum', 'typeenum', 40, 11, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('bc6e9362-e144-3f82-af51-ab9298fe702d', '4c9229e3-596c-4834-a2bf-6e876bee3134', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('5ee59c37-82ed-3438-a41a-b5d97b6d74bc', '4c9229e3-596c-4834-a2bf-6e876bee3134', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('4bc4f3c8-1a37-3966-ad32-17c3f3cfcc92', '4c9229e3-596c-4834-a2bf-6e876bee3134', 'idx_mxmodelreflection$valuetype_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('4bc4f3c8-1a37-3966-ad32-17c3f3cfcc92', '947e448d-409c-30ab-ab3b-a63304d47868', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('7984bc80-c6b1-3acc-9249-d3927b4aa5e3', '4c9229e3-596c-4834-a2bf-6e876bee3134', 'idx_mxmodelreflection$valuetype_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('7984bc80-c6b1-3acc-9249-d3927b4aa5e3', '6d14e656-0686-3be5-8120-d73c8827fbbc', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('947e448d-409c-30ab-ab3b-a63304d47868', 'System.changedBy', 'system$changedby', '4c9229e3-596c-4834-a2bf-6e876bee3134', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('6d14e656-0686-3be5-8120-d73c8827fbbc', 'System.owner', 'system$owner', '4c9229e3-596c-4834-a2bf-6e876bee3134', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
CREATE TABLE "oidc$authattempt" (
	"id" BIGINT NOT NULL,
	"state" VARCHAR_IGNORECASE(1000) NULL,
	"returnurl" VARCHAR_IGNORECASE(2147483647) NULL,
	"codeverifier" VARCHAR_IGNORECASE(128) NULL,
	"nonce" VARCHAR_IGNORECASE(20) NULL,
	"devicetype" VARCHAR_IGNORECASE(200) NULL,
	"createddate" TIMESTAMP NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_oidc$authattempt_state_asc" ON "oidc$authattempt" ("state" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('22b09efe-b2f0-469b-90ef-5ed6a1757522', 'OIDC.AuthAttempt', 'oidc$authattempt', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('09af83f2-271f-4796-88a7-2f2cab3ec2cf', '22b09efe-b2f0-469b-90ef-5ed6a1757522', 'State', 'state', 30, 1000, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2615edd5-4c22-4185-9987-cbffb10f8403', '22b09efe-b2f0-469b-90ef-5ed6a1757522', 'ReturnUrl', 'returnurl', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('cf2ddd7d-885a-4afe-a859-e347ed658c61', '22b09efe-b2f0-469b-90ef-5ed6a1757522', 'CodeVerifier', 'codeverifier', 30, 128, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('da913038-17eb-48ef-81a6-076a47d682f6', '22b09efe-b2f0-469b-90ef-5ed6a1757522', 'Nonce', 'nonce', 30, 20, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('aaea6e93-3cdf-404a-beb3-a58255d0ce0c', '22b09efe-b2f0-469b-90ef-5ed6a1757522', 'DeviceType', 'devicetype', 30, 200, 'Web', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0298a713-4266-39fa-b083-9110204599ad', '22b09efe-b2f0-469b-90ef-5ed6a1757522', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('ce890240-4c40-4397-a18e-098d747d7386', '22b09efe-b2f0-469b-90ef-5ed6a1757522', 'idx_oidc$authattempt_state_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('ce890240-4c40-4397-a18e-098d747d7386', '09af83f2-271f-4796-88a7-2f2cab3ec2cf', false, 0);
CREATE TABLE "mxmodelreflection$mxobjectenum" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('a08d89a9-1d7a-49c3-a34b-ee0fc0ebdae7', 'MxModelReflection.MxObjectEnum', 'mxmodelreflection$mxobjectenum', '0d8f431b-b62f-4e0a-b545-dbd82619e552', false, false);
CREATE TABLE "oidc$scope" (
	"id" BIGINT NOT NULL,
	"value" VARCHAR_IGNORECASE(2048) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('e11d51d1-8165-4177-b17f-bfd6f296761e', 'OIDC.Scope', 'oidc$scope', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2fa7e478-7295-412d-a75b-90f8fa7f282d', 'e11d51d1-8165-4177-b17f-bfd6f296761e', 'Value', 'value', 30, 2048, '', false);
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
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('f156909d-62ae-43df-b5f7-f7652a12e4eb', 'MxModelReflection.MxObjectEnumValue', 'mxmodelreflection$mxobjectenumvalue', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('da922ec7-483c-46d1-9c9c-66204d4faadf', 'f156909d-62ae-43df-b5f7-f7652a12e4eb', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('89800942-f4e4-3dd9-9799-b27a9c745e2b', 'f156909d-62ae-43df-b5f7-f7652a12e4eb', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('dbc7e555-a56d-3c02-8d05-24384ea7cf0b', 'f156909d-62ae-43df-b5f7-f7652a12e4eb', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('7b6924c9-32ee-34b0-8631-c2b3de5ff033', 'f156909d-62ae-43df-b5f7-f7652a12e4eb', 'idx_mxmodelreflection$mxobjectenumvalue_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('7b6924c9-32ee-34b0-8631-c2b3de5ff033', 'e012eb6c-6bd4-36a5-a5b2-206a4eb1f2cf', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('eac7f956-eead-36f5-a588-4b72ae3f17d9', 'f156909d-62ae-43df-b5f7-f7652a12e4eb', 'idx_mxmodelreflection$mxobjectenumvalue_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('eac7f956-eead-36f5-a588-4b72ae3f17d9', '5d1bc7f7-7168-3e39-80d6-d68e73e1f0e3', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('e012eb6c-6bd4-36a5-a5b2-206a4eb1f2cf', 'System.owner', 'system$owner', 'f156909d-62ae-43df-b5f7-f7652a12e4eb', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('5d1bc7f7-7168-3e39-80d6-d68e73e1f0e3', 'System.changedBy', 'system$changedby', 'f156909d-62ae-43df-b5f7-f7652a12e4eb', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
CREATE TABLE "mxmodelreflection$dbsizeestimate" (
	"id" BIGINT NOT NULL,
	"nrofrecords" INT NULL,
	"calculatedsizeinbytes" BIGINT NULL,
	"calculatedsizeinkilobytes" BIGINT NULL,
	"findobjecttype" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('8c76a1b9-4e8d-4aef-bc3c-e6efcf70132f', 'MxModelReflection.DbSizeEstimate', 'mxmodelreflection$dbsizeestimate', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ca35e803-11bb-48c9-b152-e90b908b1453', '8c76a1b9-4e8d-4aef-bc3c-e6efcf70132f', 'NrOfRecords', 'nrofrecords', 3, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('454edac8-7867-45fe-9b61-5522e74a6d18', '8c76a1b9-4e8d-4aef-bc3c-e6efcf70132f', 'CalculatedSizeInBytes', 'calculatedsizeinbytes', 4, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0ed9a6e2-9b4e-439b-9d8b-b3da1dfbd522', '8c76a1b9-4e8d-4aef-bc3c-e6efcf70132f', 'CalculatedSizeInKiloBytes', 'calculatedsizeinkilobytes', 4, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ee336d52-15e9-4cc5-9ca0-4061cab76831', '8c76a1b9-4e8d-4aef-bc3c-e6efcf70132f', 'FindObjectType', 'findobjecttype', 30, 200, '', false);
CREATE TABLE "oidc$codechallengemethodsset" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('d1a89805-2a7e-42dc-8b39-8a4663360725', 'OIDC.CodeChallengeMethodsSet', 'oidc$codechallengemethodsset', false, false);
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
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('4b299f98-32a0-4e99-a891-0806a0abaf9a', 'MxModelReflection.Parameter', 'mxmodelreflection$parameter', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('62ce6311-073a-4182-b9ca-0cbf419235f8', '4b299f98-32a0-4e99-a891-0806a0abaf9a', 'Name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('290c7ff3-3c42-380d-b57e-764d1cc9b0a6', '4b299f98-32a0-4e99-a891-0806a0abaf9a', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('4d0f3700-3a36-3945-a398-370fb4f38e58', '4b299f98-32a0-4e99-a891-0806a0abaf9a', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('302c9724-2972-3ac3-9693-ef440243892c', '4b299f98-32a0-4e99-a891-0806a0abaf9a', 'idx_mxmodelreflection$parameter_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('302c9724-2972-3ac3-9693-ef440243892c', '23c22515-fd50-3db3-a226-f8fc6f8dedfe', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('ef991763-796c-3c4d-ba54-03d770e4c259', '4b299f98-32a0-4e99-a891-0806a0abaf9a', 'idx_mxmodelreflection$parameter_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('ef991763-796c-3c4d-ba54-03d770e4c259', '0c17fb30-ec18-3534-afcd-cc89d630623f', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('23c22515-fd50-3db3-a226-f8fc6f8dedfe', 'System.changedBy', 'system$changedby', '4b299f98-32a0-4e99-a891-0806a0abaf9a', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('0c17fb30-ec18-3534-afcd-cc89d630623f', 'System.owner', 'system$owner', '4b299f98-32a0-4e99-a891-0806a0abaf9a', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
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
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', 'MxModelReflection.Token', 'mxmodelreflection$token', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('90250207-2f3b-4617-8e0b-89e9966dc0c3', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', 'Token', 'token', 30, 50, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a581c81d-a9b6-4cf1-826f-3ac39debc0f0', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', 'Prefix', 'prefix', 30, 3, '{%', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('52d6b278-5f3d-46a5-b5f4-1590dad6a3f8', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', 'Suffix', 'suffix', 30, 3, '%}', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0d7bc6b7-fb88-44bb-b3fb-092661e0de44', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', 'CombinedToken', 'combinedtoken', 30, 56, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('cf16a037-951e-405a-851a-7542061671f1', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', 'Description', 'description', 30, 300, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('43da2752-3fba-447c-95a5-268426c55250', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', 'MetaModelPath', 'metamodelpath', 30, 1000, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c0bc742e-ff5f-4e09-a04b-01bfbf26ea69', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', 'TokenType', 'tokentype', 40, 9, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('884d8c16-ef3e-4023-8985-20c54715f2e8', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', 'Status', 'status', 40, 7, 'Invalid', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9bb65fef-06d8-43ec-bbe5-5a3210341790', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', 'FindObjectStart', 'findobjectstart', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9c4b8298-767d-416b-9396-59156437afcb', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', 'FindObjectReference', 'findobjectreference', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a4525ce4-3ac0-4390-92aa-4c5dead1eab6', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', 'FindReference', 'findreference', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7baa4de7-371a-4617-9568-079dd51c26b0', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', 'FindMember', 'findmember', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('bd44913f-2579-4f60-9834-c30facf60c95', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', 'FindMemberReference', 'findmemberreference', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('cf0ace0a-e013-4e8a-b723-ef127ddba92d', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', 'IsOptional', 'isoptional', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('351ed7e6-c65f-4f3e-98ba-6cea36537062', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', 'DisplayPattern', 'displaypattern', 30, 50, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('54063001-bddb-3be8-8085-a856b526d8fb', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f914c049-bc8c-389f-93f0-37bc53ca919b', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('590f3a96-8c15-4798-927f-85a2692de726', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', 'idx_mxmodelreflection$token_combinedtoken_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('590f3a96-8c15-4798-927f-85a2692de726', '0d7bc6b7-fb88-44bb-b3fb-092661e0de44', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('4f0252ff-a646-32de-af98-eb684ecd3810', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', 'idx_mxmodelreflection$token_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('4f0252ff-a646-32de-af98-eb684ecd3810', '9e409563-2b3c-3c87-949d-a86ae2295fe4', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('a9659d92-b6c4-3c2d-b19c-31d883af57c2', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', 'idx_mxmodelreflection$token_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('a9659d92-b6c4-3c2d-b19c-31d883af57c2', '3fa6c5fa-23fa-32aa-95d4-6b5aeab4f7bc', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('9e409563-2b3c-3c87-949d-a86ae2295fe4', 'System.changedBy', 'system$changedby', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('3fa6c5fa-23fa-32aa-95d4-6b5aeab4f7bc', 'System.owner', 'system$owner', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
CREATE TABLE "oidc$codechallengemethods" (
	"id" BIGINT NOT NULL,
	"value" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('1b9e00d9-e0cd-4632-b0aa-df0a985a0b23', 'OIDC.CodeChallengeMethods', 'oidc$codechallengemethods', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('40bb280b-8db2-4b5c-a0fd-1b1010d2a3f8', '1b9e00d9-e0cd-4632-b0aa-df0a985a0b23', 'Value', 'value', 30, 200, '', false);
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
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('9b546e95-537b-4834-afe3-1961e4aca66c', 'MxModelReflection.MxObjectEnumCaptions', 'mxmodelreflection$mxobjectenumcaptions', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('14ff890d-42d1-41de-883b-aa9d539f4391', '9b546e95-537b-4834-afe3-1961e4aca66c', 'Caption', 'caption', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ca4b7a53-a7cf-4737-ba89-f53a8ec305b2', '9b546e95-537b-4834-afe3-1961e4aca66c', 'LanguageCode', 'languagecode', 30, 8, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c3afb975-dd7c-4b21-a3e2-9fa1bdbf1f29', '9b546e95-537b-4834-afe3-1961e4aca66c', 'LanguageName', 'languagename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8749435c-d353-386e-8e4c-440706cdd9ce', '9b546e95-537b-4834-afe3-1961e4aca66c', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('22c8e198-ea5a-3d12-8e18-6dcea465a911', '9b546e95-537b-4834-afe3-1961e4aca66c', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('2fb2617f-fb31-37d9-86ef-686c0f9cf5f7', '9b546e95-537b-4834-afe3-1961e4aca66c', 'idx_mxmodelreflection$mxobjectenumcaptions_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('2fb2617f-fb31-37d9-86ef-686c0f9cf5f7', '6531789c-4c79-3a7e-a70d-e343a719376c', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('7c18b932-4a1a-33b7-ab83-94d448d18da8', '9b546e95-537b-4834-afe3-1961e4aca66c', 'idx_mxmodelreflection$mxobjectenumcaptions_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('7c18b932-4a1a-33b7-ab83-94d448d18da8', '1f14b06b-c6a8-3c26-a658-680b6b623d17', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('6531789c-4c79-3a7e-a70d-e343a719376c', 'System.owner', 'system$owner', '9b546e95-537b-4834-afe3-1961e4aca66c', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('1f14b06b-c6a8-3c26-a658-680b6b623d17', 'System.changedBy', 'system$changedby', '9b546e95-537b-4834-afe3-1961e4aca66c', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
CREATE TABLE "mxmodelreflection$module" (
	"id" BIGINT NOT NULL,
	"modulename" VARCHAR_IGNORECASE(200) NULL,
	"synchronizeobjectswithinmodule" BOOLEAN NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('0772bc5c-d1a6-48e6-9c43-b8f1dc788779', 'MxModelReflection.Module', 'mxmodelreflection$module', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6dbb9ddb-b74f-4af6-8fac-9996f9906ea7', '0772bc5c-d1a6-48e6-9c43-b8f1dc788779', 'ModuleName', 'modulename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f4711832-3c16-454b-bcf6-951d4927a7bf', '0772bc5c-d1a6-48e6-9c43-b8f1dc788779', 'SynchronizeObjectsWithinModule', 'synchronizeobjectswithinmodule', 10, 0, 'false', false);
CREATE TABLE "oidc$claimset" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('807d70ed-683a-4bd9-9987-262f529fb7ee', 'OIDC.ClaimSet', 'oidc$claimset', false, false);
CREATE TABLE "oidc$clientconfiguration_scopeset" (
	"oidc$clientconfigurationid" BIGINT NOT NULL,
	"oidc$scopesetid" BIGINT NOT NULL,
	PRIMARY KEY("oidc$clientconfigurationid","oidc$scopesetid"),
	CONSTRAINT "uniq_oidc$clientconfiguration_scopeset_oidc$clientconfigurationid" UNIQUE ("oidc$clientconfigurationid"));
CREATE INDEX "idx_oidc$clientconfiguration_scopeset_oidc$scopeset_oidc$clientconfiguration" ON "oidc$clientconfiguration_scopeset" ("oidc$scopesetid" ASC,"oidc$clientconfigurationid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('8701cc97-0034-4397-8cdf-ae6395ac491d', 'OIDC.ClientConfiguration_ScopeSet', 'oidc$clientconfiguration_scopeset', '8359816a-f5e5-4a72-9ac9-21f351787608', 'f93f1c5b-ed6e-4ea5-9def-f433bce8a40e', 'oidc$clientconfigurationid', 'oidc$scopesetid', 'idx_oidc$clientconfiguration_scopeset_oidc$scopeset_oidc$clientconfiguration');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_oidc$clientconfiguration_scopeset_oidc$clientconfigurationid', '8701cc97-0034-4397-8cdf-ae6395ac491d', 'd51a7507-3b1b-3a99-9c47-c2d44360ba31');
CREATE TABLE "oidc$selectedclaims" (
	"oidc$clientconfigurationid" BIGINT NOT NULL,
	"oidc$claimid" BIGINT NOT NULL,
	PRIMARY KEY("oidc$clientconfigurationid","oidc$claimid"));
CREATE INDEX "idx_oidc$selectedclaims_oidc$claim_oidc$clientconfiguration" ON "oidc$selectedclaims" ("oidc$claimid" ASC,"oidc$clientconfigurationid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('679c6291-2bf3-48b9-bb42-b95c2bdf58dd', 'OIDC.SelectedClaims', 'oidc$selectedclaims', '8359816a-f5e5-4a72-9ac9-21f351787608', '0cd35e0e-f4e4-46a0-92ff-2500fee3362d', 'oidc$clientconfigurationid', 'oidc$claimid', 'idx_oidc$selectedclaims_oidc$claim_oidc$clientconfiguration');
CREATE TABLE "oidc$clientconfiguration_claimset" (
	"oidc$clientconfigurationid" BIGINT NOT NULL,
	"oidc$claimsetid" BIGINT NOT NULL,
	PRIMARY KEY("oidc$clientconfigurationid","oidc$claimsetid"),
	CONSTRAINT "uniq_oidc$clientconfiguration_claimset_oidc$clientconfigurationid" UNIQUE ("oidc$clientconfigurationid"));
CREATE INDEX "idx_oidc$clientconfiguration_claimset_oidc$claimset_oidc$clientconfiguration" ON "oidc$clientconfiguration_claimset" ("oidc$claimsetid" ASC,"oidc$clientconfigurationid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('64c07a9c-57fc-4260-836b-17d7bbd8e041', 'OIDC.ClientConfiguration_ClaimSet', 'oidc$clientconfiguration_claimset', '8359816a-f5e5-4a72-9ac9-21f351787608', '807d70ed-683a-4bd9-9987-262f529fb7ee', 'oidc$clientconfigurationid', 'oidc$claimsetid', 'idx_oidc$clientconfiguration_claimset_oidc$claimset_oidc$clientconfiguration');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_oidc$clientconfiguration_claimset_oidc$clientconfigurationid', '64c07a9c-57fc-4260-836b-17d7bbd8e041', '0f2ed2aa-9b15-37d7-a58f-3d5a54701737');
CREATE TABLE "oidc$clientconfiguration_codechallengemethods" (
	"oidc$clientconfigurationid" BIGINT NOT NULL,
	"oidc$codechallengemethodsid" BIGINT NOT NULL,
	PRIMARY KEY("oidc$clientconfigurationid","oidc$codechallengemethodsid"));
CREATE INDEX "idx_oidc$clientconfiguration_codechallengemethods_oidc$codechallengemethods_oidc$clientconfiguration" ON "oidc$clientconfiguration_codechallengemethods" ("oidc$codechallengemethodsid" ASC,"oidc$clientconfigurationid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('516b908d-ddde-43bc-bdf4-af7921f79078', 'OIDC.ClientConfiguration_CodeChallengeMethods', 'oidc$clientconfiguration_codechallengemethods', '8359816a-f5e5-4a72-9ac9-21f351787608', '1b9e00d9-e0cd-4632-b0aa-df0a985a0b23', 'oidc$clientconfigurationid', 'oidc$codechallengemethodsid', 'idx_oidc$clientconfiguration_codechallengemethods_oidc$codechallengemethods_oidc$clientconfiguration');
CREATE TABLE "oidc$clientconfiguration_codechallengemethodsset" (
	"oidc$clientconfigurationid" BIGINT NOT NULL,
	"oidc$codechallengemethodssetid" BIGINT NOT NULL,
	PRIMARY KEY("oidc$clientconfigurationid","oidc$codechallengemethodssetid"),
	CONSTRAINT "uniq_oidc$clientconfiguration_codechallengemethodsset_oidc$clientconfigurationid" UNIQUE ("oidc$clientconfigurationid"));
CREATE INDEX "idx_oidc$clientconfiguration_codechallengemethodsset_oidc$codechallengemethodsset_oidc$clientconfiguration" ON "oidc$clientconfiguration_codechallengemethodsset" ("oidc$codechallengemethodssetid" ASC,"oidc$clientconfigurationid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('589dc27f-b9e6-4c39-9660-653bd817b9d3', 'OIDC.ClientConfiguration_CodeChallengeMethodsSet', 'oidc$clientconfiguration_codechallengemethodsset', '8359816a-f5e5-4a72-9ac9-21f351787608', 'd1a89805-2a7e-42dc-8b39-8a4663360725', 'oidc$clientconfigurationid', 'oidc$codechallengemethodssetid', 'idx_oidc$clientconfiguration_codechallengemethodsset_oidc$codechallengemethodsset_oidc$clientconfiguration');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_oidc$clientconfiguration_codechallengemethodsset_oidc$clientconfigurationid', '589dc27f-b9e6-4c39-9660-653bd817b9d3', '205ddc2d-e41b-3735-aaec-158159df7e4a');
CREATE TABLE "oidc$clientconfiguration_microflows" (
	"oidc$clientconfigurationid" BIGINT NOT NULL,
	"mxmodelreflection$microflowsid" BIGINT NOT NULL,
	PRIMARY KEY("oidc$clientconfigurationid","mxmodelreflection$microflowsid"),
	CONSTRAINT "uniq_oidc$clientconfiguration_microflows_oidc$clientconfigurationid" UNIQUE ("oidc$clientconfigurationid"));
CREATE INDEX "idx_oidc$clientconfiguration_microflows_mxmodelreflection$microflows_oidc$clientconfiguration" ON "oidc$clientconfiguration_microflows" ("mxmodelreflection$microflowsid" ASC,"oidc$clientconfigurationid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('dc2abd49-95c4-4a99-ad52-c2d28f77e739', 'OIDC.ClientConfiguration_Microflows', 'oidc$clientconfiguration_microflows', '8359816a-f5e5-4a72-9ac9-21f351787608', 'ef5ffc76-f753-44f2-83fb-77b6f78f28ae', 'oidc$clientconfigurationid', 'mxmodelreflection$microflowsid', 'idx_oidc$clientconfiguration_microflows_mxmodelreflection$microflows_oidc$clientconfiguration');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_oidc$clientconfiguration_microflows_oidc$clientconfigurationid', 'dc2abd49-95c4-4a99-ad52-c2d28f77e739', '5a754e18-fb5b-3777-adf3-51b70a68b442');
CREATE TABLE "oidc$selectedscopes" (
	"oidc$clientconfigurationid" BIGINT NOT NULL,
	"oidc$scopeid" BIGINT NOT NULL,
	PRIMARY KEY("oidc$clientconfigurationid","oidc$scopeid"));
CREATE INDEX "idx_oidc$selectedscopes_oidc$scope_oidc$clientconfiguration" ON "oidc$selectedscopes" ("oidc$scopeid" ASC,"oidc$clientconfigurationid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('76385572-849b-4d58-a897-6ad3696faf50', 'OIDC.SelectedScopes', 'oidc$selectedscopes', '8359816a-f5e5-4a72-9ac9-21f351787608', 'e11d51d1-8165-4177-b17f-bfd6f296761e', 'oidc$clientconfigurationid', 'oidc$scopeid', 'idx_oidc$selectedscopes_oidc$scope_oidc$clientconfiguration');
CREATE TABLE "mxmodelreflection$mxobjectreference_mxobjecttype_parent" (
	"mxmodelreflection$mxobjectreferenceid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjectreferenceid","mxmodelreflection$mxobjecttypeid"));
CREATE INDEX "idx_mxmodelreflection$mxobjectreference_mxobjecttype_parent_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjectreference" ON "mxmodelreflection$mxobjectreference_mxobjecttype_parent" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$mxobjectreferenceid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('1eabb6a8-f463-46e3-982d-6e815a143684', 'MxModelReflection.MxObjectReference_MxObjectType_Parent', 'mxmodelreflection$mxobjectreference_mxobjecttype_parent', '06ea8885-cb5c-4575-995a-0016b24bf109', 'e08dbedf-fedd-4638-9cd4-2fe31c60c108', 'mxmodelreflection$mxobjectreferenceid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$mxobjectreference_mxobjecttype_parent_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjectreference');
CREATE TABLE "mxmodelreflection$mxobjectreference_mxobjecttype" (
	"mxmodelreflection$mxobjectreferenceid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjectreferenceid","mxmodelreflection$mxobjecttypeid"));
CREATE INDEX "idx_mxmodelreflection$mxobjectreference_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjectreference" ON "mxmodelreflection$mxobjectreference_mxobjecttype" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$mxobjectreferenceid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('db78d438-962a-4333-8983-eb94fc0c7452', 'MxModelReflection.MxObjectReference_MxObjectType', 'mxmodelreflection$mxobjectreference_mxobjecttype', '06ea8885-cb5c-4575-995a-0016b24bf109', 'e08dbedf-fedd-4638-9cd4-2fe31c60c108', 'mxmodelreflection$mxobjectreferenceid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$mxobjectreference_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjectreference');
CREATE TABLE "mxmodelreflection$mxobjectreference_module" (
	"mxmodelreflection$mxobjectreferenceid" BIGINT NOT NULL,
	"mxmodelreflection$moduleid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjectreferenceid","mxmodelreflection$moduleid"),
	CONSTRAINT "uniq_mxmodelreflection$mxobjectreference_module_mxmodelreflection$mxobjectreferenceid" UNIQUE ("mxmodelreflection$mxobjectreferenceid"));
CREATE INDEX "idx_mxmodelreflection$mxobjectreference_module_mxmodelreflection$module_mxmodelreflection$mxobjectreference" ON "mxmodelreflection$mxobjectreference_module" ("mxmodelreflection$moduleid" ASC,"mxmodelreflection$mxobjectreferenceid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('aefd9715-885e-457e-b73b-f40b48d20ad9', 'MxModelReflection.MxObjectReference_Module', 'mxmodelreflection$mxobjectreference_module', '06ea8885-cb5c-4575-995a-0016b24bf109', '0772bc5c-d1a6-48e6-9c43-b8f1dc788779', 'mxmodelreflection$mxobjectreferenceid', 'mxmodelreflection$moduleid', 'idx_mxmodelreflection$mxobjectreference_module_mxmodelreflection$module_mxmodelreflection$mxobjectreference');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$mxobjectreference_module_mxmodelreflection$mxobjectreferenceid', 'aefd9715-885e-457e-b73b-f40b48d20ad9', 'e1be00fb-72d1-310b-94ae-cabd8356ac7d');
CREATE TABLE "mxmodelreflection$mxobjectreference_mxobjecttype_child" (
	"mxmodelreflection$mxobjectreferenceid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjectreferenceid","mxmodelreflection$mxobjecttypeid"));
CREATE INDEX "idx_mxmodelreflection$mxobjectreference_mxobjecttype_child_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjectreference" ON "mxmodelreflection$mxobjectreference_mxobjecttype_child" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$mxobjectreferenceid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('1ed8129d-2597-43f4-a966-90391647c7b4', 'MxModelReflection.MxObjectReference_MxObjectType_Child', 'mxmodelreflection$mxobjectreference_mxobjecttype_child', '06ea8885-cb5c-4575-995a-0016b24bf109', 'e08dbedf-fedd-4638-9cd4-2fe31c60c108', 'mxmodelreflection$mxobjectreferenceid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$mxobjectreference_mxobjecttype_child_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjectreference');
CREATE TABLE "encryption$secretkey_publickey" (
	"encryption$pgpcertificateid1" BIGINT NOT NULL,
	"encryption$pgpcertificateid2" BIGINT NOT NULL,
	PRIMARY KEY("encryption$pgpcertificateid1","encryption$pgpcertificateid2"),
	CONSTRAINT "uniq_encryption$secretkey_publickey_encryption$pgpcertificateid1" UNIQUE ("encryption$pgpcertificateid1"));
CREATE INDEX "idx_encryption$secretkey_publickey_encryption$pgpcertificate_encryption$pgpcertificate" ON "encryption$secretkey_publickey" ("encryption$pgpcertificateid2" ASC,"encryption$pgpcertificateid1" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('20a90c50-76b2-42ab-a191-a8f3e1559b22', 'Encryption.SecretKey_PublicKey', 'encryption$secretkey_publickey', '64eab119-b085-4314-9766-c0a7320b9355', '64eab119-b085-4314-9766-c0a7320b9355', 'encryption$pgpcertificateid1', 'encryption$pgpcertificateid2', 'idx_encryption$secretkey_publickey_encryption$pgpcertificate_encryption$pgpcertificate');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_encryption$secretkey_publickey_encryption$pgpcertificateid1', '20a90c50-76b2-42ab-a191-a8f3e1559b22', '670e549e-97ae-372f-a803-e27e87b36aa0');
CREATE TABLE "oidc$token_clientconfiguration" (
	"oidc$tokenid" BIGINT NOT NULL,
	"oidc$clientconfigurationid" BIGINT NOT NULL,
	PRIMARY KEY("oidc$tokenid","oidc$clientconfigurationid"),
	CONSTRAINT "uniq_oidc$token_clientconfiguration_oidc$tokenid" UNIQUE ("oidc$tokenid"));
CREATE INDEX "idx_oidc$token_clientconfiguration_oidc$clientconfiguration_oidc$token" ON "oidc$token_clientconfiguration" ("oidc$clientconfigurationid" ASC,"oidc$tokenid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('2250eb51-3a09-4e74-9004-4f89dff53b1a', 'OIDC.Token_ClientConfiguration', 'oidc$token_clientconfiguration', '2e3f96ca-79f3-4529-93f6-f5e649c1f657', '8359816a-f5e5-4a72-9ac9-21f351787608', 'oidc$tokenid', 'oidc$clientconfigurationid', 'idx_oidc$token_clientconfiguration_oidc$clientconfiguration_oidc$token');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_oidc$token_clientconfiguration_oidc$tokenid', '2250eb51-3a09-4e74-9004-4f89dff53b1a', '4151ec34-d0ad-3399-a031-c9a4829ed41c');
CREATE TABLE "oidc$token_user" (
	"oidc$tokenid" BIGINT NOT NULL,
	"system$userid" BIGINT NOT NULL,
	PRIMARY KEY("oidc$tokenid","system$userid"),
	CONSTRAINT "uniq_oidc$token_user_oidc$tokenid" UNIQUE ("oidc$tokenid"));
CREATE INDEX "idx_oidc$token_user_system$user_oidc$token" ON "oidc$token_user" ("system$userid" ASC,"oidc$tokenid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('67b009c4-f0f7-4944-94cd-a90c22d3b26f', 'OIDC.Token_User', 'oidc$token_user', '2e3f96ca-79f3-4529-93f6-f5e649c1f657', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'oidc$tokenid', 'system$userid', 'idx_oidc$token_user_system$user_oidc$token');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_oidc$token_user_oidc$tokenid', '67b009c4-f0f7-4944-94cd-a90c22d3b26f', 'a416f573-2b04-3a24-978c-8bb251342c22');
CREATE TABLE "mxmodelreflection$microflows_output_type" (
	"mxmodelreflection$microflowsid" BIGINT NOT NULL,
	"mxmodelreflection$valuetypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$microflowsid","mxmodelreflection$valuetypeid"),
	CONSTRAINT "uniq_mxmodelreflection$microflows_output_type_mxmodelreflection$microflowsid" UNIQUE ("mxmodelreflection$microflowsid"));
CREATE INDEX "idx_mxmodelreflection$microflows_output_type_mxmodelreflection$valuetype_mxmodelreflection$microflows" ON "mxmodelreflection$microflows_output_type" ("mxmodelreflection$valuetypeid" ASC,"mxmodelreflection$microflowsid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('e5c58e2f-a175-4ede-9174-bd495a431594', 'MxModelReflection.Microflows_Output_Type', 'mxmodelreflection$microflows_output_type', 'ef5ffc76-f753-44f2-83fb-77b6f78f28ae', '4c9229e3-596c-4834-a2bf-6e876bee3134', 'mxmodelreflection$microflowsid', 'mxmodelreflection$valuetypeid', 'idx_mxmodelreflection$microflows_output_type_mxmodelreflection$valuetype_mxmodelreflection$microflows');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$microflows_output_type_mxmodelreflection$microflowsid', 'e5c58e2f-a175-4ede-9174-bd495a431594', '5045d61f-3ebf-31ee-aa2a-ba77606ad1db');
CREATE TABLE "mxmodelreflection$microflows_module" (
	"mxmodelreflection$microflowsid" BIGINT NOT NULL,
	"mxmodelreflection$moduleid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$microflowsid","mxmodelreflection$moduleid"),
	CONSTRAINT "uniq_mxmodelreflection$microflows_module_mxmodelreflection$microflowsid" UNIQUE ("mxmodelreflection$microflowsid"));
CREATE INDEX "idx_mxmodelreflection$microflows_module_mxmodelreflection$module_mxmodelreflection$microflows" ON "mxmodelreflection$microflows_module" ("mxmodelreflection$moduleid" ASC,"mxmodelreflection$microflowsid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('d98085ef-30c9-41f6-94a8-a2fff30200d0', 'MxModelReflection.Microflows_Module', 'mxmodelreflection$microflows_module', 'ef5ffc76-f753-44f2-83fb-77b6f78f28ae', '0772bc5c-d1a6-48e6-9c43-b8f1dc788779', 'mxmodelreflection$microflowsid', 'mxmodelreflection$moduleid', 'idx_mxmodelreflection$microflows_module_mxmodelreflection$module_mxmodelreflection$microflows');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$microflows_module_mxmodelreflection$microflowsid', 'd98085ef-30c9-41f6-94a8-a2fff30200d0', 'ed4f9ae5-73d0-3eb1-aba1-d1a580960b70');
CREATE TABLE "mxmodelreflection$microflows_inputparameter" (
	"mxmodelreflection$microflowsid" BIGINT NOT NULL,
	"mxmodelreflection$parameterid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$microflowsid","mxmodelreflection$parameterid"));
CREATE INDEX "idx_mxmodelreflection$microflows_inputparameter_mxmodelreflection$parameter_mxmodelreflection$microflows" ON "mxmodelreflection$microflows_inputparameter" ("mxmodelreflection$parameterid" ASC,"mxmodelreflection$microflowsid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('fe1125af-ae94-493e-beae-a67bd704583d', 'MxModelReflection.Microflows_InputParameter', 'mxmodelreflection$microflows_inputparameter', 'ef5ffc76-f753-44f2-83fb-77b6f78f28ae', '4b299f98-32a0-4e99-a891-0806a0abaf9a', 'mxmodelreflection$microflowsid', 'mxmodelreflection$parameterid', 'idx_mxmodelreflection$microflows_inputparameter_mxmodelreflection$parameter_mxmodelreflection$microflows');
CREATE TABLE "oidc$acr_clientconfiguration" (
	"oidc$acrid" BIGINT NOT NULL,
	"oidc$clientconfigurationid" BIGINT NOT NULL,
	PRIMARY KEY("oidc$acrid","oidc$clientconfigurationid"),
	CONSTRAINT "uniq_oidc$acr_clientconfiguration_oidc$acrid" UNIQUE ("oidc$acrid"));
CREATE INDEX "idx_oidc$acr_clientconfiguration_oidc$clientconfiguration_oidc$acr" ON "oidc$acr_clientconfiguration" ("oidc$clientconfigurationid" ASC,"oidc$acrid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('5280b7c5-f328-46cf-a5f4-d939750eef27', 'OIDC.Acr_ClientConfiguration', 'oidc$acr_clientconfiguration', 'fd8fc033-e40f-4e2a-bd93-ba1afb516460', '8359816a-f5e5-4a72-9ac9-21f351787608', 'oidc$acrid', 'oidc$clientconfigurationid', 'idx_oidc$acr_clientconfiguration_oidc$clientconfiguration_oidc$acr');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_oidc$acr_clientconfiguration_oidc$acrid', '5280b7c5-f328-46cf-a5f4-d939750eef27', 'df13f12d-909f-3aec-9dc9-27694a58eafa');
CREATE TABLE "oidc$scopeset_scope" (
	"oidc$scopesetid" BIGINT NOT NULL,
	"oidc$scopeid" BIGINT NOT NULL,
	PRIMARY KEY("oidc$scopesetid","oidc$scopeid"));
CREATE INDEX "idx_oidc$scopeset_scope_oidc$scope_oidc$scopeset" ON "oidc$scopeset_scope" ("oidc$scopeid" ASC,"oidc$scopesetid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('bc4e406e-3a2f-4712-a743-494ac8c6ad7b', 'OIDC.ScopeSet_Scope', 'oidc$scopeset_scope', 'f93f1c5b-ed6e-4ea5-9def-f433bce8a40e', 'e11d51d1-8165-4177-b17f-bfd6f296761e', 'oidc$scopesetid', 'oidc$scopeid', 'idx_oidc$scopeset_scope_oidc$scope_oidc$scopeset');
CREATE TABLE "mxmodelreflection$mxobjectmember_type" (
	"mxmodelreflection$mxobjectmemberid" BIGINT NOT NULL,
	"mxmodelreflection$valuetypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjectmemberid","mxmodelreflection$valuetypeid"),
	CONSTRAINT "uniq_mxmodelreflection$mxobjectmember_type_mxmodelreflection$mxobjectmemberid" UNIQUE ("mxmodelreflection$mxobjectmemberid"));
CREATE INDEX "idx_mxmodelreflection$mxobjectmember_type_mxmodelreflection$valuetype_mxmodelreflection$mxobjectmember" ON "mxmodelreflection$mxobjectmember_type" ("mxmodelreflection$valuetypeid" ASC,"mxmodelreflection$mxobjectmemberid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('849aedf1-2c86-4568-b5d4-cafb4dd8d45d', 'MxModelReflection.MxObjectMember_Type', 'mxmodelreflection$mxobjectmember_type', '0d8f431b-b62f-4e0a-b545-dbd82619e552', '4c9229e3-596c-4834-a2bf-6e876bee3134', 'mxmodelreflection$mxobjectmemberid', 'mxmodelreflection$valuetypeid', 'idx_mxmodelreflection$mxobjectmember_type_mxmodelreflection$valuetype_mxmodelreflection$mxobjectmember');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$mxobjectmember_type_mxmodelreflection$mxobjectmemberid', '849aedf1-2c86-4568-b5d4-cafb4dd8d45d', '6285cf0b-7b9f-36ef-8b19-df8d8ae28ffa');
CREATE TABLE "mxmodelreflection$mxobjectmember_mxobjecttype" (
	"mxmodelreflection$mxobjectmemberid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjectmemberid","mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "uniq_mxmodelreflection$mxobjectmember_mxobjecttype_mxmodelreflection$mxobjectmemberid" UNIQUE ("mxmodelreflection$mxobjectmemberid"));
CREATE INDEX "idx_mxmodelreflection$mxobjectmember_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjectmember" ON "mxmodelreflection$mxobjectmember_mxobjecttype" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$mxobjectmemberid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('e3888196-c4dc-4329-a92b-0ebdc21b2c3c', 'MxModelReflection.MxObjectMember_MxObjectType', 'mxmodelreflection$mxobjectmember_mxobjecttype', '0d8f431b-b62f-4e0a-b545-dbd82619e552', 'e08dbedf-fedd-4638-9cd4-2fe31c60c108', 'mxmodelreflection$mxobjectmemberid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$mxobjectmember_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjectmember');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$mxobjectmember_mxobjecttype_mxmodelreflection$mxobjectmemberid', 'e3888196-c4dc-4329-a92b-0ebdc21b2c3c', '176f7498-a27d-3f42-acd3-f7aa316ba081');
CREATE TABLE "mxmodelreflection$mxobjecttype_subclassof_mxobjecttype" (
	"mxmodelreflection$mxobjecttypeid1" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid2" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjecttypeid1","mxmodelreflection$mxobjecttypeid2"));
CREATE INDEX "idx_mxmodelreflection$mxobjecttype_subclassof_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjecttype" ON "mxmodelreflection$mxobjecttype_subclassof_mxobjecttype" ("mxmodelreflection$mxobjecttypeid2" ASC,"mxmodelreflection$mxobjecttypeid1" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('139cd193-f93e-4b0d-be58-69b90a6d94e2', 'MxModelReflection.MxObjectType_SubClassOf_MxObjectType', 'mxmodelreflection$mxobjecttype_subclassof_mxobjecttype', 'e08dbedf-fedd-4638-9cd4-2fe31c60c108', 'e08dbedf-fedd-4638-9cd4-2fe31c60c108', 'mxmodelreflection$mxobjecttypeid1', 'mxmodelreflection$mxobjecttypeid2', 'idx_mxmodelreflection$mxobjecttype_subclassof_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$mxobjecttype');
CREATE TABLE "mxmodelreflection$mxobjecttype_module" (
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	"mxmodelreflection$moduleid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjecttypeid","mxmodelreflection$moduleid"),
	CONSTRAINT "uniq_mxmodelreflection$mxobjecttype_module_mxmodelreflection$mxobjecttypeid" UNIQUE ("mxmodelreflection$mxobjecttypeid"));
CREATE INDEX "idx_mxmodelreflection$mxobjecttype_module_mxmodelreflection$module_mxmodelreflection$mxobjecttype" ON "mxmodelreflection$mxobjecttype_module" ("mxmodelreflection$moduleid" ASC,"mxmodelreflection$mxobjecttypeid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('fc5d103e-8530-47a5-a980-033d49513d67', 'MxModelReflection.MxObjectType_Module', 'mxmodelreflection$mxobjecttype_module', 'e08dbedf-fedd-4638-9cd4-2fe31c60c108', '0772bc5c-d1a6-48e6-9c43-b8f1dc788779', 'mxmodelreflection$mxobjecttypeid', 'mxmodelreflection$moduleid', 'idx_mxmodelreflection$mxobjecttype_module_mxmodelreflection$module_mxmodelreflection$mxobjecttype');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$mxobjecttype_module_mxmodelreflection$mxobjecttypeid', 'fc5d103e-8530-47a5-a980-033d49513d67', '3caf2fc5-bce8-31fc-b034-ad3cda311d44');
CREATE TABLE "mxmodelreflection$valuetype_mxobjecttype" (
	"mxmodelreflection$valuetypeid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$valuetypeid","mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "uniq_mxmodelreflection$valuetype_mxobjecttype_mxmodelreflection$valuetypeid" UNIQUE ("mxmodelreflection$valuetypeid"));
CREATE INDEX "idx_mxmodelreflection$valuetype_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$valuetype" ON "mxmodelreflection$valuetype_mxobjecttype" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$valuetypeid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('6aaea897-b468-4689-847b-2225f0353761', 'MxModelReflection.ValueType_MxObjectType', 'mxmodelreflection$valuetype_mxobjecttype', '4c9229e3-596c-4834-a2bf-6e876bee3134', 'e08dbedf-fedd-4638-9cd4-2fe31c60c108', 'mxmodelreflection$valuetypeid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$valuetype_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$valuetype');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$valuetype_mxobjecttype_mxmodelreflection$valuetypeid', '6aaea897-b468-4689-847b-2225f0353761', '89dd12f8-5e3d-34db-80ed-f0c7fcbf407c');
CREATE TABLE "oidc$authattempt_clientconfiguration" (
	"oidc$authattemptid" BIGINT NOT NULL,
	"oidc$clientconfigurationid" BIGINT NOT NULL,
	PRIMARY KEY("oidc$authattemptid","oidc$clientconfigurationid"),
	CONSTRAINT "uniq_oidc$authattempt_clientconfiguration_oidc$authattemptid" UNIQUE ("oidc$authattemptid"));
CREATE INDEX "idx_oidc$authattempt_clientconfiguration_oidc$clientconfiguration_oidc$authattempt" ON "oidc$authattempt_clientconfiguration" ("oidc$clientconfigurationid" ASC,"oidc$authattemptid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('ff7b99df-b97f-41db-a168-4345078ce39f', 'OIDC.AuthAttempt_ClientConfiguration', 'oidc$authattempt_clientconfiguration', '22b09efe-b2f0-469b-90ef-5ed6a1757522', '8359816a-f5e5-4a72-9ac9-21f351787608', 'oidc$authattemptid', 'oidc$clientconfigurationid', 'idx_oidc$authattempt_clientconfiguration_oidc$clientconfiguration_oidc$authattempt');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_oidc$authattempt_clientconfiguration_oidc$authattemptid', 'ff7b99df-b97f-41db-a168-4345078ce39f', '204804ff-8a81-3c2e-9329-7206c02235dc');
CREATE TABLE "mxmodelreflection$values" (
	"mxmodelreflection$mxobjectenumid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjectenumvalueid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjectenumid","mxmodelreflection$mxobjectenumvalueid"));
CREATE INDEX "idx_mxmodelreflection$values_mxmodelreflection$mxobjectenumvalue_mxmodelreflection$mxobjectenum" ON "mxmodelreflection$values" ("mxmodelreflection$mxobjectenumvalueid" ASC,"mxmodelreflection$mxobjectenumid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('cb8be2cb-46e8-453a-af4b-80aacc56b328', 'MxModelReflection.Values', 'mxmodelreflection$values', 'a08d89a9-1d7a-49c3-a34b-ee0fc0ebdae7', 'f156909d-62ae-43df-b5f7-f7652a12e4eb', 'mxmodelreflection$mxobjectenumid', 'mxmodelreflection$mxobjectenumvalueid', 'idx_mxmodelreflection$values_mxmodelreflection$mxobjectenumvalue_mxmodelreflection$mxobjectenum');
CREATE TABLE "mxmodelreflection$captions" (
	"mxmodelreflection$mxobjectenumvalueid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjectenumcaptionsid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$mxobjectenumvalueid","mxmodelreflection$mxobjectenumcaptionsid"));
CREATE INDEX "idx_mxmodelreflection$captions_mxmodelreflection$mxobjectenumcaptions_mxmodelreflection$mxobjectenumvalue" ON "mxmodelreflection$captions" ("mxmodelreflection$mxobjectenumcaptionsid" ASC,"mxmodelreflection$mxobjectenumvalueid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('38f720bf-b73c-44d0-a69b-48e384204092', 'MxModelReflection.Captions', 'mxmodelreflection$captions', 'f156909d-62ae-43df-b5f7-f7652a12e4eb', '9b546e95-537b-4834-afe3-1961e4aca66c', 'mxmodelreflection$mxobjectenumvalueid', 'mxmodelreflection$mxobjectenumcaptionsid', 'idx_mxmodelreflection$captions_mxmodelreflection$mxobjectenumcaptions_mxmodelreflection$mxobjectenumvalue');
CREATE TABLE "mxmodelreflection$dbsizeestimate_mxobjecttype" (
	"mxmodelreflection$dbsizeestimateid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$dbsizeestimateid","mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "uniq_mxmodelreflection$dbsizeestimate_mxobjecttype_mxmodelreflection$dbsizeestimateid" UNIQUE ("mxmodelreflection$dbsizeestimateid"));
CREATE INDEX "idx_mxmodelreflection$dbsizeestimate_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$dbsizeestimate" ON "mxmodelreflection$dbsizeestimate_mxobjecttype" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$dbsizeestimateid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('67ff41bc-b030-4818-b8fd-a9e6c5071cc4', 'MxModelReflection.DbSizeEstimate_MxObjectType', 'mxmodelreflection$dbsizeestimate_mxobjecttype', '8c76a1b9-4e8d-4aef-bc3c-e6efcf70132f', 'e08dbedf-fedd-4638-9cd4-2fe31c60c108', 'mxmodelreflection$dbsizeestimateid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$dbsizeestimate_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$dbsizeestimate');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$dbsizeestimate_mxobjecttype_mxmodelreflection$dbsizeestimateid', '67ff41bc-b030-4818-b8fd-a9e6c5071cc4', 'f3aec72b-1dbd-3c14-976b-70abbbee1594');
CREATE TABLE "oidc$codechallengemethodsset_codechallengemethods" (
	"oidc$codechallengemethodssetid" BIGINT NOT NULL,
	"oidc$codechallengemethodsid" BIGINT NOT NULL,
	PRIMARY KEY("oidc$codechallengemethodssetid","oidc$codechallengemethodsid"));
CREATE INDEX "idx_oidc$codechallengemethodsset_codechallengemethods_oidc$codechallengemethods_oidc$codechallengemethodsset" ON "oidc$codechallengemethodsset_codechallengemethods" ("oidc$codechallengemethodsid" ASC,"oidc$codechallengemethodssetid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('f3d0ab90-896e-467c-aad4-61096cf32b1a', 'OIDC.CodeChallengeMethodsSet_CodeChallengeMethods', 'oidc$codechallengemethodsset_codechallengemethods', 'd1a89805-2a7e-42dc-8b39-8a4663360725', '1b9e00d9-e0cd-4632-b0aa-df0a985a0b23', 'oidc$codechallengemethodssetid', 'oidc$codechallengemethodsid', 'idx_oidc$codechallengemethodsset_codechallengemethods_oidc$codechallengemethods_oidc$codechallengemethodsset');
CREATE TABLE "mxmodelreflection$parameter_mxobjecttype" (
	"mxmodelreflection$parameterid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$parameterid","mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "uniq_mxmodelreflection$parameter_mxobjecttype_mxmodelreflection$parameterid" UNIQUE ("mxmodelreflection$parameterid"));
CREATE INDEX "idx_mxmodelreflection$parameter_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$parameter" ON "mxmodelreflection$parameter_mxobjecttype" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$parameterid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('494854b2-6bf8-47b2-8f2c-17133c8dddd3', 'MxModelReflection.Parameter_MxObjectType', 'mxmodelreflection$parameter_mxobjecttype', '4b299f98-32a0-4e99-a891-0806a0abaf9a', 'e08dbedf-fedd-4638-9cd4-2fe31c60c108', 'mxmodelreflection$parameterid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$parameter_mxobjecttype_mxmodelreflection$mxobjecttype_mxmodelreflection$parameter');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$parameter_mxobjecttype_mxmodelreflection$parameterid', '494854b2-6bf8-47b2-8f2c-17133c8dddd3', '16d7c7ff-6274-3239-88fb-cb588d9f278c');
CREATE TABLE "mxmodelreflection$parameter_valuetype" (
	"mxmodelreflection$parameterid" BIGINT NOT NULL,
	"mxmodelreflection$valuetypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$parameterid","mxmodelreflection$valuetypeid"),
	CONSTRAINT "uniq_mxmodelreflection$parameter_valuetype_mxmodelreflection$parameterid" UNIQUE ("mxmodelreflection$parameterid"));
CREATE INDEX "idx_mxmodelreflection$parameter_valuetype_mxmodelreflection$valuetype_mxmodelreflection$parameter" ON "mxmodelreflection$parameter_valuetype" ("mxmodelreflection$valuetypeid" ASC,"mxmodelreflection$parameterid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('c4f1a043-276d-4da3-845f-7a5ad7ddc1fa', 'MxModelReflection.Parameter_ValueType', 'mxmodelreflection$parameter_valuetype', '4b299f98-32a0-4e99-a891-0806a0abaf9a', '4c9229e3-596c-4834-a2bf-6e876bee3134', 'mxmodelreflection$parameterid', 'mxmodelreflection$valuetypeid', 'idx_mxmodelreflection$parameter_valuetype_mxmodelreflection$valuetype_mxmodelreflection$parameter');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$parameter_valuetype_mxmodelreflection$parameterid', 'c4f1a043-276d-4da3-845f-7a5ad7ddc1fa', '091a9497-359f-3760-a151-ac9a25a10dce');
CREATE TABLE "mxmodelreflection$token_mxobjecttype_start" (
	"mxmodelreflection$tokenid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$tokenid","mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "uniq_mxmodelreflection$token_mxobjecttype_start_mxmodelreflection$tokenid" UNIQUE ("mxmodelreflection$tokenid"));
CREATE INDEX "idx_mxmodelreflection$token_mxobjecttype_start_mxmodelreflection$mxobjecttype_mxmodelreflection$token" ON "mxmodelreflection$token_mxobjecttype_start" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$tokenid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('12e1271d-4ff7-431e-be56-1d14a3cae639', 'MxModelReflection.Token_MxObjectType_Start', 'mxmodelreflection$token_mxobjecttype_start', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', 'e08dbedf-fedd-4638-9cd4-2fe31c60c108', 'mxmodelreflection$tokenid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$token_mxobjecttype_start_mxmodelreflection$mxobjecttype_mxmodelreflection$token');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$token_mxobjecttype_start_mxmodelreflection$tokenid', '12e1271d-4ff7-431e-be56-1d14a3cae639', '04d992f7-a9b4-3ce0-8e3a-671ee80bae12');
CREATE TABLE "mxmodelreflection$token_mxobjectreference" (
	"mxmodelreflection$tokenid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjectreferenceid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$tokenid","mxmodelreflection$mxobjectreferenceid"),
	CONSTRAINT "uniq_mxmodelreflection$token_mxobjectreference_mxmodelreflection$tokenid" UNIQUE ("mxmodelreflection$tokenid"));
CREATE INDEX "idx_mxmodelreflection$token_mxobjectreference_mxmodelreflection$mxobjectreference_mxmodelreflection$token" ON "mxmodelreflection$token_mxobjectreference" ("mxmodelreflection$mxobjectreferenceid" ASC,"mxmodelreflection$tokenid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('f4d7dbb3-a5b5-4447-8c4e-fe7c65c9695c', 'MxModelReflection.Token_MxObjectReference', 'mxmodelreflection$token_mxobjectreference', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', '06ea8885-cb5c-4575-995a-0016b24bf109', 'mxmodelreflection$tokenid', 'mxmodelreflection$mxobjectreferenceid', 'idx_mxmodelreflection$token_mxobjectreference_mxmodelreflection$mxobjectreference_mxmodelreflection$token');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$token_mxobjectreference_mxmodelreflection$tokenid', 'f4d7dbb3-a5b5-4447-8c4e-fe7c65c9695c', '6a345fb9-da1e-394a-bf55-a87548c8d115');
CREATE TABLE "mxmodelreflection$token_mxobjecttype_referenced" (
	"mxmodelreflection$tokenid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$tokenid","mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "uniq_mxmodelreflection$token_mxobjecttype_referenced_mxmodelreflection$tokenid" UNIQUE ("mxmodelreflection$tokenid"));
CREATE INDEX "idx_mxmodelreflection$token_mxobjecttype_referenced_mxmodelreflection$mxobjecttype_mxmodelreflection$token" ON "mxmodelreflection$token_mxobjecttype_referenced" ("mxmodelreflection$mxobjecttypeid" ASC,"mxmodelreflection$tokenid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('906355cd-5a89-47f5-a69e-190d50f501c5', 'MxModelReflection.Token_MxObjectType_Referenced', 'mxmodelreflection$token_mxobjecttype_referenced', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', 'e08dbedf-fedd-4638-9cd4-2fe31c60c108', 'mxmodelreflection$tokenid', 'mxmodelreflection$mxobjecttypeid', 'idx_mxmodelreflection$token_mxobjecttype_referenced_mxmodelreflection$mxobjecttype_mxmodelreflection$token');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$token_mxobjecttype_referenced_mxmodelreflection$tokenid', '906355cd-5a89-47f5-a69e-190d50f501c5', '644c6e69-ded5-372a-96e2-a2bb0bfd9dbe');
CREATE TABLE "mxmodelreflection$token_mxobjectmember" (
	"mxmodelreflection$tokenid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjectmemberid" BIGINT NOT NULL,
	PRIMARY KEY("mxmodelreflection$tokenid","mxmodelreflection$mxobjectmemberid"),
	CONSTRAINT "uniq_mxmodelreflection$token_mxobjectmember_mxmodelreflection$tokenid" UNIQUE ("mxmodelreflection$tokenid"));
CREATE INDEX "idx_mxmodelreflection$token_mxobjectmember_mxmodelreflection$mxobjectmember_mxmodelreflection$token" ON "mxmodelreflection$token_mxobjectmember" ("mxmodelreflection$mxobjectmemberid" ASC,"mxmodelreflection$tokenid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('b5f7d045-6e02-438a-8026-ab4fceb6791d', 'MxModelReflection.Token_MxObjectMember', 'mxmodelreflection$token_mxobjectmember', '3e91ca13-1a8e-4ef2-a234-09462e1ac5fb', '0d8f431b-b62f-4e0a-b545-dbd82619e552', 'mxmodelreflection$tokenid', 'mxmodelreflection$mxobjectmemberid', 'idx_mxmodelreflection$token_mxobjectmember_mxmodelreflection$mxobjectmember_mxmodelreflection$token');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_mxmodelreflection$token_mxobjectmember_mxmodelreflection$tokenid', 'b5f7d045-6e02-438a-8026-ab4fceb6791d', '80be0b14-0a66-3c20-ba54-d3d972529ee3');
CREATE TABLE "oidc$claimset_claim" (
	"oidc$claimsetid" BIGINT NOT NULL,
	"oidc$claimid" BIGINT NOT NULL,
	PRIMARY KEY("oidc$claimsetid","oidc$claimid"));
CREATE INDEX "idx_oidc$claimset_claim_oidc$claim_oidc$claimset" ON "oidc$claimset_claim" ("oidc$claimid" ASC,"oidc$claimsetid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('e409e4dc-dd20-403e-b3a7-9ccbb70a43e8', 'OIDC.ClaimSet_Claim', 'oidc$claimset_claim', '807d70ed-683a-4bd9-9987-262f529fb7ee', '0cd35e0e-f4e4-46a0-92ff-2500fee3362d', 'oidc$claimsetid', 'oidc$claimid', 'idx_oidc$claimset_claim_oidc$claim_oidc$claimset');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240209 21:06:32';
