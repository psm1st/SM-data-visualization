# 필요한 패키지 설치 및 로드
install.packages("ggplot2")
library(ggplot2)

# 데이터 불러오기
data <- read.csv("전공별 트랙(2023년기준).csv", header=TRUE, stringsAsFactors=FALSE)

# 전체 전공과 캡스톤 전공 합산
total_major <- sum(data$전체.전공, na.rm = TRUE)
total_capstone <- sum(data$캡스톤, na.rm = TRUE)

# 비율 계산
capstone_ratio <- total_capstone / total_major
non_capstone_ratio <- 1 - capstone_ratio

# 비율 데이터프레임 생성
ratio_df <- data.frame(
  Category = c("Capstone", "Non-Capstone"),
  Ratio = c(capstone_ratio, non_capstone_ratio)
)

# 파이차트 그리기
ggplot(ratio_df, aes(x="", y=Ratio, fill=Category)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0) +
  theme_void() +
  labs(title="2023년 전체 전공 트랙 기준 캡스톤/전체 전공 비율 파이차트") +
  theme(legend.title = element_blank())
