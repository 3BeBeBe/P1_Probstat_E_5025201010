x = 3
p = 0.2
n = 10000

#1a
dgeom(x, p)

#1b
mean(rgeom(n, p) == x)

#1c
#Hasil dari kalkulasi pada poin a dan b tidak terlalu jauh berbeda. Hanya saja untuk nilai yang dihasilkan poin a memiliki nilai yang tetap sementara poin b random

#1d
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = 0.2)) %>%
  mutate(failures = ifelse(x == 3,3, "other")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Peluang X = 3 gagal Sebelum Sukses Pertama",
       subtitle = "geometric",
       x = "Peluang gagal sebelum sukses pertama",
       y = "probabilitas")

#1e
mean = n * p
mean

varian = n * p * (1 - p)
varian
