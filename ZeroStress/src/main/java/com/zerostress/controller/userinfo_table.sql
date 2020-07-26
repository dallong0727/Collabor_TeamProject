create table userinfo(
    id varchar2(50) not null,
    pw varchar2(50) not null,
    name varchar2(100) not null,
    phone varchar2(100)
);

alter table userinfo add CONSTRAINT userinfo_pk PRIMARY KEY (id);

SELECT * FROM userinfo;
