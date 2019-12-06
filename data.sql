BEGIN;

-- CREATE TABLE "core_store" -----------------------------------
CREATE TABLE "core_store"(
	"id" Integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"key" Text,
	"value" Text,
	"type" Text,
	"environment" Text,
	"tag" Text );
-- -------------------------------------------------------------

COMMIT;



BEGIN;

-- CREATE TABLE "strapi_administrator" -------------------------
CREATE TABLE "strapi_administrator"(
	"id" Integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"username" Text NOT NULL,
	"email" Text NOT NULL,
	"password" Text NOT NULL,
	"resetPasswordToken" Text,
	"blocked" Boolean );
-- -------------------------------------------------------------

COMMIT;




BEGIN;

-- CREATE TABLE "upload_file" ----------------------------------
CREATE TABLE "upload_file"(
	"id" Integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"name" Text NOT NULL,
	"hash" Text NOT NULL,
	"sha256" Text,
	"ext" Text,
	"mime" Text NOT NULL,
	"size" Text NOT NULL,
	"url" Text NOT NULL,
	"provider" Text NOT NULL,
	"public_id" Text,
	"created_at" Numeric DEFAULT CURRENT_TIMESTAMP,
	"updated_at" Numeric DEFAULT CURRENT_TIMESTAMP );
-- -------------------------------------------------------------

COMMIT;





BEGIN;

-- CREATE TABLE "upload_file_morph" ----------------------------
CREATE TABLE "upload_file_morph"(
	"id" Integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"upload_file_id" Integer,
	"related_id" Integer,
	"related_type" Text,
	"field" Text );
-- -------------------------------------------------------------

COMMIT;







BEGIN;

-- CREATE TABLE "users-permissions_permission" -----------------
CREATE TABLE "users-permissions_permission"(
	"id" Integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"type" Text NOT NULL,
	"controller" Text NOT NULL,
	"action" Text NOT NULL,
	"enabled" Boolean NOT NULL,
	"policy" Text,
	"role" Integer );
-- -------------------------------------------------------------

COMMIT;







BEGIN;

-- CREATE TABLE "users-permissions_role" -----------------------
CREATE TABLE "users-permissions_role"(
	"id" Integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"name" Text NOT NULL,
	"description" Text,
	"type" Text );
-- -------------------------------------------------------------

COMMIT;






BEGIN;

-- CREATE TABLE "users-permissions_user" -----------------------
CREATE TABLE "users-permissions_user"(
	"id" Integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"username" Text NOT NULL,
	"email" Text NOT NULL,
	"provider" Text,
	"password" Text,
	"resetPasswordToken" Text,
	"confirmed" Boolean,
	"blocked" Boolean,
	"role" Integer,
	"created_at" Numeric DEFAULT CURRENT_TIMESTAMP,
	"updated_at" Numeric DEFAULT CURRENT_TIMESTAMP );
-- -------------------------------------------------------------

COMMIT;







BEGIN;

-- CREATE TABLE "workforms" ------------------------------------
CREATE TABLE "workforms"(
	"id" Integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"form" Text,
	"work" Integer,
	"created_at" Numeric DEFAULT CURRENT_TIMESTAMP,
	"updated_at" Numeric DEFAULT CURRENT_TIMESTAMP );
-- -------------------------------------------------------------

COMMIT;






BEGIN;

-- CREATE TABLE "works" ----------------------------------------
CREATE TABLE "works"(
	"id" Integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"title" Text,
	"description" Text,
	"cover_image_url" Text,
	"pages" Text,
	"create_time" Numeric DEFAULT CURRENT_TIMESTAMP,
	"update_time" Numeric DEFAULT CURRENT_TIMESTAMP,
	"is_publish" Boolean,
	"is_template" Boolean,
	"created_at" Numeric DEFAULT CURRENT_TIMESTAMP,
	"updated_at" Numeric DEFAULT CURRENT_TIMESTAMP );
-- -------------------------------------------------------------

COMMIT;



