
create procedure getTop1
	@top as int
as
	select top(@top) * from digital order by timePost desc

execute getTop1 1

---------

create procedure getNewById
	@id as int
as
	select * from digital where id = @id;

execute getNewById 24
----------
create procedure get5Newst 
	@top as int
as 
	select top(@top) * from digital where timePost not in(select max(timepost) from digital) order by timePost desc

execute get5Newst 5
---------
create procedure search_by_text
	@text_to_search text,
	@page int,
	@page_size int
as
begin
	select * from 
	(
		select ROW_NUMBER() over (order by ID ASC) as rowNewID, * from digital 
		where title like @text_to_search
	) as TempTable 
	where rowNewID between (@page_size*(@page-1)+1) and @page_size*@page
end


execute search_by_text @text_to_search='%me%', @page=1, @page_size=3
-----


create procedure count_txt
	@count_txt text
as
	select count(*) from digital where title like @count_txt

execute count_txt @count_txt='%trang%'
