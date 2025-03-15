
-- 1. Query untuk menampilkan data nilai terbesar, terendah, rata-rata mahasiswa
SELECT s.nim, s.nama, MAX(st.nilai_angka) AS nilai_tertinggi, MIN(st.nilai_angka) AS nilai_terendah,
AVG(st.nilai_angka) AS nilai_rata,
COUNT(st.kode_mk) AS jumlah_mk, (SELECT c.nama_mk FROM students_transkrip st2 LEFT JOIN course c ON c.kode_mk = st2.kode_mk  WHERE st2.nim = st.nim ORDER BY st2.nilai_angka DESC LIMIT 1) AS mata_kuliah_tertinggi
FROM students s
RIGHT JOIN students_transkrip st ON s.nim = st.nim
GROUP BY s.nim, mata_kuliah_tertinggi
ORDER BY s.nim;

-- 2. Query untuk menampilkan jumlah mahasiswa yang masuk pada mata kuliah tertentu
SELECT DISTINCT c.*,
COUNT(st.kode_mk) AS jumlah_mhs_nilai_a_b,
AVG(st2.nilai_angka) AS rata_nilai_20_21
FROM course c
LEFT JOIN students_transkrip st ON c.kode_mk = st.kode_mk
LEFT JOIN students s ON st.nim = s.nim
LEFT JOIN (
  SELECT st2.kode_mk, st2.nilai_angka
  FROM students_transkrip st2
  LEFT JOIN students s2 ON st2.nim = s2.nim
  WHERE s2.umur BETWEEN 20 AND 21
) st2 ON c.kode_mk = st2.kode_mk
WHERE c.kode_mk NOT IN ('MKB')
GROUP BY c.kode_mk, st.nim, st2.kode_mk
