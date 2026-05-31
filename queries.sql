SELECT jenis_tagihan,
SUM(nominal_tagihan) AS total_pengeluaran
FROM pengeluaran_operasional
GROUP BY Jenis_tagihan
