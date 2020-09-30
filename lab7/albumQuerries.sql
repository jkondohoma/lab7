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