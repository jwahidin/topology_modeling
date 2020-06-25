drop table custom.a_res;
go
--
-- Key = App + UniqueId
--
create table custom.a_res virtual
(
    Key         varchar(66) primary key,
    Serial      incr,
    App         varchar(33),
    UniqueId    varchar(33),
    entityTypes varchar(33),
    lastUpdate  time,
    ttl         integer
);
go

drop table custom.a_edge;
go
--
-- Key = App + FromRes + Relationship + ToRes
--

create table custom.a_edge virtual
(
    Key          varchar(99) primary key,
    Serial       incr,
    App          varchar(33),
    FromRes      varchar(33),
    Relationship varchar(33),
    ToRes        varchar(33),
    lastUpdate   time,
    ttl          integer
);
go