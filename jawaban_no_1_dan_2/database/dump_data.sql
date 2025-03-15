INSERT INTO students (nim, nama, alamat, jenis_kelamin, umur, telepon) VALUES
('10001', 'John', 'Medokan', 'L', 20, '0987654321'),
('10002', 'Agnes', 'Tandes', 'P', 21, '0987654322'),
('10003', 'Monica', 'Rungkut', 'P', 20, '0987654323'),
('10004', 'Sherlock', 'Lontar', 'L', 22, '0987654324'),
('10005', 'Holmes', 'Ngagel', 'L', 23, '0987654325'),
('10006', 'Watson', 'Nginden', 'L', 21, '0987654326'),
('10007', 'Irena', 'Benowo', 'P', 23, '0987654327'),
('10008', 'Adler', 'Jogoloyo', 'P', 22, '0987654328'),
('10009', 'Jared', 'Margomulyo', 'L', 21, '0987654329'),
('10010', 'Jefferson', 'Manukan', 'L', 23, '0987654320');

INSERT INTO course (kode_mk, nama_mk) VALUES
('MKA', 'Matematika'),
('MKB', 'Biologi'),
('MKC', 'Fisika');

INSERT INTO students_transkrip (nim, kode_mk, nilai_angka, nilai_huruf) VALUES
('10001', 'MKA', 89, 'A'),
('10001', 'MKB', 75, 'B'),
('10001', 'MKC', 82, 'A'),
('10002', 'MKB', 75, 'B'),
('10002', 'MKA', 66, 'C');
