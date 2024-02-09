drop function if exists "public"."s"();

comment on view "public"."f_v" is null;

drop view if exists "public"."f_v";

drop function if exists "public"."f"();

alter table "public"."foo" drop column "name";

alter table "public"."foo" add column "new_name" text;

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.f()
 RETURNS SETOF foo
 LANGUAGE sql
AS $function$
select *
from foo
where true;
$function$
;

create view "public"."f_v" with (security_invoker=true) as  SELECT f.id,
    f.new_name
   FROM f() f(id, new_name)
  WHERE true;


CREATE OR REPLACE FUNCTION public.s()
 RETURNS SETOF foo
 LANGUAGE sql
 SECURITY DEFINER
AS $function$
select *
from foo
where true;
$function$
;

comment on view "public"."f_v" is 'my comment';