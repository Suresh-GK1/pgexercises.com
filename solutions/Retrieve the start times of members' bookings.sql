--Retrieve the start times of members' bookings

--Question
--How can you produce a list of the start times for bookings by members named 'David Farrell'?

select b.starttime from cd.members m
right join cd.bookings b on m.memid = b.memid
where surname ilike '%Farrell%' and firstname ilike '%David%'
