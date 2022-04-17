DECLARE
   CURSOR c1 is
      SELECT art_id, art_name, location, followers FROM Artist
         ORDER BY followers DESC;   -- starts with artist that has highest number of followers
   artist_id NUMBER(4);
   artist_name VARCHAR2(10);
   artist_followers NUMBER(7,2);
   artist_loc VARCHAR2(100);
BEGIN
   OPEN c1;
   FOR i IN 1..10 LOOP
      FETCH c1 INTO artist_id, artist_name, artist_followers, artist_loc;
      EXIT WHEN c1%NOTFOUND; 
      INSERT INTO Top Artists VALUES (artist_id, artist_name, artist_followers, artist_loc);
      COMMIT;
   END LOOP;
   CLOSE c1;
END;
