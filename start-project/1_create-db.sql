CREATE TABLE "users" (
  "id" bigserial PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password_hash" varchar NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT (now()),
  "updated_at" timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE "properties" (
  "id" bigserial PRIMARY KEY,
  "owner_id" bigint NOT NULL,
  "title" varchar NOT NULL,
  "description" text NOT NULL,
  "state" varchar NOT NULL,
  "city" varchar NOT NULL,
  "address" varchar NOT NULL,
  "price_per_night" bigint NOT NULL,
  "max_guests" int NOT NULL,
  "bedrooms" int NOT NULL,
  "bathrooms" int NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT (now()),
  "updated_at" timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE "bookings" (
  "id" bigserial PRIMARY KEY,
  "property_id" bigint NOT NULL,
  "user_id" bigint NOT NULL,
  "check_in_date" date NOT NULL,
  "check_out_date" date NOT NULL,
  "total_price" bigint NOT NULL,
  "status" varchar NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT (now()),
  "updated_at" timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE "reviews" (
  "id" bigserial PRIMARY KEY,
  "property_id" bigint NOT NULL,
  "user_id" bigint NOT NULL,
  "rating" int NOT NULL,
  "comment" text,
  "created_at" timestamptz NOT NULL DEFAULT (now()),
  "updated_at" timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE "photos" (
  "id" bigserial PRIMARY KEY,
  "property_id" bigint NOT NULL,
  "url" varchar NOT NULL,
  "is_primary" boolean NOT NULL DEFAULT false,
  "created_at" timestamptz NOT NULL DEFAULT (now()),
  "updated_at" timestamptz NOT NULL DEFAULT (now())
);

CREATE INDEX ON "users" ("email");

CREATE INDEX ON "properties" ("owner_id");

CREATE INDEX ON "properties" ("state");

CREATE INDEX ON "properties" ("city");

CREATE INDEX ON "bookings" ("property_id");

CREATE INDEX ON "bookings" ("user_id");

CREATE INDEX ON "reviews" ("property_id");

CREATE INDEX ON "reviews" ("user_id");

CREATE INDEX ON "photos" ("property_id");

ALTER TABLE "properties" ADD FOREIGN KEY ("owner_id") REFERENCES "users" ("id");

ALTER TABLE "bookings" ADD FOREIGN KEY ("property_id") REFERENCES "properties" ("id");

ALTER TABLE "bookings" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "reviews" ADD FOREIGN KEY ("property_id") REFERENCES "properties" ("id");

ALTER TABLE "reviews" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "photos" ADD FOREIGN KEY ("property_id") REFERENCES "properties" ("id");