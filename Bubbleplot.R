

# Libraries
library(ggplot2)
library(dplyr)
library(ggpubr)

DAT1<- read.csv("VD6HHS.csv", stringsAsFactors = T)
DAT2<-read.csv("VD9HHS.csv", stringsAsFactors = T)
DAT3<-read.csv("VC6HHS.csv", stringsAsFactors = T)
DAT4<-read.csv("VC9HHS.csv", stringsAsFactors = T)




# Most basic bubble plot
p<- ggplot(DAT1, aes(x=TotalDEGs, y=Pathway, size = Upregulated, color = Downregulated))+scale_color_gradient(low ="#E93219", high="#1D1373")+coord_cartesian(xlim=c(0, 125))+
  geom_point(alpha=2)+theme_bw()+theme(axis.text.x = element_text(color="#000000",size=15),axis.text.y = element_text(color="#000000",size=12), axis.title.x = element_text(color="#000000",size=18),axis.title.y = element_text(color="#000000",size=18))

p1<- ggplot(DAT2, aes(x=TotalDEGs, y=Pathway, size = Upregulated, color = Downregulated))+scale_color_gradient(low ="#E93219", high="#1D1373")+coord_cartesian(xlim=c(0, 125))+
  geom_point(alpha=2)+theme_bw()+theme(axis.text.x = element_text(color="#000000",size=15),axis.text.y = element_text(color="#000000",size=12), axis.title.x = element_text(color="#000000",size=18),axis.title.y = element_text(color="#000000",size=18))


p2<- ggplot(DAT3, aes(x=TotalDEGs, y=Pathway, size = Upregulated, color = Downregulated))+scale_color_gradient(low ="#E93219", high="#1D1373")+coord_cartesian(xlim=c(0, 125))+
  geom_point(alpha=2)+theme_bw()+theme(axis.text.x = element_text(color="#000000",size=15),axis.text.y = element_text(color="#000000",size=12), axis.title.x = element_text(color="#000000",size=18),axis.title.y = element_text(color="#000000",size=18))


p3<- ggplot(DAT4, aes(x=TotalDEGs, y=Pathway, size = Upregulated, color = Downregulated))+scale_color_gradient(low ="#E93219", high="#1D1373")+coord_cartesian(xlim=c(0, 125))+
  geom_point(alpha=2)+theme_bw()+theme(axis.text.x = element_text(color="#000000",size=15),axis.text.y = element_text(color="#000000",size=12), axis.title.x = element_text(color="#000000",size=18),axis.title.y = element_text(color="#000000",size=18))

dev.new()
p1
p2
p3
p4
