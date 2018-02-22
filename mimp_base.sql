--------------------------------------------------------
-- Archivo creado  - lunes-febrero-12-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_SIS_CODIGO_USUARIO
--------------------------------------------------------

   CREATE SEQUENCE  "MIMP"."SEQ_SIS_CODIGO_USUARIO"  MINVALUE 1 MAXVALUE 9999999999999999999999999 INCREMENT BY 1 START WITH 5 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_SIS_MENU_USUARIO
--------------------------------------------------------

   CREATE SEQUENCE  "MIMP"."SEQ_SIS_MENU_USUARIO"  MINVALUE 1 MAXVALUE 9999999999999999999999999 INCREMENT BY 1 START WITH 5 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table SIS_MENU
--------------------------------------------------------

  CREATE TABLE "MIMP"."SIS_MENU" 
   (	"CODIGO_MENU" NUMBER, 
	"DESCRIPCION" VARCHAR2(200 BYTE), 
	"ORDEN" NUMBER, 
	"ESTADO" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SIS_MENU_NIVELES
--------------------------------------------------------

  CREATE TABLE "MIMP"."SIS_MENU_NIVELES" 
   (	"CODIGO_NIVELES" NUMBER, 
	"DESCRIPCION" VARCHAR2(200 BYTE), 
	"LINK" VARCHAR2(200 BYTE), 
	"ORDEN" NUMBER, 
	"NIVEL" NUMBER, 
	"ESTADO" NUMBER(1,0), 
	"CODIGO_MENU" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SIS_MENU_USUARIO
--------------------------------------------------------

  CREATE TABLE "MIMP"."SIS_MENU_USUARIO" 
   (	"CODIGO_MENU_USUARIO" NUMBER, 
	"CODIGO_NIVELES" NUMBER, 
	"CODIGO_USUARIO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SIS_ROL
--------------------------------------------------------

  CREATE TABLE "MIMP"."SIS_ROL" 
   (	"CODIGO_ROL" NUMBER, 
	"NOMBRE_ROL" VARCHAR2(200 BYTE), 
	"ESTADO" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SIS_ROL_X_UNIDAD
--------------------------------------------------------

  CREATE TABLE "MIMP"."SIS_ROL_X_UNIDAD" 
   (	"CODIGO_ROL_X_UNIDAD" NUMBER, 
	"CODIGO_UNIDAD" NUMBER, 
	"CODIGO_ROL" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SIS_UNIDAD
--------------------------------------------------------

  CREATE TABLE "MIMP"."SIS_UNIDAD" 
   (	"CODIGO_UNIDAD" NUMBER, 
	"NOMBRE_UNIDAD" VARCHAR2(200 BYTE), 
	"ESTADO" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SIS_USUARIO
--------------------------------------------------------

  CREATE TABLE "MIMP"."SIS_USUARIO" 
   (	"CODIGO_USUARIO" NUMBER, 
	"USUARIO" VARCHAR2(20 BYTE), 
	"CLAVE" VARCHAR2(40 BYTE), 
	"DNI" VARCHAR2(8 BYTE), 
	"APELLIDO_PATERNO" VARCHAR2(30 BYTE), 
	"APELLIDO_MATERNO" VARCHAR2(30 BYTE), 
	"NOMBRES" VARCHAR2(40 BYTE), 
	"FECHA_NACIMIENTO" DATE, 
	"CORREO" VARCHAR2(200 BYTE), 
	"ESTADO" NUMBER(1,0), 
	"USUARIO_CREACION" VARCHAR2(20 BYTE), 
	"FECHA_CREACION" DATE, 
	"USUARIO_MODIFICACION" VARCHAR2(20 BYTE), 
	"FECHA_MODIFICACION" DATE, 
	"TELEFONO" VARCHAR2(10 BYTE), 
	"CODIGO_ROL_X_UNIDAD" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into MIMP.SIS_MENU
SET DEFINE OFF;
Insert into MIMP.SIS_MENU (CODIGO_MENU,DESCRIPCION,ORDEN,ESTADO) values ('1','Reportes','1','1');
Insert into MIMP.SIS_MENU (CODIGO_MENU,DESCRIPCION,ORDEN,ESTADO) values ('2','Mantenimiento','2','1');
Insert into MIMP.SIS_MENU (CODIGO_MENU,DESCRIPCION,ORDEN,ESTADO) values ('3','Seguridad','3','1');
REM INSERTING into MIMP.SIS_MENU_NIVELES
SET DEFINE OFF;
Insert into MIMP.SIS_MENU_NIVELES (CODIGO_NIVELES,DESCRIPCION,LINK,ORDEN,NIVEL,ESTADO,CODIGO_MENU) values ('1','Usuario','usuarios','1','1','1','2');
Insert into MIMP.SIS_MENU_NIVELES (CODIGO_NIVELES,DESCRIPCION,LINK,ORDEN,NIVEL,ESTADO,CODIGO_MENU) values ('24','Menu','menuUsuario','1','1','1','2');
Insert into MIMP.SIS_MENU_NIVELES (CODIGO_NIVELES,DESCRIPCION,LINK,ORDEN,NIVEL,ESTADO,CODIGO_MENU) values ('25','Fichas de Registro','reporte_cobros_facturados','10','1','1','1');
REM INSERTING into MIMP.SIS_MENU_USUARIO
SET DEFINE OFF;
Insert into MIMP.SIS_MENU_USUARIO (CODIGO_MENU_USUARIO,CODIGO_NIVELES,CODIGO_USUARIO) values ('1','1','1');
Insert into MIMP.SIS_MENU_USUARIO (CODIGO_MENU_USUARIO,CODIGO_NIVELES,CODIGO_USUARIO) values ('3','24','1');
Insert into MIMP.SIS_MENU_USUARIO (CODIGO_MENU_USUARIO,CODIGO_NIVELES,CODIGO_USUARIO) values ('2','25','1');
REM INSERTING into MIMP.SIS_ROL
SET DEFINE OFF;
Insert into MIMP.SIS_ROL (CODIGO_ROL,NOMBRE_ROL,ESTADO) values ('1','CAJERO','1');
REM INSERTING into MIMP.SIS_ROL_X_UNIDAD
SET DEFINE OFF;
Insert into MIMP.SIS_ROL_X_UNIDAD (CODIGO_ROL_X_UNIDAD,CODIGO_UNIDAD,CODIGO_ROL) values ('1','1','1');
REM INSERTING into MIMP.SIS_UNIDAD
SET DEFINE OFF;
Insert into MIMP.SIS_UNIDAD (CODIGO_UNIDAD,NOMBRE_UNIDAD,ESTADO) values ('1','TESORERIA','1');
REM INSERTING into MIMP.SIS_USUARIO
SET DEFINE OFF;
Insert into MIMP.SIS_USUARIO (CODIGO_USUARIO,USUARIO,CLAVE,DNI,APELLIDO_PATERNO,APELLIDO_MATERNO,NOMBRES,FECHA_NACIMIENTO,CORREO,ESTADO,USUARIO_CREACION,FECHA_CREACION,USUARIO_MODIFICACION,FECHA_MODIFICACION,TELEFONO,CODIGO_ROL_X_UNIDAD) values ('1','JAMBROCIO','1sNqrIyO5b0=','42596272','AMBROCIO','SERNAQUE','JORGE CHRISTIAN',to_date('30/08/84','DD/MM/RR'),'CONTRALORIA@PENSION65.GOB.PE','1','CONTRALORIA',to_date('24/03/17','DD/MM/RR'),'JAMBROCIO',null,'951294596','1');
Insert into MIMP.SIS_USUARIO (CODIGO_USUARIO,USUARIO,CLAVE,DNI,APELLIDO_PATERNO,APELLIDO_MATERNO,NOMBRES,FECHA_NACIMIENTO,CORREO,ESTADO,USUARIO_CREACION,FECHA_CREACION,USUARIO_MODIFICACION,FECHA_MODIFICACION,TELEFONO,CODIGO_ROL_X_UNIDAD) values ('2','JMUNOZ','s4qaaTKvovfFiILN5Gk8uA==','42596277','MUNOZ','CAVERO','JOHAN ARTEMIO',to_date('20/10/15','DD/MM/RR'),'JMUNOZC@PENSION65.GOB.PE','1','CONTRALORIA',to_date('24/03/17','DD/MM/RR'),'JAMBROCIO',null,'324345345','1');
--------------------------------------------------------
--  DDL for Index SIS_ROL_X_UNIDAD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MIMP"."SIS_ROL_X_UNIDAD_PK" ON "MIMP"."SIS_ROL_X_UNIDAD" ("CODIGO_ROL_X_UNIDAD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SIS_MENU_USUARIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MIMP"."SIS_MENU_USUARIO_PK" ON "MIMP"."SIS_MENU_USUARIO" ("CODIGO_MENU_USUARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SIS_MENU_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MIMP"."SIS_MENU_PK" ON "MIMP"."SIS_MENU" ("CODIGO_MENU") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SIS_ROL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MIMP"."SIS_ROL_PK" ON "MIMP"."SIS_ROL" ("CODIGO_ROL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SIS_MENU_NIVELES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MIMP"."SIS_MENU_NIVELES_PK" ON "MIMP"."SIS_MENU_NIVELES" ("CODIGO_NIVELES") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SIS_USUARIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MIMP"."SIS_USUARIO_PK" ON "MIMP"."SIS_USUARIO" ("CODIGO_USUARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SIS_UNIDAD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MIMP"."SIS_UNIDAD_PK" ON "MIMP"."SIS_UNIDAD" ("CODIGO_UNIDAD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table SIS_ROL_X_UNIDAD
--------------------------------------------------------

  ALTER TABLE "MIMP"."SIS_ROL_X_UNIDAD" ADD CONSTRAINT "SIS_ROL_X_UNIDAD_PK" PRIMARY KEY ("CODIGO_ROL_X_UNIDAD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "MIMP"."SIS_ROL_X_UNIDAD" MODIFY ("CODIGO_ROL" NOT NULL ENABLE);
  ALTER TABLE "MIMP"."SIS_ROL_X_UNIDAD" MODIFY ("CODIGO_UNIDAD" NOT NULL ENABLE);
  ALTER TABLE "MIMP"."SIS_ROL_X_UNIDAD" MODIFY ("CODIGO_ROL_X_UNIDAD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SIS_UNIDAD
--------------------------------------------------------

  ALTER TABLE "MIMP"."SIS_UNIDAD" ADD CONSTRAINT "SIS_UNIDAD_PK" PRIMARY KEY ("CODIGO_UNIDAD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "MIMP"."SIS_UNIDAD" MODIFY ("CODIGO_UNIDAD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SIS_MENU_NIVELES
--------------------------------------------------------

  ALTER TABLE "MIMP"."SIS_MENU_NIVELES" ADD CONSTRAINT "SIS_MENU_NIVELES_PK" PRIMARY KEY ("CODIGO_NIVELES")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "MIMP"."SIS_MENU_NIVELES" MODIFY ("ESTADO" NOT NULL ENABLE);
  ALTER TABLE "MIMP"."SIS_MENU_NIVELES" MODIFY ("NIVEL" NOT NULL ENABLE);
  ALTER TABLE "MIMP"."SIS_MENU_NIVELES" MODIFY ("ORDEN" NOT NULL ENABLE);
  ALTER TABLE "MIMP"."SIS_MENU_NIVELES" MODIFY ("LINK" NOT NULL ENABLE);
  ALTER TABLE "MIMP"."SIS_MENU_NIVELES" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "MIMP"."SIS_MENU_NIVELES" MODIFY ("CODIGO_NIVELES" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SIS_ROL
--------------------------------------------------------

  ALTER TABLE "MIMP"."SIS_ROL" ADD CONSTRAINT "SIS_ROL_PK" PRIMARY KEY ("CODIGO_ROL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "MIMP"."SIS_ROL" MODIFY ("ESTADO" NOT NULL ENABLE);
  ALTER TABLE "MIMP"."SIS_ROL" MODIFY ("NOMBRE_ROL" NOT NULL ENABLE);
  ALTER TABLE "MIMP"."SIS_ROL" MODIFY ("CODIGO_ROL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SIS_MENU_USUARIO
--------------------------------------------------------

  ALTER TABLE "MIMP"."SIS_MENU_USUARIO" ADD CONSTRAINT "SIS_MENU_USUARIO_PK" PRIMARY KEY ("CODIGO_MENU_USUARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "MIMP"."SIS_MENU_USUARIO" MODIFY ("CODIGO_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "MIMP"."SIS_MENU_USUARIO" MODIFY ("CODIGO_NIVELES" NOT NULL ENABLE);
  ALTER TABLE "MIMP"."SIS_MENU_USUARIO" MODIFY ("CODIGO_MENU_USUARIO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SIS_USUARIO
--------------------------------------------------------

  ALTER TABLE "MIMP"."SIS_USUARIO" ADD CONSTRAINT "SIS_USUARIO_PK" PRIMARY KEY ("CODIGO_USUARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "MIMP"."SIS_USUARIO" MODIFY ("CODIGO_ROL_X_UNIDAD" NOT NULL ENABLE);
  ALTER TABLE "MIMP"."SIS_USUARIO" MODIFY ("FECHA_CREACION" NOT NULL ENABLE);
  ALTER TABLE "MIMP"."SIS_USUARIO" MODIFY ("USUARIO_CREACION" NOT NULL ENABLE);
  ALTER TABLE "MIMP"."SIS_USUARIO" MODIFY ("ESTADO" NOT NULL ENABLE);
  ALTER TABLE "MIMP"."SIS_USUARIO" MODIFY ("FECHA_NACIMIENTO" NOT NULL ENABLE);
  ALTER TABLE "MIMP"."SIS_USUARIO" MODIFY ("NOMBRES" NOT NULL ENABLE);
  ALTER TABLE "MIMP"."SIS_USUARIO" MODIFY ("APELLIDO_PATERNO" NOT NULL ENABLE);
  ALTER TABLE "MIMP"."SIS_USUARIO" MODIFY ("DNI" NOT NULL ENABLE);
  ALTER TABLE "MIMP"."SIS_USUARIO" MODIFY ("CLAVE" NOT NULL ENABLE);
  ALTER TABLE "MIMP"."SIS_USUARIO" MODIFY ("USUARIO" NOT NULL ENABLE);
  ALTER TABLE "MIMP"."SIS_USUARIO" MODIFY ("CODIGO_USUARIO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SIS_MENU
--------------------------------------------------------

  ALTER TABLE "MIMP"."SIS_MENU" ADD CONSTRAINT "SIS_MENU_PK" PRIMARY KEY ("CODIGO_MENU")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "MIMP"."SIS_MENU" MODIFY ("ESTADO" NOT NULL ENABLE);
  ALTER TABLE "MIMP"."SIS_MENU" MODIFY ("ORDEN" NOT NULL ENABLE);
  ALTER TABLE "MIMP"."SIS_MENU" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "MIMP"."SIS_MENU" MODIFY ("CODIGO_MENU" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table SIS_MENU_NIVELES
--------------------------------------------------------

  ALTER TABLE "MIMP"."SIS_MENU_NIVELES" ADD CONSTRAINT "SIS_MENU_NIVELES_FK1" FOREIGN KEY ("CODIGO_MENU")
	  REFERENCES "MIMP"."SIS_MENU" ("CODIGO_MENU") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SIS_MENU_USUARIO
--------------------------------------------------------

  ALTER TABLE "MIMP"."SIS_MENU_USUARIO" ADD CONSTRAINT "SIS_MENU_USUARIO_FK1" FOREIGN KEY ("CODIGO_NIVELES")
	  REFERENCES "MIMP"."SIS_MENU_NIVELES" ("CODIGO_NIVELES") ENABLE;
  ALTER TABLE "MIMP"."SIS_MENU_USUARIO" ADD CONSTRAINT "SIS_MENU_USUARIO_FK2" FOREIGN KEY ("CODIGO_USUARIO")
	  REFERENCES "MIMP"."SIS_USUARIO" ("CODIGO_USUARIO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SIS_ROL_X_UNIDAD
--------------------------------------------------------

  ALTER TABLE "MIMP"."SIS_ROL_X_UNIDAD" ADD CONSTRAINT "SIS_ROL_X_UNIDAD_FK1" FOREIGN KEY ("CODIGO_UNIDAD")
	  REFERENCES "MIMP"."SIS_UNIDAD" ("CODIGO_UNIDAD") ENABLE;
  ALTER TABLE "MIMP"."SIS_ROL_X_UNIDAD" ADD CONSTRAINT "SIS_ROL_X_UNIDAD_FK2" FOREIGN KEY ("CODIGO_ROL")
	  REFERENCES "MIMP"."SIS_ROL" ("CODIGO_ROL") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SIS_USUARIO
--------------------------------------------------------

  ALTER TABLE "MIMP"."SIS_USUARIO" ADD CONSTRAINT "SIS_USUARIO_FK1" FOREIGN KEY ("CODIGO_ROL_X_UNIDAD")
	  REFERENCES "MIMP"."SIS_ROL_X_UNIDAD" ("CODIGO_ROL_X_UNIDAD") ENABLE;
--------------------------------------------------------
--  DDL for Package PKG_AUTENTICACION
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "MIMP"."PKG_AUTENTICACION" AS 

  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  PROCEDURE SP_AUTENTICACION_USUARIO(vi_usuario     IN  VARCHAR2,
                             vi_clave               IN  VARCHAR2,
                             vi_ip_address          IN  VARCHAR2,
                             vo_codigo_usuario      OUT  NUMBER,
                             vo_codigo_rol          OUT  NUMBER,
                             vo_codigo_institucion  OUT  NUMBER,
                             vo_descripcion_rol     OUT  VARCHAR2,
                             vo_nombres_full        OUT  VARCHAR2,
                             vo_nombre_institucion  OUT  VARCHAR2,
                             vo_codigo_ut           OUT  NUMBER,
                             vo_nombre_ut           OUT  VARCHAR2,
                             vo_codigo              OUT  VARCHAR2,
                             vo_mensaje             OUT  VARCHAR2);
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  PROCEDURE SP_LISTA_OPCIONES_MENU(vi_codigo_usuario  IN  NUMBER,
                                   vo_result          OUT SYS_REFCURSOR);
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  PROCEDURE SP_RESETEAR_CLAVE(vi_codigo_usuario         IN NUMBER,
                              vi_clave                  IN VARCHAR,
                              vo_indicador              OUT VARCHAR,
                              vo_mensaje                OUT VARCHAR);
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  
END PKG_AUTENTICACION;

/
--------------------------------------------------------
--  DDL for Package PKG_USUARIOS
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "MIMP"."PKG_USUARIOS" AS 

  PROCEDURE SP_LISTA_ROL(vi_codigo_institucion            IN NUMBER,
                         vi_codigo_unidad                 IN NUMBER,
                         vo_result                        OUT SYS_REFCURSOR);
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  PROCEDURE SP_LISTA_UNIDAD(vi_codigo_institucion             IN NUMBER,
                            vo_result                         OUT SYS_REFCURSOR);
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  PROCEDURE SP_GRABAR_USUARIO(vi_codigo_usuario         IN NUMBER,
                              vi_userid                 IN VARCHAR,
                              vi_ape_paterno            IN VARCHAR,
                              vi_ape_materno            IN VARCHAR,
                              vi_nombres                IN VARCHAR,
                              vi_fecha_nacimiento       IN VARCHAR,
                              vi_correo                 IN VARCHAR,
                              vi_telefono               IN VARCHAR,
                              vi_codigo_rol             IN NUMBER,
                              vi_codigo_unidad          IN NUMBER,
                              vi_codigo_institucion     IN NUMBER,
                              vi_estado                 IN VARCHAR,
                              vi_usuario_registro       IN VARCHAR,
                              vi_clave                  IN VARCHAR,
                              vi_dni                    IN VARCHAR,
                              vi_serie                  IN VARCHAR,
                              vo_codigo_usuario         OUT NUMBER,
                              vo_indicador              OUT VARCHAR,
                              vo_mensaje                OUT VARCHAR);
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  PROCEDURE SP_CANTIDAD_USUARIOS(vi_codigo_institucion      IN  NUMBER,
                                 vo_cantidad                OUT  NUMBER);
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  PROCEDURE SP_REPORTE_USUARIOS(vi_codigo_institucion     IN  NUMBER,
                                vi_pagina                 IN  NUMBER,
                                vi_registros              IN  NUMBER,
                                vi_codigo_unidad          IN  NUMBER,
                                vo_result                 OUT SYS_REFCURSOR);
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --                                
  PROCEDURE SP_BUSCAR_USUARIO(vi_dni        IN  NUMBER,
                              vo_result     OUT SYS_REFCURSOR);
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  PROCEDURE SP_BUSCAR_MENU_USUARIO(vi_codigo_usuario      IN  NUMBER,
                                   vo_result              OUT SYS_REFCURSOR);
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  PROCEDURE SP_LISTAR_USUARIOS(vo_result              OUT SYS_REFCURSOR);
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  PROCEDURE SP_GRABAR_MENU_USUARIO(vi_codigo_usuario      IN  NUMBER,
                                   vi_is_checked          IN  NUMBER,
                                   vi_codigo_sub_menu     IN  NUMBER,
                                   vo_indicador           OUT VARCHAR,
                                   vo_mensaje             OUT VARCHAR);
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  
END PKG_USUARIOS;

/
--------------------------------------------------------
--  DDL for Package Body PKG_AUTENTICACION
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "MIMP"."PKG_AUTENTICACION" AS

  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  PROCEDURE SP_AUTENTICACION_USUARIO(vi_usuario     IN  VARCHAR2,
                             vi_clave               IN  VARCHAR2,
                             vi_ip_address          IN  VARCHAR2,
                             vo_codigo_usuario      OUT  NUMBER,
                             vo_codigo_rol          OUT  NUMBER,
                             vo_codigo_institucion  OUT  NUMBER,
                             vo_descripcion_rol     OUT  VARCHAR2,
                             vo_nombres_full        OUT  VARCHAR2,
                             vo_nombre_institucion  OUT  VARCHAR2,
                             vo_codigo_ut           OUT  NUMBER,
                             vo_nombre_ut           OUT  VARCHAR2,
                             vo_codigo              OUT  VARCHAR2,
                             vo_mensaje             OUT  VARCHAR2) AS
  BEGIN
    
    SELECT u.codigo_usuario, ru.codigo_rol, r.nombre_rol, u.apellido_paterno || ' ' || u.apellido_materno || ', ' || u.nombres AS nombres_full, ru.codigo_unidad, ut.nombre_unidad, 1, 'SYSTEM'
    INTO vo_codigo_usuario, vo_codigo_rol, vo_descripcion_rol, vo_nombres_full, vo_codigo_ut, vo_nombre_ut, vo_codigo_institucion, vo_nombre_institucion
    FROM sis_usuario u
    LEFT JOIN sis_rol_x_unidad ru ON u.codigo_rol_x_unidad = ru.codigo_rol_x_unidad
    LEFT JOIN sis_rol r ON ru.codigo_rol=r.codigo_rol
    LEFT JOIN sis_unidad ut ON ru.codigo_unidad=ut.codigo_unidad
    WHERE u.estado=1
    AND ut.estado=1
    AND u.usuario=vi_usuario
    AND u.clave=vi_clave;

    vo_codigo := '00';
    vo_mensaje := 'OK';
    
  EXCEPTION 
    WHEN NO_DATA_FOUND THEN
      
        vo_codigo := '01';
        vo_mensaje := 'USUARIO O CLAVE INCORRECTA';
        vo_codigo_rol := 0;
        vo_codigo_usuario := 0;
        vo_codigo_institucion := 0;
        vo_descripcion_rol := ' ';
        vo_nombres_full := ' ';
        vo_nombre_institucion := ' ';
        vo_codigo_ut := 0;
        vo_nombre_ut := ' ';
        
  END SP_AUTENTICACION_USUARIO;
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  PROCEDURE SP_LISTA_OPCIONES_MENU(vi_codigo_usuario  IN  NUMBER,
                                   vo_result          OUT SYS_REFCURSOR) AS
  BEGIN
      
      OPEN vo_result FOR
          SELECT m.codigo_menu, mn.codigo_niveles, m.descripcion AS desc_menu, m.orden AS orden_menu, mn.descripcion AS desc_sub_menu, mn.link, mn.orden AS orden_sub_menu, mn.nivel
          FROM sis_usuario u
          LEFT JOIN sis_menu_usuario mu ON u.codigo_usuario=mu.codigo_usuario
          LEFT JOIN sis_menu_niveles mn ON mu.codigo_niveles=mn.codigo_niveles
          LEFT JOIN sis_menu m ON mn.codigo_menu=m.codigo_menu
          WHERE u.estado = 1
          AND m.estado = 1
          AND mn.estado = 1
          AND u.codigo_usuario = vi_codigo_usuario
          ORDER BY m.orden, mn.orden;
          
  END SP_LISTA_OPCIONES_MENU;
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  PROCEDURE SP_RESETEAR_CLAVE(vi_codigo_usuario       IN NUMBER,
                              vi_clave                IN VARCHAR,
                              vo_indicador            OUT VARCHAR,
                              vo_mensaje              OUT VARCHAR) AS
  vl_operador NUMBER;                              
  BEGIN
        
        --SELECT versionoperadores INTO vl_operador FROM ay_version;
        
        UPDATE sis_usuario
        SET
        clave = vi_clave
        WHERE 
        codigo_usuario = vi_codigo_usuario;
        /*
        UPDATE AY_VERSION
        SET versionoperadores = vl_operador + 1;
        */
        vo_indicador := '00';
        vo_mensaje := 'OK';
    
  EXCEPTION 
    WHEN OTHERS THEN
      vo_indicador := '01';
      vo_mensaje := SQLCODE || ' - ' || SQLERRM;
      ROLLBACK;  
      
  END SP_RESETEAR_CLAVE;
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  
END PKG_AUTENTICACION;

/
--------------------------------------------------------
--  DDL for Package Body PKG_USUARIOS
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "MIMP"."PKG_USUARIOS" AS

  PROCEDURE SP_LISTA_ROL(vi_codigo_institucion            IN NUMBER,
                         vi_codigo_unidad                 IN NUMBER,
                         vo_result                        OUT SYS_REFCURSOR) AS
  BEGIN
    
    OPEN vo_result FOR
        SELECT r.codigo_rol, r.nombre_rol from sis_rol_x_unidad ru
        LEFT JOIN sis_unidad ut ON ru.codigo_unidad=ut.codigo_unidad
        LEFT JOIN sis_rol r ON ru.codigo_rol=r.codigo_rol
        WHERE ut.estado=1
        AND r.estado=1
        AND ru.codigo_unidad=vi_codigo_unidad
        ORDER BY r.codigo_rol;

  END SP_LISTA_ROL;
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  PROCEDURE SP_LISTA_UNIDAD(vi_codigo_institucion             IN NUMBER,
                            vo_result                         OUT SYS_REFCURSOR) AS
  BEGIN
    
    OPEN vo_result FOR
        SELECT codigo_unidad, nombre_unidad FROM sis_unidad
        WHERE estado = 1
        ORDER BY nombre_unidad;
        
  END SP_LISTA_UNIDAD;
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  PROCEDURE SP_GRABAR_USUARIO(vi_codigo_usuario         IN NUMBER,
                              vi_userid                 IN VARCHAR,
                              vi_ape_paterno            IN VARCHAR,
                              vi_ape_materno            IN VARCHAR,
                              vi_nombres                IN VARCHAR,
                              vi_fecha_nacimiento       IN VARCHAR,
                              vi_correo                 IN VARCHAR,
                              vi_telefono               IN VARCHAR,
                              vi_codigo_rol             IN NUMBER,
                              vi_codigo_unidad          IN NUMBER,
                              vi_codigo_institucion     IN NUMBER,
                              vi_estado                 IN VARCHAR,
                              vi_usuario_registro       IN VARCHAR,
                              vi_clave                  IN VARCHAR,
                              vi_dni                    IN VARCHAR,
                              vi_serie                  IN VARCHAR,
                              vo_codigo_usuario         OUT NUMBER,
                              vo_indicador              OUT VARCHAR,
                              vo_mensaje                OUT VARCHAR) AS
  vl_codigo                 NUMBER;
  vl_estado                 NUMBER;
  vl_codigo_menu_usuario    NUMBER;
  vl_codigo_rol_x_unidad    NUMBER;
  BEGIN
    
    IF vi_estado = 'ACTIVO' THEN
      vl_estado := 1;
    ELSE
      vl_estado := 0;
    END IF;
    
    SELECT ru.codigo_rol_x_unidad INTO vl_codigo_rol_x_unidad
    FROM sis_rol_x_unidad ru
    LEFT JOIN sis_unidad ut ON ru.codigo_unidad=ut.codigo_unidad
    WHERE ut.estado=1
    AND ru.codigo_unidad=vi_codigo_unidad
    AND ru.codigo_rol=vi_codigo_rol;
    
    IF vi_codigo_usuario = 0 THEN
        
        SELECT SEQ_SIS_CODIGO_USUARIO.NEXTVAL INTO vl_codigo FROM DUAL;
        INSERT INTO sis_usuario (codigo_usuario, usuario, clave, apellido_paterno, apellido_materno, nombres, fecha_nacimiento, correo, estado, usuario_creacion, fecha_creacion, codigo_rol_x_unidad, telefono, dni)
        VALUES (vl_codigo, vi_userid, vi_clave, vi_ape_paterno, vi_ape_materno, vi_nombres, vi_fecha_nacimiento, vi_correo, vl_estado, vi_usuario_registro, SYSDATE, vl_codigo_rol_x_unidad, vi_telefono, vi_dni);
        /*
        SELECT SEQ_SIS_MENU_USUARIO.NEXTVAL INTO vl_codigo_menu_usuario FROM DUAL;
        INSERT INTO sis_menu_usuario (codigo_menu_usuario, codigo_niveles, codigo_usuario)
        VALUES(vl_codigo_menu_usuario, 1, vl_codigo);
        */
        /* 
        UPDATE AY_VERSION
        SET versionoperadores = vl_operador + 1;
        */
        vo_codigo_usuario := vl_codigo;
        vo_indicador := '00';
        vo_mensaje := 'OK';
    ELSE
    
        UPDATE sis_usuario
        SET
        apellido_paterno = vi_ape_paterno, 
        apellido_materno = vi_ape_materno, 
        nombres = vi_nombres, 
        fecha_nacimiento = vi_fecha_nacimiento, 
        correo = vi_correo, 
        telefono = vi_telefono, 
        dni = vi_dni,
        estado = vl_estado, 
        usuario_modificacion = vi_usuario_registro, 
        fecha_creacion = SYSDATE,
        codigo_rol_x_unidad=vl_codigo_rol_x_unidad
        WHERE 
        codigo_usuario = vi_codigo_usuario;
        
        /*
        UPDATE AY_VERSION
        SET versionoperadores = vl_operador + 1;
        */
        vo_codigo_usuario := vi_codigo_usuario;
        vo_indicador := '00';
        vo_mensaje := 'OK';
    END IF;
  
  EXCEPTION 
    WHEN OTHERS THEN
      vo_codigo_usuario := 0;
      vo_indicador := '01';
      vo_mensaje := SQLCODE || ' - ' || SQLERRM;
      ROLLBACK;  
      
  END SP_GRABAR_USUARIO;
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  PROCEDURE SP_CANTIDAD_USUARIOS(vi_codigo_institucion      IN  NUMBER,
                                 vo_cantidad                OUT  NUMBER) AS
  BEGIN
    
    SELECT COUNT(*) INTO vo_cantidad
        FROM sis_usuario u
        LEFT JOIN sis_rol_x_unidad ru ON u.codigo_rol_x_unidad = ru.codigo_rol_x_unidad
        LEFT JOIN sis_unidad ut ON ru.codigo_unidad=ut.codigo_unidad;
        
  END SP_CANTIDAD_USUARIOS;
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  PROCEDURE SP_REPORTE_USUARIOS(vi_codigo_institucion     IN  NUMBER,
                                vi_pagina                 IN  NUMBER,
                                vi_registros              IN  NUMBER,
                                vi_codigo_unidad          IN  NUMBER,
                                vo_result                 OUT SYS_REFCURSOR) AS
  vl_inicio NUMBER;
  vl_fin    NUMBER;                              
  BEGIN
    
    vl_fin := vi_pagina * vi_registros;
    vl_inicio := vl_fin - (vi_registros - 1);
    
    dbms_output.put_line ('INICIO : ' || vl_inicio); 
    dbms_output.put_line ('FIN : ' || vl_fin); 
    
    OPEN vo_result FOR
        SELECT codigo_usuario, usuario as userid, NVL(apellido_paterno, ' ') AS apellido_paterno, NVL(apellido_materno, ' ') AS apellido_materno, NVL(nombres, ' ') AS nombres, TO_CHAR(fecha_nacimiento, 'DD/MM/YYYY') AS fecha_nacimiento, 
        correo, codigo_rol, nombre_rol, codigo_unidad, nombre_unidad, 
        codigo_institucion, CASE WHEN estado = 1 THEN 'ACTIVO' ELSE 'INACTIVO' END AS estado, dni, telefono, serie
        FROM (
            SELECT codigo_usuario, usuario, apellido_paterno, apellido_materno, nombres, fecha_nacimiento, correo, codigo_rol, nombre_rol, codigo_unidad, nombre_unidad,
            codigo_institucion, estado, dni, telefono, serie, ROWNUM numfila
            FROM (
                  SELECT u.codigo_usuario, u.usuario, u.apellido_paterno, u.apellido_materno, u.nombres, u.fecha_nacimiento, u.correo, ru.codigo_rol, r.nombre_rol, ru.codigo_unidad, ut.nombre_unidad, 
                  1 AS codigo_institucion, u.estado, u.dni, u.telefono, ' ' AS serie
                  FROM sis_usuario u
                  LEFT JOIN sis_rol_x_unidad ru ON u.codigo_rol_x_unidad=ru.codigo_rol_x_unidad
                  LEFT JOIN sis_rol r ON ru.codigo_rol=r.codigo_rol
                  LEFT JOIN sis_unidad ut ON ru.codigo_unidad=ut.codigo_unidad
                  WHERE ut.codigo_unidad = vi_codigo_unidad
                  ORDER BY u.usuario
            ) A
        ) B
        WHERE numfila BETWEEN vl_inicio AND vl_fin;

  END SP_REPORTE_USUARIOS;
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  PROCEDURE SP_BUSCAR_USUARIO(vi_dni        IN  NUMBER,
                              vo_result     OUT SYS_REFCURSOR) AS
  BEGIN
      
      OPEN vo_result FOR
          SELECT u.codigo_usuario, u.usuario as userid, u.apellido_paterno, u.apellido_materno, u.nombres, u.fecha_nacimiento, u.correo, ru.codigo_rol, r.nombre_rol, ru.codigo_unidad, ut.nombre_unidad, 
          1 AS codigo_institucion, u.estado, u.dni, u.telefono
          FROM sis_usuario u
          LEFT JOIN sis_rol_x_unidad ru ON u.codigo_rol_x_unidad=ru.codigo_rol_x_unidad
          LEFT JOIN sis_rol r ON ru.codigo_rol=r.codigo_rol
          LEFT JOIN sis_unidad ut ON ru.codigo_unidad=ut.codigo_unidad
          WHERE u.dni = vi_dni
          ORDER BY u.usuario;
      
  END SP_BUSCAR_USUARIO;
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  PROCEDURE SP_BUSCAR_MENU_USUARIO(vi_codigo_usuario      IN  NUMBER,
                                   vo_result              OUT SYS_REFCURSOR) AS
  BEGIN
      
      OPEN vo_result FOR
          SELECT m.codigo_menu, m.descripcion AS desc_menu, m.orden AS orden_menu, n.codigo_niveles, n.descripcion AS desc_sub_menu, n.orden AS orden_sub_menu,
          (SELECT COUNT(*) FROM sis_menu_usuario mu WHERE mu.codigo_niveles = n.codigo_niveles AND mu.codigo_usuario = vi_codigo_usuario) AS sub_menu_asignado
          FROM sis_menu m
          LEFT JOIN sis_menu_niveles n ON m.codigo_menu = n.codigo_menu
          WHERE m.estado = 1
          AND n.estado = 1
          ORDER BY m.orden, n.orden;
      
  END SP_BUSCAR_MENU_USUARIO;
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  PROCEDURE SP_LISTAR_USUARIOS(vo_result              OUT SYS_REFCURSOR) AS
  BEGIN
      
      OPEN vo_result FOR
          SELECT codigo_usuario, apellido_paterno, apellido_materno, nombres
          FROM sis_usuario
          WHERE estado = 1
          ORDER BY apellido_paterno;
          
  END SP_LISTAR_USUARIOS;
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  PROCEDURE SP_GRABAR_MENU_USUARIO(vi_codigo_usuario      IN  NUMBER,
                                   vi_is_checked          IN  NUMBER,
                                   vi_codigo_sub_menu     IN  NUMBER,
                                   vo_indicador           OUT VARCHAR,
                                   vo_mensaje             OUT VARCHAR) AS
  vl_existe_sub_menu            NUMBER;
  vl_codigo_menu_usuario        NUMBER;
  BEGIN
    
    SELECT COUNT(*)
    INTO vl_existe_sub_menu
    FROM sis_menu_usuario
    WHERE codigo_usuario = vi_codigo_usuario
    AND codigo_niveles = vi_codigo_sub_menu;
    
    IF vl_existe_sub_menu = 0 THEN
        
        IF vi_is_checked = 1 THEN
            SELECT SEQ_SIS_MENU_USUARIO.NEXTVAL INTO vl_codigo_menu_usuario FROM DUAL;
            INSERT INTO sis_menu_usuario (codigo_menu_usuario, codigo_niveles, codigo_usuario)
            VALUES(vl_codigo_menu_usuario, vi_codigo_sub_menu, vi_codigo_usuario);
            COMMIT;
            
        END IF;
        
    ELSE
        
        IF vi_is_checked = 0 THEN
            DELETE FROM sis_menu_usuario
            WHERE codigo_usuario = vi_codigo_usuario
            AND codigo_niveles = vi_codigo_sub_menu;
            COMMIT;
            
        END IF;
        
    END IF;
  
  
  
  vo_indicador := '00';
  vo_mensaje := 'SE REALIZO EL REGISTRO SATISFACTORIAMENTE.';
      
  EXCEPTION 
    WHEN OTHERS THEN
      vo_indicador := '01';
      vo_mensaje := SQLCODE || ' - ' || SQLERRM;
      ROLLBACK;
      
  END SP_GRABAR_MENU_USUARIO;
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
  
END PKG_USUARIOS;

/
