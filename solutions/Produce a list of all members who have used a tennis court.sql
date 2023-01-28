/*Produce a list of all members who have used a tennis court

Question
How can you produce a list of all members who have used a tennis court? Include in your output the name of the court, and the name of the member formatted as a single column.
Ensure no duplicate data, and order by the member name followed by the facility name.*/

select distinct mem.firstname ||' '|| mem.surname as member,fac.name as facility 
from cd.members mem
join cd.bookings bks on mem.memid = bks.memid
join cd.facilities fac on bks.facid = fac.facid
where fac.name ilike '%Tennis Court%'
order by member,facility
