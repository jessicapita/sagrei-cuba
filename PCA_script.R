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

eig_native=data.frame(pca_native$eig)
eig_native$percentage = (eig_native[, 1]/sum(eig_native$pca.eig))

write.table(eig_native, file = "pca_native_eig.csv")

pca_native_scores<-data.frame(pca_native$scores)
write.table(pca_native_scores, file = "pca_native_scores.csv")

### Plot PCA
# LOAD edited scores file (URI_pca_scores.csv)
PCA_scores<-read.csv("URI_pca_scores.csv", header = TRUE)
names(PCA_scores)

# create a subset with just the scores 
PCA_scores_only<-PCA_scores[4:8]

head(PCA_scores_only)

# Plot 

pca_plot1 <- autoplot(prcomp(PCA_scores_only), data=PCA_scores, colour="PopID", label.size=2)+
  ggtitle("Principal Component Analysis")+
  theme_classic()+
  geom_text(aes(label=PCA_scores$PopID), size=1.6)

pca_plot1

# prettier figure - PC1 percentage: 57.44%, PC2: 17.94%

pca_plot2 <- ggplot()+
  theme_classic()+
  ggtitle("Principal Coordinate Analyses - Native populations ")+
  scale_x_continuous(name = "PC1 (57.44 %)")+
  scale_y_continuous(name = "PC1 (17.94 %)")+
  theme(plot.title = element_text(size = 16), axis.text = element_text(size=10), axis.title = element_text(size=12))+
  geom_point(aes(x=PC1, y=PC2), size=2, data=PCA_scores)+
  geom_point(aes(x=PC1, y=PC2, col=PopID), size=2, data=PCA_scores)+
  scale_colour_manual(values=c("#93caecff","#3d5aa4ff","#fdcb25ff","#ee8d33ff","#f9f1adff","#f9f1adff","#fdcb25ff","#902e8dff","#fdcb25ff"))

pca_plot2 
