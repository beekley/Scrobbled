create view songs2 as
select
	case
		when  substr(timestamp,4,3) = 'Jan' then substr(timestamp,8,4)||'-'||'01'||'-'||substr(timestamp,1,2)||' '||substr(timestamp,13)
		when  substr(timestamp,4,3) = 'Feb' then substr(timestamp,8,4)||'-'||'02'||'-'||substr(timestamp,1,2)||' '||substr(timestamp,13)
		when  substr(timestamp,4,3) = 'Mar' then substr(timestamp,8,4)||'-'||'03'||'-'||substr(timestamp,1,2)||' '||substr(timestamp,13)
		when  substr(timestamp,4,3) = 'Apr' then substr(timestamp,8,4)||'-'||'04'||'-'||substr(timestamp,1,2)||' '||substr(timestamp,13)
		when  substr(timestamp,4,3) = 'May' then substr(timestamp,8,4)||'-'||'05'||'-'||substr(timestamp,1,2)||' '||substr(timestamp,13)
		when  substr(timestamp,4,3) = 'Jun' then substr(timestamp,8,4)||'-'||'06'||'-'||substr(timestamp,1,2)||' '||substr(timestamp,13)
		when  substr(timestamp,4,3) = 'Jul' then substr(timestamp,8,4)||'-'||'07'||'-'||substr(timestamp,1,2)||' '||substr(timestamp,13)
		when  substr(timestamp,4,3) = 'Aug' then substr(timestamp,8,4)||'-'||'08'||'-'||substr(timestamp,1,2)||' '||substr(timestamp,13)
		when  substr(timestamp,4,3) = 'Sep' then substr(timestamp,8,4)||'-'||'09'||'-'||substr(timestamp,1,2)||' '||substr(timestamp,13)
		when  substr(timestamp,4,3) = 'Oct' then substr(timestamp,8,4)||'-'||'10'||'-'||substr(timestamp,1,2)||' '||substr(timestamp,13)
		when  substr(timestamp,4,3) = 'Nov' then substr(timestamp,8,4)||'-'||'11'||'-'||substr(timestamp,1,2)||' '||substr(timestamp,13)
		when  substr(timestamp,4,3) = 'Dec' then substr(timestamp,8,4)||'-'||'12'||'-'||substr(timestamp,1,2)||' '||substr(timestamp,13)
	end as timestamp2,
	cast((julianday('now') - julianday(timestamp2))/7 as int) as weekNumber,
	--substr(timestamp2,1,10) as weekDate,
	artist,
	album,
	track
from songs
	
	