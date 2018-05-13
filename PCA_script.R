#### ddRAD analyses - 200k dataset ####

# load packages 
library(ade4)
library(adegenet)
library(ggplot2)
library(ggfortify)

### PCA FOR JUST THE NATIVE pops ###

# set working directory 
setwd("/home/jpita/Final_assignment/PCA")

# load data files (genlight file)

native_only<-read.snp("Anolis.snp")

# run a PCA analyses, write scores table and re-read file 

pca_native<- glPca(native_only)

pca_native_scores<-data.frame(pca_native$scores)
write.table(pca_native_scores, file = "pca_sagrei_scores.csv")

### Plot PCA
# LOAD edited scores file (URI_pca_scores.csv)
PCA_scores<-read.csv("PCA_scores.csv", header = TRUE)
names(PCA_scores)

# Plot 

pca_plot2 <- ggplot()+
  theme_classic()+
  ggtitle("Principal Component Analyses")+
  scale_x_continuous(name = "PC1")+
  scale_y_continuous(name = "PC2")+
  theme(plot.title = element_text(size = 16), axis.text = element_text(size=10), axis.title = element_text(size=12))+
  geom_point(aes(x=PC1, y=PC2), size=2, data=PCA_scores)+
  geom_point(aes(x=PC1, y=PC2, col=PopID), size=2, data=PCA_scores)+
  scale_colour_manual(values=c("#93caecff","#3d5aa4ff","#fdcb25ff","#ee8d33ff"))

pca_plot2 
