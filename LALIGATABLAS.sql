--------------------------------------------------------
-- Archivo creado  - viernes-diciembre-09-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table AFICION
--------------------------------------------------------

  CREATE TABLE "HR"."AFICION" 
   (	"EQUIPO_ID" NUMBER, 
	"AFICION_ID" NUMBER, 
	"NOMBRE_GUERRA" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EQUIPO
--------------------------------------------------------

  CREATE TABLE "HR"."EQUIPO" 
   (	"EQUIPO_ID" NUMBER, 
	"NOMBRE" VARCHAR2(40 BYTE), 
	"FECHA_FUNDACION" DATE, 
	"ESTADIO_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "HR"."EQUIPO"."NOMBRE" IS 'Denominacion del equipo
';
   COMMENT ON COLUMN "HR"."EQUIPO"."FECHA_FUNDACION" IS 'Fecha
';
--------------------------------------------------------
--  DDL for Table ESTADIO
--------------------------------------------------------

  CREATE TABLE "HR"."ESTADIO" 
   (	"ESTADIO_ID" NUMBER, 
	"LOCALIZACIÓN" VARCHAR2(50 BYTE), 
	"AFORO" NUMBER, 
	"EQUIPO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JUGADORES
--------------------------------------------------------

  CREATE TABLE "HR"."JUGADORES" 
   (	"JUGADORES_ID" VARCHAR2(50 BYTE), 
	"EDAD" NUMBER, 
	"ALTURA" NUMBER, 
	"DORSAL" NUMBER, 
	"EQUIPO_ID" NUMBER, 
	"NOMBREJUGADOR" VARCHAR2(20 BYTE), 
	"SALARIO" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SEGUIDORES_PELIGROSOS
--------------------------------------------------------

  CREATE TABLE "HR"."SEGUIDORES_PELIGROSOS" 
   (	"SEGUIDORES_ID" NUMBER, 
	"DNI" VARCHAR2(20 BYTE), 
	"FECHA_NACIMIENTO" VARCHAR2(20 BYTE), 
	"NOMBRE" VARCHAR2(40 BYTE), 
	"AFICION_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CANTICOS
--------------------------------------------------------

  CREATE TABLE "HR"."CANTICOS" 
   (	"CANTICOS_ID" NUMBER, 
	"AFICION_ID" NUMBER(30,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.AFICION
SET DEFINE OFF;
Insert into HR.AFICION (EQUIPO_ID,AFICION_ID,NOMBRE_GUERRA) values ('1','1','MADRIDISTAS');
REM INSERTING into HR.EQUIPO
SET DEFINE OFF;
Insert into HR.EQUIPO (EQUIPO_ID,NOMBRE,FECHA_FUNDACION,ESTADIO_ID) values ('1','REALMADRID',to_date('07/06/02','DD/MM/RR'),null);
REM INSERTING into HR.ESTADIO
SET DEFINE OFF;
Insert into HR.ESTADIO (ESTADIO_ID,"LOCALIZACIÓN",AFORO,EQUIPO) values ('1','MADRID','85454',null);
REM INSERTING into HR.JUGADORES
SET DEFINE OFF;
Insert into HR.JUGADORES (JUGADORES_ID,EDAD,ALTURA,DORSAL,EQUIPO_ID,NOMBREJUGADOR,SALARIO) values ('1','25','172','17','1','LUCAS','3000');
Insert into HR.JUGADORES (JUGADORES_ID,EDAD,ALTURA,DORSAL,EQUIPO_ID,NOMBREJUGADOR,SALARIO) values ('2','28','170','12','1','MARCELO','1500');
Insert into HR.JUGADORES (JUGADORES_ID,EDAD,ALTURA,DORSAL,EQUIPO_ID,NOMBREJUGADOR,SALARIO) values ('3','20','180','20','1','ASENSIO','2500');
Insert into HR.JUGADORES (JUGADORES_ID,EDAD,ALTURA,DORSAL,EQUIPO_ID,NOMBREJUGADOR,SALARIO) values ('4','23','185','9','1','MORATA','2600');
REM INSERTING into HR.SEGUIDORES_PELIGROSOS
SET DEFINE OFF;
REM INSERTING into HR.CANTICOS
SET DEFINE OFF;
Insert into HR.CANTICOS (CANTICOS_ID,AFICION_ID) values ('1','1');
Insert into HR.CANTICOS (CANTICOS_ID,AFICION_ID) values ('2','1');
--------------------------------------------------------
--  DDL for Index AFICION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."AFICION_PK" ON "HR"."AFICION" ("AFICION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EQUIPO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."EQUIPO_PK" ON "HR"."EQUIPO" ("EQUIPO_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ESTADIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."ESTADIO_PK" ON "HR"."ESTADIO" ("ESTADIO_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JUGADORES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."JUGADORES_PK" ON "HR"."JUGADORES" ("JUGADORES_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SEGUIDORES_PELIGROSOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SEGUIDORES_PELIGROSOS_PK" ON "HR"."SEGUIDORES_PELIGROSOS" ("SEGUIDORES_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CANTICOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."CANTICOS_PK" ON "HR"."CANTICOS" ("CANTICOS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table AFICION
--------------------------------------------------------

  ALTER TABLE "HR"."AFICION" ADD CONSTRAINT "AFICION_PK" PRIMARY KEY ("AFICION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."AFICION" MODIFY ("NOMBRE_GUERRA" NOT NULL ENABLE);
  ALTER TABLE "HR"."AFICION" MODIFY ("AFICION_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EQUIPO
--------------------------------------------------------

  ALTER TABLE "HR"."EQUIPO" ADD CONSTRAINT "EQUIPO_PK" PRIMARY KEY ("EQUIPO_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ESTADIO
--------------------------------------------------------

  ALTER TABLE "HR"."ESTADIO" ADD CONSTRAINT "ESTADIO_PK" PRIMARY KEY ("ESTADIO_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."ESTADIO" MODIFY ("ESTADIO_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table JUGADORES
--------------------------------------------------------

  ALTER TABLE "HR"."JUGADORES" ADD CONSTRAINT "JUGADORES_PK" PRIMARY KEY ("JUGADORES_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."JUGADORES" MODIFY ("JUGADORES_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."JUGADORES" MODIFY ("EQUIPO_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SEGUIDORES_PELIGROSOS
--------------------------------------------------------

  ALTER TABLE "HR"."SEGUIDORES_PELIGROSOS" ADD CONSTRAINT "SEGUIDORES_PELIGROSOS_PK" PRIMARY KEY ("SEGUIDORES_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."SEGUIDORES_PELIGROSOS" MODIFY ("AFICION_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."SEGUIDORES_PELIGROSOS" MODIFY ("DNI" NOT NULL ENABLE);
  ALTER TABLE "HR"."SEGUIDORES_PELIGROSOS" MODIFY ("SEGUIDORES_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CANTICOS
--------------------------------------------------------

  ALTER TABLE "HR"."CANTICOS" ADD CONSTRAINT "CANTICOS_PK" PRIMARY KEY ("CANTICOS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."CANTICOS" MODIFY ("CANTICOS_ID" NOT NULL ENABLE);
