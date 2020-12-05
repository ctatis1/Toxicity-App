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
/* Table: CONTROL                                               */
/*==============================================================*/
create table CONTROL (
   FECHACONTROLINICIAL  DATE                 not null,
   DESCRIPCIONCONTROL   VARCHAR(40)          not null,
   IDCONTROL            INT                 not null AUTO_INCREMENT,
   FECHACONTROLFINAL    DATE                 not null,
   constraint PK_CONTROL primary key (IDCONTROL)
);

/*==============================================================*/
/* Index: CONTROL_PK                                            */
/*==============================================================*/
create unique index CONTROL_PK on CONTROL (
IDCONTROL
);

/*==============================================================*/
/* Table: RESIDUO                                               */
/*==============================================================*/
create table RESIDUO (
   NOMBRERESIDUO        VARCHAR(40)          not null,
   DESCRIPCIONRESIDUO   VARCHAR(100)         not null,
   constraint PK_RESIDUO primary key (NOMBRERESIDUO)
);

/*==============================================================*/
/* Index: RESIDUO_PK                                            */
/*==============================================================*/
create unique index RESIDUO_PK on RESIDUO (
NOMBRERESIDUO
);

/*==============================================================*/
/* Table: RESIDUO_CONTROL                                       */
/*==============================================================*/
create table RESIDUO_CONTROL (
   IDCONTROL            int                 not null AUTO_INCREMENT,
   NOMBRERESIDUO        VARCHAR(40)          not null,
   constraint PK_RESIDUO_CONTROL primary key (IDCONTROL, NOMBRERESIDUO)
);

/*==============================================================*/
/* Index: RESIDUO_CONTROL_PK                                    */
/*==============================================================*/
create unique index RESIDUO_CONTROL_PK on RESIDUO_CONTROL (
IDCONTROL,
NOMBRERESIDUO
);

/*==============================================================*/
/* Index: RESIDUO_CONTROL2_FK                                   */
/*==============================================================*/
create  index RESIDUO_CONTROL2_FK on RESIDUO_CONTROL (
NOMBRERESIDUO
);

/*==============================================================*/
/* Index: RESIDUO_CONTROL_FK                                    */
/*==============================================================*/
create  index RESIDUO_CONTROL_FK on RESIDUO_CONTROL (
IDCONTROL
);

/*==============================================================*/
/* Table: RESIDUO_TRATAMIENTO                                   */
/*==============================================================*/
create table RESIDUO_TRATAMIENTO (
   NOMBRETRATAMIENTO    VARCHAR(15)          not null,
   NOMBRERESIDUO        VARCHAR(40)          not null,
   constraint PK_RESIDUO_TRATAMIENTO primary key (NOMBRETRATAMIENTO, NOMBRERESIDUO)
);

/*==============================================================*/
/* Index: RESIDUO_PROCESO_PK                                    */
/*==============================================================*/
create unique index RESIDUO_PROCESO_PK on RESIDUO_TRATAMIENTO (
NOMBRETRATAMIENTO,
NOMBRERESIDUO
);

/*==============================================================*/
/* Index: RESIDUO_PROCESO2_FK                                   */
/*==============================================================*/
create  index RESIDUO_PROCESO2_FK on RESIDUO_TRATAMIENTO (
NOMBRERESIDUO
);

/*==============================================================*/
/* Index: RESIDUO_PROCESO_FK                                    */
/*==============================================================*/
create  index RESIDUO_PROCESO_FK on RESIDUO_TRATAMIENTO (
NOMBRETRATAMIENTO
);

/*==============================================================*/
/* Table: TRATAMIENTO                                           */
/*==============================================================*/
create table TRATAMIENTO (
   NOMBRETRATAMIENTO    VARCHAR(15)          not null,
   TIPOTRATAMIENTO      VARCHAR(40)          not null,
   DESCRIPCIONTRATAMIENTO VARCHAR(100)         not null,
   constraint PK_TRATAMIENTO primary key (NOMBRETRATAMIENTO)
);

/*==============================================================*/
/* Index: PROCESO_PK                                            */
/*==============================================================*/
create unique index PROCESO_PK on TRATAMIENTO (
NOMBRETRATAMIENTO
);

