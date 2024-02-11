ALTER TABLE "myfirstmodule$gallery_motorcycle" DROP CONSTRAINT "uniq_myfirstmodule$gallery_motorcycle_myfirstmodule$galleryid";
DROP INDEX "idx_myfirstmodule$gallery_motorcycle_myfirstmodule$motorcycle_myfirstmodule$gallery";
ALTER TABLE "myfirstmodule$gallery_motorcycle" RENAME TO "04dc8618c2cb4682b58dd1cbb90c9cdb";
ALTER TABLE "myfirstmodule$gallery_truck" DROP CONSTRAINT "uniq_myfirstmodule$gallery_truck_myfirstmodule$galleryid";
DROP INDEX "idx_myfirstmodule$gallery_truck_myfirstmodule$truck_myfirstmodule$gallery";
ALTER TABLE "myfirstmodule$gallery_truck" RENAME TO "55b35a67311242b3ac2300774955baf4";
ALTER TABLE "myfirstmodule$gallery_car" DROP CONSTRAINT "uniq_myfirstmodule$gallery_car_myfirstmodule$galleryid";
DROP INDEX "idx_myfirstmodule$gallery_car_myfirstmodule$car_myfirstmodule$gallery";
ALTER TABLE "myfirstmodule$gallery_car" RENAME TO "myfirstmodule$gallerycar_car";
ALTER TABLE "myfirstmodule$gallery" RENAME TO "myfirstmodule$gallerycar";
UPDATE "system$image" SET "submetaobjectname" = 'MyFirstModule.GalleryCar' WHERE "submetaobjectname" = 'MyFirstModule.Gallery';
UPDATE "system$filedocument" SET "submetaobjectname" = 'MyFirstModule.GalleryCar' WHERE "submetaobjectname" = 'MyFirstModule.Gallery';
DELETE FROM "mendixsystem$association"  WHERE "id" = '21bba76a-58be-468d-98f2-f44cd30bb56b';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_myfirstmodule$gallery_motorcycle_myfirstmodule$galleryid' AND "column_id" = 'd4292e01-486a-3826-911e-f46c82a1de69';
DELETE FROM "mendixsystem$association"  WHERE "id" = '42a4e080-80d2-4f4b-8b59-7222b4722832';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_myfirstmodule$gallery_truck_myfirstmodule$galleryid' AND "column_id" = '5fa84a20-df80-3e2e-9c11-e5a284b51827';
ALTER TABLE "myfirstmodule$gallerycar_car" ALTER COLUMN "myfirstmodule$galleryid" RENAME TO "myfirstmodule$gallerycarid";
CREATE INDEX "idx_myfirstmodule$gallerycar_car_myfirstmodule$car_myfirstmodule$gallerycar" ON "myfirstmodule$gallerycar_car" ("myfirstmodule$carid" ASC,"myfirstmodule$gallerycarid" ASC);
ALTER TABLE "myfirstmodule$gallerycar_car" ADD CONSTRAINT "uniq_myfirstmodule$gallerycar_car_myfirstmodule$carid" UNIQUE ("myfirstmodule$carid");
ALTER TABLE "myfirstmodule$gallerycar_car" ADD CONSTRAINT "uniq_myfirstmodule$gallerycar_car_myfirstmodule$gallerycarid" UNIQUE ("myfirstmodule$gallerycarid");
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_myfirstmodule$gallery_car_myfirstmodule$galleryid' AND "column_id" = '2db88b52-f2d5-3656-b393-a2a5f3cf1783';
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$gallerycar_car_myfirstmodule$carid', 'ee8ad0c4-a256-481d-b62d-a54706fbe99f', '1f1f776c-6d92-3a55-8f63-0071ab147f88');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$gallerycar_car_myfirstmodule$gallerycarid', 'ee8ad0c4-a256-481d-b62d-a54706fbe99f', '2db88b52-f2d5-3656-b393-a2a5f3cf1783');
UPDATE "mendixsystem$association" SET "association_name" = 'MyFirstModule.GalleryCar_Car', "table_name" = 'myfirstmodule$gallerycar_car', "parent_entity_id" = 'ec6df335-1636-4a8d-a78c-ca812014bbbb', "child_entity_id" = '02fe64b7-79c5-4589-8476-f589fbcddd1f', "parent_column_name" = 'myfirstmodule$gallerycarid', "child_column_name" = 'myfirstmodule$carid', "pk_index_name" = NULL, "index_name" = 'idx_myfirstmodule$gallerycar_car_myfirstmodule$car_myfirstmodule$gallerycar', "parent_fkc_name" = NULL, "child_fkc_name" = NULL WHERE "id" = 'ee8ad0c4-a256-481d-b62d-a54706fbe99f';
UPDATE "mendixsystem$entity" SET "entity_name" = 'MyFirstModule.GalleryCar', "table_name" = 'myfirstmodule$gallerycar', "superentity_id" = '37827192-315d-4ab6-85b8-f626f866ea76', "remote" = false, "remote_primary_key" = false WHERE "id" = 'ec6df335-1636-4a8d-a78c-ca812014bbbb';
CREATE TABLE "myfirstmodule$gallerymotorcycle" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('5dd2c9f7-c280-4969-965f-aa783b2ddc10', 'MyFirstModule.GalleryMotorcycle', 'myfirstmodule$gallerymotorcycle', '37827192-315d-4ab6-85b8-f626f866ea76', false, false);
CREATE TABLE "myfirstmodule$gallerytruck" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('fd47c7ad-8a2d-452c-b614-8b1a5498b926', 'MyFirstModule.GalleryTruck', 'myfirstmodule$gallerytruck', '37827192-315d-4ab6-85b8-f626f866ea76', false, false);
CREATE TABLE "myfirstmodule$gallerymotorcycle_motorcycle" (
	"myfirstmodule$gallerymotorcycleid" BIGINT NOT NULL,
	"myfirstmodule$motorcycleid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$gallerymotorcycleid","myfirstmodule$motorcycleid"),
	CONSTRAINT "uniq_myfirstmodule$gallerymotorcycle_motorcycle_myfirstmodule$motorcycleid" UNIQUE ("myfirstmodule$motorcycleid"),
	CONSTRAINT "uniq_myfirstmodule$gallerymotorcycle_motorcycle_myfirstmodule$gallerymotorcycleid" UNIQUE ("myfirstmodule$gallerymotorcycleid"));
