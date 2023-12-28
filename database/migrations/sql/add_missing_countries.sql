delete from groups where id = 245;
update groups set slug = 'sk' where id = 6;
delete from groups where id = 194;
update groups set slug = 'lu' where id = 76;

insert into groups (slug, name, group_type_id, created_at, updated_at) values ('ad','{"en":"Andorra","sl":"Andorra"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('ar','{"en":"Argentina","sl":"Argentina"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('az','{"en":"Azerbaijan","sl":"Azerbajdžan"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('by','{"en":"Belarus","sl":"Belorusija"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('ba','{"en":"Bosnia and Herzegovina","sl":"Bosna in Hercegovina"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('ge','{"en":"Georgia","sl":"Gruzija"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('is','{"en":"Iceland","sl":"Islandija"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('ir','{"en":"Iran","sl":"Iran"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('xk','{"en":"Kosovo","sl":"Kosovo"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('md','{"en":"Moldova","sl":"Moldavija"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('mc','{"en":"Monaco","sl":"Monako"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('me','{"en":"Montenegro","sl":"Črna gora"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('mk','{"en":"North Macedonia","sl":"Severna Makedonija"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('no','{"en":"Norway","sl":"Norveška"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('ru','{"en":"Russia","sl":"Rusija"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('sm','{"en":"San Marino","sl":"San Marino"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('stp','{"en":"Sao Tome and Principe","sl":"Sao tome in principe"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('rs','{"en":"Serbia","sl":"Srbija"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('sl','{"en":"Sierra Leone","sl":"Sierra Leone"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('ch','{"en":"Switzerland","sl":"Švica"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('tr','{"en":"Turkey","sl":"Turčija"}',1,now(),now());
insert into groups (slug, name, group_type_id, created_at, updated_at) values ('uk','{"en":"United Kingdom","sl":"Združeno kraljestvo"}',1,now(),now());

update groups set name = '{"sl":"Majote","en":"Mayotte"}' where id = 286;
