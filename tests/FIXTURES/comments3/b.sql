create table foo
(
    id   serial primary key,
    name2 text
);

comment on table "foo" is 'my comment updated';
comment on column "foo".id is 'my id comment updated';
comment on column "foo".name2 is 'my name comment updated';
