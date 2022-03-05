/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.22-MariaDB : Database - classera
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`classera` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

/*Data for the table `main_users` */

insert  into `main_users`(`id`,`email`,`password`,`role`,`is_synced`,`created_at`,`updated_at`) values 
(21,'ehomenick@example.com','$2y$10$l8rEAG896lYgQ0IYj3jGbuq/yQDtF5W.zMbArNnqXr9d1HrwSHV9O','admin',1,'2022-03-05 15:15:47','2022-03-05 17:52:49'),
(22,'estrella.mcglynn@example.com','$2y$10$3PMDeEt8K06VIJZRaJCN.enpFG8AQT7N/Q.D5dNsH7Q3eweKQGVVq','admin',1,'2022-03-05 15:15:48','2022-03-05 17:52:49'),
(23,'yquitzon@example.org','$2y$10$yMZKjAqRbnATnabRUUAm9O7OGAUHOH3A4QFKHkLjsDK2jEQSN8uwS','admin',1,'2022-03-05 15:15:48','2022-03-05 17:52:49'),
(24,'dasia26@example.com','$2y$10$ZZH3PQlAsCn3/noFsN9xEuMZnuXrt3RBnCOPbIXn/Esa1LSaYBjJi','user',1,'2022-03-05 15:15:48','2022-03-05 17:52:49'),
(25,'delia.kertzmann@example.org','$2y$10$KSIMB/avBSLecwrKnZ5sFunIswYH7/gTLYG.cG27Zz0yavzE1Sd3K','admin',1,'2022-03-05 15:15:48','2022-03-05 17:52:49'),
(26,'elza77@example.net','$2y$10$ywu7ZrdgZ2SAFUvnrZpksu9pa.H6LSupdSojmjQw9Eghh.ISrCMfy','admin',1,'2022-03-05 15:15:48','2022-03-05 17:52:49'),
(27,'valentina.eichmann@example.org','$2y$10$0cRaMu8/E9P/It6ZqMOqv.qS/7qW3YZlhKY4KB5jAr9JQKWp8JZs.','admin',1,'2022-03-05 15:15:48','2022-03-05 17:52:49'),
(28,'annabell.reynolds@example.com','$2y$10$3MJochXraG96aEarAgEAAe09On0p/M/HAdUbgOD//qs9CamttcDfy','admin',1,'2022-03-05 15:15:48','2022-03-05 17:52:49'),
(29,'nestor94@example.org','$2y$10$gFn6JYQkP0E5nGHveaZERe6PJku0/2cWbH3hcK6SLqAl9OVmQdb.i','admin',1,'2022-03-05 15:15:48','2022-03-05 17:52:49'),
(30,'berge.carmela@example.com','$2y$10$ywng.H35gHQr0q.ywA8AdO4KA5Z109vCLoi80LppP/dTTkQ80EoDa','admin',1,'2022-03-05 15:15:48','2022-03-05 17:52:49'),
(31,'wael@xlineparts.com','$2y$10$XIq6Flwo77KWCfhm4sw9dezoEowozxAltuCHAuufw4zm25izHvva6','user',1,'2022-03-05 17:27:10','2022-03-05 17:52:49');

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(4,'2022_03_05_121039_create_tables',1),
(5,'2016_06_01_000001_create_oauth_auth_codes_table',2),
(6,'2016_06_01_000002_create_oauth_access_tokens_table',2),
(7,'2016_06_01_000003_create_oauth_refresh_tokens_table',2),
(8,'2016_06_01_000004_create_oauth_clients_table',2),
(9,'2016_06_01_000005_create_oauth_personal_access_clients_table',2);

/*Data for the table `oauth_access_tokens` */

