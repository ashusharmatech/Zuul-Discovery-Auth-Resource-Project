DROP TABLE IF EXISTS `hibernate_sequence`; 

CREATE TABLE `hibernate_sequence` 
  ( 
     `next_val` BIGINT(20) DEFAULT NULL 
  ); 

DROP TABLE IF EXISTS `customer`; 

CREATE TABLE `customer` 
  ( 
     `id`      BIGINT(20) NOT NULL, 
     `address` VARCHAR(255) DEFAULT NULL, 
     `contact` VARCHAR(255) DEFAULT NULL, 
     `name`    VARCHAR(255) DEFAULT NULL, 
     `phone`   VARCHAR(255) DEFAULT NULL, 
     PRIMARY KEY (`id`) 
  ); 

DROP TABLE IF EXISTS `oauth_access_token`; 

CREATE TABLE `oauth_access_token` 
  ( 
     `token_id`          VARCHAR(256) DEFAULT NULL, 
     `token`             BLOB, 
     `authentication_id` VARCHAR(256) NOT NULL, 
     `user_name`         VARCHAR(256) DEFAULT NULL, 
     `client_id`         VARCHAR(256) DEFAULT NULL, 
     `authentication`    BLOB, 
     `refresh_token`     VARCHAR(256) DEFAULT NULL, 
     PRIMARY KEY (`authentication_id`) 
  ); 

DROP TABLE IF EXISTS `oauth_approvals`; 

CREATE TABLE `oauth_approvals` 
  ( 
     `userid`         VARCHAR(256) DEFAULT NULL, 
     `clientid`       VARCHAR(256) DEFAULT NULL, 
     `scope`          VARCHAR(256) DEFAULT NULL, 
     `status`         VARCHAR(10) DEFAULT NULL, 
     `expiresat`      TIMESTAMP NULL DEFAULT NULL, 
     `lastmodifiedat` TIMESTAMP NULL DEFAULT NULL 
  ); 

DROP TABLE IF EXISTS `oauth_client_details`; 

CREATE TABLE `oauth_client_details` 
  ( 
     `client_id`               VARCHAR(256) NOT NULL, 
     `resource_ids`            VARCHAR(256) DEFAULT NULL, 
     `client_secret`           VARCHAR(256) DEFAULT NULL, 
     `scope`                   VARCHAR(256) DEFAULT NULL, 
     `authorized_grant_types`  VARCHAR(256) DEFAULT NULL, 
     `web_server_redirect_uri` VARCHAR(256) DEFAULT NULL, 
     `authorities`             VARCHAR(256) DEFAULT NULL, 
     `access_token_validity`   INT(11) DEFAULT NULL, 
     `refresh_token_validity`  INT(11) DEFAULT NULL, 
     `additional_information`  VARCHAR(4096) DEFAULT NULL, 
     `autoapprove`             VARCHAR(256) DEFAULT NULL, 
     PRIMARY KEY (`client_id`) 
  ); 

DROP TABLE IF EXISTS `oauth_client_token`; 

CREATE TABLE `oauth_client_token` 
  ( 
     `token_id`          VARCHAR(256) DEFAULT NULL, 
     `token`             LONGTEXT, 
     `authentication_id` VARCHAR(256) NOT NULL, 
     `user_name`         VARCHAR(256) DEFAULT NULL, 
     `client_id`         VARCHAR(256) DEFAULT NULL, 
     PRIMARY KEY (`authentication_id`) 
  ); 

DROP TABLE IF EXISTS `oauth_code`; 

CREATE TABLE `oauth_code` 
  ( 
     `code`           VARCHAR(256) DEFAULT NULL, 
     `authentication` LONGTEXT 
  ); 

DROP TABLE IF EXISTS `oauth_refresh_token`; 

CREATE TABLE `oauth_refresh_token` 
  ( 
     `token_id`               VARCHAR(256) DEFAULT NULL, 
     `token`                  BLOB, 
     `authentication`         BLOB, 
     `oauth_refresh_tokencol` VARCHAR(45) DEFAULT NULL 
  ); 

DROP TABLE IF EXISTS `user_roles`; 

CREATE TABLE `user_roles` 
  ( 
     `id`   BIGINT(20) NOT NULL, 
     `name` VARCHAR(255) DEFAULT NULL, 
     PRIMARY KEY (`id`) 
  ); 

DROP TABLE IF EXISTS `users`; 

CREATE TABLE `users` 
  ( 
     `id`       BIGINT(20) NOT NULL, 
     `password` VARCHAR(255) DEFAULT NULL, 
     `username` VARCHAR(255) DEFAULT NULL, 
     PRIMARY KEY (`id`) 
  ); 

DROP TABLE IF EXISTS `users_roles`; 

CREATE TABLE `users_roles` 
  ( 
     `user_id`  BIGINT(20) NOT NULL, 
     `roles_id` BIGINT(20) NOT NULL, 
     UNIQUE KEY `uk_60loxav507l5mreo05v0im1lq` (`roles_id`), 
     KEY `fk2o0jvgh89lemvvo17cbqvdxaa` (`user_id`), 
     CONSTRAINT `fk2o0jvgh89lemvvo17cbqvdxaa` FOREIGN KEY (`user_id`) REFERENCES 
     `users` (`id`), 
     CONSTRAINT `fkr7n16jrocdrem7nca7dasjf12` FOREIGN KEY (`roles_id`) 
     REFERENCES `user_roles` (`id`) 
  ); 