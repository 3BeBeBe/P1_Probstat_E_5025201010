# P1_Probstat_E_5025201010
Praktikum Modul 1 Probabilitas dan Statistika

## Soal 1
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.
- Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik) 
  ```R 
  #1a
  dgeom(x, p)
  ```
  Hasil dari program diatas
  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/1a.png)
- mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )

  ```R
  mean(rgeom(n, p) == x)
  ```
  Hasil dari program diatas
  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/1b.png)
- Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
  
  > Hasil dari kalkulasi pada poin a dan b tidak terlalu jauh berbeda. Hanya saja untuk nilai yang dihasilkan poin a memiliki nilai yang tetap sementara poin b random.

  Sebagai bukti berikut perbandingan hasil poin a dan b saat dilakukan 3 kali run:
  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/1c1.png)
  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/1c2.png)
  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/1c3.png)
- Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
- Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
  ```R
  mean = n * p
  mean

  varian = n * p * (1 - p)
  varian
  ```
  
