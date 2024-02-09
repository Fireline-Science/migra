drop function if exists "public"."get_product_listings"();

drop view if exists "public"."product_listings";

alter table "public"."products" drop column "price";

alter table "public"."products" add column "price_two" numeric(10,2) not null;

set check_function_bodies = off;

create or replace view "public"."product_listings" as  SELECT products.product_id,
    products.product_name,
    products.price_two
   FROM products;


CREATE OR REPLACE FUNCTION public.get_product_listings()
 RETURNS SETOF product_listings
 LANGUAGE plpgsql
AS $function$
BEGIN
    RETURN QUERY SELECT * FROM product_listings;
END;
$function$
;