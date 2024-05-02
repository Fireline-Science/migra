comment on column "public"."foo"."name" is null;

comment on table "public"."foo" is null;

alter table "public"."foo" drop column "name";

alter table "public"."foo" add column "name2" text;

comment on column "public"."foo"."name2" is 'my name comment updated';

comment on column "public"."foo"."id" is 'my id comment updated';

comment on table "public"."foo" is 'my comment updated';