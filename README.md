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
  Hasil dari program diatas

  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/1e.png)

## Soal 2
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

- Peluang terdapat 4 pasien yang sembuh.
  ```R
  dbinom(sT, n, p)
  ```
  Hasil dari program diatas

  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/2a.png)
  
- Gambarkan grafik histogram berdasarkan kasus tersebut.

- Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.
  ```R
  mean = n * p
  mean

  varian = n * p * sF
  varian
  ```
  Hasil dari program diatas

  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/2c.png)

## Soal 3
Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

- Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
  ```R
  dpois(x, mean)
  ```
  Hasil dari program diatas

  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/3a.png)

- simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)
- dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
- Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.
  ```R
  varian = mean
  mean
  varian
  ```
  Hasil dari program diatas
 
  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/3d.png)

## Soal 4
Diketahui nilai x = 2 dan v = 10. Tentukan:
- Fungsi Probabilitas dari Distribusi Chi-Square.
  ```R
  dchisq(x, v)
  ```
  Hasil dari program diatas

  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/4a.png)

- Histogram dari Distribusi Chi-Square dengan 100 data random.
  ```R
  hist(rchisq(rD, v))
  ```
  Hasil dari program diatas
  
  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/4b.png)

- Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.
  ```R
  mean = v
  mean

  varian = x * v
  varian
  ```
  Hasil dari program diatas

  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/4c.png)
  
