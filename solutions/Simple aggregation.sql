--Simple aggregation

--Question
--You'd like to get the signup date of your last member. How can you retrieve this information?

select max(joindate) from cd.members
