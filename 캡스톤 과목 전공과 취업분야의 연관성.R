library(dplyr)
library(ggplot2)
연관성 <- function(row){
  fields <- c(row$개요,row$과목명)
  terms <- unlist(strsplit(row$진출분야명,""))
  for(term in terms){
    if(any(grepl(term,fields))){
      return("O")
    }
  }
  return("X")
}
ggplot(Capstone, aes(x = 진출분야명, y = 과목명, size = nchar(연관성), color = 연관성)) +
  geom_point(alpha = 0.7) +   
  scale_size(range = c(3, 10)) + 
  theme_minimal() + 
  labs(
    title = "캡스톤디자인과목과 취업 분야의 연관성",
    x = "진출분야명",
    y = "과목명",
    size = "연관성",
    color = "연관성"
  )
