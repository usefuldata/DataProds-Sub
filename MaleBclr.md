Male Bachelors
========================================================
author: Utpal Datta
date: Sun Nov 22 20:25:30 2015
Showing number of Male bachelors who won't be able to find partners in particular year at a particular geography

The Idea
========================================================

It'a warning system for growing problem of Sex Ratio in the world. 

- The Idea is presented in terms of number of Males who won't be able to find find partners in a year
- The data is cooked up and available in the csv file (Continent.csv). The values are #Eligible bachelors.
- An LM is fit the data for continets for males and females.
- The APP is created using the intercepts and coefficients for y = mx +c (y = #bachelors, x = Year, m = Coef, c = Intercept)
- The Bar chart shows # bachelor Males per 1M males. The numbers gives # bachelor males (in 1000). 
- Bar Chart shows relative threat, whereas the numbers show absolute.



Analysis Done
========================================================


```r
# Load + Split males and females data
Continent_Data <- read.csv("Continent.csv")
males_data <- reshape(Continent_Data[which(Continent_Data$Sex == "Male"),c(1,2,4)], direction = "wide", idvar="Year", timevar="Larger.Area")
females_data <- reshape(Continent_Data[which(Continent_Data$Sex == "Female"),c(1,2,4)], direction = "wide", idvar="Year", timevar="Larger.Area")

# Continent's data summed by year to obtain World Total
for (i in 1:dim(males_data)[1]){males_data$X.World[i] <- 0	
for (j in 2:15){males_data$X.World[i] <- males_data$X.World[i] + (males_data[i,j])}}
for (i in 1:dim(females_data)[1]){females_data$X.World[i] <- 0	
for (j in 2:15){females_data$X.World[i] <- females_data$X.World[i] + (females_data[i,j])}}

# Creating Coefficients
rgn_names <- vector();males_coef <- vector();males_int <- vector()
females_coef <- vector();females_int <- vector()
for (i in 2:dim(males_data)[2])
{rgn_names <- c(rgn_names,names(males_data[i]))
males_coef <- c(males_coef,summary(lm(males_data[,i]~Year,data = males_data))$coef[2,1])
males_int <- c(males_int,summary(lm(males_data[,i]~Year,data = males_data))$coef[1,1])
females_coef <- c(females_coef,summary(lm(females_data[,i]~Year,data = females_data))$coef[2,1])
females_int <- c(females_int,summary(lm(females_data[,i]~Year,data = females_data))$coef[1,1])}
cofs_data <- as.data.frame(cbind(rgn_names,round(males_int),round(males_coef),round(females_int),round(females_coef)))
```

Coefficeints Found
========================================================


```
                         rgn_names           V2       V3           V4
1               X.African_Counties -18765111480  9712571 -18691604218
2                          X.China  -2538655197  1314779  -2534154748
3             X.Europian_Countries -15726704038  8139725 -15663697848
4                          X.India  -1907500683   988179  -1906000520
5          X.Middle_East_Countries  -7552786919  3909382  -7524284113
6                 X.North_Icelands  -1085459617   561783  -1080959183
7             X.Ocianian_Countries  -5834055813  3019460  -5810053414
8          X.Other_Asian_Countries  -4515776330  2337481  -4499274716
9            X.Other_Small_Islands  -4348848092  2250763  -4330846312
10 X.Russia_and_post_Soviet_States  -5719870771  2960514  -5697368546
11      X.South_American_Countries  -7376472383  3818022  -7347969569
12    X.South_East_Asian_Countries  -3827240544  1981149  -3813739219
13        X.USA,_Canada_and_Mexico  -1559581894   807457  -1555081445
14            X.West_Indian_Ilands  -9833949156  5089628  -9793445168
15                         X.World -90592012918 46890891 -90248479019
         V5
1   9674482
2   1312447
3   8107077
4    987402
5   3894613
6    559451
7   3007022
8   2328930
9   2241435
10  2948855
11  3803252
12  1974153
13   805125
14  5068640
15 46712884
```

Models Used
====================

The Linear Models obtained in the last slide are used to develop the prediction function for the App.
The data is cooked, However, if correct data applied with more independent variables used in fitting the model, this can show a good analysis of the future calamities due to disbalanced Sex Ratio. Nature accepts more Females to make the life continued. However, with modern technologies appearing, Males are getting preference now a days. From the statistics, it's clear that a big threat is ahead, unless handled.

**********************The End, Thanks *******************
