create procedure getPosts 
	@PageNumber as int,
	@PageSize as int
as
	--declare @PageSize as bigint; 
	--declare @PageNumber as bigint; 
	--set @PageSize=3; 
	--set @PageNumber=1;   
	With SQLPaging As   ( 
		Select Top(@PageSize * @PageNumber) ROW_NUMBER() OVER (ORDER BY public_date asc) 
		as resultNum, * 
		FROM Post )
	select * from SQLPaging with (nolock) where resultNum > ((@PageNumber - 1) * @PageSize)

--=>> 
	execute getPosts 1 ,3

--------------------------------------------------------------------------
create procedure getCount
	as
select count(*) as count from Post
--=>> 
execute getCount
------------------------------------------------------------------------------
create procedure getTop
	@top as int
as
	select top(@top) * from Post order by public_date desc;
--=>> 
execute getTop 3
-------------------------------------------------------
create procedure getPostById
	@id as int
as
	select * from Post where id = @id;
--=>> 
execute getPostById 13
--------------------------------------------------------------------

create procedure addInfo
	@name as nvarchar(20),
	@email as nvarchar(20),
	@message as nvarchar(max)
as 
begin
	insert into Info
	(name,email,message) values(@name,@email,@message)
end

---=>
execute addInfo @name='duong1', @email='abcd@yahoo.com',@message='abcxyz1'