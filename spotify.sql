SELECT * FROM Spotify;

-- What song had the most streams in 2023?
SELECT TrackName, ArtistName, Streams, ReleasedYear
FROM Spotify
WHERE ReleasedYear = '2023'
ORDER BY Streams DESC;

-- what song had the most streams each year?
SELECT s1.TrackName, s1.Streams, s1.ReleasedYear
FROM Spotify s1
INNER JOIN (
    SELECT ReleasedYear, MAX(Streams) AS MaxStreams
    FROM Spotify
    GROUP BY ReleasedYear
) s2 ON s1.ReleasedYear = s2.ReleasedYear AND s1.Streams = s2.MaxStreams
ORDER BY s1.ReleasedYear DESC;


-- What song has the highest Daneability%?
SELECT TrackName, ArtistName, `Danceability_%`
FROM spotify
ORDER BY `Danceability_%` DESC;

-- What artist has the most danceable songs?
SELECT ArtistName, `Danceability_%`
FROM spotify
GROUP BY `Danceability_%`, ArtistName
ORDER BY `Danceability_%` DESC;

-- What songs have the highest Valence_%?
SELECT TrackName, ArtistName, `Valence_%`
FROM spotify
ORDER BY `Valence_%`;

-- What songs have the highest energy_%?
SELECT TrackName, ArtistName, `Energy_%`
FROM spotify
ORDER BY `Energy_%`;