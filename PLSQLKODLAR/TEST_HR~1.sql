-- Ýçinde bulunduðumuz günün ismini yazan program(Named-Anonymous Block

CREATE OR REPLACE FUNCTION GET_DAY_NAME(P_TARIH DATE)RETURN VARCHAR2
IS

BEGIN
    RETURN(TO_CHAR(P_TARIH,'DAY'));
END;


