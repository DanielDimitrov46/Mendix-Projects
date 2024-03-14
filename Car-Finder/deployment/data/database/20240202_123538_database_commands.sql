ALTER TABLE "carfinder$motorcycleimage_motorcycle" DROP CONSTRAINT "uniq_carfinder$motorcycleimage_motorcycle_carfinder$motorcycleimageid";
DROP INDEX "idx_carfinder$motorcycleimage_motorcycle_carfinder$motorcycle_carfinder$motorcycleimage";
ALTER TABLE "carfinder$motorcycleimage_motorcycle" RENAME TO "48ac68956d2e43388e212dd1c68b4b9d";
ALTER TABLE "carfinder$carimage_car" DROP CONSTRAINT "uniq_carfinder$carimage_car_carfinder$carimageid";
DROP INDEX "idx_carfinder$carimage_car_carfinder$car_carfinder$carimage";
ALTER TABLE "carfinder$carimage_car" RENAME TO "f4d8d11d355a4d9da6147cfe23771654";
ALTER TABLE "carfinder$truckimage_truck" DROP CONSTRAINT "uniq_carfinder$truckimage_truck_carfinder$truckimageid";
DROP INDEX "idx_carfinder$truckimage_truck_carfinder$truck_carfinder$truckimage";
ALTER TABLE "carfinder$truckimage_truck" RENAME TO "7766642c7957480ebb30be8d10206dc4";
ALTER TABLE "carfinder$motorcycleimage" RENAME TO "3b3a89f4ff1e44b98a4fb42de28a2bd2";
ALTER TABLE "carfinder$carimage" RENAME TO "746fc464f0094f1594e7745641cb2136";
ALTER TABLE "carfinder$truckimage" RENAME TO "5597361281b548898837a556fbe6b5e5";
DELETE FROM "mendixsystem$association"  WHERE "id" = '060eacfa-a8be-4597-925a-6eb14d6993b1';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_carfinder$motorcycleimage_motorcycle_carfinder$motorcycleimageid' AND "column_id" = 'c40dbc7c-b57c-3732-a91d-43fc5a9a83de';
DELETE FROM "mendixsystem$association"  WHERE "id" = 'ee8ad0c4-a256-481d-b62d-a54706fbe99f';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_carfinder$carimage_car_carfinder$carimageid' AND "column_id" = '2db88b52-f2d5-3656-b393-a2a5f3cf1783';
DELETE FROM "mendixsystem$association"  WHERE "id" = '9ac571a7-194b-4241-8123-08f0b4eb9f40';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_carfinder$truckimage_truck_carfinder$truckimageid' AND "column_id" = '0eb4d01f-548b-3cd7-91f8-c2469acc77bc';
DELETE FROM "mendixsystem$entity"  WHERE "id" = '5dd2c9f7-c280-4969-965f-aa783b2ddc10';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = '5dd2c9f7-c280-4969-965f-aa783b2ddc10';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = '5dd2c9f7-c280-4969-965f-aa783b2ddc10' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = '5dd2c9f7-c280-4969-965f-aa783b2ddc10';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = '5dd2c9f7-c280-4969-965f-aa783b2ddc10';
DELETE FROM "mendixsystem$entity"  WHERE "id" = 'ec6df335-1636-4a8d-a78c-ca812014bbbb';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = 'ec6df335-1636-4a8d-a78c-ca812014bbbb';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = 'ec6df335-1636-4a8d-a78c-ca812014bbbb' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = 'ec6df335-1636-4a8d-a78c-ca812014bbbb';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = 'ec6df335-1636-4a8d-a78c-ca812014bbbb';
DELETE FROM "mendixsystem$entity"  WHERE "id" = 'fd47c7ad-8a2d-452c-b614-8b1a5498b926';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = 'fd47c7ad-8a2d-452c-b614-8b1a5498b926';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = 'fd47c7ad-8a2d-452c-b614-8b1a5498b926' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = 'fd47c7ad-8a2d-452c-b614-8b1a5498b926';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = 'fd47c7ad-8a2d-452c-b614-8b1a5498b926';
CREATE TABLE "carfinder$adimage" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('262f13c5-9cd6-43dd-8b15-d3c3dca060c0', 'CarFinder.AdImage', 'carfinder$adimage', '37827192-315d-4ab6-85b8-f626f866ea76', false, false);
CREATE TABLE "carfinder$adimage_ad" (
	"carfinder$adimageid" BIGINT NOT NULL,
	"carfinder$adid" BIGINT NOT NULL,
	PRIMARY KEY("carfinder$adimageid","carfinder$adid"),
	CONSTRAINT "uniq_carfinder$adimage_ad_carfinder$adimageid" UNIQUE ("carfinder$adimageid"));
