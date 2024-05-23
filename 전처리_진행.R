read_csv("교육과정 데이터(2020-2023).csv")
install.packages(readr)
install.packages("readr")
library(readr)
study <- read_csv("교육과정 데이터(2020-2023).csv")
work <- read_csv("취업 데이터(2016-2021).csv")
study_1 <- na.omit(study)
work_1 <- na.omit(work)
##결측치가 있을 시에 제대로 된 분석이 불가능 하다고 판단 및 문자형 척도라 평균값을 넣는 것도 불가능해 결측치가 있는 행 삭제##