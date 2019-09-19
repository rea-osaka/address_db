###############################################################
# 市町村コードデータベース作成スクリプト
# syunsuke.fukuda@gmail.com
# 2019/09/19
#
###############################################################
library(tidyverse)

source("code/make_address_db.R", encoding = "UTF-8")

# 市区町村データベース
# READMEに従って、総務省のページからダウンロードしたExcelファイルを
# csvファイルに変換後、指定の場所に、指定のファイル名で配置します。

city_p     <- "data_ex/cities.csv"
big_city_p <- "data_ex/big_cities.csv"
history_p  <- "data_ex/history.csv"

cities_db <- make_city_code_db(city_p, big_city_p, history_p)

save(cities_db, file = "data_dist/cities_db.rda")