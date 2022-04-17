DECLARE
    track INTEGER;
    track_n Track.track_name%TYPE;
    track_genre Track.genre%TYPE;
    album Album.album_name%TYPE;
    artist Artist.artist_name%TYPE;
    
BEGIN
    track:=:track;
    SELECT track_name, genre, album_name, artist_name
    INTO track_n, track_genre, album, artist
    FROM Track
    WHERE track_id = track;

    DBMS_OUTPUT.put_line ('Name of the Song: ' || track_n);
    DBMS_OUTPUT.put_line ('Genre: ' || track_genre);
    DBMS_OUTPUT.put_line ('Album Name: ' || album);
    DBMS_OUTPUT.put_line ('Artist Name: ' || artist);
    
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.put_line ('Error: ' || sqlerrm);   
    END;
/
