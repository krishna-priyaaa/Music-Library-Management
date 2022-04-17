-- program to check if the artist is an independent artist or a major label artist from the 'artist_id' assigned to each artist

DECLARE
  c CHAR;
  ip VARCHAR;
BEGIN
  ip:=:ip;
   FOR i IN 1..LEN(artist_id) LOOP
   c := SUBSTR(ip,i,2);
   IF c IS 'IN' THEN
        INSERT INTO Artists(artist_type) VALUES ('Independent Artist');
   ELSE IF c IS 'ML' THEN
        INSERT INTO Artists(artist_type) VALUES ('Major Label Artist');
   END IF;
   END LOOP;
   COMMIT;
END;
