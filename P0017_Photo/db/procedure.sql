create procedure getPhotoByGallaryId
	@gallary_id as int
as 
	select * from photo where gallary_id = @gallary_id

execute getPhotoByGallaryId 4
-----------

create procedure getAllGallary
as
	Select * from gallary	

execute getAllGallary
-----------

create procedure getOneGallaryByID
	@id as int
as
	Select * from gallary where id = @id

execute getOneGallaryByID 5
------------

create procedure getContact
	@top as int
as
	select top(@top) * FROM contact

execute getContact 1