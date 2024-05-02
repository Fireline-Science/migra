create table foo
(
    id   serial primary key,
    name text
);

comment on table "foo" is 'my comment';
comment on column "foo".id is 'my id comment';
comment on column "foo".name is 'my name comment';
