## ---- eval = FALSE-------------------------------------------------------
#  
#  require(devtools)
#  
#  install_github('recharts', 'taiyun')
#  

## ---- warning = FALSE, message = FALSE-----------------------------------
library(recharts)
mapData <- data.frame(province=c("上海", "江苏", "广东", "黑龙江"), 
	val1=c(100, 200, 300, 500), val2=c(200,300,400,200), val3=c(1,2,3,5), stringsAsFactors=F)

## 全国地图
eMap(mapData, namevar=~province, datavar = ~val1+val2)

provinceMapData <- data.frame(city=c("扬州市", "南京市", "苏州市"), value=c(100, 200, 300),
                        val2=c(200,300,400), val3=c(1,2,3), stringsAsFactors=F)
## 省份地图
eMap(provinceMapData, namevar=~city, datavar = ~value+val2, region="江苏")

## ---- warning = FALSE, message = FALSE-----------------------------------
df2 = data.frame(
	saleNum=c(10,20,30,40,50,60,70,15,25,35,45,55,65,75,25,35,45,55,65,75,85),
	seller=c(rep("小黄",7), rep("小红",7), rep("小白",7)),
	weekDay = c(rep(c("周一","周二","周三","周四","周五","周六","周日"),3))
)
eBar(dat= df2, xvar=~weekDay, yvar=~saleNum, series=~seller)

## ---- warning = FALSE, message = FALSE-----------------------------------
eBar(WorldPhones)

## ---- warning = FALSE, message = FALSE-----------------------------------
library(recharts)
eBar(cut(rnorm(1000), -4:4))

## ---- warning = FALSE, message = FALSE-----------------------------------
# 测试下中文
iris$Species <- as.character(iris$Species)
iris$Species[1:20] ="小红帽"
ePoints(iris, ~Sepal.Length, ~Sepal.Width, series = ~Species)

