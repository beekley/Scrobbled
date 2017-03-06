update songs
set 
	Year = substr(timestamp,8,4), 
	Month_str = substr(timestamp,4,3),
	Day = substr(timestamp,1,2),
	Time = substr(timestamp,13),
	Month = 
		case
			when Month_str = 'Jan' then 01
			when Month_str = 'Feb' then 02
			when Month_str = 'Mar' then 03
			when Month_str = 'Apr' then 04
			when Month_str = 'May' then 05
			when Month_str = 'Jun' then 06
			when Month_str = 'Jul' then 07
			when Month_str = 'Aug' then 08
			when Month_str = 'Sep' then 09
			when Month_str = 'Oct' then 10
			when Month_str = 'Nov' then 11
			when Month_str = 'Dec' then 12
		end,
	Timestamp2 = Year||'-'||Month||'-'||day||' '||Time