connect sys/system as sysdba

DROP USER MC_PROY_ADMIN;
DROP USER MN_PROY_INVITADO;
DROP ROLE rol_admin;
DROP ROLE rol_invitado;

CREATE ROLE rol_admin;
GRANT CONNECT, RESOURCE, DBA TO rol_admin;
--GRANT UNLIMITED TABLESPACE TO rol_admin;
GRANT CREATE SESSION TO rol_admin;

CREATE ROLE rol_invitado;
GRANT CREATE SESSION TO rol_invitado;

CREATE USER MC_PROY_ADMIN IDENTIFIED BY 123;
GRANT rol_admin TO MC_PROY_ADMIN; 

CREATE USER MN_PROY_INVITADO IDENTIFIED BY 123;
GRANT rol_invitado TO MN_PROY_INVITADO;