x  := 1;
INSERT INTO Album () VALUES (1, );

BEGIN
    SELECT Album.
    INTO
    FROM Album;
EXCEPTION WHEN too_many_rows THEN
    DBMS_OUTPUT.PUT_LINE('Error:'||Sqlerrm);
END;
