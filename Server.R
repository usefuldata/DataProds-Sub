prntfn<- function (x,y){
  if (x == 0) {
    Males <- -90592012917.7234+y*46890891.002291
    Females <- -90248479019.0757+y*46712883.5645524
    p <- (Males-Females)/1000000
    names(p)<-"The World"}
  else if(x == 1) {
    Males <- -2538655197.33991+y*1314778.59373565
    Females <- -2534154748.46825+y*1312446.61619555
    p <- (Males-Females)/1000000
    names(p)<-"China"}
  else if(x == 2) {
    Males <- -190750068.305497+y*988179.770129854
    Females <- -190600051.985176+y*987402.37509533
    p <- (Males-Females)/1000000
    names(p)<-"India"}
  else if(x == 3) {
    Males <- -1559581893.75016+y*807456.518258199
    Females <- -1555081444.5439+y*805124.540565304
    p <- (Males-Females)/1000000
    names(p)<-"North America"}
  else if(x == 4) {
    Males <- -15726704038.0998+y*8139724.8496561
    Females <- -15663697848.2679+y*8107077.21100064
    p <- (Males-Females)/1000000
    names(p)<-"Europe"}
  else if(x == 5) {
    Males <- -18765111479.9768+y*9712571.02077906
    Females <- -18691604217.9355+y*9674482.0887699
    p <- (Males-Females)/1000000
    names(p)<-"Africa"}
  else if(x == 6) {
    Males <- -7552786918.73249+y*3909381.69732614
    Females <- -7524284113.25579+y*3894612.52482805
    p <- (Males-Females)/1000000
    names(p)<-"Middle East"}
  else if(x == 7) {
    Males <- -5834055813.47278+y*3019459.53674556
    Females <- -5810053413.86468+y*3007022.32024441
    p <- (Males-Females)/1000000
    names(p)<-"Oceania"}
  else if(x == 8) {
    Males <- -5719870771.05643+y*2960514.48678375
    Females <- -5697368546.40708+y*2948854.60886168
    p <- (Males-Females)/1000000
    names(p)<-"Russia/Post Soviet"}
  else if(x == 9) {
    Males <- -3827240544.39489+y*1981148.91092434
    Females <- -3813739218.76846+y*1974152.98869363
    p <- (Males-Females)/1000000
    names(p)<-"South East Asia"}
  else if(x == 10) {
    Males <- -4515776330.0068+y*2337481.03376619
    Females <- -4499274716.36967+y*2328930.46554618
    p <- (Males-Females)/1000000
    names(p)<-"Rest of Asia"}
  else if(x == 11) {
    Males <- -7376472383.24586+y*3818021.57540101
    Females <- -7347969568.61332+y*3803252.39831927
    p <- (Males-Females)/1000000
    names(p)<-"South America"}
  else if(x == 12) {
    Males <- -9833949155.52313+y*5089627.7686783
    Females <- -9793445167.57966+y*5068639.99663857
    p <- (Males-Females)/1000000
    names(p)<-"West Indies"}
  else if(x == 13) {
    Males <- -1085459616.99158+y*561782.678991588
    Females <- -1080959182.94574+y*559450.708785323
    p <- (Males-Females)/1000000
    names(p)<-"North Polar Islands"}
  else if(x == 14) {
    Males <- -4348848092.07785+y*2250762.86111532
    Females <- -4330846312.2039+y*2241434.95859431
    p <- (Males-Females)/1000000
    names(p)<-"Other Islands"}
  p*1000
}

plotfn<- function (x,y){
  ds <- matrix(, nrow = 4, ncol = 15)
  ds[1,1] <-"The World"
  ds[2,1] <- -90592012917.7234+y*46890891.002291
  ds[3,1] <- -90248479019.0757+y*46712883.5645524
  
  ds[1,2] <-"China"
  ds[2,2] <- -2538655197.33991+y*1314778.59373565
  ds[3,2] <- -2534154748.46825+y*1312446.61619555
  
  ds[1,3] <-"India"
  ds[2,3] <- -190750068.305497+y*988179.770129854
  ds[3,3] <- -190600051.985176+y*987402.37509533
  
  ds[1,4] <-"North America"
  ds[2,4] <- -1559581893.75016+y*807456.518258199
  ds[3,4] <- -1555081444.5439+y*805124.540565304
  
  ds[1,5] <-"Europe"
  ds[2,5] <- -15726704038.0998+y*8139724.8496561
  ds[3,5] <- -15663697848.2679+y*8107077.21100064
  
  ds[1,6] <-"Africa"
  ds[2,6] <- -18765111479.9768+y*9712571.02077906
  ds[3,6] <- -18691604217.9355+y*9674482.0887699
  
  ds[1,7] <-"Middle East"
  ds[2,7] <- -7552786918.73249+y*3909381.69732614
  ds[3,7] <- -7524284113.25579+y*3894612.52482805
  
  ds[1,8] <-"Oceania"
  ds[2,8] <- -5834055813.47278+y*3019459.53674556
  ds[3,8] <- -5810053413.86468+y*3007022.32024441
  
  ds[1,9] <-"Russia/Post Soviet"
  ds[2,9] <- -5719870771.05643+y*2960514.48678375
  ds[3,9] <- -5697368546.40708+y*2948854.60886168
  
  ds[1,10] <-"South East Asia"
  ds[2,10] <- -3827240544.39489+y*1981148.91092434
  ds[3,10] <- -3813739218.76846+y*1974152.98869363
  
  ds[1,11] <-"Rest of Asia"
  ds[2,11] <- -4515776330.0068+y*2337481.03376619
  ds[3,11] <- -4499274716.36967+y*2328930.46554618
  
  ds[1,12] <-"South America"
  ds[2,12] <- -7376472383.24586+y*3818021.57540101
  ds[3,12] <- -7347969568.61332+y*3803252.39831927
  
  ds[1,13] <-"West Indies"
  ds[2,13] <- -9833949155.52313+y*5089627.7686783
  ds[3,13] <- -9793445167.57966+y*5068639.99663857
  
  ds[1,14] <-"North Polar Islands"
  ds[2,14] <- -1085459616.99158+y*561782.678991588
  ds[3,14] <- -1080959182.94574+y*559450.708785323
  
  ds[1,15] <-"Other Islands"
  ds[2,15] <- -4348848092.07785+y*2250762.86111532
  ds[3,15] <- -4330846312.2039+y*2241434.95859431
  
  ds[4,] <- (as.numeric(ds[2,])-as.numeric(ds[3,]))/as.numeric(ds[2,])*1000000
  
  dds <-    as.data.frame(ds[c(1,4),x+1])
  names(dds) = ds[1,x+1]
  dds[2,]
}


shinyServer(
  function(input, output) {
    output$newBar <- renderPlot({
      barplot(as.matrix(plotfn(as.vector(as.numeric(c(0,input$Country))),as.numeric(input$Year))),xlab='Country of Region',ylab = '# Bachelor Males per million')})
    output$prediction <- renderPrint({sapply(as.vector(c(0,input$Country)),prntfn,input$Year)})
  }
)