/*==============================================================*/
/* Table: TRATAMIENTO_CONTROL                                   */
/*==============================================================*/
create table TRATAMIENTO_CONTROL (
   IDCONTROL            int                 not null AUTO_INCREMENT,
   NOMBRETRATAMIENTO    VARCHAR(15)          not null,
   constraint PK_TRATAMIENTO_CONTROL primary key (IDCONTROL, NOMBRETRATAMIENTO)
);

/*==============================================================*/
/* Index: PROCESO_CONTROL_PK                                    */
/*==============================================================*/
create unique index PROCESO_CONTROL_PK on TRATAMIENTO_CONTROL (
IDCONTROL,
NOMBRETRATAMIENTO
);

/*==============================================================*/
/* Index: PROCESO_CONTROL2_FK                                   */
/*==============================================================*/
create  index PROCESO_CONTROL2_FK on TRATAMIENTO_CONTROL (
NOMBRETRATAMIENTO
);

/*==============================================================*/
/* Index: PROCESO_CONTROL_FK                                    */
/*==============================================================*/
create  index PROCESO_CONTROL_FK on TRATAMIENTO_CONTROL (
IDCONTROL
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
   NOMBREUSUARIO        VARCHAR(40)          not null,
   CONTRASENAUSUARIO    VARCHAR(10)          not null,
   FECHANACIMIENTOUSUARIO DATE                 not null,
   CORREO               VARCHAR(20)          not null,
   constraint PK_USUARIO primary key (NOMBREUSUARIO)
);

/*==============================================================*/
/* Index: USUARIO_PK                                            */
/*==============================================================*/
create unique index USUARIO_PK on USUARIO (
NOMBREUSUARIO
);

/*==============================================================*/
/* Table: USUARIO_CONTROL                                       */
/*==============================================================*/
create table USUARIO_CONTROL (
   IDCONTROL            int                 not null AUTO_INCREMENT,
   NOMBREUSUARIO        VARCHAR(40)          not null,
   constraint PK_USUARIO_CONTROL primary key (IDCONTROL, NOMBREUSUARIO)
);

/*==============================================================*/
/* Index: USUARIO_CONTROL_PK                                    */
/*==============================================================*/
create unique index USUARIO_CONTROL_PK on USUARIO_CONTROL (
IDCONTROL,
NOMBREUSUARIO
);

/*==============================================================*/
/* Index: USUARIO_CONTROL_FK                                    */
/*==============================================================*/
create  index USUARIO_CONTROL_FK on USUARIO_CONTROL (
IDCONTROL
);

/*==============================================================*/
/* Index: USUARIO_CONTROL2_FK                                   */
/*==============================================================*/
create  index USUARIO_CONTROL2_FK on USUARIO_CONTROL (
NOMBREUSUARIO
);

/*==============================================================*/
/* Table: USUARIO_RESIDUO                                       */
/*==============================================================*/
create table USUARIO_RESIDUO (
   NOMBRERESIDUO        VARCHAR(40)          not null,
   NOMBREUSUARIO        VARCHAR(40)          not null,
   constraint PK_USUARIO_RESIDUO primary key (NOMBRERESIDUO, NOMBREUSUARIO)
);

/*==============================================================*/
/* Index: USUARIO_RESIDUO_PK                                    */
/*==============================================================*/
create unique index USUARIO_RESIDUO_PK on USUARIO_RESIDUO (
NOMBRERESIDUO,
NOMBREUSUARIO
);

/*==============================================================*/
/* Index: USUARIO_RESIDUO2_FK                                   */
/*==============================================================*/
create  index USUARIO_RESIDUO2_FK on USUARIO_RESIDUO (
NOMBREUSUARIO
);

/*==============================================================*/
/* Index: USUARIO_RESIDUO_FK                                    */
/*==============================================================*/
create  index USUARIO_RESIDUO_FK on USUARIO_RESIDUO (
NOMBRERESIDUO
);

