install.packages("ggplot2")
library("ggplot2")
library("dplyr")
install.packages("stringr")
library(stringr)
ggplot(Capstone, aes(x = 전공일치여부)) +
  geom_bar() +
  labs(title = "캡스톤 디자인 수강자의 전공 유지 여부", x = "전공 유지 여부", y = "학생 수") +
  theme_minimal()
