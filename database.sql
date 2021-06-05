create database Duan1
go
use Duan1
go
create table NhanVien(
MaNV char(4) primary key not null,
Hoten nvarchar(50) not null,
MatKhau int not null,
Email nvarchar(40) not null,
VaiTro nvarchar(50) not null
)
go
create table KhachHang(
MaKH char(6) primary key not null,
MaNV char(4) not null,
Hoten nvarchar(50) not null,
NgaySinh date not null,
GioiTinh nchar(3) check(GioiTinh = 'Nam' or GioiTinh = N'Nữ'),
DienThoai nvarchar(11) not null,
Email nvarchar(40) not null,
GhiChu nvarchar(100) not null,
Foreign key (MaNV) references NhanVien(MaNV),
NgayDK date not null
)
go
create table LoaiSP(
MaLoai char(4) primary key not null,
TenLoai Nvarchar(100) not null,
NhaSX nvarchar(30) not null
)
go
create table SanPham(
MaSP char(4) primary key not null,
TenSP nvarchar(150) not null,
Gia money not null,
NhaSX nvarchar(30) not null
)