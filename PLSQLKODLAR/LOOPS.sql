--ITERAT�VE CONTROLS

--BASIC,FOR,WH�LE,CURSORS LOOPS

--BASIC LOOPS --CREATE TABLE KURSLAR(KURS_ID NUMBER(3),KURS_ADI VARCHAR2(50),EGITMEN VARCHAR2(50),BASLANGIC_TARIHI DATE,BITIS_TARIHI DATE);

--SELECT * FROM KURSLAR;

--DELETE FROM KURSLAR; COMMIT;
/* 
DECLARE
    REC_KURS KURSLAR%ROWTYPE;
BEGIN
    REC_KURS.EGITMEN :='UMUT �AH�NKAYA';
    REC_KURS.BASLANGIC_TARIHI := TRUNC(SYSDATE); --TRUNC YAZINCA SAAT KISMINI KES�P ATIYORUZ SADECE TARIHI ALIYORUZ.
    REC_KURS.BITIS_TARIHI := REC_KURS.BASLANGIC_TARIHI + 20;
    LOOP
        REC_KURS.KURS_ID := NVL(REC_KURS.KURS_ID,0) + 1;
        IF REC_KURS.KURS_ID = 2 THEN CONTINUE; END IF;
        EXIT WHEN REC_KURS.KURS_ID = 4; -- VEYA IF REC_KURS.KURS_ID=4 THEN EXIT; END IF;
        
        CASE REC_KURS.KURS_ID
            WHEN 1 THEN REC_KURS.KURS_ADI := 'ORACLE SQL';
            WHEN 2 THEN REC_KURS.KURS_ADI := 'PL/SQL';
            WHEN 3 THEN REC_KURS.KURS_ADI := 'ORACLE DBA';
        END CASE;
        --SELECT DECODE(REC_KURS.KURS_ID,1,'ORACLE SQL', 2,'PL/SQL',3,'ORACLE DBA')
          --    INTO REC_KURS.KURS_ADI FROM DUAL;
        
        INSERT INTO KURSLAR (KURS_ID,KURS_ADI,EGITMEN,BASLANGIC_TARIHI,BITIS_TARIHI)
        VALUES(REC_KURS.KURS_ID,REC_KURS.KURS_ADI,REC_KURS.EGITMEN,REC_KURS.BASLANGIC_TARIHI,REC_KURS.BITIS_TARIHI);
        
        REC_KURS.BASLANGIC_TARIHI := REC_KURS.BITIS_TARIHI +1;
        REC_KURS.BITIS_TARIHI := REC_KURS.BASLANGIC_TARIHI +4;
    END LOOP;
    COMMIT;
END; 
*/

--FOR LOOP 

/*BEGIN
    FOR SAYAC IN REVERSE 1..5 LOOP
        CONTINUE WHEN SAYAC = 3;
        DBMS_OUTPUT.PUT_LINE('SAYAC : '||SAYAC);
    END LOOP;
END;*/

/*
DECLARE
    FAKTORIYEL NUMBER :=1;
BEGIN
    FOR SAYAC IN 1..6 LOOP
        FAKTORIYEL := FAKTORIYEL * SAYAC;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('6!= '||FAKTORIYEL);
END;
*/

--NESTED LOOP (FOR LOOP)
-- B�L�MLER
--   �ALI�ANLAR

/*
BEGIN
    FOR D IN (SELECT DEPARTMENT_ID,DEPARTMENT_NAME FROM DEPARTMENTS ORDER BY DEPARTMENT_ID) LOOP
    DBMS_OUTPUT.PUT_LINE('');
        DBMS_OUTPUT.PUT_LINE('B�L�M NO:' || D.DEPARTMENT_ID ||'   '|| 'B�L�M�N ADI :' || D.DEPARTMENT_NAME );
        FOR E IN (SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME FROM EMPLOYEES WHERE DEPARTMENT_ID=D.DEPARTMENT_ID) LOOP
          DBMS_OUTPUT.PUT_LINE('              �ALI�AN ID: '||E.EMPLOYEE_ID||'  '||'�ALII�AN ADI: '
          || E.FIRST_NAME ||'  '||'�ALI�AN SOYADI: '||E.LAST_NAME);
          
        END LOOP;
    END LOOP;
END;
*/

--WH�LE LOOP 

-- BEL�RL� B�R TAR�H�N VE SONRAK� G�NLER�N �SM�N� EKRANA YAZALIM.
--�RNE��N; 26 A�USTOS/1071 HANG� G�N �D�?


DECLARE
    TARIH1 DATE:=TO_DATE('05/04/1994','DD/MM/YYYY');
    TARIH2 DATE;
BEGIN
    TARIH2 := LAST_DAY(TARIH1); -- BULUNDU�U AYIN SON G�N�N TARIHININ ATAMASI
    
    WHILE TARIH1 <= TARIH2 LOOP
        DBMS_OUTPUT.PUT_LINE(TO_CHAR(TARIH1,'DAY')||' '||TO_CHAR(TARIH1,'DD/MM/YYYY'));
        
        TARIH1 := TARIH1+1;
    END LOOP;
END;


























