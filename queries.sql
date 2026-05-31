SELECT
(SELECT SUM(total_pembayaran) FROM transaksi)
-
(SELECT SUM(nominal_tagihan) FROM pengeluaran_operasional)
AS estimasi_keuntungan;
