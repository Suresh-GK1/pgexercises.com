--Matching against multiple possible values

--Question
--How can you retrieve the details of facilities with ID 1 and 5? Try to do it without using the OR operator.

select * from cd.facilities where facid in (1,5)
