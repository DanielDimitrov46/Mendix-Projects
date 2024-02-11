ALTER TABLE "myfirstmodule$gallery_vehicle" DROP CONSTRAINT "uniq_myfirstmodule$gallery_vehicle_myfirstmodule$galleryid";
DROP INDEX "idx_myfirstmodule$gallery_vehicle_myfirstmodule$vehicle_myfirstmodule$gallery";
ALTER TABLE "myfirstmodule$gallery_vehicle" RENAME TO "9a03b5b3686645038d110852786350bc";
DELETE FROM "mendixsystem$association"  WHERE "id" = 'f7b8e910-7694-4e2d-8873-5951aed6730c';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_myfirstmodule$gallery_vehicle_myfirstmodule$galleryid' AND "column_id" = '858b998c-4bd6-3460-b664-0e3629455a56';
CREATE TABLE "myfirstmodule$gallery_truck" (
	"myfirstmodule$galleryid" BIGINT NOT NULL,
	"myfirstmodule$truckid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$galleryid","myfirstmodule$truckid"),
	CONSTRAINT "uniq_myfirstmodule$gallery_truck_myfirstmodule$galleryid" UNIQUE ("myfirstmodule$galleryid"));
CREATE INDEX "idx_myfirstmodule$gallery_truck_myfirstmodule$truck_myfirstmodule$gallery" ON "myfirstmodule$gallery_truck" ("myfirstmodule$truckid" ASC,"myfirstmodule$galleryid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('42a4e080-80d2-4f4b-8b59-7222b4722832', 'MyFirstModule.Gallery_Truck', 'myfirstmodule$gallery_truck', 'ec6df335-1636-4a8d-a78c-ca812014bbbb', '4623486e-1118-4263-8b13-61af0a88c160', 'myfirstmodule$galleryid', 'myfirstmodule$truckid', 'idx_myfirstmodule$gallery_truck_myfirstmodule$truck_myfirstmodule$gallery');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$gallery_truck_myfirstmodule$galleryid', '42a4e080-80d2-4f4b-8b59-7222b4722832', '5fa84a20-df80-3e2e-9c11-e5a284b51827');
CREATE TABLE "myfirstmodule$gallery_car" (
	"myfirstmodule$galleryid" BIGINT NOT NULL,
	"myfirstmodule$carid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$galleryid","myfirstmodule$carid"),
	CONSTRAINT "uniq_myfirstmodule$gallery_car_myfirstmodule$galleryid" UNIQUE ("myfirstmodule$galleryid"));
CREATE INDEX "idx_myfirstmodule$gallery_car_myfirstmodule$car_myfirstmodule$gallery" ON "myfirstmodule$gallery_car" ("myfirstmodule$carid" ASC,"myfirstmodule$galleryid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('ee8ad0c4-a256-481d-b62d-a54706fbe99f', 'MyFirstModule.Gallery_Car', 'myfirstmodule$gallery_car', 'ec6df335-1636-4a8d-a78c-ca812014bbbb', '02fe64b7-79c5-4589-8476-f589fbcddd1f', 'myfirstmodule$galleryid', 'myfirstmodule$carid', 'idx_myfirstmodule$gallery_car_myfirstmodule$car_myfirstmodule$gallery');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$gallery_car_myfirstmodule$galleryid', 'ee8ad0c4-a256-481d-b62d-a54706fbe99f', '2db88b52-f2d5-3656-b393-a2a5f3cf1783');
CREATE TABLE "myfirstmodule$gallery_motorcycle" (
	"myfirstmodule$galleryid" BIGINT NOT NULL,
	"myfirstmodule$motorcycleid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$galleryid","myfirstmodule$motorcycleid"),
	CONSTRAINT "uniq_myfirstmodule$gallery_motorcycle_myfirstmodule$galleryid" UNIQUE ("myfirstmodule$galleryid"));
CREATE INDEX "idx_myfirstmodule$gallery_motorcycle_myfirstmodule$motorcycle_myfirstmodule$gallery" ON "myfirstmodule$gallery_motorcycle" ("myfirstmodule$motorcycleid" ASC,"myfirstmodule$galleryid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('21bba76a-58be-468d-98f2-f44cd30bb56b', 'MyFirstModule.Gallery_Motorcycle', 'myfirstmodule$gallery_motorcycle', 'ec6df335-1636-4a8d-a78c-ca812014bbbb', '7100d30b-90ff-4cc2-8d76-148359de7662', 'myfirstmodule$galleryid', 'myfirstmodule$motorcycleid', 'idx_myfirstmodule$gallery_motorcycle_myfirstmodule$motorcycle_myfirstmodule$gallery');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$gallery_motorcycle_myfirstmodule$galleryid', '21bba76a-58be-468d-98f2-f44cd30bb56b', 'd4292e01-486a-3826-911e-f46c82a1de69');
DROP TABLE "9a03b5b3686645038d110852786350bc";
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240107 11:32:42';
