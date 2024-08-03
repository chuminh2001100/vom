-- +goose Up
-- SQL in this section is executed when the migration is applied.
CREATE TABLE "public"."heros"(
	"id" uuid NOT NULL,
	"created_at" timestamptz DEFAULT now(),
	"deleted_at" timestamptz,
	"updated_at" timestamptz,
	"name" text NOT NULL,
	"power" text NOT NULL,
    "creator_id" uuid NOT NULL,
	CONSTRAINT "heros_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

-- +goose Down
-- SQL in this section is executed when the migration is rolled back.
DROP TABLE "public"."heros";