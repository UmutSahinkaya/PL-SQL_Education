DECLARE
    wadi    CHAR(15);
    wsoyadi VARCHAR2(15);
BEGIN
    wadi :='Umut';
    wsoyadi :='�ahinkaya';
    
    DBMS_OUTPUT.put_l�ne('*'||wadi||'*');
    DBMS_OUTPUT.put_l�ne('*'||wsoyadi||'*');
END;