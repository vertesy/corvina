######################################################################
# Make a script standalone by exporting all the funcitons into an .RDA object
######################################################################
# source ('~/TheCorvinas/R/StandAlone.R')



# Functions ------------------------
# install.packages("NCmisc")
# http://finzi.psych.upenn.edu/library/NCmisc/html/list.functions.in.file.html


# Setup ------------------------
yaFile = "~/TheCorvinas/R/CodeAndRoll.R"
OutFile = "~/TheCorvinas/R/CodeAndRoll.rda"



# Go! ------------------------
FunList  = NCmisc::list.functions.in.file(yaFile)

Funzy = lapply(FunList, get)
str(Funzy)
save(Funzy, file = "~/Downloads/aaa.rda")

Functions = unlist(FunList)
write.simple.tsv(Functions)

# In your script ------------------------
load(file = OutFile, envir = , verbose=T)



# try with RDS ------------------------

saveRDS(Funzy, file = "~/Downloads/aaa.rds")
geocodenew <- readRDS("~/Downloads/aaa.rds")

get(geocodenew$`c("package:RoxygenReady", "package:MarkdownReports")`)
