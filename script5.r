
trainingoutput <- library("neuralnet")
traininginput <-  as.data.frame(runif(50, min=0, max=10))
trainingoutput <- (traininginput*traininginput + 2.71828^(-traininginput))

trainingdata <- cbind(traininginput,trainingoutput)
colnames(trainingdata) <- c("Input","Output")

net.sqrt <- neuralnet(Output~Input,trainingdata, hidden=10, threshold=0.01)

plot(net.sqrt)

testdata <- as.data.frame(1:10) 
net.results <- compute(net.sqrt, testdata) 

ls(net.results)

cleanoutput <- cbind(testdata,(testdata*testdata + 2.71828^(-testdata)),
                     as.data.frame(net.results$net.result))
colnames(cleanoutput) <- c("Input","Expected Output","Neural Net Output")
print(cleanoutput)

trainingdata <- cbind(traininginput,trainingoutput)
colnames(trainingdata) <- c("Input","Output")

net.sqrt <- neuralnet(Output~Input,trainingdata, hidden=10, threshold=0.01)

plot(net.sqrt)

testdata <- as.data.frame(1:10) 
net.results <- compute(net.sqrt, testdata) 

ls(net.results)

cleanoutput <- cbind(testdata,(testdata*testdata + 2.71828^(-testdata)),
                     as.data.frame(net.results$net.result))
colnames(cleanoutput) <- c("Input","Expected Output","Neural Net Output")
print(cleanoutput)