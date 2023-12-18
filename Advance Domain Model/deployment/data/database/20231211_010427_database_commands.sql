CREATE TABLE "soccersquad$apprentice_buddy" (
	"soccersquad$playerid1" BIGINT NOT NULL,
	"soccersquad$playerid2" BIGINT NOT NULL,
	PRIMARY KEY("soccersquad$playerid1","soccersquad$playerid2"),
	CONSTRAINT "uniq_soccersquad$apprentice_buddy_soccersquad$playerid1" UNIQUE ("soccersquad$playerid1"));
CREATE INDEX "idx_soccersquad$apprentice_buddy_soccersquad$player_soccersquad$player" ON "soccersquad$apprentice_buddy" ("soccersquad$playerid2" ASC,"soccersquad$playerid1" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('27ab1d6e-8710-4a21-9482-986aaeaddd1f', 'SoccerSquad.Apprentice_Buddy', 'soccersquad$apprentice_buddy', '3736cdd7-6873-4135-a824-715ca6abd849', '3736cdd7-6873-4135-a824-715ca6abd849', 'soccersquad$playerid1', 'soccersquad$playerid2', 'idx_soccersquad$apprentice_buddy_soccersquad$player_soccersquad$player');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_soccersquad$apprentice_buddy_soccersquad$playerid1', '27ab1d6e-8710-4a21-9482-986aaeaddd1f', '31ebff0f-7828-3ad0-a315-2e05399a63c6');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20231211 01:04:27';
