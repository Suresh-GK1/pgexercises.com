/*Produce a list of all members, along with their recommender
Question
How can you output a list of all members, including the individual who recommended them (if any)? Ensure that results are ordered by (surname, firstname) */

select a.firstname as memfname, a.surname as memsname,b.firstname as recfname, b.surname as recsname 
from cd.members a
left join cd.members b on b.memid = a.recommendedby
order by a.surname, a.firstname
