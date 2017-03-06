select artist, count(artist) c, timestamp d
from songs
--where Datetime(timestamp) >= Datetime('2016-11-13 00:00:00')
group by artist
order by c desc