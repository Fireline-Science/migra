drop function if exists "public"."process_foo_array"(foos foo[]);

drop type "public"."foo";

set check_function_bodies = off;

create type "public"."foo" as ("id" integer, "name" text, "another_field" text);

CREATE OR REPLACE FUNCTION public.process_foo_array(foos foo[])
 RETURNS void
 LANGUAGE plpgsql
AS $function$
BEGIN
    -- The function doesn't do anything, it's just a placeholder
    RAISE NOTICE 'Processing foo array with % elements - update', array_length(foos, 1);
END;
$function$
;