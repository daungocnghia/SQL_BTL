CREATE TABLE HoSoBenhAn (
    MaHoSo VARCHAR(20) PRIMARY KEY,              
    MaBenhNhan VARCHAR(20) NOT NULL,            
    NgayNhapVien DATE NOT NULL,                 
    NgayXuatVien DATE,                       
    ChanDoan TEXT NOT NULL,                
    PhuongAnDieuTri TEXT NOT NULL,           
    KetQua TEXT,        
    FOREIGN KEY (MaBenhNhan) REFERENCES BenhNhan(MaBenhNhan)  
);
CREATE TABLE DichVuYTe (
    MaDichVu VARCHAR(20) PRIMARY KEY,           
    MaBenhNhan VARCHAR(20) NOT NULL,            
    ChiPhi DECIMAL(10, 2) NOT NULL,              
    TenDichVu VARCHAR(100) NOT NULL,             
    FOREIGN KEY (MaBenhNhan) REFERENCES BenhNhan(MaBenhNhan)  
);
INSERT INTO HoSoBenhAn (MaHoSo, MaBenhNhan, NgayNhapVien, NgayXuatVien, ChanDoan, PhuongAnDieuTri, KetQua) VALUES 
('HS006', 'BN006', '2024-06-10', '2024-06-20', N'Cảm cúm', N'Nghỉ ngơi và uống thuốc kháng sinh', N'Khỏi hoàn toàn'),
('HS007', 'BN007', '2024-05-15', '2024-05-25', N'Sốt xuất huyết', N'Truyền dịch và điều trị hạ sốt', N'Hồi phục tốt'),
('HS008', 'BN008', '2024-04-10', '2024-04-18', N'Viêm họng cấp', N'Uống thuốc kháng sinh và súc miệng', N'Khỏi hoàn toàn'),
('HS009', 'BN009', '2024-03-01', '2024-03-12', N'Suy nhược cơ thể', N'Bổ sung vitamin và dinh dưỡng', N'Cải thiện đáng kể'),
('HS010', 'BN010', '2024-02-20', '2024-03-05', N'Viêm xoang', N'Điều trị thuốc và xông hơi', N'Đang theo dõi'),
('HS011', 'BN011', '2024-01-15', '2024-01-25', N'Đau lưng', N'Tập vật lý trị liệu và uống thuốc', N'Giảm đau rõ rệt'),
('HS012', 'BN012', '2024-07-10', '2024-07-20', N'Sốt rét', N'Dùng thuốc kháng sốt rét', N'Khỏi bệnh'),
('HS013', 'BN013', '2024-08-05', '2024-08-15', N'Viêm gan B', N'Theo dõi và dùng thuốc đặc trị', N'Đang điều trị'),
('HS014', 'BN014', '2024-09-12', '2024-09-22', N'Đau nửa đầu', N'Dùng thuốc giảm đau và nghỉ ngơi', N'Cải thiện'),
('HS015', 'BN015', '2024-10-01', '2024-10-10', N'Trào ngược dạ dày', N'Uống thuốc và điều chỉnh chế độ ăn', N'Cải thiện đáng kể'),
('HS016', 'BN016', '2024-11-05', NULL, N'Bệnh lý cột sống', N'Tập vật lý trị liệu và uống thuốc', N'Đang điều trị'),
('HS017', 'BN017', '2024-08-01', '2024-08-20', N'Gãy xương tay', N'Phẫu thuật chỉnh hình và bó bột', N'Hồi phục tốt'),
('HS018', 'BN018', '2024-07-20', '2024-07-30', N'Viêm ruột thừa', N'Phẫu thuật cắt bỏ ruột thừa', N'Khỏi bệnh'),
('HS019', 'BN019', '2024-05-10', '2024-05-18', N'Viêm kết mạc', N'Dùng thuốc nhỏ mắt và điều trị', N'Khỏi hoàn toàn'),
('HS020', 'BN020', '2024-06-15', '2024-06-25', N'Rối loạn tiêu hóa', N'Uống thuốc và điều chỉnh chế độ ăn', N'Cải thiện rõ rệt');
INSERT INTO DichVuYTe (MaDichVu, MaBenhNhan, ChiPhi, TenDichVu) VALUES 
('DV006', 'BN006', 100000.00, N'Khám tổng quát'),
('DV007', 'BN007', 200000.00, N'Xét nghiệm máu'),
('DV008', 'BN008', 150000.00, N'Khám tai mũi họng'),
('DV009', 'BN009', 300000.00, N'Truyền dịch bồi bổ'),
('DV010', 'BN010', 400000.00, N'Chụp CT xoang'),
('DV011', 'BN011', 250000.00, N'Vật lý trị liệu lưng'),
('DV012', 'BN012', 500000.00, N'Xét nghiệm sốt rét'),
('DV013', 'BN013', 750000.00, N'Xét nghiệm viêm gan B'),
('DV014', 'BN014', 120000.00, N'Khám chuyên khoa thần kinh'),
('DV015', 'BN015', 200000.00, N'Nội soi dạ dày'),
('DV016', 'BN016', 350000.00, N'Tập vật lý trị liệu cột sống'),
('DV017', 'BN017', 1500000.00, N'Phẫu thuật xương tay'),
('DV018', 'BN018', 3000000.00, N'Phẫu thuật ruột thừa'),
('DV019', 'BN019', 80000.00, N'Thuốc nhỏ mắt đặc trị'),
('DV020', 'BN020', 180000.00, N'Xét nghiệm tiêu hóa');
