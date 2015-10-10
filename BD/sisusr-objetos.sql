create table paciente (
documento varchar2(20),
nombre varchar2(150)
);

create table historia (
id number(14),
documento varchar2(20),
fecha date
);

alter table paciente add constraint pk_documento primary key (documento);
alter table historia add constraint pk_historia primary key (id);

alter table historia add constraint fk_historia foreign key (documento) references paciente (documento);

