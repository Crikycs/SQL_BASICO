--------------------------------------------------------
-- Archivo creado  - mi�rcoles-diciembre-07-2016   
--------------------------------------------------------
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
--  DDL for Index SEGUIDORES_PELIGROSOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SEGUIDORES_PELIGROSOS_PK" ON "HR"."SEGUIDORES_PELIGROSOS" ("SEGUIDORES_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
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
