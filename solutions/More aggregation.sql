--More aggregation

--Question
--You'd like to get the first and last name of the last member(s) who signed up - not just the date. How can you do that?

select firstname,surname,joindate from cd.members where joindate < current_date
order by joindate desc
limit 1