CREATE INDEX "idx_carfinder$adimage_ad_carfinder$ad_carfinder$adimage" ON "carfinder$adimage_ad" ("carfinder$adid" ASC,"carfinder$adimageid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('30210831-6c53-426a-99e1-d9d603ae7c7c', 'CarFinder.AdImage_Ad', 'carfinder$adimage_ad', '262f13c5-9cd6-43dd-8b15-d3c3dca060c0', 'aa1004c2-38d1-48e5-9761-10f9b43b5c02', 'carfinder$adimageid', 'carfinder$adid', 'idx_carfinder$adimage_ad_carfinder$ad_carfinder$adimage');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_carfinder$adimage_ad_carfinder$adimageid', '30210831-6c53-426a-99e1-d9d603ae7c7c', 'a41fe79a-7372-30fd-a861-2471bf7002a2');
DELETE FROM "system$thumbnail_image"  WHERE "system$imageid" IN ( SELECT "id" FROM "5597361281b548898837a556fbe6b5e5" );
DELETE FROM "system$image"  WHERE "id" IN ( SELECT "id" FROM "5597361281b548898837a556fbe6b5e5" );
DELETE FROM "system$filedocument"  WHERE "id" IN ( SELECT "id" FROM "5597361281b548898837a556fbe6b5e5" );
INSERT INTO "system$unreferencedfile" ("id", "filekey", "createddate", "state") VALUES (17169973579388572, ( SELECT "__uuid__" FROM "system$filedocument" WHERE "id" = 31243722414895854 ), ( SELECT "createddate" FROM "system$filedocument" WHERE "id" = 31243722414895854 ), 'Deleted');
INSERT INTO "system$unreferencedfile" ("id", "filekey", "createddate", "state") VALUES (17169973579388754, ( SELECT "__uuid__" FROM "system$filedocument" WHERE "id" = 31243722414908624 ), ( SELECT "createddate" FROM "system$filedocument" WHERE "id" = 31243722414908624 ), 'Deleted');
INSERT INTO "system$unreferencedfile" ("id", "filekey", "createddate", "state") VALUES (17169973579388898, ( SELECT "__uuid__" FROM "system$filedocument" WHERE "id" = 31243722414921369 ), ( SELECT "createddate" FROM "system$filedocument" WHERE "id" = 31243722414921369 ), 'Deleted');
INSERT INTO "system$unreferencedfile" ("id", "filekey", "createddate", "state") VALUES (17169973579389024, ( SELECT "__uuid__" FROM "system$filedocument" WHERE "id" = 31243722415011064 ), ( SELECT "createddate" FROM "system$filedocument" WHERE "id" = 31243722415011064 ), 'Deleted');
INSERT INTO "system$unreferencedfile" ("id", "filekey", "createddate", "state") VALUES (17169973579389080, ( SELECT "__uuid__" FROM "system$filedocument" WHERE "id" = 31243722415011146 ), ( SELECT "createddate" FROM "system$filedocument" WHERE "id" = 31243722415011146 ), 'Deleted');
INSERT INTO "system$unreferencedfile" ("id", "filekey", "createddate", "state") VALUES (17169973579389276, ( SELECT "__uuid__" FROM "system$filedocument" WHERE "id" = 31243722415011200 ), ( SELECT "createddate" FROM "system$filedocument" WHERE "id" = 31243722415011200 ), 'Deleted');
INSERT INTO "system$unreferencedfile" ("id", "filekey", "createddate", "state") VALUES (17169973579389393, ( SELECT "__uuid__" FROM "system$filedocument" WHERE "id" = 31243722415011455 ), ( SELECT "createddate" FROM "system$filedocument" WHERE "id" = 31243722415011455 ), 'Deleted');
INSERT INTO "system$unreferencedfile" ("id", "filekey", "createddate", "state") VALUES (17169973579389526, ( SELECT "__uuid__" FROM "system$filedocument" WHERE "id" = 31243722415023780 ), ( SELECT "createddate" FROM "system$filedocument" WHERE "id" = 31243722415023780 ), 'Deleted');
INSERT INTO "system$unreferencedfile" ("id", "filekey", "createddate", "state") VALUES (17169973579389682, ( SELECT "__uuid__" FROM "system$filedocument" WHERE "id" = 31243722415036659 ), ( SELECT "createddate" FROM "system$filedocument" WHERE "id" = 31243722415036659 ), 'Deleted');
INSERT INTO "system$unreferencedfile" ("id", "filekey", "createddate", "state") VALUES (17169973579389789, ( SELECT "__uuid__" FROM "system$filedocument" WHERE "id" = 31243722415036746 ), ( SELECT "createddate" FROM "system$filedocument" WHERE "id" = 31243722415036746 ), 'Deleted');
DELETE FROM "system$thumbnail_image"  WHERE "system$imageid" IN ( SELECT "id" FROM "746fc464f0094f1594e7745641cb2136" );
DELETE FROM "system$image"  WHERE "id" IN ( SELECT "id" FROM "746fc464f0094f1594e7745641cb2136" );
DELETE FROM "system$filedocument"  WHERE "id" IN ( SELECT "id" FROM "746fc464f0094f1594e7745641cb2136" );
DELETE FROM "system$thumbnail_image"  WHERE "system$imageid" IN ( SELECT "id" FROM "3b3a89f4ff1e44b98a4fb42de28a2bd2" );
DELETE FROM "system$image"  WHERE "id" IN ( SELECT "id" FROM "3b3a89f4ff1e44b98a4fb42de28a2bd2" );
DELETE FROM "system$filedocument"  WHERE "id" IN ( SELECT "id" FROM "3b3a89f4ff1e44b98a4fb42de28a2bd2" );
DROP TABLE "48ac68956d2e43388e212dd1c68b4b9d";
DROP TABLE "f4d8d11d355a4d9da6147cfe23771654";
DROP TABLE "7766642c7957480ebb30be8d10206dc4";
DROP TABLE "3b3a89f4ff1e44b98a4fb42de28a2bd2";
DROP TABLE "746fc464f0094f1594e7745641cb2136";
DROP TABLE "5597361281b548898837a556fbe6b5e5";
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240202 12:35:38';