/*==============================================================*/
/* Table: USUARIO_TRATAMIENTO                                   */
/*==============================================================*/
create table USUARIO_TRATAMIENTO (
   NOMBRETRATAMIENTO    VARCHAR(15)          not null,
   NOMBREUSUARIO        VARCHAR(40)          not null,
   constraint PK_USUARIO_TRATAMIENTO primary key (NOMBRETRATAMIENTO, NOMBREUSUARIO)
);

/*==============================================================*/
/* Index: USUARIO_PROCESO_PK                                    */
/*==============================================================*/
create unique index USUARIO_PROCESO_PK on USUARIO_TRATAMIENTO (
NOMBRETRATAMIENTO,
NOMBREUSUARIO
);

/*==============================================================*/
/* Index: USUARIO_PROCESO2_FK                                   */
/*==============================================================*/
create  index USUARIO_PROCESO2_FK on USUARIO_TRATAMIENTO (
NOMBREUSUARIO
);

/*==============================================================*/
/* Index: USUARIO_PROCESO_FK                                    */
/*==============================================================*/
create  index USUARIO_PROCESO_FK on USUARIO_TRATAMIENTO (
NOMBRETRATAMIENTO
);

alter table RESIDUO_CONTROL
   add constraint FK_RESIDUO__RESIDUO_C_CONTROL foreign key (IDCONTROL)
      references CONTROL (IDCONTROL)
      on delete restrict on update restrict;

alter table RESIDUO_CONTROL
   add constraint FK_RESIDUO__RESIDUO_C_RESIDUO foreign key (NOMBRERESIDUO)
      references RESIDUO (NOMBRERESIDUO)
      on delete restrict on update restrict;

alter table RESIDUO_TRATAMIENTO
   add constraint FK_RESIDUO__RESIDUO_T_TRATAMIE foreign key (NOMBRETRATAMIENTO)
      references TRATAMIENTO (NOMBRETRATAMIENTO)
      on delete restrict on update restrict;

alter table RESIDUO_TRATAMIENTO
   add constraint FK_RESIDUO__RESIDUO_T_RESIDUO foreign key (NOMBRERESIDUO)
      references RESIDUO (NOMBRERESIDUO)
      on delete restrict on update restrict;

alter table TRATAMIENTO_CONTROL
   add constraint FK_TRATAMIE_TRATAMIEN_CONTROL foreign key (IDCONTROL)
      references CONTROL (IDCONTROL)
      on delete restrict on update restrict;

alter table TRATAMIENTO_CONTROL
   add constraint FK_TRATAMIE_TRATAMIEN_TRATAMIE foreign key (NOMBRETRATAMIENTO)
      references TRATAMIENTO (NOMBRETRATAMIENTO)
      on delete restrict on update restrict;

alter table USUARIO_CONTROL
   add constraint FK_USUARIO__USUARIO_C_CONTROL foreign key (IDCONTROL)
      references CONTROL (IDCONTROL)
      on delete restrict on update restrict;

alter table USUARIO_CONTROL
   add constraint FK_USUARIO__USUARIO_C_USUARIO foreign key (NOMBREUSUARIO)
      references USUARIO (NOMBREUSUARIO)
      on delete restrict on update restrict;

alter table USUARIO_RESIDUO
   add constraint FK_USUARIO__USUARIO_R_RESIDUO foreign key (NOMBRERESIDUO)
      references RESIDUO (NOMBRERESIDUO)
      on delete restrict on update restrict;

alter table USUARIO_RESIDUO
   add constraint FK_USUARIO__USUARIO_R_USUARIO foreign key (NOMBREUSUARIO)
      references USUARIO (NOMBREUSUARIO)
      on delete restrict on update restrict;

alter table USUARIO_TRATAMIENTO
   add constraint FK_USUARIO__USUARIO_T_TRATAMIE foreign key (NOMBRETRATAMIENTO)
      references TRATAMIENTO (NOMBRETRATAMIENTO)
      on delete restrict on update restrict;

alter table USUARIO_TRATAMIENTO
   add constraint FK_USUARIO__USUARIO_T_USUARIO foreign key (NOMBREUSUARIO)
      references USUARIO (NOMBREUSUARIO)
      on delete restrict on update restrict;

