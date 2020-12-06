/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     11/11/2020 10:17:02 p. m.                    */
/*==============================================================*/

/*
drop index CONTROL_PK;

drop table CONTROL;

drop index RESIDUO_PK;

drop table RESIDUO;

drop index RESIDUO_CONTROL_FK;

drop index RESIDUO_CONTROL2_FK;

drop index RESIDUO_CONTROL_PK;

drop table RESIDUO_CONTROL;

drop index RESIDUO_PROCESO_FK;

drop index RESIDUO_PROCESO2_FK;

drop index RESIDUO_PROCESO_PK;

drop table RESIDUO_TRATAMIENTO;

drop index PROCESO_PK;

drop table TRATAMIENTO;

drop index PROCESO_CONTROL_FK;

drop index PROCESO_CONTROL2_FK;

drop index PROCESO_CONTROL_PK;

drop table TRATAMIENTO_CONTROL;

drop index USUARIO_PK;

drop table USUARIO;

drop index USUARIO_CONTROL2_FK;

drop index USUARIO_CONTROL_FK;

drop index USUARIO_CONTROL_PK;

drop table USUARIO_CONTROL;

drop index USUARIO_RESIDUO_FK;

drop index USUARIO_RESIDUO2_FK;

drop index USUARIO_RESIDUO_PK;

drop table USUARIO_RESIDUO;

drop index USUARIO_PROCESO_FK;

drop index USUARIO_PROCESO2_FK;

drop index USUARIO_PROCESO_PK;

drop table USUARIO_TRATAMIENTO;
*/

/*==============================================================*/
/* Table: RESIDUO                                               */
/*==============================================================*/
create table RESIDUO (
   TIPORESIDUO          VARCHAR(40)          not null,
   DESCRIPCIONRESIDUO   VARCHAR(400)         not null,
   constraint PK_RESIDUO primary key (TIPORESIDUO)
);

/*==============================================================*/
/* Index: RESIDUO_PK                                            */
/*==============================================================*/
create unique index RESIDUO_PK on RESIDUO (
TIPORESIDUO
);

/*==============================================================*/
/* Table: TRATAMIENTO                                           */
/*==============================================================*/
create table TRATAMIENTO (
   NOMBRETRATAMIENTO    VARCHAR(15)          not null,
   DESCRIPCIONTRATAMIENTO VARCHAR(400)         not null,
   constraint PK_TRATAMIENTO primary key (NOMBRETRATAMIENTO)
);

/*==============================================================*/
/* Index: PROCESO_PK                                            */
/*==============================================================*/
create unique index PROCESO_PK on TRATAMIENTO (
NOMBRETRATAMIENTO
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
   NOMBREUSUARIO        VARCHAR(40)          not null,
   CONTRASENAUSUARIO    VARCHAR(10)          not null,
   FECHANACIMIENTOUSUARIO DATE                 not null,
   CORREO               VARCHAR(40)          not null,
   constraint PK_USUARIO primary key (NOMBREUSUARIO)
);

/*==============================================================*/
/* Index: USUARIO_PK                                            */
/*==============================================================*/
create unique index USUARIO_PK on USUARIO (
NOMBREUSUARIO
);

/*==============================================================*/
/* Table: CONTROL                                               */
/*==============================================================*/
create table CONTROL (
   NOMBRECONTROL        VARCHAR(40)          not null,
   NOMBREUSUARIO        VARCHAR(40)          not null,
   TIPORESIDUO          VARCHAR(40)          not null,
   NOMBRETRATAMIENTO    VARCHAR(15)          not null,
   DESCRIPCIONCONTROL   VARCHAR(600)         not null,
   FECHACONTROLINICIAL  DATE                 not null,
   FECHACONTROLFINAL    DATE                 not null,
   constraint PK_CONTROL primary key (NOMBRECONTROL)
);

/*==============================================================*/
/* Index: CONTROL_PK                                            */
/*==============================================================*/
create unique index CONTROL_PK on CONTROL (
NOMBRECONTROL
);

alter table CONTROL
   add constraint FK_CONTROL_RESIDUO_C_RESIDUO foreign key (TIPORESIDUO)
      references RESIDUO (TIPORESIDUO)
      on delete restrict on update restrict;

alter table CONTROL
   add constraint FK_CONTROL_TRATAMIEN_TRATAMIE foreign key (NOMBRETRATAMIENTO)
      references TRATAMIENTO (NOMBRETRATAMIENTO)
      on delete restrict on update restrict;

alter table CONTROL
   add constraint FK_CONTROL_USUARIO_C_USUARIO foreign key (NOMBREUSUARIO)
      references USUARIO (NOMBREUSUARIO)
      on delete restrict on update restrict;
      
INSERT INTO `usuario` (`NOMBREUSUARIO`, `CONTRASENAUSUARIO`, `FECHANACIMIENTOUSUARIO`, `CORREO`) VALUES
('Anuel', '1234', '2001-01-01', 'anuel@hotmail.com'),
('Ostin', '12345', '2001-01-01', 'lamarrash@hotmail.com');
