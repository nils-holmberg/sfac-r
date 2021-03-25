install.packages(c("quanteda", "dplyr", "pvclust", "ggplot2", "xtable", "stringdist"), lib="~/lib/r-cran")

library(quanteda)
library(dplyr)
library(pvclust)
library(ggplot2)
library(xtable)
library(stringdist)

speeches <- data_corpus_inaugural


summary(speeches)
class(speeches)

##create quanteda dataframe
speeches_dfm <- dfm(speeches)

#if data explored=T
# remove noise factors
speeches_dfm <- dfm(speeches,
                    remove_punct = T,
                    remove = stopwords("english"))

speeches_dfm <- dfm_subset(speeches_dfm,
                           speeches_dfm@docvars$President != "Harrison")


##create similarity matrix (weighted)
simil_matrix <- dfm_weight(speeches_dfm, "prop") %>% 
                textstat_simil(speeches_dfm,
                               margin = "documents",
                               method = "correlation")

##create distance matrix
dist_matrix <- textstat_dist(speeches_dfm, 
                              margin = "documents",
                              method = "euclidean")

##plot 2-D
fit <- cmdscale(dist_matrix, k = 2, eig = T)
points <- data.frame(x = fit$points[, 1], y = fit$points[, 2])
ggplot(points, aes(x = x, y = y)) +
  geom_point(data = points, aes(x = x, y = y, color = rownames(points))) +
  geom_text(data = points, aes(x = x, y = y - 0.2, label = row.names(points))) +
  theme(legend.position="none")


##cluster hierarchically 
plot(hclust(as.dist(dist_matrix)))

##to add p-values
dist_matrix2 <- as.matrix(dist_matrix)

##to add p-values
dist_matrix2 <- as.matrix(dist_matrix)

pv_dist_matrix <- pvclust(dist_matrix2, method.hclust="average",
                  method.dist="correlation", use.cor="complete.obs",
                  nboot=1000, parallel=FALSE, r=seq(.5,1.4,by=.1),
                  store=FALSE, weight=FALSE, iseed=NULL, quiet=FALSE)

plot(pv_dist_matrix, print.pv=TRUE, print.num=TRUE, float=0.01,
     col.pv=c(si=4, au=2, bp=3, edge=8), cex.pv=0.8, font.pv=NULL,
     col=NULL, cex=NULL, font=NULL, lty=NULL, lwd=NULL, main=NULL,
     sub=NULL, xlab=NULL)

##Draw significant p-values
pvrect(pv_dist_matrix, alpha=0.95)




