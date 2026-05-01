select max(market_cap), symbol from cryptodata 
group by symbol order by max desc limit 1; 
-- BTC has the highest market capitalization

select symbol, volume_24h from cryptodata 
order by volume_24h desc limit 1; 
-- USDT has highest 24hr volume

select symbol, percent_change_24h  from cryptodata 
order by percent_change_24h desc limit 1; 
-- BAKE has highest percentage gain

select symbol, price from cryptodata
order by price asc limit 1;
-- coin with the least price

select count (*) from cryptodata;

select price, symbol, last_updated from cryptodata limit 5;
-- coins with their last updated prices

select id, count(*) as duplicates
from cryptodata group by id
having count (*)>1;
-- confirming their are no duplicates


