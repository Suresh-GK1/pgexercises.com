--Work out the start times of bookings for tennis courts

--Question
--How can you produce a list of the start times for bookings for tennis courts, for the date '2012-09-21'? 
--Return a list of start time and facility name pairings, ordered by the time.

select bks.starttime,fac.name from cd.bookings bks
join cd.facilities fac on bks.facid = fac.facid 
where name ilike '%Tennis Court%' and bks.starttime >= '2012-09-21' and bks.starttime <'2012-09-22'
