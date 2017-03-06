select weekNumber, date, freqArtist, max(c) count
from
(
	select weekNumber, substr(timestamp2,1,10) as date, Artist as freqArtist, count(*) as c
	from songs2
	group by weekNumber, Artist) a
group by weekNumber
order by weekNumber, count desc