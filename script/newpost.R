setwd("../")
library(blogdown)

args <- commandArgs(T)


options(blogdown.author="Jimmy fung")

## 第一个参数是说是否在post文件夹下建立文件
filetype=""
if(args[1]=="no" ){
    filetype="post/"
}

posttitle <- args[2]
postslug <- args[3]

postcategories <- args[4]
posttags <- args[5]

veccategories <- strsplit(postcategories," ")[[1]]
vectags <- strsplit(posttags," ")[[1]]

new_post(title=posttitle,
         file=paste(filetype,Sys.Date(),"-",postslug,".Rmd",sep=""),
         categories = veccategories,tags=vectags)
