create view topArtists as select count(freqartist) cnt, freqartist
from freqArtist
group by freqArtist
order by cnt desc