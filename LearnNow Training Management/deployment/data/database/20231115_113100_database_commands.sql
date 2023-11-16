ALTER TABLE "myfirstmodule$trainingevent" ADD "totalnumberofregistrations" INT NULL;
UPDATE "myfirstmodule$trainingevent" SET "totalnumberofregistrations" = 0;
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('07babdcc-948b-43fa-94e7-9aa2838d7d0e', 'dfcabae0-cbdd-4f4d-8030-2deabe3ac6c2', 'TotalNumberOfRegistrations', 'totalnumberofregistrations', 3, 0, '0', false);
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20231115 11:31:00';
