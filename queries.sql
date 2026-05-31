SELECT p.nama_penyewa,
       k.id_kamar,
       a.nama_aset,
       a.kondisi_aset
FROM penyewa p
JOIN kamar k ON p.id_kamar = k.id_kamar
JOIN aset_inventaris a ON k.id_kamar = a.id_kamar
WHERE p.NIK = '340**02';
