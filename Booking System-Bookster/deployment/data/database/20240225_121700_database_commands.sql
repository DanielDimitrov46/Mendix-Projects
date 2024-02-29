ALTER TABLE "rooms$room" ADD "reservationperson" VARCHAR_IGNORECASE(200) NULL;
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a3753c05-6575-4922-acfa-7c40494a165e', '4226a51e-1fda-4c22-893f-efd1d9db4f87', 'ReservationPerson', 'reservationperson', 30, 200, '', false);
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240225 12:17:00';
