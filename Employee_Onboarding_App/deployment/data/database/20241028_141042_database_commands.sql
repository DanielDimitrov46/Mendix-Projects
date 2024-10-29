CREATE TABLE "usermanagement$user_userrole" (
	"usermanagement$userid" BIGINT NOT NULL,
	"system$userroleid" BIGINT NOT NULL,
	PRIMARY KEY("usermanagement$userid","system$userroleid"),
	CONSTRAINT "uniq_usermanagement$user_userrole_usermanagement$userid" UNIQUE ("usermanagement$userid"),
	CONSTRAINT "frn_usermanagement$user_userrole_usermanagement$userid" FOREIGN KEY ( "usermanagement$userid" ) REFERENCES "usermanagement$user" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_usermanagement$user_userrole_system$userroleid" FOREIGN KEY ( "system$userroleid" ) REFERENCES "system$userrole" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_usermanagement$user_userrole_system$userrole_usermanagement$user" ON "usermanagement$user_userrole" ("system$userroleid" ASC,"usermanagement$userid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('be07e351-fb90-4c5d-b04a-0b78dfcb92be', 'UserManagement.User_UserRole', 'usermanagement$user_userrole', 'ac7c9b3e-80c7-425a-86c9-f0d8f97aadee', '92ef30a6-de04-423c-84fd-a21e9b9eeae2', 'usermanagement$userid', 'system$userroleid', 'idx_usermanagement$user_userrole_system$userrole_usermanagement$user', 'frn_usermanagement$user_userrole_usermanagement$userid', 'frn_usermanagement$user_userrole_system$userroleid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_usermanagement$user_userrole_usermanagement$userid', 'be07e351-fb90-4c5d-b04a-0b78dfcb92be', 'f03398f9-4355-301d-b0f9-689a989864d7');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20241028 14:10:42';
