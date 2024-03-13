SELECT tg.name AS genre, SUM(ts.rating) AS rating_sum
FROM tv_genres AS tg
JOIN tv_show_genres AS tsg ON tg.id = tsg.genre_id
JOIN tv_shows AS ts ON tsg.show_id = ts.id
GROUP BY tg.name
ORDER BY rating_sum DESC;
