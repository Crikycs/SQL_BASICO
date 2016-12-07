--------------------------------------------------------
-- Archivo creado  - miércoles-diciembre-07-2016   
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