insert  into `oauth_access_tokens`(`id`,`user_id`,`client_id`,`name`,`scopes`,`revoked`,`created_at`,`updated_at`,`expires_at`) values 
('0314372e91dabeaee7de4cd673f7517081b25b6351df1e4e78f17525325b089bb8eed063174fc567',25,1,'app','[\"*\"]',0,'2022-03-05 17:45:51','2022-03-05 17:45:51','2023-03-05 17:45:51'),
('401ceb9dcf666350f36f00295141f0cdc7fe342203e8d04b60bb413a2489c93b73084f9a56e159e5',24,1,'app','[\"*\"]',0,'2022-03-05 17:58:03','2022-03-05 17:58:03','2023-03-05 17:58:03'),
('5d9d559c4f06820084729313e608be5b5df1f855e2e8cdd6cbb8d6100f92030262acfc5575976ed0',25,1,'app','[\"*\"]',0,'2022-03-05 17:45:56','2022-03-05 17:45:56','2023-03-05 17:45:56'),
('8728a788f4196da05e610150246a4b7a175ca7a02f176f9156b77a5c1df6bc0a727415719c18e5bb',25,1,'app','[\"*\"]',0,'2022-03-05 17:45:54','2022-03-05 17:45:54','2023-03-05 17:45:54'),
('8c56d745f354f2b98122e2c76696b28e1868f5e4d4ad96d9a48ff70edbacea2b269509b44ae11442',25,1,'app','[\"*\"]',0,'2022-03-05 17:48:05','2022-03-05 17:48:05','2023-03-05 17:48:05');

/*Data for the table `oauth_auth_codes` */

/*Data for the table `oauth_clients` */

insert  into `oauth_clients`(`id`,`user_id`,`name`,`secret`,`provider`,`redirect`,`personal_access_client`,`password_client`,`revoked`,`created_at`,`updated_at`) values 
(1,NULL,'Laravel Personal Access Client','T6ZneBwLhjXffAOfixBGEGFKiNLcHHxG7EkT1UAN',NULL,'http://localhost',1,0,0,'2022-03-05 17:34:44','2022-03-05 17:34:44'),
(2,NULL,'Laravel Password Grant Client','md3p7cWa2q03dn4Mvr9bLnwr702l0QxFKKmnsfWk','users','http://localhost',0,1,0,'2022-03-05 17:34:44','2022-03-05 17:34:44');

/*Data for the table `oauth_personal_access_clients` */

insert  into `oauth_personal_access_clients`(`id`,`client_id`,`created_at`,`updated_at`) values 
(1,1,'2022-03-05 17:34:44','2022-03-05 17:34:44');

/*Data for the table `oauth_refresh_tokens` */

/*Data for the table `third_party_users` */

