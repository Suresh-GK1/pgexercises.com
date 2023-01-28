--Produce a list of all members who have recommended another member

--Question
--How can you output a list of all members who have recommended another member? 
--Ensure that there are no duplicates in the list, and that results are ordered by (surname, firstname).

select distinct a.firstname,a.surname 
from cd.members a,cd.members b
where a.memid = b.recommendedby
order by surname,firstname
