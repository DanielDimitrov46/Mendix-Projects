ALTER TABLE "myfirstmodule$course" ADD CONSTRAINT "uniq_myfirstmodule$course_title" UNIQUE ("title");
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$course_title', 'ff038948-0b87-4908-ab15-e3646d306dfa', '46c947bf-f695-4559-8c6b-348a2424904e');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20231119 23:43:34';
