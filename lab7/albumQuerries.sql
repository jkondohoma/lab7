#1. List all albums in the database.
select * from Album;
#2. List all albums in the database from newest to oldest.
select * from Album order by year desc;
#3. List all bands in the database that begin with “The”.
select * from Band where name like 'The%';
#4. List all songs in the database in alphabetic order.
select * from Song order by title;
#5. Write a query that gives just the albumId of the album “Nevermind”.


#6. Write a query to determine how many musicians are in the database.
#7. Write a (nested) query to list the oldest album(s) in the database.
#8. Write a query to find the total running time (in seconds) of all tracks on the album Rain Dogs by Tom Waits

#9. Write a query list all albums in the database along with the album’s band, but only include the album title, year and band name.
#10. Write a query that lists all albums and all tracks on the albums for the band Nirvana.
#11. Write a query that list all bands along with all their albums in the database even if they
#do not have any.


#12. Write a query list all bands along with a count of how many albums they have in the database (as you saw in the previous query, some should have zero).
#13. Write a query that lists all albums in the database along with the number of tracks on them.
#14. Write the same query, but limit it to albums which have 12 or more tracks on them.
#15. Write a query to find all musicians that are not in any bands.
#16. Write a query to find all musicians that are in more than one band.

Select * from Album;
​
-- 2
Select * from Album order by year desc;
​
-- 3
Select * from Band where name like 'The%';
​
-- 4
Select * from Song order by title;
​
-- 5
Select albumId from Album where title = 'Nevermind';
​
-- 6
select count(musicianId) from Musician;
​
-- 7
select A.title, A.year FROM Album A where A.year = (Select Min(year) from Album);
​
-- 8
select sum(ALS.trackLength) from AlbumSong ALS join Album A on ALS.albumId = A.albumId 
where A.title = 'Rain Dogs';
​
-- 9
Select A.title as album, A.year, B.name as band FROM Album A join Band B on A.bandId = B.bandId;
​
-- 10
Select s.title, a.title from Song s join AlbumSong als on s.songId = als.songId join Album a
on a.albumId = als.albumId join Band b on b.bandId = a.bandId where b.name = 'Nirvana';
​
-- 11
Select b.name, a.title from Band b left join Album a on b.bandId = a.bandId;
​
-- 12
Select b.name, count(a.title) from Band b left join Album a on b.bandId = a.bandId 
group by b.bandId;
​
-- 13
Select a.title, count(als.songId) as numSongs from Album a join AlbumSong als
on a.albumId = als.albumId
group by a.albumId;
​
-- 14
Select a.title, count(als.songId) as numSongs from Album a join AlbumSong als
on a.albumId = als.albumId
group by a.albumId
having numSongs > 11;
​
-- 15
select M.musicianId, M.firstName, 
M.lastName, M.country from Musician as M 
left join BandMember B on M.musicianId = B.musicianId 
group by B.musicianId
having count(B.musicianId) = 0;
​
-- 16
select M.musicianId, M.firstName, 
M.lastName, M.country from Musician as M 
left join BandMember B on M.musicianId = B.musicianId 
group by B.musicianId
having count(B.musicianId) > 1;
