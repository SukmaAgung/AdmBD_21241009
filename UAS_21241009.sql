use dqlabpraktik2;
-- SOAL NOMER 1
SELECT kode_pelanggan,nama_produk,qty,harga, qty*harga AS total_harga
FROM tr_penjualan_dqlab
HAVING total_harga > 200000;

-- SOAL NOMER 2
SELECT kode_pelanggan,nama_produk,qty,harga, qty*harga AS total
FROM tr_penjualan_dqlab
WHERE qty > 3 ORDER BY total DESC;

-- SOAL NOMER 3
SELECT nama_produk,tgl_transaksi, MONTH(tgl_transaksi) AS bulan,
YEAR(tgl_transaksi) AS tahun, datediff('2023-06-30', tgl_transaksi) AS selisih_hari
FROM tr_penjualan_dqlab WHERE tgl_transaksi<='2023-06-30';



