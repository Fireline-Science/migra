create table foo
(
    id   serial primary key,
    name text
);

create or replace
    function f()
    returns setof foo
    security invoker
    language sql
as
$$
select *
from foo
where true;
$$;

create or replace
    function s()
    returns setof foo
    security definer
    language sql
as
$$
select *
from foo
where true;
$$;

create or replace view f_v with (security_invoker) as
select *
from f()
where true
;

comment on view f_v is 'my comment';