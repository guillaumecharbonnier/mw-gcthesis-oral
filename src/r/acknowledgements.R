#!/usr/bin/env Rscript

library(data.table)
library(ggplot2)
d <- fread(file="../mw-gcthesis-oral/acknowledgements.tsv")
d[ , Acronym:=NULL]

ord <- hclust( dist(d, method = "euclidean"), method = "ward.D" )$order
dm <- melt(d, id.vars=c("V1", "Part"))
dm$V1 <- factor(dm$V1, levels=d$V1[ord])
dm[value==0, value:=NA]

p <- ggplot(dm[Part==1], aes(y=variable, x=V1))
p <- p + geom_tile(aes(fill=value))
p <- p + coord_fixed()
p <- p + theme(axis.text.x = element_text(angle = 45, hjust=1),
               legend.position = "none",
               axis.title = element_blank())
p <- p + scale_fill_gradient(low='lightblue', high='darkblue', na.value=alpha("white",0.5))

ggsave(filename="out/r/gcthesis_acknowledgments/1.pdf", plot=p, width=7, height=3) 
 
 
p <- ggplot(dm[Part==2], aes(y=variable, x=V1))
p <- p + geom_tile(aes(fill=value))
p <- p + coord_fixed()
p <- p + theme(axis.text.x = element_text(angle = 45, hjust=1),
               legend.position = "none",
               axis.title = element_blank())
p <- p + scale_fill_gradient(low='lightblue', high='darkblue', na.value=alpha("white",0.5))

ggsave(filename="out/r/gcthesis_acknowledgments/2.pdf", plot=p, width=7, height=3) 
 
  
