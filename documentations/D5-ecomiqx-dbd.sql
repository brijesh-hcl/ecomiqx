CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "email" varchar,
  "full_name" varchar,
  "created_at" timestamptz,
  "updated_at" timestamptz
);

CREATE TABLE "products" (
  "id" uuid PRIMARY KEY,
  "sku" varchar,
  "name" varchar,
  "price" numeric(12,2),
  "currency" char(3),
  "created_at" timestamptz,
  "updated_at" timestamptz
);

CREATE TABLE "carts" (
  "id" uuid PRIMARY KEY,
  "user_id" uuid,
  "currency" char(3),
  "subtotal" numeric(12,2),
  "discount_total" numeric(12,2),
  "tax_total" numeric(12,2),
  "shipping_total" numeric(12,2),
  "grand_total" numeric(12,2),
  "status" varchar,
  "created_at" timestamptz,
  "updated_at" timestamptz,
  "version" int
);

CREATE TABLE "cart_items" (
  "id" uuid PRIMARY KEY,
  "cart_id" uuid,
  "product_id" uuid,
  "product_name" varchar,
  "sku" varchar,
  "quantity" int,
  "unit_price" numeric(12,2),
  "currency" char(3),
  "discount_total" numeric(12,2),
  "tax_total" numeric(12,2),
  "line_total" numeric(12,2),
  "created_at" timestamptz,
  "updated_at" timestamptz,
  "version" int
);

CREATE TABLE "orders" (
  "id" uuid PRIMARY KEY,
  "user_id" uuid,
  "cart_id" uuid,
  "currency" char(3),
  "subtotal" numeric(12,2),
  "discount_total" numeric(12,2),
  "tax_total" numeric(12,2),
  "shipping_total" numeric(12,2),
  "grand_total" numeric(12,2),
  "status" varchar,
  "payment_status" varchar,
  "fulfillment_status" varchar,
  "payment_method" varchar,
  "shipping_address_id" uuid,
  "billing_address_id" uuid,
  "created_at" timestamptz,
  "updated_at" timestamptz,
  "version" int
);

CREATE TABLE "order_items" (
  "id" uuid PRIMARY KEY,
  "order_id" uuid,
  "product_id" uuid,
  "product_name" varchar,
  "sku" varchar,
  "quantity" int,
  "unit_price" numeric(12,2),
  "currency" char(3),
  "discount_total" numeric(12,2),
  "tax_total" numeric(12,2),
  "line_total" numeric(12,2),
  "created_at" timestamptz,
  "updated_at" timestamptz,
  "version" int
);

CREATE TABLE "payments" (
  "id" uuid PRIMARY KEY,
  "order_id" uuid,
  "provider" varchar,
  "reference_id" varchar,
  "amount" numeric(12,2),
  "currency" char(3),
  "status" varchar,
  "paid_at" timestamptz,
  "created_at" timestamptz,
  "updated_at" timestamptz,
  "version" int
);

CREATE TABLE "shipments" (
  "id" uuid PRIMARY KEY,
  "order_id" uuid,
  "carrier" varchar,
  "tracking_number" varchar,
  "status" varchar,
  "shipped_at" timestamptz,
  "delivered_at" timestamptz,
  "created_at" timestamptz,
  "updated_at" timestamptz,
  "version" int
);

ALTER TABLE "carts" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "cart_items" ADD FOREIGN KEY ("cart_id") REFERENCES "carts" ("id");

ALTER TABLE "cart_items" ADD FOREIGN KEY ("product_id") REFERENCES "products" ("id");

ALTER TABLE "orders" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "orders" ADD FOREIGN KEY ("cart_id") REFERENCES "carts" ("id");

ALTER TABLE "order_items" ADD FOREIGN KEY ("order_id") REFERENCES "orders" ("id");

ALTER TABLE "order_items" ADD FOREIGN KEY ("product_id") REFERENCES "products" ("id");

ALTER TABLE "payments" ADD FOREIGN KEY ("order_id") REFERENCES "orders" ("id");

ALTER TABLE "shipments" ADD FOREIGN KEY ("order_id") REFERENCES "orders" ("id");
