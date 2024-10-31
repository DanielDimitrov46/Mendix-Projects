ALTER TABLE "usermanagement$user_country" DROP CONSTRAINT "uniq_usermanagement$user_country_usermanagement$countryid";
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_usermanagement$user_country_usermanagement$countryid' AND "column_id" = '2a5a56b0-722a-39b6-bf1d-fce49165521c';
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20241031 11:58:53';