insert  into `third_party_users`(`id`,`email`,`password`,`role`,`created_at`,`updated_at`) values 
('06c78b55-c9dc-43d3-a510-90ed696f6c62','nestor94@example.org',NULL,'admin','2022-03-05 15:56:10','2022-03-05 15:56:10'),
('07770ac6-58cc-430a-a2bc-f170d7d0a0f1','ehomenick@example.com',NULL,'admin','2022-03-05 15:59:31','2022-03-05 15:59:31'),
('0b4c2250-5f20-489e-bf8c-4bb76fb654d6','estrella.mcglynn@example.com',NULL,'admin','2022-03-05 17:40:45','2022-03-05 17:40:45'),
('0d46834e-fd3f-4502-bc0b-c9c5f8020b14','dasia26@example.com',NULL,'admin','2022-03-05 15:55:55','2022-03-05 15:55:55'),
('0f35aea5-d103-4f01-b614-41e7575d3ca7','ehomenick@example.com',NULL,'admin','2022-03-05 15:59:25','2022-03-05 15:59:25'),
('1667decb-77d3-45ce-b8e2-71ebc78cc7b9','estrella.mcglynn@example.com',NULL,'admin','2022-03-05 15:59:31','2022-03-05 15:59:31'),
('1aa6aaf5-aba4-4fd6-88c7-1108bd55e512','elza77@example.net',NULL,'admin','2022-03-05 15:55:55','2022-03-05 15:55:55'),
('1f80b337-383b-4a9f-9601-e29e181da672','dasia26@example.com',NULL,'admin','2022-03-05 15:18:05','2022-03-05 15:18:05'),
('223b4dcb-b52e-4302-9497-a2cccbc4e500','wael@xlineparts.com','$2y$10$buETRCnA2XZgZiuVtlWD3OTpX5jNDo7DNfsZ2GTi08graNWhwTYzK','user','2022-03-05 17:27:10','2022-03-05 17:27:10'),
('231f9864-60db-4d26-a174-d71653aba241','valentina.eichmann@example.org',NULL,'admin','2022-03-05 17:39:43','2022-03-05 17:39:43'),
('24386cb5-0720-4a4e-85ae-94043753c87f','nestor94@example.org',NULL,'admin','2022-03-05 15:18:06','2022-03-05 15:18:06'),
('26555473-716f-4609-85a7-9cdfc0e399c7','valentina.eichmann@example.org',NULL,'admin','2022-03-05 15:18:06','2022-03-05 15:18:06'),
('2a1a3d1a-d06f-4bf5-a960-a7c7d32cd310','valentina.eichmann@example.org',NULL,'admin','2022-03-05 17:40:46','2022-03-05 17:40:46'),
('2e72b2fe-63d5-4d81-bc9a-ff37f1de8947','berge.carmela@example.com',NULL,'admin','2022-03-05 15:59:26','2022-03-05 15:59:26'),
('2e8827a0-a78c-4cfd-b802-daf56f506072','estrella.mcglynn@example.com',NULL,'admin','2022-03-05 15:18:05','2022-03-05 15:18:05'),
('2f3464aa-ea38-42c4-b6d8-8373847a380c','annabell.reynolds@example.com',NULL,'admin','2022-03-05 15:56:10','2022-03-05 15:56:10'),
('33175c75-2749-454b-9e47-2ed662b5fb85','nestor94@example.org',NULL,'admin','2022-03-05 17:40:46','2022-03-05 17:40:46'),
('341543c7-eb8c-469c-a7e0-e39d58e2cb42','dasia26@example.com',NULL,'user','2022-03-05 17:39:43','2022-03-05 17:39:43'),
('3cfbdd5b-f8d7-4797-8820-c8f36b9a2a4f','annabell.reynolds@example.com',NULL,'admin','2022-03-05 15:55:55','2022-03-05 15:55:55'),
('3f804c8b-25b3-4c0f-813c-70173d99118a','elza77@example.net',NULL,'admin','2022-03-05 17:40:46','2022-03-05 17:40:46'),
('4453291c-47be-4dff-a8d5-146eed74846c','delia.kertzmann@example.org',NULL,'admin','2022-03-05 15:59:31','2022-03-05 15:59:31'),
('44654b3e-e5b7-467c-9c97-0c35662005cf','delia.kertzmann@example.org',NULL,'admin','2022-03-05 15:55:55','2022-03-05 15:55:55'),
('44f0ef5f-1609-4c89-b18f-eadd061bb16d','ehomenick@example.com',NULL,'admin','2022-03-05 17:39:43','2022-03-05 17:39:43'),
('44f2d208-d0c8-45f6-bbb1-a54e9f317c15','valentina.eichmann@example.org',NULL,'admin','2022-03-05 15:59:31','2022-03-05 15:59:31'),
('45abacad-c013-4c76-b962-4d4cafa50e77','annabell.reynolds@example.com',NULL,'admin','2022-03-05 15:59:26','2022-03-05 15:59:26'),
('45d61f33-72d1-4cf3-aea4-885adcd76540','berge.carmela@example.com',NULL,'admin','2022-03-05 15:56:10','2022-03-05 15:56:10'),
('4bdcc181-370d-4f48-a665-ad2eba449974','valentina.eichmann@example.org',NULL,'admin','2022-03-05 15:59:26','2022-03-05 15:59:26'),
('4c908dee-6783-4dd2-8bff-1fdece0d0d89','berge.carmela@example.com',NULL,'admin','2022-03-05 15:55:55','2022-03-05 15:55:55'),
('4e0218b2-8244-486c-b584-d6990c1797a4','ehomenick@example.com',NULL,'admin','2022-03-05 17:40:45','2022-03-05 17:40:45'),
('4ffd9268-2e87-49a6-b397-305e6456265c','ehomenick@example.com',NULL,'admin','2022-03-05 15:56:09','2022-03-05 15:56:09'),
('5854cebb-e8d3-41cb-86ea-8cbcab149076','yquitzon@example.org',NULL,'admin','2022-03-05 15:55:55','2022-03-05 15:55:55'),
('588a9c85-8817-456b-aeac-e929337dde93','yquitzon@example.org',NULL,'admin','2022-03-05 15:18:05','2022-03-05 15:18:05'),
('5bf1c1a2-5ed0-47b2-a5a7-4951cf0373bd','elza77@example.net',NULL,'admin','2022-03-05 15:59:26','2022-03-05 15:59:26'),
('607402a9-49d6-4ca7-b7ea-81bf74eec9c1','yquitzon@example.org',NULL,'admin','2022-03-05 15:59:31','2022-03-05 15:59:31'),
('61daba76-6bcf-4c28-9d3d-46e48604221e','delia.kertzmann@example.org',NULL,'admin','2022-03-05 17:39:43','2022-03-05 17:39:43'),
('6fb7d4d0-d3b6-43db-b7ec-6ea841923969','ehomenick@example.com',NULL,'admin','2022-03-05 15:18:05','2022-03-05 15:18:05'),
('6ffa10a7-e427-40cb-972a-8b83c6298bed','wael@xlineparts.com',NULL,'user','2022-03-05 17:39:43','2022-03-05 17:39:43'),
('72188bf4-81f0-455c-bb9c-4c6a11253015','yquitzon@example.org',NULL,'admin','2022-03-05 15:59:25','2022-03-05 15:59:25'),
('7f7b9d22-1b12-4c4c-a1a7-1274a65bd038','berge.carmela@example.com',NULL,'admin','2022-03-05 17:39:43','2022-03-05 17:39:43'),
('839b8853-89b4-4ed3-9a85-7f851422c0d5','estrella.mcglynn@example.com',NULL,'admin','2022-03-05 15:56:09','2022-03-05 15:56:09'),
('87a3627d-652d-49cf-a9ce-500708091f22','estrella.mcglynn@example.com',NULL,'admin','2022-03-05 15:55:55','2022-03-05 15:55:55'),
('88450a9e-a06f-4052-9511-c538acfe73dc','yquitzon@example.org',NULL,'admin','2022-03-05 17:40:45','2022-03-05 17:40:45'),
('8e68a891-fdfd-4b02-aca9-d887b8ebe674','wael@xlineparts.com',NULL,'user','2022-03-05 17:40:46','2022-03-05 17:40:46'),
('91f60737-84e5-49a0-a0ba-f7a903905fde','elza77@example.net',NULL,'admin','2022-03-05 17:39:43','2022-03-05 17:39:43'),
('92b61813-b8e3-47e2-8e5f-50deceab5534','estrella.mcglynn@example.com',NULL,'admin','2022-03-05 15:59:25','2022-03-05 15:59:25'),
('95d445d2-730e-47ac-b6a3-1211e5eb2a30','ehomenick@example.com',NULL,'admin','2022-03-05 15:55:54','2022-03-05 15:55:54'),
('99efd0fe-1ff3-4e3b-98a3-3621d9153425','elza77@example.net',NULL,'admin','2022-03-05 15:18:05','2022-03-05 15:18:05'),
('9e4ebcad-e9fb-488b-ad8a-0f5f4e1da951','annabell.reynolds@example.com',NULL,'admin','2022-03-05 15:59:31','2022-03-05 15:59:31'),
('9f19d8e3-ea44-4977-afb5-523d6abcd8ce','delia.kertzmann@example.org',NULL,'admin','2022-03-05 17:40:45','2022-03-05 17:40:45'),
('9faa23ca-f3c3-4dbf-9e3f-1369436b4c18','nestor94@example.org',NULL,'admin','2022-03-05 15:55:55','2022-03-05 15:55:55'),
('a71970b5-aecf-4dc3-bef4-9cf48edb41d5','annabell.reynolds@example.com',NULL,'admin','2022-03-05 17:40:46','2022-03-05 17:40:46'),
('aa6cf3d7-204f-483f-bb88-a3b6bc9e17c6','dasia26@example.com',NULL,'admin','2022-03-05 15:59:31','2022-03-05 15:59:31'),
('b6c4a2f3-b14d-47da-a7d9-087366ee1e8a','annabell.reynolds@example.com',NULL,'admin','2022-03-05 17:39:43','2022-03-05 17:39:43'),
('b92af5de-bdc1-4322-9d47-5364c916b730','dasia26@example.com',NULL,'user','2022-03-05 17:40:45','2022-03-05 17:40:45'),
('ba1ba296-ceda-413b-b60b-a2b4c4dd8425','berge.carmela@example.com',NULL,'admin','2022-03-05 15:18:06','2022-03-05 15:18:06'),
('c1c8c1fc-b3b5-4d58-a7b5-6f9be7d2c830','nestor94@example.org',NULL,'admin','2022-03-05 15:59:32','2022-03-05 15:59:32'),
('c2438bb8-f611-444b-8856-f256f8911bb0','yquitzon@example.org',NULL,'admin','2022-03-05 17:39:43','2022-03-05 17:39:43'),
('c5144a3f-e779-4bfe-8e4b-063c125280a6','delia.kertzmann@example.org',NULL,'admin','2022-03-05 15:56:09','2022-03-05 15:56:09'),
('c552b89e-96c7-468b-bcf2-2f7e835d1657','valentina.eichmann@example.org',NULL,'admin','2022-03-05 15:55:55','2022-03-05 15:55:55'),
('c7e49305-510b-444b-87f8-c84cb7adea3e','delia.kertzmann@example.org',NULL,'admin','2022-03-05 15:18:05','2022-03-05 15:18:05'),
('c80dd400-adca-4ed2-a3a3-c12bdc96e739','estrella.mcglynn@example.com',NULL,'admin','2022-03-05 17:39:43','2022-03-05 17:39:43'),
('ccaf2bdf-5791-4ec8-96de-861f0ee7c1c0','yquitzon@example.org',NULL,'admin','2022-03-05 15:56:09','2022-03-05 15:56:09'),
('cf6dfe57-add9-4117-909b-b8a290d21633','annabell.reynolds@example.com',NULL,'admin','2022-03-05 15:18:06','2022-03-05 15:18:06'),
('d559f273-91fc-45c2-bfa4-41ed970f872d','elza77@example.net',NULL,'admin','2022-03-05 15:59:31','2022-03-05 15:59:31'),
('da6b287c-ed70-4144-be05-88db69dc86eb','delia.kertzmann@example.org',NULL,'admin','2022-03-05 15:59:25','2022-03-05 15:59:25'),
('dfbd20ce-4acd-4c19-91ab-43babb26996b','berge.carmela@example.com',NULL,'admin','2022-03-05 17:40:46','2022-03-05 17:40:46'),
('e0a66e50-955b-4d20-9bfa-4c5bc2611b15','valentina.eichmann@example.org',NULL,'admin','2022-03-05 15:56:10','2022-03-05 15:56:10'),
('e57f703b-d67b-4885-9c58-9fc5bed8a001','elza77@example.net',NULL,'admin','2022-03-05 15:56:09','2022-03-05 15:56:09'),
('e84006cb-6278-4304-8344-373ee436e7e1','dasia26@example.com',NULL,'admin','2022-03-05 15:59:25','2022-03-05 15:59:25'),
('eb11fadd-e713-492f-814b-67b3d497e1bc','nestor94@example.org',NULL,'admin','2022-03-05 15:59:26','2022-03-05 15:59:26'),
('f1abc753-a1f1-491c-8f9a-8185f4fa4a9e','nestor94@example.org',NULL,'admin','2022-03-05 17:39:43','2022-03-05 17:39:43'),
('f6eb277d-c33b-44ea-a3e2-f2daa151c859','berge.carmela@example.com',NULL,'admin','2022-03-05 15:59:32','2022-03-05 15:59:32'),
('f7e036de-c00a-4d57-85e0-47288cc9fe04','dasia26@example.com',NULL,'admin','2022-03-05 15:56:09','2022-03-05 15:56:09');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
