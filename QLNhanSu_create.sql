-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 00:51:24.122




-- tables
-- Table: TNhanVien
CREATE TABLE TNhanVien (
    MaNV tinyint  NOT NULL,
    TenNV nvarchar(50)  NOT NULL,
    NgaySinh date  NOT NULL,
    GioiTinh nvarchar(10)  NOT NULL,
    Email nvarchar(50)  NOT NULL,
    MucLuong money  NOT NULL,
    MaPhong tinyint  NOT NULL,
    CONSTRAINT TNhanVien_pk PRIMARY KEY  (MaNV)
)
;





-- Table: TPhongBan
CREATE TABLE TPhongBan (
    MaPhong tinyint  NOT NULL,
    TenPhong nvarchar(30)  NOT NULL,
    TNhanVien_MaNV tinyint  NOT NULL,
    CONSTRAINT TPhongBan_pk PRIMARY KEY  (MaPhong)
)
;









-- foreign keys
-- Reference:  TPhongBan_TNhanVien (table: TPhongBan)

ALTER TABLE TPhongBan ADD CONSTRAINT TPhongBan_TNhanVien 
    FOREIGN KEY (TNhanVien_MaNV)
    REFERENCES TNhanVien (MaNV)
;





-- End of file.

