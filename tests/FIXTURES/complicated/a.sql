-- Create a simple custom type "foo" with some basic fields
CREATE TYPE foo AS (
    id integer,
    name text
);

-- Create a function that accepts an array of "foo" types
CREATE OR REPLACE FUNCTION process_foo_array(foos foo[])
RETURNS void
LANGUAGE plpgsql
AS $function$
BEGIN
    -- The function doesn't do anything, it's just a placeholder
    RAISE NOTICE 'Processing foo array with % elements', array_length(foos, 1);
END;
$function$;
