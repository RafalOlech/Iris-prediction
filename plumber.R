# plumber.R

library(randomForest)
library(tidyverse)

# budujemy model
model <- randomForest(Species ~ ., data = iris)

# zapisujemy go w postaci pliku
saveRDS(model, "model_rf.RDS")

# wczytanie modelu
model <- readRDS("model_rf.RDS")


#* Predict Class
#* @post /irisclass/<sl>/<sw>/<pl>/<pw>
function(sl, sw, pl, pw) {
  
  new_df <- tibble(
    Sepal.Length = sl,
    Sepal.Width = sw,
    Petal.Length = pl,
    Petal.Width = pw
  )
  
  pred <- as.character(predict(model, new_df))
  
  return(list(Sepal.Length = sl,
              Sepal.Width = sw,
              Petal.Length = pl,
              Petal.Width = pw,
              Spices = pred))
  
}
