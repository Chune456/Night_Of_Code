select count(*) from cryptodata;

--STORED PROCEDURE TO REMOVE DUPLICATES USING MEMORY LOCATIONS(CTID)
begin;
	create or replace procedure remove_duplicates(table_name varchar)
	language plpgsql
	as $$
	begin
	execute format(
		'delete from %I
		where ctid not in (
		select min(ctid) from %I 
		group by id',
		table_name, table_name);
	end;
	$$;

	call remove_duplicates('cryptodata');
	
	select count(*) from cryptodata;

commit;

--CHECKING THE PHYSICAL LOCATION
select ctid from cryptodata;

select * from cryptodata;