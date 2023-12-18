ALTER TABLE "system$image" ADD "submetaobjectname" VARCHAR_IGNORECASE(255) NULL;
UPDATE "system$image" SET "submetaobjectname" = 'System.Image';
CREATE INDEX "idx_system$image_submetaobjectname_asc" ON "system$image" ("submetaobjectname" ASC,"id" ASC);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('272f49fe-6a64-3ede-a32d-344a34e57b9f', '37827192-315d-4ab6-85b8-f626f866ea76', 'submetaobjectname', 'submetaobjectname', 30, 255, 'System.Image', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('00a9ec1c-4fab-368f-83d4-ffa8ff501c8c', '37827192-315d-4ab6-85b8-f626f866ea76', 'idx_system$image_submetaobjectname_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('00a9ec1c-4fab-368f-83d4-ffa8ff501c8c', '272f49fe-6a64-3ede-a32d-344a34e57b9f', false, 0);
CREATE TABLE "soccersquad$logo" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('d9199f94-4a14-4546-9df1-9d6de5168bac', 'SoccerSquad.Logo', 'soccersquad$logo', '37827192-315d-4ab6-85b8-f626f866ea76', false, false);
CREATE TABLE "soccersquad$team_logo" (
	"soccersquad$logoid" BIGINT NOT NULL,
	"soccersquad$teamid" BIGINT NOT NULL,
	PRIMARY KEY("soccersquad$logoid","soccersquad$teamid"),
	CONSTRAINT "uniq_soccersquad$team_logo_soccersquad$teamid" UNIQUE ("soccersquad$teamid"),
	CONSTRAINT "uniq_soccersquad$team_logo_soccersquad$logoid" UNIQUE ("soccersquad$logoid"));
CREATE INDEX "idx_soccersquad$team_logo_soccersquad$team_soccersquad$logo" ON "soccersquad$team_logo" ("soccersquad$teamid" ASC,"soccersquad$logoid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('817ddb30-76f0-4d72-9969-6722dac613e0', 'SoccerSquad.Team_Logo', 'soccersquad$team_logo', 'd9199f94-4a14-4546-9df1-9d6de5168bac', '781caf18-5349-4d27-baab-9c6bf1c5a987', 'soccersquad$logoid', 'soccersquad$teamid', 'idx_soccersquad$team_logo_soccersquad$team_soccersquad$logo');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_soccersquad$team_logo_soccersquad$teamid', '817ddb30-76f0-4d72-9969-6722dac613e0', '05c81e05-97b8-3870-bae9-a76913509a34');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_soccersquad$team_logo_soccersquad$logoid', '817ddb30-76f0-4d72-9969-6722dac613e0', 'cbca5a94-26e6-3214-a313-36878cd9c1f4');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20231210 12:24:10';
