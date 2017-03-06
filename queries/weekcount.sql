select 
	--julianday(timestamp2),
	--timestamp2,
	--month,
	--julianday('now'),
	date,
	WeekNumber,
	count(WeekNumber) as count
from (
	select 
	cast((julianday('now') - julianday(timestamp2))/7 as int) as WeekNumber,
	substr(timestamp2,1,10) as date
	from songs
	--order by count(artist) desc
) 
group by WeekNumber
order by count desc