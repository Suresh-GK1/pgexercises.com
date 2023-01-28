/*Produce a list of costly bookings

Question
How can you produce a list of bookings on the day of 2012-09-14 which will cost the member (or guest) more than $30? Remember that guests have different costs to members (the listed costs are per half-hour 'slot'), and the guest user is always ID 0. Include in your output the name of the facility, 
the name of the member formatted as a single column, and the cost. Order by descending cost, and do not use any subqueries.*/

select mem.firstname || ' ' || mem.surname as member, fac.name as facility, fac.membercost as cost,fac.guestcost as cost
from cd.members mem
join cd.bookings bks on mem.memid = bks.memid
join cd.facilities fac on bks.memid = fac.facid
where bks.starttime = '2012-09-14' and fac.guestcost > 30 or fac.membercost > 30
order by fac.cost desc;
