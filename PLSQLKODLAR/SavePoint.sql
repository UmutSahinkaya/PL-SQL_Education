--desc regions;

--create table regions2 as select * from regions where 1=2;

--select * from REGIONS2;

--SAVEPOINT

DECLARE
BEGIN
    INSERT INTO REGIONS2(region_id,region_name) VALUES (1,'Avrupa');
    SAVEPOINT A;
    INSERT INTO REGIONS2(region_id,region_name) VALUES (2,'Asya');
    SAVEPOINT B;
    UPDATE regions2 SET region_name='Asia' WHERE region_id=2;
    SAVEPOINT C;
    DELETE FROM regions2 WHERE region_id=2;
    
    --ROLLBACK TO A;
    --ROLLBACK TO B;
    --ROLLBACK TO C;
    ROLEBACK;
    COMMIT;
END;