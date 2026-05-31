SELECT 
  th_pendapatan.Tahun,
  th_pendapatan.total_pendapatan,
  th_pengeluaran.total_pengeluaran
FROM 
  (SELECT YEAR(Tanggal_bayar) AS Tahun, SUM(total_pembayaran) AS total_pendapatan
  FROM transaksi GROUP BY YEAR(Tanggal_bayar)) AS th_pendapatan
LEFT JOIN
  (SELECT YEAR(Tanggal_catat) AS Tahun, SUM(Nominal_tagihan) AS total_pengeluaran
  FROM pengeluaran_operasional GROUP BY YEAR(Tanggal_catat)) AS th_pengeluaran
ON th_pendapatan.Tahun = th_pengeluaran.Tahun;
