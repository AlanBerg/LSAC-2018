library("data.table")
library(jsonlite)

# Download and uncompress
# "https://github.com/dimstudio/multimodal-analyzer/raw/master/example_sessions/OKDDM1_2018-7-24-11H57M49S371_annotated.zip"

# How to find fullnames to files
# Change filenames below
# file.choose()

# Load in data
#
all.data<-fromJSON(txt="/Users/alan/Desktop/GIT/LSAC-2018/OKDDM1_2018-7-24-11H57M49S371annotations.json", flatten=T)
annotated.data<-all.data[[3]]
annotated.name<-all.data[[1]]
annotated.id<-all.data[[2]]
rm(all.data)

all.data<-fromJSON(txt="/Users/alan/Desktop/GIT/LSAC-2018/2018-7-24-11H57M49S371Myo.json", flatten=T)
data<-all.data[[3]]
name<-all.data[[1]]
id<-all.data[[2]]
rm(all.data)

# OK now we aready to look at ML with for example the caret package
