--Removing duplicates, and ordering results

--Question
--How can you produce an ordered list of the first 10 surnames in the members table? The list must not contain duplicates.

select distinct(surname) from cd.members
order by surname
limit 10
