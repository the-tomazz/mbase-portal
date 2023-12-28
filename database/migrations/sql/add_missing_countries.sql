delete from groups where id = 245;
update groups set slug = 'sk' where id = 6;
delete from groups where id = 194;
update groups set slug = 'lu' where id = 76;

insert into groups (slug, name, group_type_id, created_at, updated_at) values ('ad','{"en":"Andorra","sl":"ad"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('ar','{"en":"Argentina","sl":"ar"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('az','{"en":"Azerbaijan","sl":"az"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('by','{"en":"Belarus","sl":"by"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('ba','{"en":"Bosnia and Herzegovina","sl":"ba"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('ge','{"en":"Georgia","sl":"ge"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('is','{"en":"Iceland","sl":"is"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('ir','{"en":"Iran","sl":"ir"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('xk','{"en":"Kosovo","sl":"xk"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('md','{"en":"Moldova","sl":"md"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('mc','{"en":"Monaco","sl":"mc"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('me','{"en":"Montenegro","sl":"me"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('mk','{"en":"North Macedonia","sl":"mk"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('no','{"en":"Norway","sl":"no"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('ru','{"en":"Russia","sl":"ru"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('sm','{"en":"San Marino","sl":"sm"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('stp','{"en":"Sao Tome and Principe","sl":"stp"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('rs','{"en":"Serbia","sl":"rs"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('sl','{"en":"Sierra Leone","sl":"sl"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('ch','{"en":"Switzerland","sl":"ch"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('tr','{"en":"Turkey","sl":"tr"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('uk','{"en":"United Kingdom","sl":"uk"}',1,now(),now());

update groups set name = '{"sl":"Majote","en":"Mayotte"}' where id = 286;
