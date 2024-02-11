ALTER TABLE "myfirstmodule$ad_vehicle" DROP CONSTRAINT "uniq_myfirstmodule$ad_vehicle_myfirstmodule$vehicleid";
ALTER TABLE "myfirstmodule$ad_vehicle" DROP CONSTRAINT "uniq_myfirstmodule$ad_vehicle_myfirstmodule$adid";
DROP INDEX "idx_myfirstmodule$ad_vehicle_myfirstmodule$vehicle_myfirstmodule$ad";
ALTER TABLE "myfirstmodule$ad_vehicle" RENAME TO "13eaf714ac3c45738f603b46b7bb641f";
DELETE FROM "mendixsystem$association"  WHERE "id" = '4a04b840-240b-4435-801a-10a7505115f0';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_myfirstmodule$ad_vehicle_myfirstmodule$vehicleid' AND "column_id" = '1c6befda-1efe-3bf9-baee-a2608c9247bd';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_myfirstmodule$ad_vehicle_myfirstmodule$adid' AND "column_id" = '3792ab0f-5adc-30ae-a178-0fdaca204e79';
ALTER TABLE "myfirstmodule$vehicle" ADD "category" VARCHAR_IGNORECASE(10) NULL;
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b7b73395-41ab-4d3e-9970-31d3a0d8e5d7', 'ee598664-b0d3-476b-a077-2343faf5898a', 'Category', 'category', 40, 10, '', false);
CREATE TABLE "myfirstmodule$ad_car" (
	"myfirstmodule$adid" BIGINT NOT NULL,
	"myfirstmodule$carid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$adid","myfirstmodule$carid"),
	CONSTRAINT "uniq_myfirstmodule$ad_car_myfirstmodule$carid" UNIQUE ("myfirstmodule$carid"),
	CONSTRAINT "uniq_myfirstmodule$ad_car_myfirstmodule$adid" UNIQUE ("myfirstmodule$adid"));
CREATE INDEX "idx_myfirstmodule$ad_car_myfirstmodule$car_myfirstmodule$ad" ON "myfirstmodule$ad_car" ("myfirstmodule$carid" ASC,"myfirstmodule$adid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('62e8beb5-6379-45b5-b45e-7806b5659e8e', 'MyFirstModule.Ad_Car', 'myfirstmodule$ad_car', 'aa1004c2-38d1-48e5-9761-10f9b43b5c02', '02fe64b7-79c5-4589-8476-f589fbcddd1f', 'myfirstmodule$adid', 'myfirstmodule$carid', 'idx_myfirstmodule$ad_car_myfirstmodule$car_myfirstmodule$ad');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$ad_car_myfirstmodule$carid', '62e8beb5-6379-45b5-b45e-7806b5659e8e', '5d28d6fc-f98d-36e1-a28e-3a951e716eae');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$ad_car_myfirstmodule$adid', '62e8beb5-6379-45b5-b45e-7806b5659e8e', '467c2911-6b67-3dd5-bfc7-02e99ad0e444');
CREATE TABLE "myfirstmodule$ad_truck" (
	"myfirstmodule$adid" BIGINT NOT NULL,
	"myfirstmodule$truckid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$adid","myfirstmodule$truckid"),
	CONSTRAINT "uniq_myfirstmodule$ad_truck_myfirstmodule$truckid" UNIQUE ("myfirstmodule$truckid"),
	CONSTRAINT "uniq_myfirstmodule$ad_truck_myfirstmodule$adid" UNIQUE ("myfirstmodule$adid"));
CREATE INDEX "idx_myfirstmodule$ad_truck_myfirstmodule$truck_myfirstmodule$ad" ON "myfirstmodule$ad_truck" ("myfirstmodule$truckid" ASC,"myfirstmodule$adid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('d4899c71-203a-44de-ab65-2b122da33666', 'MyFirstModule.Ad_Truck', 'myfirstmodule$ad_truck', 'aa1004c2-38d1-48e5-9761-10f9b43b5c02', '4623486e-1118-4263-8b13-61af0a88c160', 'myfirstmodule$adid', 'myfirstmodule$truckid', 'idx_myfirstmodule$ad_truck_myfirstmodule$truck_myfirstmodule$ad');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$ad_truck_myfirstmodule$truckid', 'd4899c71-203a-44de-ab65-2b122da33666', '4425b81c-079b-3f65-b1cc-3030220a3ecd');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$ad_truck_myfirstmodule$adid', 'd4899c71-203a-44de-ab65-2b122da33666', '210b3df4-619b-37da-9f52-fa25e2a6efe0');
CREATE TABLE "myfirstmodule$ad_motorcycle" (
	"myfirstmodule$adid" BIGINT NOT NULL,
	"myfirstmodule$motorcycleid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$adid","myfirstmodule$motorcycleid"),
	CONSTRAINT "uniq_myfirstmodule$ad_motorcycle_myfirstmodule$motorcycleid" UNIQUE ("myfirstmodule$motorcycleid"),
	CONSTRAINT "uniq_myfirstmodule$ad_motorcycle_myfirstmodule$adid" UNIQUE ("myfirstmodule$adid"));
CREATE INDEX "idx_myfirstmodule$ad_motorcycle_myfirstmodule$motorcycle_myfirstmodule$ad" ON "myfirstmodule$ad_motorcycle" ("myfirstmodule$motorcycleid" ASC,"myfirstmodule$adid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('af1ab98a-9d51-4591-a1be-1697284efcbb', 'MyFirstModule.Ad_Motorcycle', 'myfirstmodule$ad_motorcycle', 'aa1004c2-38d1-48e5-9761-10f9b43b5c02', '7100d30b-90ff-4cc2-8d76-148359de7662', 'myfirstmodule$adid', 'myfirstmodule$motorcycleid', 'idx_myfirstmodule$ad_motorcycle_myfirstmodule$motorcycle_myfirstmodule$ad');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$ad_motorcycle_myfirstmodule$motorcycleid', 'af1ab98a-9d51-4591-a1be-1697284efcbb', 'dec9ee27-0a3f-37b5-abf1-c865b97790fe');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$ad_motorcycle_myfirstmodule$adid', 'af1ab98a-9d51-4591-a1be-1697284efcbb', '5f0f4852-cf22-310a-be3e-490567afcaa4');
DROP TABLE "13eaf714ac3c45738f603b46b7bb641f";
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240122 10:15:16';
