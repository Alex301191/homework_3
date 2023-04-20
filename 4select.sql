-- вывод названий и года выпуска альбомов, вышедших в 2018 году;
SELECT album_name, year_of_release FROM album_list
	WHERE year_of_release = 2018;
	
-- вывод названия и продолжительности самого длинного трека;
SELECT track_name, track_duration FROM track_list
	WHERE track_duration = (SELECT MAX(track_duration) FROM track_list);
	
-- вывод названий треков, продолжительность которых не менее 3,5 минут;
SELECT track_name FROM track_list
	WHERE track_duration >= 3.5*60;

-- вывод названий сборников, вышедших в период с 2018 по 2020 годы включительно;
SELECT collection_name FROM music_collection
	WHERE year_of_release >= 2018 AND year_of_release <= 2020;
	
-- вывод исполнителей, чье название состоит из одного слова;
SELECT artist_name FROM artists
	WHERE artist_name NOT LIKE '% %';
	
-- вывод названий треков, которые содержат слово «мой» или «my»;
SELECT track_name FROM track_list
	WHERE track_name ILIKE '%my%' OR track_name ILIKE '%мой%';