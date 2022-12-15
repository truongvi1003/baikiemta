create table Monhoc(
	MaMon varchar(10) primary key,
	TenMon nvarchar (40),
	SoTC int
)
go
create table Diem(
	MaSV varchar(10) primary key,
	MaMon varchar(10) constraint fk_MaMon references MonHoc(MaMon),
	DiemThi float
)
create table SinhVien (
	MaSV varchar(10)primary key constraint fk_MaSV references Diem(MaSV) ,
	HoTen nvarchar (40),
	NgaySinh smalldatetime,
)