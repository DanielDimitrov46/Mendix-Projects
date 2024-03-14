ALTER TABLE "email_connector$attachment_emailmessage" DROP CONSTRAINT "uniq_email_connector$attachment_emailmessage_email_connector$attachmentid";
DROP INDEX "idx_email_connector$attachment_emailmessage_email_connector$emailmessage_email_connector$attachment";
ALTER TABLE "email_connector$attachment_emailmessage" RENAME TO "2771f7d0563542fb9c622ab7fcf52ef3";
ALTER TABLE "email_connector$attachment_emailtemplate" DROP CONSTRAINT "uniq_email_connector$attachment_emailtemplate_email_connector$attachmentid";
DROP INDEX "idx_email_connector$attachment_emailtemplate_email_connector$emailtemplate_email_connector$attachment";
ALTER TABLE "email_connector$attachment_emailtemplate" RENAME TO "9602d9f0066f4b1fba4f0aa1ef2345d6";
ALTER TABLE "email_connector$emailaccount_oauthprovider" DROP CONSTRAINT "uniq_email_connector$emailaccount_oauthprovider_email_connector$emailaccountid";
DROP INDEX "idx_email_connector$emailaccount_oauthprovider_email_connector$oauthprovider_email_connector$emailaccount";
ALTER TABLE "email_connector$emailaccount_oauthprovider" RENAME TO "28c4ac5a96514de6bb3079fe167612a6";
ALTER TABLE "email_connector$emailaccount_oauthtoken" DROP CONSTRAINT "uniq_email_connector$emailaccount_oauthtoken_email_connector$oauthtokenid";
ALTER TABLE "email_connector$emailaccount_oauthtoken" DROP CONSTRAINT "uniq_email_connector$emailaccount_oauthtoken_email_connector$emailaccountid";
DROP INDEX "idx_email_connector$emailaccount_oauthtoken_email_connector$oauthtoken_email_connector$emailaccount";
ALTER TABLE "email_connector$emailaccount_oauthtoken" RENAME TO "39e5569241bc40df96f46218d3b7539f";
ALTER TABLE "email_connector$emailaccount_ldapconfiguration" DROP CONSTRAINT "uniq_email_connector$emailaccount_ldapconfiguration_email_connector$emailaccountid";
ALTER TABLE "email_connector$emailaccount_ldapconfiguration" DROP CONSTRAINT "uniq_email_connector$emailaccount_ldapconfiguration_email_connector$ldapconfigurationid";
DROP INDEX "idx_email_connector$emailaccount_ldapconfiguration_email_connector$ldapconfiguration_email_connector$emailaccount";
ALTER TABLE "email_connector$emailaccount_ldapconfiguration" RENAME TO "5624b27576224fafb796981ba7b2356c";
ALTER TABLE "email_connector$querystring_oauthprovider" DROP CONSTRAINT "uniq_email_connector$querystring_oauthprovider_email_connector$querystringid";
DROP INDEX "idx_email_connector$querystring_oauthprovider_email_connector$oauthprovider_email_connector$querystring";
ALTER TABLE "email_connector$querystring_oauthprovider" RENAME TO "c5b78da379584370811b10b06211518f";
ALTER TABLE "email_connector$emailconnectorlog_emailaccount" DROP CONSTRAINT "uniq_email_connector$emailconnectorlog_emailaccount_email_connector$emailconnectorlogid";
DROP INDEX "idx_email_connector$emailconnectorlog_emailaccount_email_connector$emailaccount_email_connector$emailconnectorlog";
ALTER TABLE "email_connector$emailconnectorlog_emailaccount" RENAME TO "0b7396f77fd549cabe8f98dfc866f3f9";
ALTER TABLE "email_connector$emailconnectorlog_emailmessage" DROP CONSTRAINT "uniq_email_connector$emailconnectorlog_emailmessage_email_connector$emailconnectorlogid";
DROP INDEX "idx_email_connector$emailconnectorlog_emailmessage_email_connector$emailmessage_email_connector$emailconnectorlog";
ALTER TABLE "email_connector$emailconnectorlog_emailmessage" RENAME TO "d5529fc5ba174342b3bc5e735e821110";
ALTER TABLE "email_connector$emailmessage_emailaccount" DROP CONSTRAINT "uniq_email_connector$emailmessage_emailaccount_email_connector$emailmessageid";
DROP INDEX "idx_email_connector$emailmessage_emailaccount_email_connector$emailaccount_email_connector$emailmessage";
ALTER TABLE "email_connector$emailmessage_emailaccount" RENAME TO "401da59b24c94023b4bc8055f15916fb";
ALTER TABLE "email_connector$emailmessage_emailtemplate" DROP CONSTRAINT "uniq_email_connector$emailmessage_emailtemplate_email_connector$emailmessageid";
DROP INDEX "idx_email_connector$emailmessage_emailtemplate_email_connector$emailtemplate_email_connector$emailmessage";
ALTER TABLE "email_connector$emailmessage_emailtemplate" RENAME TO "3cac8cb007054ae993403d3ef2172231";
ALTER TABLE "email_connector$pk12certificate_emailaccount" DROP CONSTRAINT "uniq_email_connector$pk12certificate_emailaccount_email_connector$emailaccountid";
ALTER TABLE "email_connector$pk12certificate_emailaccount" DROP CONSTRAINT "uniq_email_connector$pk12certificate_emailaccount_email_connector$pk12certificateid";
DROP INDEX "idx_email_connector$pk12certificate_emailaccount_email_connector$emailaccount_email_connector$pk12certificate";
ALTER TABLE "email_connector$pk12certificate_emailaccount" RENAME TO "ef6c686b89a34d0ab35250a45c1cd413";
ALTER TABLE "email_connector$outgoingemailconfiguration_emailaccount" DROP CONSTRAINT "uniq_email_connector$outgoingemailconfiguration_emailaccount_email_connector$outgoingemailconfigurationid";
ALTER TABLE "email_connector$outgoingemailconfiguration_emailaccount" DROP CONSTRAINT "uniq_email_connector$outgoingemailconfiguration_emailaccount_email_connector$emailaccountid";
DROP INDEX "idx_email_connector$outgoingemailconfiguration_emailaccount";
ALTER TABLE "email_connector$outgoingemailconfiguration_emailaccount" RENAME TO "59020d554edc4ef4af984d8d4204bb99";
DROP INDEX "idx_email_connector$emailtemplate_token_mxmodelreflection$token_email_connector$emailtemplate";
ALTER TABLE "email_connector$emailtemplate_token" RENAME TO "28d6004a2fae40e4bf88de527eeffbd7";
ALTER TABLE "email_connector$emailtemplate_mxobjecttype" DROP CONSTRAINT "uniq_email_connector$emailtemplate_mxobjecttype_email_connector$emailtemplateid";
DROP INDEX "idx_email_connector$emailtemplate_mxobjecttype_mxmodelreflection$mxobjecttype_email_connector$emailtemplate";
ALTER TABLE "email_connector$emailtemplate_mxobjecttype" RENAME TO "3c74c662c40e40bdb3d9aea7c985a094";
ALTER TABLE "email_connector$oauthnonce_emailaccount" DROP CONSTRAINT "uniq_email_connector$oauthnonce_emailaccount_email_connector$oauthnonceid";
DROP INDEX "idx_email_connector$oauthnonce_emailaccount_email_connector$emailaccount_email_connector$oauthnonce";
ALTER TABLE "email_connector$oauthnonce_emailaccount" RENAME TO "94da83d2cb234014bf8069f835796e1a";
ALTER TABLE "email_connector$incomingemailconfiguration_emailaccount" DROP CONSTRAINT "uniq_email_connector$incomingemailconfiguration_emailaccount_email_connector$emailaccountid";
ALTER TABLE "email_connector$incomingemailconfiguration_emailaccount" DROP CONSTRAINT "uniq_email_connector$incomingemailconfiguration_emailaccount_email_connector$incomingemailconfigurationid";
DROP INDEX "idx_email_connector$incomingemailconfiguration_emailaccount";
ALTER TABLE "email_connector$incomingemailconfiguration_emailaccount" RENAME TO "4fff6ce935ae4decac3fbb3a8b6cfd8a";
ALTER TABLE "email_connector$scopeselected_oauthprovider" DROP CONSTRAINT "uniq_email_connector$scopeselected_oauthprovider_email_connector$scopeselectedid";
DROP INDEX "idx_email_connector$scopeselected_oauthprovider_email_connector$oauthprovider_email_connector$scopeselected";
ALTER TABLE "email_connector$scopeselected_oauthprovider" RENAME TO "f3b0d72bca9e4dd9b50e647458cc0b0f";
ALTER TABLE "email_connector$emailheader_emailmessage" DROP CONSTRAINT "uniq_email_connector$emailheader_emailmessage_email_connector$emailheaderid";
DROP INDEX "idx_email_connector$emailheader_emailmessage_email_connector$emailmessage_email_connector$emailheader";
ALTER TABLE "email_connector$emailheader_emailmessage" RENAME TO "98a21bc56a264eb5912374bbe00d3667";
ALTER TABLE "email_connector$attachment" RENAME TO "82867f9c0515492ebc20e4e6528ef29a";
DROP INDEX "idx_email_connector$emailaccount_system$changedby";
DROP INDEX "idx_email_connector$emailaccount_system$owner";
ALTER TABLE "email_connector$emailaccount" RENAME TO "55ef309a88374256929b07f9479cfeab";
ALTER TABLE "email_connector$querystring" RENAME TO "88dbc9b65df04e21870be3722d5006d9";
DROP INDEX "idx_email_connector$emailconnectorlog_created_asc";
ALTER TABLE "email_connector$emailconnectorlog" RENAME TO "460c0f7f7df0451385483e82abbabdc9";
DROP INDEX "idx_email_connector$emailmessage_queuedforsending_asc_status_asc_lastsendattemptat_asc";
DROP INDEX "idx_email_connector$emailmessage_sentdate_asc";
DROP INDEX "idx_email_connector$emailmessage_system$owner";
DROP INDEX "idx_email_connector$emailmessage_lastsendattemptat_asc_queuedforsending_asc";
ALTER TABLE "email_connector$emailmessage" RENAME TO "db275dfb6cd54219821a328807257b2b";
ALTER TABLE "email_connector$pk12certificate" RENAME TO "56494899a73f4dbaa24b5bd002107362";
DROP INDEX "idx_email_connector$outgoingemailconfiguration_system$owner";
DROP INDEX "idx_email_connector$outgoingemailconfiguration_system$changedby";
ALTER TABLE "email_connector$outgoingemailconfiguration" RENAME TO "57323df71ef74bb5b47d382a10232291";
DROP INDEX "idx_email_connector$emailtemplate_system$owner";
DROP INDEX "idx_email_connector$emailtemplate_system$changedby";
ALTER TABLE "email_connector$emailtemplate" RENAME TO "a61714fceb664178b2ce6804f09ea795";
DROP INDEX "idx_email_connector$ldapconfiguration_system$changedby";
DROP INDEX "idx_email_connector$ldapconfiguration_system$owner";
ALTER TABLE "email_connector$ldapconfiguration" RENAME TO "9b80e55170b345a3a18813b2c5b79530";
ALTER TABLE "email_connector$oauthnonce" RENAME TO "a3ea5c83e9cb4b159d1defa15ffca8a2";
DROP INDEX "idx_email_connector$incomingemailconfiguration_system$changedby";
DROP INDEX "idx_email_connector$incomingemailconfiguration_system$owner";
ALTER TABLE "email_connector$incomingemailconfiguration" RENAME TO "ff36e7f882584ab1bdbfb17aaaec42d5";
DROP INDEX "idx_email_connector$oauthprovider_system$owner";
DROP INDEX "idx_email_connector$oauthprovider_system$changedby";
ALTER TABLE "email_connector$oauthprovider" RENAME TO "afe2a93f17f24cea87f1e9b3ab088f7e";
DROP INDEX "idx_email_connector$oauthtoken_system$owner";
DROP INDEX "idx_email_connector$oauthtoken_system$changedby";
ALTER TABLE "email_connector$oauthtoken" RENAME TO "2e095f9fe58d46a9b1a8236fe48afd75";
ALTER TABLE "email_connector$scopeselected" RENAME TO "a4e1e33266274eb598a17ef2a58e6375";
ALTER TABLE "email_connector$emailheader" RENAME TO "de7de1a84abe4f83b68286b632928f16";
DELETE FROM "mendixsystem$association"  WHERE "id" = '46534c4d-54cc-4ec7-ba42-9b7b3ea1af39';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_email_connector$attachment_emailmessage_email_connector$attachmentid' AND "column_id" = '0d8b5555-12bb-3129-a462-badf6017a80b';
DELETE FROM "mendixsystem$association"  WHERE "id" = 'd2a8e4c5-cdca-44e4-8de3-39259629e889';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_email_connector$attachment_emailtemplate_email_connector$attachmentid' AND "column_id" = '89b800f4-605d-3772-9bd6-c0f84f5370a0';
DELETE FROM "mendixsystem$association"  WHERE "id" = '61088a40-743f-4b67-be9a-043726128e87';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_email_connector$emailaccount_oauthprovider_email_connector$emailaccountid' AND "column_id" = '55bfe292-74c2-3538-b81b-c75e8eeb128b';
DELETE FROM "mendixsystem$association"  WHERE "id" = 'e724c28a-e0bb-42c0-8d88-0676bc25b1c2';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_email_connector$emailaccount_oauthtoken_email_connector$oauthtokenid' AND "column_id" = '234c7815-6e9c-308d-a4cf-c50354767b72';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_email_connector$emailaccount_oauthtoken_email_connector$emailaccountid' AND "column_id" = '2435991d-fd29-3750-b455-f167a3b5eaff';
DELETE FROM "mendixsystem$association"  WHERE "id" = 'f07502c9-d2ed-44de-ba94-081c5ae4cb78';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_email_connector$emailaccount_ldapconfiguration_email_connector$emailaccountid' AND "column_id" = '4042d1f6-d462-3c9f-9cda-c18523756a10';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_email_connector$emailaccount_ldapconfiguration_email_connector$ldapconfigurationid' AND "column_id" = 'abc1ff14-7df1-3f32-9261-a56a447db065';
DELETE FROM "mendixsystem$association"  WHERE "id" = 'd6c63b88-803c-4f82-893e-5f01eb2728e5';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_email_connector$querystring_oauthprovider_email_connector$querystringid' AND "column_id" = '606fd13b-1588-322c-ac26-12c2cb8f86a0';
DELETE FROM "mendixsystem$association"  WHERE "id" = '95b87faf-0f51-4038-a4d9-7e106bd58fb4';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_email_connector$emailconnectorlog_emailaccount_email_connector$emailconnectorlogid' AND "column_id" = '248713a1-52d7-3d72-91bb-2d85e3df763b';
DELETE FROM "mendixsystem$association"  WHERE "id" = '96a5f2cd-36c0-4e3a-af27-4b3f35f5be31';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_email_connector$emailconnectorlog_emailmessage_email_connector$emailconnectorlogid' AND "column_id" = '86a101fd-fcbb-3eb7-85c0-08c614084646';
DELETE FROM "mendixsystem$association"  WHERE "id" = '0105c6f5-ad26-4954-a012-27a117b551be';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_email_connector$emailmessage_emailaccount_email_connector$emailmessageid' AND "column_id" = 'd388b33b-43d5-35ec-b021-77c2ad72e5e5';
DELETE FROM "mendixsystem$association"  WHERE "id" = 'fd2e2c15-8893-4a5f-9dc7-663e713d2e8e';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_email_connector$emailmessage_emailtemplate_email_connector$emailmessageid' AND "column_id" = 'ab6c0c09-4375-3ac8-a24b-69fc18d58f0a';
DELETE FROM "mendixsystem$association"  WHERE "id" = '133f65eb-d5af-4029-8c4d-0bfa821f35a4';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_email_connector$pk12certificate_emailaccount_email_connector$emailaccountid' AND "column_id" = 'ad98866d-eadd-3b51-be64-992e6bd3852f';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_email_connector$pk12certificate_emailaccount_email_connector$pk12certificateid' AND "column_id" = '42dcb15d-2e47-3603-8cb7-b0d713a8e68a';
DELETE FROM "mendixsystem$association"  WHERE "id" = 'e8587583-0c5d-4d27-9e7c-dd0c63ce1b70';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_email_connector$outgoingemailconfiguration_emailaccount_email_connector$outgoingemailconfigurationid' AND "column_id" = '30046c9f-9862-374d-bb01-4a70cf84a441';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_email_connector$outgoingemailconfiguration_emailaccount_email_connector$emailaccountid' AND "column_id" = '86917fc5-7748-3543-94ed-1a4444c2b125';
DELETE FROM "mendixsystem$association"  WHERE "id" = '91f997ee-0a1d-4328-ab6a-205c3486d5a3';
DELETE FROM "mendixsystem$association"  WHERE "id" = 'd4416ad8-5eac-4a69-a7ff-cc8f8eecf0bd';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_email_connector$emailtemplate_mxobjecttype_email_connector$emailtemplateid' AND "column_id" = 'ce129c61-ae58-3497-852f-c7b9d044ba99';
DELETE FROM "mendixsystem$association"  WHERE "id" = '803a83ff-ce38-4dae-aca4-a2ea37b3cea0';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_email_connector$oauthnonce_emailaccount_email_connector$oauthnonceid' AND "column_id" = '3a7f4373-1690-308a-947e-ea18d7cd20eb';
DELETE FROM "mendixsystem$association"  WHERE "id" = '97f1c33a-1234-4d65-8c90-b214de028eab';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_email_connector$incomingemailconfiguration_emailaccount_email_connector$emailaccountid' AND "column_id" = '5715d20a-48ec-3910-abab-6c9dff443ae3';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_email_connector$incomingemailconfiguration_emailaccount_email_connector$incomingemailconfigurationid' AND "column_id" = '84892cae-9a84-3a6c-832d-b365fcb7dffe';
DELETE FROM "mendixsystem$association"  WHERE "id" = '885c6493-cd38-402c-a121-818b42b50725';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_email_connector$scopeselected_oauthprovider_email_connector$scopeselectedid' AND "column_id" = 'ceced0c6-e31e-3b08-9e5b-d4699b9ccca9';
DELETE FROM "mendixsystem$association"  WHERE "id" = '720dd5b0-3d50-4d56-9fe9-c8fab2c5fb0f';
DELETE FROM "mendixsystem$unique_constraint"  WHERE "name" = 'uniq_email_connector$emailheader_emailmessage_email_connector$emailheaderid' AND "column_id" = '7ffcda96-0e3d-3482-a306-cb37450445b5';
DELETE FROM "mendixsystem$entity"  WHERE "id" = '201b3b91-4e66-4644-bfb1-c8349b868ee3';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = '201b3b91-4e66-4644-bfb1-c8349b868ee3';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = '201b3b91-4e66-4644-bfb1-c8349b868ee3' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = '201b3b91-4e66-4644-bfb1-c8349b868ee3';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = '201b3b91-4e66-4644-bfb1-c8349b868ee3';
DELETE FROM "mendixsystem$entity"  WHERE "id" = '21905011-4df2-4119-a3ca-1ecbc4ad9647';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = '21905011-4df2-4119-a3ca-1ecbc4ad9647';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = '21905011-4df2-4119-a3ca-1ecbc4ad9647' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = '21905011-4df2-4119-a3ca-1ecbc4ad9647';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = '21905011-4df2-4119-a3ca-1ecbc4ad9647';
DELETE FROM "mendixsystem$index"  WHERE "table_id" = '21905011-4df2-4119-a3ca-1ecbc4ad9647';
DELETE FROM "mendixsystem$index_column"  WHERE "index_id" IN ('4e40b551-cdf9-3219-9e87-cfb03c2c6f59', 'd4c8cde6-2520-3982-9bd6-8f4b22145abb');
DELETE FROM "mendixsystem$association"  WHERE "id" = '9109f41a-d66c-332d-a5ea-a46d273a09ab';
DELETE FROM "mendixsystem$association"  WHERE "id" = 'f70cd49f-86ee-33a5-b288-8135a3cada49';
DELETE FROM "mendixsystem$entity"  WHERE "id" = '3f7a4762-e697-4604-8f0f-919cb5ac1806';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = '3f7a4762-e697-4604-8f0f-919cb5ac1806';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = '3f7a4762-e697-4604-8f0f-919cb5ac1806' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = '3f7a4762-e697-4604-8f0f-919cb5ac1806';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = '3f7a4762-e697-4604-8f0f-919cb5ac1806';
DELETE FROM "mendixsystem$entity"  WHERE "id" = '48acf90b-6a47-479b-8144-c77e587a1c71';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = '48acf90b-6a47-479b-8144-c77e587a1c71';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = '48acf90b-6a47-479b-8144-c77e587a1c71' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = '48acf90b-6a47-479b-8144-c77e587a1c71';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = '48acf90b-6a47-479b-8144-c77e587a1c71';
DELETE FROM "mendixsystem$index"  WHERE "table_id" = '48acf90b-6a47-479b-8144-c77e587a1c71';
DELETE FROM "mendixsystem$index_column"  WHERE "index_id" IN ('01923647-3b0f-4286-818c-eb76115f705f');
DELETE FROM "mendixsystem$entity"  WHERE "id" = '50fb3f2f-1674-4839-ac72-bf17412679e3';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = '50fb3f2f-1674-4839-ac72-bf17412679e3';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = '50fb3f2f-1674-4839-ac72-bf17412679e3' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = '50fb3f2f-1674-4839-ac72-bf17412679e3';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = '50fb3f2f-1674-4839-ac72-bf17412679e3';
DELETE FROM "mendixsystem$index"  WHERE "table_id" = '50fb3f2f-1674-4839-ac72-bf17412679e3';
DELETE FROM "mendixsystem$index_column"  WHERE "index_id" IN ('0b22a94e-b5a4-45f3-94fc-c64e7d2bbdf0', '2b9d8f06-28bf-4da2-bf29-9efbf0736615', 'c124d70d-0246-3dd9-bad3-b1b6b86acfbd', 'e6431e8a-d2e9-417b-94ec-b2aebac6689e');
DELETE FROM "mendixsystem$association"  WHERE "id" = '6ad400ff-dc10-3f18-92a7-bcca1b085bd4';
DELETE FROM "mendixsystem$entity"  WHERE "id" = '535e5d97-cc91-44ef-8f5f-169d0657c54a';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = '535e5d97-cc91-44ef-8f5f-169d0657c54a';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = '535e5d97-cc91-44ef-8f5f-169d0657c54a' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = '535e5d97-cc91-44ef-8f5f-169d0657c54a';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = '535e5d97-cc91-44ef-8f5f-169d0657c54a';
DELETE FROM "mendixsystem$entity"  WHERE "id" = '5e6b8d4e-7689-4767-a568-2a1d7995a544';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = '5e6b8d4e-7689-4767-a568-2a1d7995a544';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = '5e6b8d4e-7689-4767-a568-2a1d7995a544' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = '5e6b8d4e-7689-4767-a568-2a1d7995a544';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = '5e6b8d4e-7689-4767-a568-2a1d7995a544';
DELETE FROM "mendixsystem$index"  WHERE "table_id" = '5e6b8d4e-7689-4767-a568-2a1d7995a544';
DELETE FROM "mendixsystem$index_column"  WHERE "index_id" IN ('dae4885e-f833-3da3-b86b-9ac63570663b', 'fcc9f1fe-f456-3125-80ac-2d1571474c23');
DELETE FROM "mendixsystem$association"  WHERE "id" = '2b94320b-63b0-349c-8ae5-b7a242d60728';
DELETE FROM "mendixsystem$association"  WHERE "id" = '63b6dda5-953f-3ec8-94fc-aebc19c5a14f';
DELETE FROM "mendixsystem$entity"  WHERE "id" = '641cff6b-1218-4e06-b266-e796ea8f18fd';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = '641cff6b-1218-4e06-b266-e796ea8f18fd';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = '641cff6b-1218-4e06-b266-e796ea8f18fd' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = '641cff6b-1218-4e06-b266-e796ea8f18fd';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = '641cff6b-1218-4e06-b266-e796ea8f18fd';
DELETE FROM "mendixsystem$index"  WHERE "table_id" = '641cff6b-1218-4e06-b266-e796ea8f18fd';
DELETE FROM "mendixsystem$index_column"  WHERE "index_id" IN ('9325a274-b413-3489-a1af-68341f3548fc', '9661c869-dfa5-3e88-a8d2-01ffddb7a067');
DELETE FROM "mendixsystem$association"  WHERE "id" = '0c08034c-a875-3526-9761-83a98e040e6a';
DELETE FROM "mendixsystem$association"  WHERE "id" = '7f448ad0-c4cd-35ec-b1a1-23617f252019';
DELETE FROM "mendixsystem$entity"  WHERE "id" = '66a6ff44-e0ec-480f-aecd-dcf5ee184525';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = '66a6ff44-e0ec-480f-aecd-dcf5ee184525';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = '66a6ff44-e0ec-480f-aecd-dcf5ee184525' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = '66a6ff44-e0ec-480f-aecd-dcf5ee184525';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = '66a6ff44-e0ec-480f-aecd-dcf5ee184525';
DELETE FROM "mendixsystem$index"  WHERE "table_id" = '66a6ff44-e0ec-480f-aecd-dcf5ee184525';
DELETE FROM "mendixsystem$index_column"  WHERE "index_id" IN ('139c4dc4-3fe5-35bf-8e0d-8972c0068c00', '8dfb212e-9773-3ac1-94df-00c2d93677d8');
DELETE FROM "mendixsystem$association"  WHERE "id" = '3dfb1e58-1bd9-31df-a5a6-52ef9a3d4797';
DELETE FROM "mendixsystem$association"  WHERE "id" = 'ac36ecae-7658-3a18-8cdc-ca6646f7a7f4';
DELETE FROM "mendixsystem$entity"  WHERE "id" = '6bafd16f-5e2c-4b78-8373-bf3805afc6ab';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = '6bafd16f-5e2c-4b78-8373-bf3805afc6ab';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = '6bafd16f-5e2c-4b78-8373-bf3805afc6ab' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = '6bafd16f-5e2c-4b78-8373-bf3805afc6ab';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = '6bafd16f-5e2c-4b78-8373-bf3805afc6ab';
DELETE FROM "mendixsystem$entity"  WHERE "id" = '7c697696-43e5-4450-99a5-deeca9687bfe';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = '7c697696-43e5-4450-99a5-deeca9687bfe';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = '7c697696-43e5-4450-99a5-deeca9687bfe' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = '7c697696-43e5-4450-99a5-deeca9687bfe';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = '7c697696-43e5-4450-99a5-deeca9687bfe';
DELETE FROM "mendixsystem$index"  WHERE "table_id" = '7c697696-43e5-4450-99a5-deeca9687bfe';
DELETE FROM "mendixsystem$index_column"  WHERE "index_id" IN ('5711d527-f02f-3c2e-a0a5-d30847bd81c3', 'c7d2ec40-3200-3b6f-a429-704bf6dc2fdf');
DELETE FROM "mendixsystem$association"  WHERE "id" = 'bac88df8-ea05-3de2-ac53-b0fd806a8ccd';
DELETE FROM "mendixsystem$association"  WHERE "id" = 'c9467ee5-e14e-3050-a8ab-7de68b307c1c';
DELETE FROM "mendixsystem$entity"  WHERE "id" = '8dd945bc-8ff1-404a-87c4-8cabf667f4f2';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = '8dd945bc-8ff1-404a-87c4-8cabf667f4f2';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = '8dd945bc-8ff1-404a-87c4-8cabf667f4f2' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = '8dd945bc-8ff1-404a-87c4-8cabf667f4f2';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = '8dd945bc-8ff1-404a-87c4-8cabf667f4f2';
DELETE FROM "mendixsystem$index"  WHERE "table_id" = '8dd945bc-8ff1-404a-87c4-8cabf667f4f2';
DELETE FROM "mendixsystem$index_column"  WHERE "index_id" IN ('b6ab7612-e436-37ce-9fc4-e07fae47e5e7', 'f2a221e7-2b30-3ad2-8027-b86626e09386');
DELETE FROM "mendixsystem$association"  WHERE "id" = '6ad8b1ea-0423-3289-bafd-4c2a22139418';
DELETE FROM "mendixsystem$association"  WHERE "id" = 'f9da4f86-4b4f-301f-8c44-6f12b585b34d';
DELETE FROM "mendixsystem$entity"  WHERE "id" = 'c5ec0a9e-54e6-45cf-8403-98482562fb6a';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = 'c5ec0a9e-54e6-45cf-8403-98482562fb6a';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = 'c5ec0a9e-54e6-45cf-8403-98482562fb6a' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = 'c5ec0a9e-54e6-45cf-8403-98482562fb6a';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = 'c5ec0a9e-54e6-45cf-8403-98482562fb6a';
DELETE FROM "mendixsystem$index"  WHERE "table_id" = 'c5ec0a9e-54e6-45cf-8403-98482562fb6a';
DELETE FROM "mendixsystem$index_column"  WHERE "index_id" IN ('80cf3021-4835-37ec-9f24-b9b36892c69f', 'fcf4fc55-c2da-3788-9779-7c6be2ac0fe1');
DELETE FROM "mendixsystem$association"  WHERE "id" = 'a4d3d1c1-8b8f-3086-9213-bcaff7930827';
DELETE FROM "mendixsystem$association"  WHERE "id" = 'a53cf747-ec6b-3a58-9722-44ad9c04ec34';
DELETE FROM "mendixsystem$entity"  WHERE "id" = 'cf0471d1-d0e6-4ed4-9761-339834ba6233';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = 'cf0471d1-d0e6-4ed4-9761-339834ba6233';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = 'cf0471d1-d0e6-4ed4-9761-339834ba6233' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = 'cf0471d1-d0e6-4ed4-9761-339834ba6233';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = 'cf0471d1-d0e6-4ed4-9761-339834ba6233';
DELETE FROM "mendixsystem$entity"  WHERE "id" = 'dba45c1e-ddce-4bed-b540-ef544def0b8a';
DELETE FROM "mendixsystem$entityidentifier"  WHERE "id" = 'dba45c1e-ddce-4bed-b540-ef544def0b8a';
DELETE FROM "mendixsystem$sequence"  WHERE "attribute_id" IN ( SELECT "id" FROM "mendixsystem$attribute" WHERE "entity_id" = 'dba45c1e-ddce-4bed-b540-ef544def0b8a' );
DELETE FROM "mendixsystem$remote_primary_key"  WHERE "entity_id" = 'dba45c1e-ddce-4bed-b540-ef544def0b8a';
DELETE FROM "mendixsystem$attribute"  WHERE "entity_id" = 'dba45c1e-ddce-4bed-b540-ef544def0b8a';
CREATE TABLE "email_connector$outgoingemailconfiguration" (
	"id" BIGINT NOT NULL,
	"outgoingprotocol" VARCHAR_IGNORECASE(4) NULL,
	"ssl" BOOLEAN NULL,
	"tls" BOOLEAN NULL,
	"sendmaxattempts" INT NULL,
	"serverhost" VARCHAR_IGNORECASE(200) NULL,
	"serverport" INT NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$owner" BIGINT NULL,
	"system$changedby" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_email_connector$outgoingemailconfiguration_system$owner" ON "email_connector$outgoingemailconfiguration" ("system$owner" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$outgoingemailconfiguration_system$changedby" ON "email_connector$outgoingemailconfiguration" ("system$changedby" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('80d8ca58-47f9-47ad-b3cb-6e59b148d3fd', 'Email_Connector.OutgoingEmailConfiguration', 'email_connector$outgoingemailconfiguration', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d3af683b-c1ff-4ca9-a236-ac0d130b01c4', '80d8ca58-47f9-47ad-b3cb-6e59b148d3fd', 'OutgoingProtocol', 'outgoingprotocol', 40, 4, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('eaf22bd1-d7b1-412f-b355-2e7651049686', '80d8ca58-47f9-47ad-b3cb-6e59b148d3fd', 'SSL', 'ssl', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('59b2dc4a-3efe-4c76-9ce8-921a61b75cd8', '80d8ca58-47f9-47ad-b3cb-6e59b148d3fd', 'TLS', 'tls', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7e2ca35b-af8d-44c7-9f67-d00b4eee4ccc', '80d8ca58-47f9-47ad-b3cb-6e59b148d3fd', 'SendMaxAttempts', 'sendmaxattempts', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d9a8791c-9cd6-4308-9bb3-dd741c50b7b4', '80d8ca58-47f9-47ad-b3cb-6e59b148d3fd', 'ServerHost', 'serverhost', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c079d736-ad35-48ab-ae7e-05964c0a2316', '80d8ca58-47f9-47ad-b3cb-6e59b148d3fd', 'ServerPort', 'serverport', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('048381a1-9e8b-3919-9ce8-e3fbffe39eb4', '80d8ca58-47f9-47ad-b3cb-6e59b148d3fd', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8e9d5e22-b032-3257-b2a9-b052a675e24a', '80d8ca58-47f9-47ad-b3cb-6e59b148d3fd', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('40853c4c-7eb8-30aa-a14d-d9548f0d6c58', '80d8ca58-47f9-47ad-b3cb-6e59b148d3fd', 'idx_email_connector$outgoingemailconfiguration_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('40853c4c-7eb8-30aa-a14d-d9548f0d6c58', 'bd546cbd-4398-32a6-8030-59fabe9567c3', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('f0e2b115-40ed-3c44-91ba-27f8a253cdcc', '80d8ca58-47f9-47ad-b3cb-6e59b148d3fd', 'idx_email_connector$outgoingemailconfiguration_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('f0e2b115-40ed-3c44-91ba-27f8a253cdcc', '24c43d84-36ff-3b84-9767-0da3b1a23590', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('bd546cbd-4398-32a6-8030-59fabe9567c3', 'System.owner', 'system$owner', '80d8ca58-47f9-47ad-b3cb-6e59b148d3fd', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('24c43d84-36ff-3b84-9767-0da3b1a23590', 'System.changedBy', 'system$changedby', '80d8ca58-47f9-47ad-b3cb-6e59b148d3fd', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
CREATE TABLE "email_connector$emailmessage" (
	"id" BIGINT NOT NULL,
	"subject" VARCHAR_IGNORECASE(2147483647) NULL,
	"sentdate" TIMESTAMP NULL,
	"retrievedate" TIMESTAMP NULL,
	"from" VARCHAR_IGNORECASE(2147483647) NULL,
	"to" VARCHAR_IGNORECASE(2147483647) NULL,
	"cc" VARCHAR_IGNORECASE(2147483647) NULL,
	"bcc" VARCHAR_IGNORECASE(2147483647) NULL,
	"content" VARCHAR_IGNORECASE(2147483647) NULL,
	"useonlyplaintext" BOOLEAN NULL,
	"hasattachments" BOOLEAN NULL,
	"size" INT NULL,
	"fromdisplayname" VARCHAR_IGNORECASE(200) NULL,
	"replyto" VARCHAR_IGNORECASE(200) NULL,
	"plainbody" VARCHAR_IGNORECASE(2147483647) NULL,
	"queuedforsending" BOOLEAN NULL,
	"resendattempts" INT NULL,
	"lastsenderror" VARCHAR_IGNORECASE(2147483647) NULL,
	"lastsendattemptat" TIMESTAMP NULL,
	"status" VARCHAR_IGNORECASE(8) NULL,
	"issigned" BOOLEAN NULL,
	"isencrypted" BOOLEAN NULL,
	"recipientstoggle" BOOLEAN NULL,
	"system$owner" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_email_connector$emailmessage_queuedforsending_asc_status_asc_lastsendattemptat_asc" ON "email_connector$emailmessage" ("queuedforsending" ASC,"status" ASC,"lastsendattemptat" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$emailmessage_sentdate_asc" ON "email_connector$emailmessage" ("sentdate" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$emailmessage_lastsendattemptat_asc_queuedforsending_asc" ON "email_connector$emailmessage" ("lastsendattemptat" ASC,"queuedforsending" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$emailmessage_system$owner" ON "email_connector$emailmessage" ("system$owner" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'Email_Connector.EmailMessage', 'email_connector$emailmessage', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('31c56db9-d2f0-4b1b-86d3-5480a6586992', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'Subject', 'subject', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9a6d24f8-a691-4153-9ed8-74d79682544e', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'SentDate', 'sentdate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c37534c6-13c3-49c3-b12e-2153c4212e5f', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'RetrieveDate', 'retrievedate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d9e68671-3cfe-4b6b-9ea3-ac5159f138ac', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'From', 'from', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('714e415a-1faa-40ba-aefa-1ffcec4ada9a', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'To', 'to', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('dafe9a41-3cf8-4bc6-97e5-65c257f29e3e', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'CC', 'cc', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f8376b7d-0b6b-4738-bad6-b06f2ed12ffa', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'BCC', 'bcc', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('090719de-4740-4791-871f-f5db8e90ef45', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'Content', 'content', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('1fba28df-dd40-41c3-8386-6daeb8da870a', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'UseOnlyPlainText', 'useonlyplaintext', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6c5703c0-0bbc-43cb-91ea-b1ec3f976dc8', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'hasAttachments', 'hasattachments', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0c3df967-2e3b-4078-82d9-e0a4caf74fb2', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'Size', 'size', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9fc352eb-9e04-405b-b866-f12c77f54fa9', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'FromDisplayName', 'fromdisplayname', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('dd18fd09-d473-426b-80a9-5923f91e35b8', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'ReplyTo', 'replyto', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ffc738c0-0bef-4a7b-bd58-73de540614b3', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'PlainBody', 'plainbody', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('10d67d67-9b01-48f7-9d9f-2cd9ac70fffd', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'QueuedForSending', 'queuedforsending', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('87b73d0d-02c1-49d1-8704-6919766312d0', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'ResendAttempts', 'resendattempts', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a6627ff2-d7f8-4152-b785-1801e9a801f9', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'LastSendError', 'lastsenderror', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('5c718747-9d30-4412-8b77-4741c5624e28', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'LastSendAttemptAt', 'lastsendattemptat', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7e9151ac-d14f-4b65-b98d-1a61389c73ec', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'Status', 'status', 40, 8, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('1ec310e2-aa80-4913-b866-294046bfb731', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'isSigned', 'issigned', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a519e15b-bdb5-4453-a9e5-df565b9b8456', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'isEncrypted', 'isencrypted', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c3476825-e027-4038-86c0-879c11acfd44', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'RecipientsToggle', 'recipientstoggle', 10, 0, 'false', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('39ec6634-8752-42b7-b82d-ffc3db1ce606', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'idx_email_connector$emailmessage_queuedforsending_asc_status_asc_lastsendattemptat_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('39ec6634-8752-42b7-b82d-ffc3db1ce606', '10d67d67-9b01-48f7-9d9f-2cd9ac70fffd', false, 0);
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('39ec6634-8752-42b7-b82d-ffc3db1ce606', '7e9151ac-d14f-4b65-b98d-1a61389c73ec', false, 1);
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('39ec6634-8752-42b7-b82d-ffc3db1ce606', '5c718747-9d30-4412-8b77-4741c5624e28', false, 2);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('2026c510-fb2a-4541-9bfe-a938afcaa3ed', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'idx_email_connector$emailmessage_sentdate_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('2026c510-fb2a-4541-9bfe-a938afcaa3ed', '9a6d24f8-a691-4153-9ed8-74d79682544e', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('2527ca45-00b0-441d-98bc-833f2fed4c33', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'idx_email_connector$emailmessage_lastsendattemptat_asc_queuedforsending_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('2527ca45-00b0-441d-98bc-833f2fed4c33', '5c718747-9d30-4412-8b77-4741c5624e28', false, 0);
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('2527ca45-00b0-441d-98bc-833f2fed4c33', '10d67d67-9b01-48f7-9d9f-2cd9ac70fffd', false, 1);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('58dff16a-3064-300c-a956-d6adbd35dd4a', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'idx_email_connector$emailmessage_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('58dff16a-3064-300c-a956-d6adbd35dd4a', '935aa362-cbd3-3081-8ba6-8b44359012ad', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('935aa362-cbd3-3081-8ba6-8b44359012ad', 'System.owner', 'system$owner', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
CREATE TABLE "email_connector$emailconnectorlog" (
	"id" BIGINT NOT NULL,
	"created" TIMESTAMP NULL,
	"logtype" VARCHAR_IGNORECASE(7) NULL,
	"errormessage" VARCHAR_IGNORECASE(2147483647) NULL,
	"triggeredinmf" VARCHAR_IGNORECASE(200) NULL,
	"stacktrace" VARCHAR_IGNORECASE(2147483647) NULL,
	"message" VARCHAR_IGNORECASE(200) NULL,
	"isunread" BOOLEAN NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_email_connector$emailconnectorlog_created_asc" ON "email_connector$emailconnectorlog" ("created" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('8649e837-c910-4166-9274-7f817da23b84', 'Email_Connector.EmailConnectorLog', 'email_connector$emailconnectorlog', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6be207d9-4bab-4882-846b-60945908c9ca', '8649e837-c910-4166-9274-7f817da23b84', 'Created', 'created', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('07765e91-54dc-42fd-b881-e63b5262827a', '8649e837-c910-4166-9274-7f817da23b84', 'Logtype', 'logtype', 40, 7, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8f847b76-9c7a-443a-946b-2c2014c7c6ea', '8649e837-c910-4166-9274-7f817da23b84', 'ErrorMessage', 'errormessage', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('08944435-0066-4fbc-a0ff-6f147b8c4627', '8649e837-c910-4166-9274-7f817da23b84', 'TriggeredInMF', 'triggeredinmf', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7fc80d68-e717-4819-969e-2af4cab5ef98', '8649e837-c910-4166-9274-7f817da23b84', 'StackTrace', 'stacktrace', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('659fef01-1ba8-4db7-80fa-dda8d5dceb92', '8649e837-c910-4166-9274-7f817da23b84', 'Message', 'message', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a347b8f0-f580-42f3-9cff-c720f7a48846', '8649e837-c910-4166-9274-7f817da23b84', 'IsUnread', 'isunread', 10, 0, 'true', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('99a737ba-74f3-4394-8101-ae33f9e65eb0', '8649e837-c910-4166-9274-7f817da23b84', 'idx_email_connector$emailconnectorlog_created_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('99a737ba-74f3-4394-8101-ae33f9e65eb0', '6be207d9-4bab-4882-846b-60945908c9ca', false, 0);
CREATE TABLE "email_connector$oauthtoken" (
	"id" BIGINT NOT NULL,
	"token_type" VARCHAR_IGNORECASE(200) NULL,
	"scope" VARCHAR_IGNORECASE(2147483647) NULL,
	"expires_in" INT NULL,
	"access_token" VARCHAR_IGNORECASE(2147483647) NULL,
	"refresh_token" VARCHAR_IGNORECASE(2147483647) NULL,
	"id_token" VARCHAR_IGNORECASE(2147483647) NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$owner" BIGINT NULL,
	"system$changedby" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_email_connector$oauthtoken_system$owner" ON "email_connector$oauthtoken" ("system$owner" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$oauthtoken_system$changedby" ON "email_connector$oauthtoken" ("system$changedby" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('84c137dc-142a-4d13-8ea6-84339bad1ace', 'Email_Connector.OAuthToken', 'email_connector$oauthtoken', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('abb778ea-b6c4-43e4-8af8-72badedec7dd', '84c137dc-142a-4d13-8ea6-84339bad1ace', 'token_type', 'token_type', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('5c88102d-afe3-4115-bf85-e02c5db78636', '84c137dc-142a-4d13-8ea6-84339bad1ace', 'scope', 'scope', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a9e1c74a-4b51-4279-bdfb-59813a1b5fe5', '84c137dc-142a-4d13-8ea6-84339bad1ace', 'expires_in', 'expires_in', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('de95b4f6-69fe-439a-a4f1-310ddb8749de', '84c137dc-142a-4d13-8ea6-84339bad1ace', 'access_token', 'access_token', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('fc223385-e69e-4794-98be-7890ed162b08', '84c137dc-142a-4d13-8ea6-84339bad1ace', 'refresh_token', 'refresh_token', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a9bef046-01de-4e3e-8fa1-aae9a2e3028d', '84c137dc-142a-4d13-8ea6-84339bad1ace', 'id_token', 'id_token', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('4c2462de-ac4b-3318-8e88-74c504859d8d', '84c137dc-142a-4d13-8ea6-84339bad1ace', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b892b10d-7e89-33c5-81a7-1dd325a8652e', '84c137dc-142a-4d13-8ea6-84339bad1ace', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('7b4dc7c4-9bfc-3d14-b245-30d7fb5042a0', '84c137dc-142a-4d13-8ea6-84339bad1ace', 'idx_email_connector$oauthtoken_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('7b4dc7c4-9bfc-3d14-b245-30d7fb5042a0', '4f399354-6ddb-3140-9548-1d0eca7cdc50', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('0f24bcb1-e8a7-3338-8b5a-96f787e08dbd', '84c137dc-142a-4d13-8ea6-84339bad1ace', 'idx_email_connector$oauthtoken_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('0f24bcb1-e8a7-3338-8b5a-96f787e08dbd', '4201158b-c79b-3ca7-8551-cc3979cf2dd5', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('4f399354-6ddb-3140-9548-1d0eca7cdc50', 'System.owner', 'system$owner', '84c137dc-142a-4d13-8ea6-84339bad1ace', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('4201158b-c79b-3ca7-8551-cc3979cf2dd5', 'System.changedBy', 'system$changedby', '84c137dc-142a-4d13-8ea6-84339bad1ace', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
CREATE TABLE "email_connector$emailheader" (
	"id" BIGINT NOT NULL,
	"key" VARCHAR_IGNORECASE(200) NULL,
	"value" VARCHAR_IGNORECASE(2147483647) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('aafa8abf-36bc-4cfb-8c33-4cd2410753b3', 'Email_Connector.EmailHeader', 'email_connector$emailheader', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('069da571-50a9-45d1-9da7-d5b33df1510f', 'aafa8abf-36bc-4cfb-8c33-4cd2410753b3', 'Key', 'key', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('048bd385-588f-4f78-97a0-3f978004f3c6', 'aafa8abf-36bc-4cfb-8c33-4cd2410753b3', 'Value', 'value', 30, 0, '', false);
CREATE TABLE "email_connector$incomingemailconfiguration" (
	"id" BIGINT NOT NULL,
	"incomingprotocol" VARCHAR_IGNORECASE(5) NULL,
	"folder" VARCHAR_IGNORECASE(200) NULL,
	"usebatchimport" BOOLEAN NULL,
	"batchsize" INT NULL,
	"handling" VARCHAR_IGNORECASE(13) NULL,
	"movefolder" VARCHAR_IGNORECASE(200) NULL,
	"processinlineimage" BOOLEAN NULL,
	"fetchstrategy" VARCHAR_IGNORECASE(6) NULL,
	"notifyonnewemails" BOOLEAN NULL,
	"serverhost" VARCHAR_IGNORECASE(200) NULL,
	"serverport" INT NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$owner" BIGINT NULL,
	"system$changedby" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_email_connector$incomingemailconfiguration_system$owner" ON "email_connector$incomingemailconfiguration" ("system$owner" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$incomingemailconfiguration_system$changedby" ON "email_connector$incomingemailconfiguration" ("system$changedby" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('66c6df90-79fc-4401-8a76-fc0a9d48d9a5', 'Email_Connector.IncomingEmailConfiguration', 'email_connector$incomingemailconfiguration', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('08b3a967-880c-4a13-97f1-4edfa60110a7', '66c6df90-79fc-4401-8a76-fc0a9d48d9a5', 'IncomingProtocol', 'incomingprotocol', 40, 5, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('debcd916-8607-4dfd-a381-26eecb612915', '66c6df90-79fc-4401-8a76-fc0a9d48d9a5', 'Folder', 'folder', 30, 200, 'INBOX', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2ed94f02-c047-4e8b-be4c-d354fbad029e', '66c6df90-79fc-4401-8a76-fc0a9d48d9a5', 'UseBatchImport', 'usebatchimport', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('34d9c7b0-6c9e-464b-a085-39c628ede8ce', '66c6df90-79fc-4401-8a76-fc0a9d48d9a5', 'BatchSize', 'batchsize', 3, 0, '50', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('5777c1b6-1811-426f-bedb-772bcb9aeafb', '66c6df90-79fc-4401-8a76-fc0a9d48d9a5', 'Handling', 'handling', 40, 13, 'NoHandling', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ec03f5ac-88a1-4d80-8763-3702d2c1a4ae', '66c6df90-79fc-4401-8a76-fc0a9d48d9a5', 'MoveFolder', 'movefolder', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2e8b976c-d13e-444b-aa37-fb2fb949acb1', '66c6df90-79fc-4401-8a76-fc0a9d48d9a5', 'ProcessInlineImage', 'processinlineimage', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7d6af01b-ff7c-4176-acef-8d69ba217405', '66c6df90-79fc-4401-8a76-fc0a9d48d9a5', 'FetchStrategy', 'fetchstrategy', 40, 6, 'Latest', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('4c1aafda-3a01-4097-9892-10856900c371', '66c6df90-79fc-4401-8a76-fc0a9d48d9a5', 'NotifyOnNewEmails', 'notifyonnewemails', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('fcac66e5-9d56-4ffe-a3bf-626ce177063d', '66c6df90-79fc-4401-8a76-fc0a9d48d9a5', 'ServerHost', 'serverhost', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8297147a-7dc5-40bd-8008-6a01900ac46d', '66c6df90-79fc-4401-8a76-fc0a9d48d9a5', 'ServerPort', 'serverport', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('532828b6-68a7-3439-9a8c-d3f9d3c1db1a', '66c6df90-79fc-4401-8a76-fc0a9d48d9a5', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('52e1cfd9-d75e-30cc-b163-e784c43cdcae', '66c6df90-79fc-4401-8a76-fc0a9d48d9a5', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('4e3632da-15fe-3d68-9f90-664044786dbb', '66c6df90-79fc-4401-8a76-fc0a9d48d9a5', 'idx_email_connector$incomingemailconfiguration_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('4e3632da-15fe-3d68-9f90-664044786dbb', 'e7f2d62a-0da9-36c3-ae75-08be45e52e0f', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('7a310148-7e8f-3bea-a322-7ef148c632b1', '66c6df90-79fc-4401-8a76-fc0a9d48d9a5', 'idx_email_connector$incomingemailconfiguration_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('7a310148-7e8f-3bea-a322-7ef148c632b1', '59f1ccd6-6329-3610-94e8-5cd220b123f8', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('e7f2d62a-0da9-36c3-ae75-08be45e52e0f', 'System.owner', 'system$owner', '66c6df90-79fc-4401-8a76-fc0a9d48d9a5', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('59f1ccd6-6329-3610-94e8-5cd220b123f8', 'System.changedBy', 'system$changedby', '66c6df90-79fc-4401-8a76-fc0a9d48d9a5', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
CREATE TABLE "email_connector$attachment" (
	"id" BIGINT NOT NULL,
	"contentid" VARCHAR_IGNORECASE(2147483647) NULL,
	"attachmentname" VARCHAR_IGNORECASE(2147483647) NULL,
	"attachmentsize" INT NULL,
	"attachmentcontenttype" VARCHAR_IGNORECASE(2147483647) NULL,
	"position" VARCHAR_IGNORECASE(10) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('e9b900f7-1a59-48b7-98fd-0e9bd54917d3', 'Email_Connector.Attachment', 'email_connector$attachment', '170ce49d-f29c-4fac-99a6-b55e8a3aeb39', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('fc068e1f-028e-404d-83f5-c3f2a68b52ec', 'e9b900f7-1a59-48b7-98fd-0e9bd54917d3', 'ContentID', 'contentid', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('5f1354d0-d692-4970-9991-aec7a69ad742', 'e9b900f7-1a59-48b7-98fd-0e9bd54917d3', 'attachmentName', 'attachmentname', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6ca1482d-cf66-43a2-b2be-82329d2b169c', 'e9b900f7-1a59-48b7-98fd-0e9bd54917d3', 'attachmentSize', 'attachmentsize', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b3f650e2-9490-484a-9e39-539780dd8fa6', 'e9b900f7-1a59-48b7-98fd-0e9bd54917d3', 'attachmentContentType', 'attachmentcontenttype', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('581a1ce8-34e5-44ed-a42f-d0024a0481d0', 'e9b900f7-1a59-48b7-98fd-0e9bd54917d3', 'Position', 'position', 40, 10, '', false);
CREATE TABLE "email_connector$ldapconfiguration" (
	"id" BIGINT NOT NULL,
	"ldaphost" VARCHAR_IGNORECASE(200) NULL,
	"ldapport" INT NULL,
	"ldapusername" VARCHAR_IGNORECASE(200) NULL,
	"ldappassword" VARCHAR_IGNORECASE(200) NULL,
	"isssl" BOOLEAN NULL,
	"basedn" VARCHAR_IGNORECASE(200) NULL,
	"authtype" VARCHAR_IGNORECASE(6) NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$owner" BIGINT NULL,
	"system$changedby" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_email_connector$ldapconfiguration_system$owner" ON "email_connector$ldapconfiguration" ("system$owner" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$ldapconfiguration_system$changedby" ON "email_connector$ldapconfiguration" ("system$changedby" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('5b38adf3-c969-47a4-9b59-0f61f094deba', 'Email_Connector.LDAPConfiguration', 'email_connector$ldapconfiguration', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('838567a8-1032-46c1-92f2-29d65678431c', '5b38adf3-c969-47a4-9b59-0f61f094deba', 'LDAPHost', 'ldaphost', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f0f5927e-7fc4-4dd3-8201-0d39eafdcefe', '5b38adf3-c969-47a4-9b59-0f61f094deba', 'LDAPPort', 'ldapport', 3, 0, '389', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('35bdd604-9cac-4e52-91f1-e032e6d96443', '5b38adf3-c969-47a4-9b59-0f61f094deba', 'LDAPUsername', 'ldapusername', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d81bf9d4-aff6-4cd6-9231-cbc6d550deb4', '5b38adf3-c969-47a4-9b59-0f61f094deba', 'LDAPPassword', 'ldappassword', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('55bfec4b-0e8d-40c7-b584-456d0681634f', '5b38adf3-c969-47a4-9b59-0f61f094deba', 'isSSL', 'isssl', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('fc401474-3482-46d9-a429-9a13da7004d8', '5b38adf3-c969-47a4-9b59-0f61f094deba', 'BaseDN', 'basedn', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('132e6bbe-abca-4e03-9f78-a22230326eaf', '5b38adf3-c969-47a4-9b59-0f61f094deba', 'AuthType', 'authtype', 40, 6, 'none', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('74ee6225-773e-3568-91f3-39846bac472d', '5b38adf3-c969-47a4-9b59-0f61f094deba', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7bc307d7-4cb9-3afd-bcfb-edb2d0559e48', '5b38adf3-c969-47a4-9b59-0f61f094deba', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('30d9f2a8-7770-3ad0-bb62-34480494bd8b', '5b38adf3-c969-47a4-9b59-0f61f094deba', 'idx_email_connector$ldapconfiguration_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('30d9f2a8-7770-3ad0-bb62-34480494bd8b', '9d127104-7f05-3a2f-b559-771493223bb3', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('b483589c-2571-35f5-abc4-d02cc904fa11', '5b38adf3-c969-47a4-9b59-0f61f094deba', 'idx_email_connector$ldapconfiguration_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('b483589c-2571-35f5-abc4-d02cc904fa11', '8f0f654d-dc18-3380-b144-f0f7d21d22db', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('9d127104-7f05-3a2f-b559-771493223bb3', 'System.owner', 'system$owner', '5b38adf3-c969-47a4-9b59-0f61f094deba', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('8f0f654d-dc18-3380-b144-f0f7d21d22db', 'System.changedBy', 'system$changedby', '5b38adf3-c969-47a4-9b59-0f61f094deba', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
CREATE TABLE "email_connector$emailaccount" (
	"id" BIGINT NOT NULL,
	"username" VARCHAR_IGNORECASE(200) NULL,
	"mailaddress" VARCHAR_IGNORECASE(200) NULL,
	"password" VARCHAR_IGNORECASE(2147483647) NULL,
	"timeout" INT NULL,
	"sanitizeemailbodyforxssscript" BOOLEAN NULL,
	"isp12configured" BOOLEAN NULL,
	"isldapconfigured" BOOLEAN NULL,
	"isincomingemailconfigured" BOOLEAN NULL,
	"isoutgoingemailconfigured" BOOLEAN NULL,
	"fromdisplayname" VARCHAR_IGNORECASE(200) NULL,
	"usesslcheckserveridentity" BOOLEAN NULL,
	"issharedmailbox" BOOLEAN NULL,
	"isoauthused" BOOLEAN NULL,
	"isemailconfigautodetect" BOOLEAN NULL,
	"composeemail" BOOLEAN NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$owner" BIGINT NULL,
	"system$changedby" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_email_connector$emailaccount_system$owner" ON "email_connector$emailaccount" ("system$owner" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$emailaccount_system$changedby" ON "email_connector$emailaccount" ("system$changedby" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'Email_Connector.EmailAccount', 'email_connector$emailaccount', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('94905a4b-62df-48d7-af89-3711bd71c8f8', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'Username', 'username', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('dd2454fb-22dd-4bda-a144-af8992e2f2a4', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'MailAddress', 'mailaddress', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ef41f9da-6d70-4d89-9b09-c84031775063', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'Password', 'password', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3023be3d-4684-4b13-97c9-83c4c384e60d', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'Timeout', 'timeout', 3, 0, '20000', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3745abf8-25d0-4acf-9268-8c81bdc8a639', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'sanitizeEmailBodyForXSSScript', 'sanitizeemailbodyforxssscript', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('54d13be5-d8de-411e-97a8-cd51709905d6', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'isP12Configured', 'isp12configured', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3c8d90eb-bae6-4bdf-8c8e-bca35b885d6f', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'isLDAPConfigured', 'isldapconfigured', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('8a147d6b-3c75-4d61-997e-6f8950cf3ec7', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'isIncomingEmailConfigured', 'isincomingemailconfigured', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f41ce299-8a4e-42fc-a976-894228d0a3e6', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'isOutgoingEmailConfigured', 'isoutgoingemailconfigured', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7d66ca4c-8e2e-4787-afd5-51a3c4b049a4', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'FromDisplayName', 'fromdisplayname', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c1204be9-9cc6-4cf8-8a1f-93690288cb57', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'UseSSLCheckServerIdentity', 'usesslcheckserveridentity', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c5c28242-4076-4c98-88aa-1d1c04f5bedb', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'IsSharedMailbox', 'issharedmailbox', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('4f663cec-b196-46ae-801e-7a9cfeed5dc6', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'isOAuthUsed', 'isoauthused', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('31bbc16a-f37e-417f-b56b-ae6f2427cf2f', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'isEmailConfigAutoDetect', 'isemailconfigautodetect', 10, 0, 'true', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6bf772a4-7750-46e2-abc6-09963cf9232f', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'ComposeEmail', 'composeemail', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9e896dbb-5fec-3cda-9d9d-fcee6692e0fd', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('47aadc4d-9dbd-3737-84cc-10eee5513d37', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('38257c52-f204-348c-987a-566426482093', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'idx_email_connector$emailaccount_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('38257c52-f204-348c-987a-566426482093', '7f040948-312d-3b60-91bb-5592a8e0cd3b', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('d66350f6-cb8e-36fd-890e-7a88e2ebceb9', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'idx_email_connector$emailaccount_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('d66350f6-cb8e-36fd-890e-7a88e2ebceb9', '2df35866-edf8-3c2f-b32b-9e7d7382295b', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('7f040948-312d-3b60-91bb-5592a8e0cd3b', 'System.owner', 'system$owner', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('2df35866-edf8-3c2f-b32b-9e7d7382295b', 'System.changedBy', 'system$changedby', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
CREATE TABLE "email_connector$scopeselected" (
	"id" BIGINT NOT NULL,
	"scopestring" VARCHAR_IGNORECASE(1000) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('3fc03168-06ae-49ac-b163-5f1a641fe73b', 'Email_Connector.ScopeSelected', 'email_connector$scopeselected', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7c9f54f8-8a2e-46c0-a027-a90f1fb29a81', '3fc03168-06ae-49ac-b163-5f1a641fe73b', 'ScopeString', 'scopestring', 30, 1000, '', false);
CREATE TABLE "email_connector$oauthnonce" (
	"id" BIGINT NOT NULL,
	"state" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('cb4d967a-bfea-4371-a5ae-a72ec57a0ce5', 'Email_Connector.OAuthNonce', 'email_connector$oauthnonce', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ae3029f9-bec5-4a9f-a459-0dcf4ba57e50', 'cb4d967a-bfea-4371-a5ae-a72ec57a0ce5', 'State', 'state', 30, 200, '', false);
CREATE TABLE "email_connector$querystring" (
	"id" BIGINT NOT NULL,
	"param" VARCHAR_IGNORECASE(1000) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('37e07622-71ad-4789-bc18-1de8c0ab5e84', 'Email_Connector.QueryString', 'email_connector$querystring', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d125eb55-0432-47b5-b9a9-b93009351ceb', '37e07622-71ad-4789-bc18-1de8c0ab5e84', 'Param', 'param', 30, 1000, '', false);
CREATE TABLE "email_connector$pk12certificate" (
	"id" BIGINT NOT NULL,
	"passphrase" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('3d2cfc1d-7016-4e5e-8d6b-ebed1393a5ff', 'Email_Connector.Pk12Certificate', 'email_connector$pk12certificate', '170ce49d-f29c-4fac-99a6-b55e8a3aeb39', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0c8e1f95-9bd8-4056-b219-3013060fedda', '3d2cfc1d-7016-4e5e-8d6b-ebed1393a5ff', 'Passphrase', 'passphrase', 30, 200, '', false);
CREATE TABLE "email_connector$emailtemplate" (
	"id" BIGINT NOT NULL,
	"templatename" VARCHAR_IGNORECASE(200) NULL,
	"creationdate" TIMESTAMP NULL,
	"subject" VARCHAR_IGNORECASE(200) NULL,
	"sentdate" TIMESTAMP NULL,
	"to" VARCHAR_IGNORECASE(2147483647) NULL,
	"cc" VARCHAR_IGNORECASE(2147483647) NULL,
	"bcc" VARCHAR_IGNORECASE(2147483647) NULL,
	"content" VARCHAR_IGNORECASE(2147483647) NULL,
	"useonlyplaintext" BOOLEAN NULL,
	"hasattachment" BOOLEAN NULL,
	"replyto" VARCHAR_IGNORECASE(200) NULL,
	"plainbody" VARCHAR_IGNORECASE(2147483647) NULL,
	"fromdisplayname" VARCHAR_IGNORECASE(200) NULL,
	"signed" BOOLEAN NULL,
	"encrypted" BOOLEAN NULL,
	"recipientstoggle" BOOLEAN NULL,
	"fromaddress" VARCHAR_IGNORECASE(200) NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$changedby" BIGINT NULL,
	"system$owner" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_email_connector$emailtemplate_system$changedby" ON "email_connector$emailtemplate" ("system$changedby" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$emailtemplate_system$owner" ON "email_connector$emailtemplate" ("system$owner" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'Email_Connector.EmailTemplate', 'email_connector$emailtemplate', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ef92081f-77ad-43fe-a89f-00d9be2aab41', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'TemplateName', 'templatename', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ef80ee51-67b5-4843-b8b7-5f8dc56e4549', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'CreationDate', 'creationdate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('46c185f6-4f80-4d3d-aa8f-6667797e25c8', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'Subject', 'subject', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('021b23f5-5349-4963-95a0-c637f06ba865', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'SentDate', 'sentdate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('5af3c07f-0956-4f8f-bb81-2dde5886947c', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'To', 'to', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a6162977-6993-410e-8c76-cbdf1b3df359', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'CC', 'cc', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('24865d36-05c1-4c2d-a902-46b5221ddd4b', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'BCC', 'bcc', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('00d476b8-43e5-4ad5-bd29-9b7229f06436', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'Content', 'content', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2fac09f6-9dc1-4131-a5fd-425164b74096', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'UseOnlyPlainText', 'useonlyplaintext', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3a014148-8570-4341-bdc6-738c38e32408', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'hasAttachment', 'hasattachment', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('4783e921-06ce-4066-b03a-e8f717cc8b5e', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'ReplyTo', 'replyto', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c5a4d6be-99c9-4ca4-95f3-09902f19ee65', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'PlainBody', 'plainbody', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0e93d666-bca5-4d69-b979-fe398495f4ed', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'FromDisplayName', 'fromdisplayname', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6e25ba3c-78b8-4515-ae72-a742a1f87373', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'Signed', 'signed', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('dfca24a1-2b1d-4d33-9eac-f2d778056bb2', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'Encrypted', 'encrypted', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('42a093b5-3a75-44d3-88a4-28c692877c9b', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'RecipientsToggle', 'recipientstoggle', 10, 0, 'false', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('16176f96-0458-438c-9bc8-3ce0e48cb4ca', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'FromAddress', 'fromaddress', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a264a5ab-3ec7-33fa-b9d9-63357f88293d', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('99964c94-9f13-3e84-a7c9-d5ddc56b8696', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('61e6c60b-7a00-3134-8208-bf41409df974', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'idx_email_connector$emailtemplate_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('61e6c60b-7a00-3134-8208-bf41409df974', '30b04431-9c17-3830-8d26-757ca805a8fa', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('8522a268-d577-3610-a0c7-c4994a024b38', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'idx_email_connector$emailtemplate_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('8522a268-d577-3610-a0c7-c4994a024b38', '8d2c5a0f-d5ef-3551-a154-0be22dd00d5a', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('30b04431-9c17-3830-8d26-757ca805a8fa', 'System.changedBy', 'system$changedby', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('8d2c5a0f-d5ef-3551-a154-0be22dd00d5a', 'System.owner', 'system$owner', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
CREATE TABLE "email_connector$oauthprovider" (
	"id" BIGINT NOT NULL,
	"name" VARCHAR_IGNORECASE(50) NULL,
	"clientid" VARCHAR_IGNORECASE(2147483647) NULL,
	"clientsecret" VARCHAR_IGNORECASE(2147483647) NULL,
	"openidwellknownmetadatauri" VARCHAR_IGNORECASE(700) NULL,
	"authorizationendpoint" VARCHAR_IGNORECASE(700) NULL,
	"tokenendpoint" VARCHAR_IGNORECASE(700) NULL,
	"emaildomain" VARCHAR_IGNORECASE(200) NULL,
	"callbackoperationpath" VARCHAR_IGNORECASE(200) NULL,
	"callbackurl" VARCHAR_IGNORECASE(200) NULL,
	"oauthtype" VARCHAR_IGNORECASE(11) NULL,
	"tenantid" VARCHAR_IGNORECASE(200) NULL,
	"createddate" TIMESTAMP NULL,
	"changeddate" TIMESTAMP NULL,
	"system$changedby" BIGINT NULL,
	"system$owner" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_email_connector$oauthprovider_system$changedby" ON "email_connector$oauthprovider" ("system$changedby" ASC,"id" ASC);
CREATE INDEX "idx_email_connector$oauthprovider_system$owner" ON "email_connector$oauthprovider" ("system$owner" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('f8023486-63f2-4f87-b72d-ae3a86d52d52', 'Email_Connector.OAuthProvider', 'email_connector$oauthprovider', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0ed6ea3f-16c2-4b74-a8a9-98d3f49d487e', 'f8023486-63f2-4f87-b72d-ae3a86d52d52', 'Name', 'name', 30, 50, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('63c969a8-122a-403b-aa7b-73d136ba25e6', 'f8023486-63f2-4f87-b72d-ae3a86d52d52', 'ClientID', 'clientid', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d828ccd8-e332-4bcf-a695-811069febf9b', 'f8023486-63f2-4f87-b72d-ae3a86d52d52', 'ClientSecret', 'clientsecret', 30, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('faa66039-2926-4eca-b29f-d3dbdec28e7e', 'f8023486-63f2-4f87-b72d-ae3a86d52d52', 'OpenIDWellKnownMetadataUri', 'openidwellknownmetadatauri', 30, 700, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('18dc0833-6ac2-4596-ad15-151348cd5e1e', 'f8023486-63f2-4f87-b72d-ae3a86d52d52', 'AuthorizationEndpoint', 'authorizationendpoint', 30, 700, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0ca645a4-cb2f-4a35-be96-d6dc6a2506eb', 'f8023486-63f2-4f87-b72d-ae3a86d52d52', 'TokenEndpoint', 'tokenendpoint', 30, 700, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6a28c3d6-8bdb-41b5-b4b1-583a363b4bf0', 'f8023486-63f2-4f87-b72d-ae3a86d52d52', 'EmailDomain', 'emaildomain', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e89c0ee9-bb20-4806-9f06-86967e27f3b4', 'f8023486-63f2-4f87-b72d-ae3a86d52d52', 'CallbackOperationPath', 'callbackoperationpath', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6c846ee1-7985-408d-a47e-bf089308b34a', 'f8023486-63f2-4f87-b72d-ae3a86d52d52', 'CallbackURL', 'callbackurl', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('a82bada8-36e1-429a-a36c-67f9fa74ad12', 'f8023486-63f2-4f87-b72d-ae3a86d52d52', 'OAuthType', 'oauthtype', 40, 11, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('51609a96-a12e-4ee2-8179-10580882db88', 'f8023486-63f2-4f87-b72d-ae3a86d52d52', 'TenantID', 'tenantid', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('10e6c0a9-21b1-39c8-87f2-1231e20c02cb', 'f8023486-63f2-4f87-b72d-ae3a86d52d52', 'createdDate', 'createddate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('b17cc085-89f0-302a-a398-2322252a08ca', 'f8023486-63f2-4f87-b72d-ae3a86d52d52', 'changedDate', 'changeddate', 20, 0, '', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('2a488e43-e37a-303c-b82c-d750ef39478b', 'f8023486-63f2-4f87-b72d-ae3a86d52d52', 'idx_email_connector$oauthprovider_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('2a488e43-e37a-303c-b82c-d750ef39478b', '13e50457-28e7-3b5b-ab10-1e9cf95d8e31', false, 0);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('7b20c4f8-13ff-3f56-bfc3-fbca5a778806', 'f8023486-63f2-4f87-b72d-ae3a86d52d52', 'idx_email_connector$oauthprovider_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('7b20c4f8-13ff-3f56-bfc3-fbca5a778806', 'df3299b5-4a84-3707-a87e-e77535d991e1', false, 0);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('13e50457-28e7-3b5b-ab10-1e9cf95d8e31', 'System.changedBy', 'system$changedby', 'f8023486-63f2-4f87-b72d-ae3a86d52d52', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$changedby');
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name") VALUES ('df3299b5-4a84-3707-a87e-e77535d991e1', 'System.owner', 'system$owner', 'f8023486-63f2-4f87-b72d-ae3a86d52d52', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'id', 'system$owner');
CREATE TABLE "email_connector$outgoingemailconfiguration_emailaccount" (
	"email_connector$outgoingemailconfigurationid" BIGINT NOT NULL,
	"email_connector$emailaccountid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$outgoingemailconfigurationid","email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$outgoingemailconfiguration_emailaccount_email_connector$emailaccountid" UNIQUE ("email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$outgoingemailconfiguration_emailaccount_email_connector$outgoingemailconfigurationid" UNIQUE ("email_connector$outgoingemailconfigurationid"));
CREATE INDEX "idx_email_connector$outgoingemailconfiguration_emailaccount" ON "email_connector$outgoingemailconfiguration_emailaccount" ("email_connector$emailaccountid" ASC,"email_connector$outgoingemailconfigurationid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('d78ad6a3-5b4c-4ce7-87f5-15cc0daa424f', 'Email_Connector.OutgoingEmailConfiguration_EmailAccount', 'email_connector$outgoingemailconfiguration_emailaccount', '80d8ca58-47f9-47ad-b3cb-6e59b148d3fd', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'email_connector$outgoingemailconfigurationid', 'email_connector$emailaccountid', 'idx_email_connector$outgoingemailconfiguration_emailaccount');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$outgoingemailconfiguration_emailaccount_email_connector$emailaccountid', 'd78ad6a3-5b4c-4ce7-87f5-15cc0daa424f', 'dea5febb-aed5-3ee6-9949-f03bc9b260d9');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$outgoingemailconfiguration_emailaccount_email_connector$outgoingemailconfigurationid', 'd78ad6a3-5b4c-4ce7-87f5-15cc0daa424f', '6f1e37b4-f41d-37ac-b62f-a802653c24eb');
CREATE TABLE "email_connector$emailmessage_emailaccount" (
	"email_connector$emailmessageid" BIGINT NOT NULL,
	"email_connector$emailaccountid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailmessageid","email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$emailmessage_emailaccount_email_connector$emailmessageid" UNIQUE ("email_connector$emailmessageid"));
CREATE INDEX "idx_email_connector$emailmessage_emailaccount_email_connector$emailaccount_email_connector$emailmessage" ON "email_connector$emailmessage_emailaccount" ("email_connector$emailaccountid" ASC,"email_connector$emailmessageid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('2e4b1eed-2ec8-455d-b073-10f0a5a42117', 'Email_Connector.EmailMessage_EmailAccount', 'email_connector$emailmessage_emailaccount', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'email_connector$emailmessageid', 'email_connector$emailaccountid', 'idx_email_connector$emailmessage_emailaccount_email_connector$emailaccount_email_connector$emailmessage');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailmessage_emailaccount_email_connector$emailmessageid', '2e4b1eed-2ec8-455d-b073-10f0a5a42117', 'da2b85f4-bec1-328e-9127-ef70c4eb83c9');
CREATE TABLE "email_connector$emailmessage_emailtemplate" (
	"email_connector$emailmessageid" BIGINT NOT NULL,
	"email_connector$emailtemplateid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailmessageid","email_connector$emailtemplateid"),
	CONSTRAINT "uniq_email_connector$emailmessage_emailtemplate_email_connector$emailmessageid" UNIQUE ("email_connector$emailmessageid"));
CREATE INDEX "idx_email_connector$emailmessage_emailtemplate_email_connector$emailtemplate_email_connector$emailmessage" ON "email_connector$emailmessage_emailtemplate" ("email_connector$emailtemplateid" ASC,"email_connector$emailmessageid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('f8e7a91f-a065-4b30-8f38-541167aa330e', 'Email_Connector.EmailMessage_EmailTemplate', 'email_connector$emailmessage_emailtemplate', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'email_connector$emailmessageid', 'email_connector$emailtemplateid', 'idx_email_connector$emailmessage_emailtemplate_email_connector$emailtemplate_email_connector$emailmessage');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailmessage_emailtemplate_email_connector$emailmessageid', 'f8e7a91f-a065-4b30-8f38-541167aa330e', 'f7a0f2df-0c72-35ac-9c1f-1441d620fafb');
CREATE TABLE "email_connector$emailconnectorlog_emailmessage" (
	"email_connector$emailconnectorlogid" BIGINT NOT NULL,
	"email_connector$emailmessageid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailconnectorlogid","email_connector$emailmessageid"),
	CONSTRAINT "uniq_email_connector$emailconnectorlog_emailmessage_email_connector$emailconnectorlogid" UNIQUE ("email_connector$emailconnectorlogid"));
CREATE INDEX "idx_email_connector$emailconnectorlog_emailmessage_email_connector$emailmessage_email_connector$emailconnectorlog" ON "email_connector$emailconnectorlog_emailmessage" ("email_connector$emailmessageid" ASC,"email_connector$emailconnectorlogid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('53d2fb07-4e65-4e83-bf1d-e5d34052922e', 'Email_Connector.EmailConnectorLog_EmailMessage', 'email_connector$emailconnectorlog_emailmessage', '8649e837-c910-4166-9274-7f817da23b84', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'email_connector$emailconnectorlogid', 'email_connector$emailmessageid', 'idx_email_connector$emailconnectorlog_emailmessage_email_connector$emailmessage_email_connector$emailconnectorlog');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailconnectorlog_emailmessage_email_connector$emailconnectorlogid', '53d2fb07-4e65-4e83-bf1d-e5d34052922e', 'ab926525-469b-3911-8445-e031de4fd751');
CREATE TABLE "email_connector$emailconnectorlog_emailaccount" (
	"email_connector$emailconnectorlogid" BIGINT NOT NULL,
	"email_connector$emailaccountid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailconnectorlogid","email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$emailconnectorlog_emailaccount_email_connector$emailconnectorlogid" UNIQUE ("email_connector$emailconnectorlogid"));
CREATE INDEX "idx_email_connector$emailconnectorlog_emailaccount_email_connector$emailaccount_email_connector$emailconnectorlog" ON "email_connector$emailconnectorlog_emailaccount" ("email_connector$emailaccountid" ASC,"email_connector$emailconnectorlogid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('81423859-2a93-4775-8cbe-94846fd6c9d2', 'Email_Connector.EmailConnectorLog_EmailAccount', 'email_connector$emailconnectorlog_emailaccount', '8649e837-c910-4166-9274-7f817da23b84', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'email_connector$emailconnectorlogid', 'email_connector$emailaccountid', 'idx_email_connector$emailconnectorlog_emailaccount_email_connector$emailaccount_email_connector$emailconnectorlog');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailconnectorlog_emailaccount_email_connector$emailconnectorlogid', '81423859-2a93-4775-8cbe-94846fd6c9d2', '323ec5d5-5b72-3d47-88c5-a7dac457ce42');
CREATE TABLE "email_connector$emailheader_emailmessage" (
	"email_connector$emailheaderid" BIGINT NOT NULL,
	"email_connector$emailmessageid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailheaderid","email_connector$emailmessageid"),
	CONSTRAINT "uniq_email_connector$emailheader_emailmessage_email_connector$emailheaderid" UNIQUE ("email_connector$emailheaderid"));
CREATE INDEX "idx_email_connector$emailheader_emailmessage_email_connector$emailmessage_email_connector$emailheader" ON "email_connector$emailheader_emailmessage" ("email_connector$emailmessageid" ASC,"email_connector$emailheaderid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('0d283737-7b00-4493-b555-7329046d8b6c', 'Email_Connector.EmailHeader_EmailMessage', 'email_connector$emailheader_emailmessage', 'aafa8abf-36bc-4cfb-8c33-4cd2410753b3', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'email_connector$emailheaderid', 'email_connector$emailmessageid', 'idx_email_connector$emailheader_emailmessage_email_connector$emailmessage_email_connector$emailheader');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailheader_emailmessage_email_connector$emailheaderid', '0d283737-7b00-4493-b555-7329046d8b6c', '995fa329-6416-30d6-9d86-bcb956ae9b39');
CREATE TABLE "email_connector$incomingemailconfiguration_emailaccount" (
	"email_connector$incomingemailconfigurationid" BIGINT NOT NULL,
	"email_connector$emailaccountid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$incomingemailconfigurationid","email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$incomingemailconfiguration_emailaccount_email_connector$emailaccountid" UNIQUE ("email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$incomingemailconfiguration_emailaccount_email_connector$incomingemailconfigurationid" UNIQUE ("email_connector$incomingemailconfigurationid"));
CREATE INDEX "idx_email_connector$incomingemailconfiguration_emailaccount" ON "email_connector$incomingemailconfiguration_emailaccount" ("email_connector$emailaccountid" ASC,"email_connector$incomingemailconfigurationid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('26242aa8-afcd-416c-b5bd-8a7c422df8c1', 'Email_Connector.IncomingEmailConfiguration_EmailAccount', 'email_connector$incomingemailconfiguration_emailaccount', '66c6df90-79fc-4401-8a76-fc0a9d48d9a5', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'email_connector$incomingemailconfigurationid', 'email_connector$emailaccountid', 'idx_email_connector$incomingemailconfiguration_emailaccount');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$incomingemailconfiguration_emailaccount_email_connector$emailaccountid', '26242aa8-afcd-416c-b5bd-8a7c422df8c1', '10166569-3011-3476-8083-c789929c7303');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$incomingemailconfiguration_emailaccount_email_connector$incomingemailconfigurationid', '26242aa8-afcd-416c-b5bd-8a7c422df8c1', '1a78581f-4516-3efe-bf3c-bf5d6038c072');
CREATE TABLE "email_connector$attachment_emailmessage" (
	"email_connector$attachmentid" BIGINT NOT NULL,
	"email_connector$emailmessageid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$attachmentid","email_connector$emailmessageid"),
	CONSTRAINT "uniq_email_connector$attachment_emailmessage_email_connector$attachmentid" UNIQUE ("email_connector$attachmentid"));
CREATE INDEX "idx_email_connector$attachment_emailmessage_email_connector$emailmessage_email_connector$attachment" ON "email_connector$attachment_emailmessage" ("email_connector$emailmessageid" ASC,"email_connector$attachmentid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('f56880a1-a2ab-43e8-8f00-3949eb7936a2', 'Email_Connector.Attachment_EmailMessage', 'email_connector$attachment_emailmessage', 'e9b900f7-1a59-48b7-98fd-0e9bd54917d3', '0130cbfa-b60d-4a32-8f01-b0e2ccd92a88', 'email_connector$attachmentid', 'email_connector$emailmessageid', 'idx_email_connector$attachment_emailmessage_email_connector$emailmessage_email_connector$attachment');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$attachment_emailmessage_email_connector$attachmentid', 'f56880a1-a2ab-43e8-8f00-3949eb7936a2', '789d8620-d726-394f-9bdd-11f4f6c84550');
CREATE TABLE "email_connector$attachment_emailtemplate" (
	"email_connector$attachmentid" BIGINT NOT NULL,
	"email_connector$emailtemplateid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$attachmentid","email_connector$emailtemplateid"),
	CONSTRAINT "uniq_email_connector$attachment_emailtemplate_email_connector$attachmentid" UNIQUE ("email_connector$attachmentid"));
CREATE INDEX "idx_email_connector$attachment_emailtemplate_email_connector$emailtemplate_email_connector$attachment" ON "email_connector$attachment_emailtemplate" ("email_connector$emailtemplateid" ASC,"email_connector$attachmentid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('07059de6-c916-496f-8198-673f51f3a63d', 'Email_Connector.Attachment_EmailTemplate', 'email_connector$attachment_emailtemplate', 'e9b900f7-1a59-48b7-98fd-0e9bd54917d3', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'email_connector$attachmentid', 'email_connector$emailtemplateid', 'idx_email_connector$attachment_emailtemplate_email_connector$emailtemplate_email_connector$attachment');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$attachment_emailtemplate_email_connector$attachmentid', '07059de6-c916-496f-8198-673f51f3a63d', '6e82c125-2610-3913-bde7-257cb0f9643c');
CREATE TABLE "email_connector$emailaccount_ldapconfiguration" (
	"email_connector$emailaccountid" BIGINT NOT NULL,
	"email_connector$ldapconfigurationid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailaccountid","email_connector$ldapconfigurationid"),
	CONSTRAINT "uniq_email_connector$emailaccount_ldapconfiguration_email_connector$ldapconfigurationid" UNIQUE ("email_connector$ldapconfigurationid"),
	CONSTRAINT "uniq_email_connector$emailaccount_ldapconfiguration_email_connector$emailaccountid" UNIQUE ("email_connector$emailaccountid"));
CREATE INDEX "idx_email_connector$emailaccount_ldapconfiguration_email_connector$ldapconfiguration_email_connector$emailaccount" ON "email_connector$emailaccount_ldapconfiguration" ("email_connector$ldapconfigurationid" ASC,"email_connector$emailaccountid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('1002fe28-215b-4232-a566-cded887d3a54', 'Email_Connector.EmailAccount_LDAPConfiguration', 'email_connector$emailaccount_ldapconfiguration', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', '5b38adf3-c969-47a4-9b59-0f61f094deba', 'email_connector$emailaccountid', 'email_connector$ldapconfigurationid', 'idx_email_connector$emailaccount_ldapconfiguration_email_connector$ldapconfiguration_email_connector$emailaccount');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailaccount_ldapconfiguration_email_connector$ldapconfigurationid', '1002fe28-215b-4232-a566-cded887d3a54', '4c49004f-7961-3953-9543-b27522053af9');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailaccount_ldapconfiguration_email_connector$emailaccountid', '1002fe28-215b-4232-a566-cded887d3a54', '32352ff8-a4f5-3bd6-b3e7-165326d840ed');
CREATE TABLE "email_connector$emailaccount_oauthtoken" (
	"email_connector$emailaccountid" BIGINT NOT NULL,
	"email_connector$oauthtokenid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailaccountid","email_connector$oauthtokenid"),
	CONSTRAINT "uniq_email_connector$emailaccount_oauthtoken_email_connector$oauthtokenid" UNIQUE ("email_connector$oauthtokenid"),
	CONSTRAINT "uniq_email_connector$emailaccount_oauthtoken_email_connector$emailaccountid" UNIQUE ("email_connector$emailaccountid"));
CREATE INDEX "idx_email_connector$emailaccount_oauthtoken_email_connector$oauthtoken_email_connector$emailaccount" ON "email_connector$emailaccount_oauthtoken" ("email_connector$oauthtokenid" ASC,"email_connector$emailaccountid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('1fd5c474-e5ef-40b1-9671-86cfd1034d0f', 'Email_Connector.EmailAccount_OAuthToken', 'email_connector$emailaccount_oauthtoken', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', '84c137dc-142a-4d13-8ea6-84339bad1ace', 'email_connector$emailaccountid', 'email_connector$oauthtokenid', 'idx_email_connector$emailaccount_oauthtoken_email_connector$oauthtoken_email_connector$emailaccount');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailaccount_oauthtoken_email_connector$oauthtokenid', '1fd5c474-e5ef-40b1-9671-86cfd1034d0f', '59db8baf-bdde-32be-9dee-ce96edf3ba06');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailaccount_oauthtoken_email_connector$emailaccountid', '1fd5c474-e5ef-40b1-9671-86cfd1034d0f', '581c3cb3-94fc-31c8-8bfe-2428c4d4b248');
CREATE TABLE "email_connector$emailaccount_oauthprovider" (
	"email_connector$emailaccountid" BIGINT NOT NULL,
	"email_connector$oauthproviderid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailaccountid","email_connector$oauthproviderid"),
	CONSTRAINT "uniq_email_connector$emailaccount_oauthprovider_email_connector$emailaccountid" UNIQUE ("email_connector$emailaccountid"));
CREATE INDEX "idx_email_connector$emailaccount_oauthprovider_email_connector$oauthprovider_email_connector$emailaccount" ON "email_connector$emailaccount_oauthprovider" ("email_connector$oauthproviderid" ASC,"email_connector$emailaccountid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('2c05a8e8-919d-4da0-b98b-dc86a0e8129b', 'Email_Connector.EmailAccount_OAuthProvider', 'email_connector$emailaccount_oauthprovider', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'f8023486-63f2-4f87-b72d-ae3a86d52d52', 'email_connector$emailaccountid', 'email_connector$oauthproviderid', 'idx_email_connector$emailaccount_oauthprovider_email_connector$oauthprovider_email_connector$emailaccount');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailaccount_oauthprovider_email_connector$emailaccountid', '2c05a8e8-919d-4da0-b98b-dc86a0e8129b', '69271fb5-1d91-37ac-828b-9b1db5a6475b');
CREATE TABLE "email_connector$scopeselected_oauthprovider" (
	"email_connector$scopeselectedid" BIGINT NOT NULL,
	"email_connector$oauthproviderid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$scopeselectedid","email_connector$oauthproviderid"),
	CONSTRAINT "uniq_email_connector$scopeselected_oauthprovider_email_connector$scopeselectedid" UNIQUE ("email_connector$scopeselectedid"));
CREATE INDEX "idx_email_connector$scopeselected_oauthprovider_email_connector$oauthprovider_email_connector$scopeselected" ON "email_connector$scopeselected_oauthprovider" ("email_connector$oauthproviderid" ASC,"email_connector$scopeselectedid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('571680dd-9c3b-49ae-9530-245f45559fc8', 'Email_Connector.ScopeSelected_OAuthProvider', 'email_connector$scopeselected_oauthprovider', '3fc03168-06ae-49ac-b163-5f1a641fe73b', 'f8023486-63f2-4f87-b72d-ae3a86d52d52', 'email_connector$scopeselectedid', 'email_connector$oauthproviderid', 'idx_email_connector$scopeselected_oauthprovider_email_connector$oauthprovider_email_connector$scopeselected');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$scopeselected_oauthprovider_email_connector$scopeselectedid', '571680dd-9c3b-49ae-9530-245f45559fc8', '285ad2f9-3aa3-3f9e-b950-23f4c3135e05');
CREATE TABLE "email_connector$oauthnonce_emailaccount" (
	"email_connector$oauthnonceid" BIGINT NOT NULL,
	"email_connector$emailaccountid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$oauthnonceid","email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$oauthnonce_emailaccount_email_connector$oauthnonceid" UNIQUE ("email_connector$oauthnonceid"));
CREATE INDEX "idx_email_connector$oauthnonce_emailaccount_email_connector$emailaccount_email_connector$oauthnonce" ON "email_connector$oauthnonce_emailaccount" ("email_connector$emailaccountid" ASC,"email_connector$oauthnonceid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('2c2d28c8-2366-4d07-8321-5b9602392366', 'Email_Connector.OAuthNonce_EmailAccount', 'email_connector$oauthnonce_emailaccount', 'cb4d967a-bfea-4371-a5ae-a72ec57a0ce5', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'email_connector$oauthnonceid', 'email_connector$emailaccountid', 'idx_email_connector$oauthnonce_emailaccount_email_connector$emailaccount_email_connector$oauthnonce');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$oauthnonce_emailaccount_email_connector$oauthnonceid', '2c2d28c8-2366-4d07-8321-5b9602392366', '0df2104b-f6d2-3abf-9988-ddcfec434d85');
CREATE TABLE "email_connector$querystring_oauthprovider" (
	"email_connector$querystringid" BIGINT NOT NULL,
	"email_connector$oauthproviderid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$querystringid","email_connector$oauthproviderid"),
	CONSTRAINT "uniq_email_connector$querystring_oauthprovider_email_connector$querystringid" UNIQUE ("email_connector$querystringid"));
CREATE INDEX "idx_email_connector$querystring_oauthprovider_email_connector$oauthprovider_email_connector$querystring" ON "email_connector$querystring_oauthprovider" ("email_connector$oauthproviderid" ASC,"email_connector$querystringid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('710ff723-2072-4fc2-9dba-a7e01c6a781f', 'Email_Connector.QueryString_OAuthProvider', 'email_connector$querystring_oauthprovider', '37e07622-71ad-4789-bc18-1de8c0ab5e84', 'f8023486-63f2-4f87-b72d-ae3a86d52d52', 'email_connector$querystringid', 'email_connector$oauthproviderid', 'idx_email_connector$querystring_oauthprovider_email_connector$oauthprovider_email_connector$querystring');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$querystring_oauthprovider_email_connector$querystringid', '710ff723-2072-4fc2-9dba-a7e01c6a781f', '1c97183e-23cf-3891-83dd-ac950cf340e4');
CREATE TABLE "email_connector$pk12certificate_emailaccount" (
	"email_connector$pk12certificateid" BIGINT NOT NULL,
	"email_connector$emailaccountid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$pk12certificateid","email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$pk12certificate_emailaccount_email_connector$emailaccountid" UNIQUE ("email_connector$emailaccountid"),
	CONSTRAINT "uniq_email_connector$pk12certificate_emailaccount_email_connector$pk12certificateid" UNIQUE ("email_connector$pk12certificateid"));
CREATE INDEX "idx_email_connector$pk12certificate_emailaccount_email_connector$emailaccount_email_connector$pk12certificate" ON "email_connector$pk12certificate_emailaccount" ("email_connector$emailaccountid" ASC,"email_connector$pk12certificateid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('7403266d-2ce7-4d53-ad35-4dfa325422b8', 'Email_Connector.Pk12Certificate_EmailAccount', 'email_connector$pk12certificate_emailaccount', '3d2cfc1d-7016-4e5e-8d6b-ebed1393a5ff', 'acd56903-6a04-40dd-9a2a-3063b6e7abb2', 'email_connector$pk12certificateid', 'email_connector$emailaccountid', 'idx_email_connector$pk12certificate_emailaccount_email_connector$emailaccount_email_connector$pk12certificate');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$pk12certificate_emailaccount_email_connector$emailaccountid', '7403266d-2ce7-4d53-ad35-4dfa325422b8', '71536ec8-42b4-32d9-ab86-276a3e8b65a2');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$pk12certificate_emailaccount_email_connector$pk12certificateid', '7403266d-2ce7-4d53-ad35-4dfa325422b8', '9d757b25-7ab4-3d4d-924e-d2f1f6f0d591');
CREATE TABLE "email_connector$emailtemplate_mxobjecttype" (
	"email_connector$emailtemplateid" BIGINT NOT NULL,
	"mxmodelreflection$mxobjecttypeid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailtemplateid","mxmodelreflection$mxobjecttypeid"),
	CONSTRAINT "uniq_email_connector$emailtemplate_mxobjecttype_email_connector$emailtemplateid" UNIQUE ("email_connector$emailtemplateid"));
CREATE INDEX "idx_email_connector$emailtemplate_mxobjecttype_mxmodelreflection$mxobjecttype_email_connector$emailtemplate" ON "email_connector$emailtemplate_mxobjecttype" ("mxmodelreflection$mxobjecttypeid" ASC,"email_connector$emailtemplateid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('ee2f9e19-03b0-409a-90d3-a38662858837', 'Email_Connector.EmailTemplate_MxObjectType', 'email_connector$emailtemplate_mxobjecttype', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', '8ff36cfe-d6fc-41c6-baa9-3461aca54fd1', 'email_connector$emailtemplateid', 'mxmodelreflection$mxobjecttypeid', 'idx_email_connector$emailtemplate_mxobjecttype_mxmodelreflection$mxobjecttype_email_connector$emailtemplate');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_email_connector$emailtemplate_mxobjecttype_email_connector$emailtemplateid', 'ee2f9e19-03b0-409a-90d3-a38662858837', 'b2f70217-3aae-30fe-8c72-9c3d8dc3f0a8');
CREATE TABLE "email_connector$emailtemplate_token" (
	"email_connector$emailtemplateid" BIGINT NOT NULL,
	"mxmodelreflection$tokenid" BIGINT NOT NULL,
	PRIMARY KEY("email_connector$emailtemplateid","mxmodelreflection$tokenid"));
CREATE INDEX "idx_email_connector$emailtemplate_token_mxmodelreflection$token_email_connector$emailtemplate" ON "email_connector$emailtemplate_token" ("mxmodelreflection$tokenid" ASC,"email_connector$emailtemplateid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('7c7db385-8a58-4458-850a-a596a9fb3437', 'Email_Connector.EmailTemplate_Token', 'email_connector$emailtemplate_token', 'a97a6cc5-cfde-4a06-9539-b2aecc47b1cf', 'fe86fcb3-3a88-42fb-8b5c-4ab0302b9723', 'email_connector$emailtemplateid', 'mxmodelreflection$tokenid', 'idx_email_connector$emailtemplate_token_mxmodelreflection$token_email_connector$emailtemplate');
DELETE FROM "system$filedocument"  WHERE "id" IN ( SELECT "id" FROM "56494899a73f4dbaa24b5bd002107362" );
DELETE FROM "system$filedocument"  WHERE "id" IN ( SELECT "id" FROM "82867f9c0515492ebc20e4e6528ef29a" );
DROP TABLE "2771f7d0563542fb9c622ab7fcf52ef3";
DROP TABLE "9602d9f0066f4b1fba4f0aa1ef2345d6";
DROP TABLE "28c4ac5a96514de6bb3079fe167612a6";
DROP TABLE "39e5569241bc40df96f46218d3b7539f";
DROP TABLE "5624b27576224fafb796981ba7b2356c";
DROP TABLE "c5b78da379584370811b10b06211518f";
DROP TABLE "0b7396f77fd549cabe8f98dfc866f3f9";
DROP TABLE "d5529fc5ba174342b3bc5e735e821110";
DROP TABLE "401da59b24c94023b4bc8055f15916fb";
DROP TABLE "3cac8cb007054ae993403d3ef2172231";
DROP TABLE "ef6c686b89a34d0ab35250a45c1cd413";
DROP TABLE "59020d554edc4ef4af984d8d4204bb99";
DROP TABLE "28d6004a2fae40e4bf88de527eeffbd7";
DROP TABLE "3c74c662c40e40bdb3d9aea7c985a094";
DROP TABLE "94da83d2cb234014bf8069f835796e1a";
DROP TABLE "4fff6ce935ae4decac3fbb3a8b6cfd8a";
DROP TABLE "f3b0d72bca9e4dd9b50e647458cc0b0f";
DROP TABLE "98a21bc56a264eb5912374bbe00d3667";
DROP TABLE "82867f9c0515492ebc20e4e6528ef29a";
DROP TABLE "55ef309a88374256929b07f9479cfeab";
DROP TABLE "88dbc9b65df04e21870be3722d5006d9";
DROP TABLE "460c0f7f7df0451385483e82abbabdc9";
DROP TABLE "db275dfb6cd54219821a328807257b2b";
DROP TABLE "56494899a73f4dbaa24b5bd002107362";
DROP TABLE "57323df71ef74bb5b47d382a10232291";
DROP TABLE "a61714fceb664178b2ce6804f09ea795";
DROP TABLE "9b80e55170b345a3a18813b2c5b79530";
DROP TABLE "a3ea5c83e9cb4b159d1defa15ffca8a2";
DROP TABLE "ff36e7f882584ab1bdbfb17aaaec42d5";
DROP TABLE "afe2a93f17f24cea87f1e9b3ab088f7e";
DROP TABLE "2e095f9fe58d46a9b1a8236fe48afd75";
DROP TABLE "a4e1e33266274eb598a17ef2a58e6375";
DROP TABLE "de7de1a84abe4f83b68286b632928f16";
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20240308 23:22:12';
