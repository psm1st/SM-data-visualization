library("ggplot2")
library("dplyr")
library(stringr)
ggplot(Capstone, aes(x = 취업구분)) +
  geom_bar() +
  labs(title = "캡스톤 디자인 수강자의 취직, 대학원 진학 여부", x = "취직,대학원 진학 여부", y = "학생 수") +
  theme_minimal()
