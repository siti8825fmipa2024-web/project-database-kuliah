SELECT MONTH(Tanggal_catat) AS Bulan,
SUM(Nominal_tagihan) AS total_pengeluaran
FROM pengeluaran_operasional
GROUP BY MONTH(Tanggal_catat);