CREATE INDEX "idx_myfirstmodule$gallerymotorcycle_motorcycle_myfirstmodule$motorcycle_myfirstmodule$gallerymotorcycle" ON "myfirstmodule$gallerymotorcycle_motorcycle" ("myfirstmodule$motorcycleid" ASC,"myfirstmodule$gallerymotorcycleid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('060eacfa-a8be-4597-925a-6eb14d6993b1', 'MyFirstModule.GalleryMotorcycle_Motorcycle', 'myfirstmodule$gallerymotorcycle_motorcycle', '5dd2c9f7-c280-4969-965f-aa783b2ddc10', '7100d30b-90ff-4cc2-8d76-148359de7662', 'myfirstmodule$gallerymotorcycleid', 'myfirstmodule$motorcycleid', 'idx_myfirstmodule$gallerymotorcycle_motorcycle_myfirstmodule$motorcycle_myfirstmodule$gallerymotorcycle');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$gallerymotorcycle_motorcycle_myfirstmodule$motorcycleid', '060eacfa-a8be-4597-925a-6eb14d6993b1', '86016c29-d6af-3d0a-b16f-ebf62fce9845');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$gallerymotorcycle_motorcycle_myfirstmodule$gallerymotorcycleid', '060eacfa-a8be-4597-925a-6eb14d6993b1', 'c40dbc7c-b57c-3732-a91d-43fc5a9a83de');
CREATE TABLE "myfirstmodule$gallerytruck_truck" (
	"myfirstmodule$gallerytruckid" BIGINT NOT NULL,
	"myfirstmodule$truckid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$gallerytruckid","myfirstmodule$truckid"),
	CONSTRAINT "uniq_myfirstmodule$gallerytruck_truck_myfirstmodule$truckid" UNIQUE ("myfirstmodule$truckid"),
	CONSTRAINT "uniq_myfirstmodule$gallerytruck_truck_myfirstmodule$gallerytruckid" UNIQUE ("myfirstmodule$gallerytruckid"));
CREATE INDEX "idx_myfirstmodule$gallerytruck_truck_myfirstmodule$truck_myfirstmodule$gallerytruck" ON "myfirstmodule$gallerytruck_truck" ("myfirstmodule$truckid" ASC,"myfirstmodule$gallerytruckid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('9ac571a7-194b-4241-8123-08f0b4eb9f40', 'MyFirstModule.GalleryTruck_Truck', 'myfirstmodule$gallerytruck_truck', 'fd47c7ad-8a2d-452c-b614-8b1a5498b926', '4623486e-1118-4263-8b13-61af0a88c160', 'myfirstmodule$gallerytruckid', 'myfirstmodule$truckid', 'idx_myfirstmodule$gallerytruck_truck_myfirstmodule$truck_myfirstmodule$gallerytruck');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$gallerytruck_truck_myfirstmodule$truckid', '9ac571a7-194b-4241-8123-08f0b4eb9f40', '741cfe4f-683b-3fba-a3d3-3b3752dc5370');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$gallerytruck_truck_myfirstmodule$gallerytruckid', '9ac571a7-194b-4241-8123-08f0b4eb9f40', '0eb4d01f-548b-3cd7-91f8-c2469acc77bc');
DROP TABLE "04dc8618c2cb4682b58dd1cbb90c9cdb";
DROP TABLE "55b35a67311242b3ac2300774955baf4";
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240109 00:48:15';
