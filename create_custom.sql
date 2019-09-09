create table custom.asm_resource virtual
(
    App         varchar(33) primary key,
    UniqueId    varchar(33) primary key,
    entityTypes varchar(33)
);
go

create table custom.asm_edge virtual
(
    App          varchar(33) primary key,
    FromRes      varchar(33) primary key,
    Relationship varchar(33) primary key,
    ToRes        varchar(33) primary key
);
go

insert into custom.asm_resource values ('gb','GuestBookApp','application');
insert into custom.asm_resource values ('gb','PHPFrontEnd','container');
insert into custom.asm_resource values ('gb','RedisSlave','container');
insert into custom.asm_resource values ('gb','RedisMaster','container');
insert into custom.asm_resource values ('gb','gbf_0_1_0','image');
insert into custom.asm_resource values ('gb','gbrm_0_1_0','image');
insert into custom.asm_resource values ('gb','gbrs_0_1_0','image');
insert into custom.asm_edge values('gb','GuestBookApp','dependsOn','PHPFrontEnd');
insert into custom.asm_edge values('gb','GuestBookApp','dependsOn','RedisSlave');
insert into custom.asm_edge values('gb','GuestBookApp','dependsOn','RedisMaster');
insert into custom.asm_edge values('gb','PHPFrontEnd','implements','gbf_0_1_0');
insert into custom.asm_edge values('gb','RedisSlave','implements','gbrm_0_1_0');
insert into custom.asm_edge values('gb','RedisMaster','implements','gbrs_0_1_0');
insert into custom.asm_edge values('gb','RedisSlave','communicatesWith','RedisMaster');
insert into custom.asm_edge values('gb','RedisMaster','communicatesWith','RedisSlave');
insert into custom.asm_edge values('gb','PHPFrontEnd','uses','RedisSlave');
go