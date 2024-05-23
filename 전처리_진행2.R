install.packages("dplyr")
library(dplyr)
#교육과정데이터에서 캡스톤디자인을 들은 학생#
Capstone_O <-study_1 %>% filter(grepl("캡스톤디자인",과목명))
#취업데이터에서 캡스톤디자인을 들은 학생#
Capstone_O_work <-work_1 %>% filter(grepl("캡스톤디자인",강의구분)|grepl("캡스톤디자인",과목명))
#교육과정데이터에서 캡스톤디자인을 들은 학생 : 2251#
nrow(Capstone_O)
#전체 데이터에서 캡스톤 디자인을 들은 학생#
common_cols <- intersect(names(Capstone_O), names(Capstone_O_work))
Capstone <- inner_join(Capstone_O, Capstone_O_work, by = common_cols)
#CSV로 추출#
write.csv(Capstone_O, "Capstone_O.csv", row.names = TRUE)
write.csv(Capstone_O_work, "Capstone_O_work.csv", row.names = TRUE)
write.csv(Capstone, "Capstone.csv", row.names = TRUE)