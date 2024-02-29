ALTER TABLE "rooms$equipment" ADD "quantity" INT NULL;
UPDATE "rooms$equipment" SET "quantity" = 1;
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('754890d6-e346-45f1-8f57-5604eb00156c', '62f7d4ca-3695-4091-86b6-b2f1248d5211', 'Quantity', 'quantity', 3, 0, '1', false);
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240226 00:08:49';
