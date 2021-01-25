library(ggplot2) #Please install the ggplot2 package if you haven't

Data<-  read.table("Bar_plot_sample.txt", header = T)

p<- ggplot(Data, aes(x= FERT, y= Value , fill=Year)) + geom_bar(stat="identity",color="black",
                                                               position=position_dodge()) +coord_cartesian(ylim=c(50, 2000))+ #ylin is y axis limit
  geom_errorbar(aes(ymin= Value , ymax= Value+SE), width=.2,
                position=position_dodge(.9))+geom_text(aes(y=Value+SE, label =VALUE), position = position_dodge2(width=.9), vjust = -1,size=5)+labs(x="Fertilization ", y = "Sorghum  grain yield Kg/ha")+theme(legend.key.size = unit(1.2,"lines"))+theme_classic()+
  theme(axis.text.x = element_text(color="#000000",size=15),axis.text.y = element_text(color="#000000",size=15), axis.title.x = element_text(color="#000000",size=18),axis.title.y = element_text(color="#000000",size=18))+scale_fill_manual(values=c('#756bb1','#bcbddc','#cccccc'))

dev.new()
p

