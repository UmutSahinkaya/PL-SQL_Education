--Create user umut identified by sahin;TEST_SYS
--GRANT CONNECT,RESOURCE,UNLIMITED TABLESPACE TO UMUT;TEST_SYS
DECLARE
    ddl_komut varchar2(2000);
BEGIN
    --ddl_komut := 'create table TEMP_TABLE(urun_id number(10),urun_adi varchar2(30))';
    --ddl_komut:='alter table temp_table add urun_fiyati number(15,2)';
    --ddl_komut:='GRANT SELECT ON TEMP_TABLE TO UMUT'; --yetki verme
    --DDL_KOMUT:='REVOKE SELECT ON TEMP_TABLE FROM UMUT';
    DDL_KOMUT:='DROP TABLE TEMP_TABLE';
    execute immediate ddl_komut;
    --dbms_output.put_line('Tablo Olu�turuldu.');
    --dbms_output.put_line('Tablo Alter edildi.');
    --dbms_output.put_line('GRANT �LE UMUT KULLANICISINA YETKI VER�LD�.');
    --dbms_output.put_line('REVOKE �LE UMUT KULLANICISINDAN YETKI GER� ALINDI.');
    dbms_output.put_line('DROP KOMUTU �LE TABLO S�L�ND�.');
END;


--DESC TEMP_TABLE