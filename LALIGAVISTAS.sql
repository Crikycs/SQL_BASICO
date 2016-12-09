--------------------------------------------------------
-- Archivo creado  - viernes-diciembre-09-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View VISTA_FUTBOL
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HR"."VISTA_FUTBOL" ("NOMBRE", "NOMBREJUGADOR", "SALARIO") AS 
  SELECT
  E.NOMBRE,
  J.NOMBREJUGADOR,
  J.SALARIO
  
FROM
  JUGADORES J,
  EQUIPO E 
  
WHERE 
  J.EQUIPO_ID = E.EQUIPO_ID 
  AND J.SALARIO >= 2000;
REM INSERTING into HR.VISTA_FUTBOL
SET DEFINE OFF;
Insert into HR.VISTA_FUTBOL (NOMBRE,NOMBREJUGADOR,SALARIO) values ('REALMADRID','LUCAS','3000');
Insert into HR.VISTA_FUTBOL (NOMBRE,NOMBREJUGADOR,SALARIO) values ('REALMADRID','ASENSIO','2500');
Insert into HR.VISTA_FUTBOL (NOMBRE,NOMBREJUGADOR,SALARIO) values ('REALMADRID','MORATA','2600');
