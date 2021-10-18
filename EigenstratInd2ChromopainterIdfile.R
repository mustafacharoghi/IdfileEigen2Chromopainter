# This code is used to convert eigenstrat *.ind file (containing pop info) to chromopainterV2 *.idfile.txt file
# All individuals are assumed to be used. Individuals can be removed by change the third column from "1" to "0"
eigen.ind.path="test.ind"
eigen.indfile=read.table(eigen.ind.path, sep="", header=FALSE)
chrom.idfile=cbind(eigen.indfile$V1,eigen.indfile$V3, rep(1,time=dim(eigen.indfile)[1]))
write.table(chrom.idfile,file=paste(eigen.ind.path,".idfile.txt",sep="") , eol="\n", quote=FALSE, col.names = FALSE, row.names = FALSE)
library(icesTAF)
dos2unix(paste(eigen.ind.path,".idfile.txt",sep=""))


