# P1_Probstat_E_5025201010
Praktikum Modul 1 Probabilitas dan Statistika

## Soal 1
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.\
Pendeklarasian variable yang akan digunakan
```R
x = 3
p = 0.2
n = 10000
```
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
  ```R
  mean(rgeom(n, p) == x)
  ```
  Hasil dari program diatas

  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/1d.png)
  
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
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :\
Pendeklarasian variable yang akan digunakan
```R
n = 20
P = 0.2
sF = 1 - p
sT = 4
```
- Peluang terdapat 4 pasien yang sembuh.
  ```R
  dbinom(sT, n, p)
  ```
  Hasil dari program diatas

  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/2a.png)
  
- Gambarkan grafik histogram berdasarkan kasus tersebut.
  ```R
  peluang = dbinom(1:20, n, p)
  data = data.frame(y = c(peluang), x = c(1:20))
  barplot(data$y, names.arg = data$x, ylab = "Peluang Kemungkinan", xlab = "Jumlah Pasien")
  ```
  Hasil dari program diatas

  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/2b.png)

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
Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)\
Pendeklarasian variable yang akan digunakan
```R
mean = 4.5
x = 6
n = 365
```

- Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
  ```R
  dpois(x, mean)
  ```
  Hasil dari program diatas

  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/3a.png)

- simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)
  ```R  
  peluang = dpois(p, mean)
  data = data.frame(y = c(peluang), x = c(1:365))
  barplot(data$y, names.arg=data$x, ylab="peluang", xlab="hari ke-", ylim=0:1)
  ```
  Hasil dari program diatas

  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/3b.png)
  
- dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
  > Dari data dan perhitungan diatas dapat dikatakan bahwa distribusi poisson pada kelahiran bayi dari hari pertama hingga terakhir adalah sama
  
- Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.
  ```R
  varian = mean
  mean
  varian
  ```
  Hasil dari program diatas
 
  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/3d.png)

## Soal 4
Diketahui nilai x = 2 dan v = 10. Tentukan:\
Pendeklarasian variable yang akan digunakan
```R
x = 2
v = 10
rD = 100
```
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
  
## Soal 5
Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan\
Pendeklarasian variable yang akan digunakan
```R
lmbd = 3
```
- Fungsi Probabilitas dari Distribusi Exponensial
  ```R
  dexp(lmbd)
  ```
  Hasil dari program diatas

  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/5a.png)

- Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
  ```R
  par(mfrow = c(2,2))
  set.seed(1)
  hist(rexp(10))
  set.seed(1)
  hist(rexp(100))
  set.seed(1)
  hist(rexp(1000))
  set.seed(1)
  hist(rexp(10000))
  ```
  Hasil dari program diatas

  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/5b.png)

- Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3σ²
  Petunjuk:
  * Gunakan set.seed(1)
  * Gunakan fungsi bawaan R
  ```R
  mean = lmbd
  mean

  varian = `^`(lmbd, 2)
  varian
  ```
  Hasil dari program diatas

  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/5c.png)

## Soal 6
Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan\
Pendeklarasian variable yang akan digunakan
```R
x1 = 0
x2 = 0
n = 100
mean = 50
sd = 8
breaks = 50
```
- Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).\
  Keterangan :\
  X1 = Dibawah rata-rata\
  X2 = Diatas rata-rata\
  Contoh data :\
  1,2,4,2,6,3,10,11,5,3,6,8\
  rata-rata = 5.083333\
  X1 = 5\
  X2 = 6
  ```R
  ```
  Hasil dari program diatas

  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/6a.png)
  
- Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: `NRP_Nama_Probstat_{Nama Kelas}_DNhistogram`\
Contoh :\
312312312_Rola_Probstat_A_DNhistogram
  ```R
  hist(rnorm(n, mean, sd), breaks, main="5025201010_I Putu Bagus Adhi Pradana_E_DNhistogram")
  ```
  Hasil dari program diatas

  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/6b.png)
  
- Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.
  ```R
  varian = `^`(sd, 2)
  varian
  ```
  Hasil dari program diatas

  ![alt text](https://github.com/3BeBeBe/P1_Probstat_E_5025201010/blob/main/Asset%20Probstat%20Praktikum%201/6c.png)
