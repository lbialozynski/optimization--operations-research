## Investigation 1.1
budget <- c(20000, 21000, 22000, 23000, 24000, 25000, 30000, 35000, 40000, 45000, 50000)
profit <- c(6000, 6300, 6600, 6900, 7200, 7500, 9000, 10500, 12000, 13200, 13200)
plot(budget, profit, type="l", main="How Profit Increases with Budget Increases")
points(budget, profit)

## Investigation 1.2, Graph 1
increase <- c(0, 1, 5, 10)
Center1 <- c(13673.23529, 13723.23529, 13923.23529, 14173.23529)
data1 <- cbind(increase, Center1)
plot(data1, type="l")
points(data1)
Center2 <- c(13673.23529, 13714.41176, 13879.11765, 14082.85714)
Center3 <- c(13673.23529, 13697.94118, 13796.76471, 13920.29412)
data <- cbind(increase, Center1, Center2, Center3)
plot(increase, c(Center1, Center2))

ggplot(data=data.frame(data), aes(x=increase)) + 
  geom_point(aes(x=increase, y=Center1, color="Center 1"), cex=2.5) +
  geom_point(aes(x=increase, y=Center2, color="Center 2"), cex=2.5) +
  geom_point(aes(x=increase, y=Center3, color="Center 3"), cex=2.5) +
  geom_line(data=data.frame(data), aes(x=increase, y=Center1, color="Center 1")) +
  geom_line(data=data.frame(data), aes(x=increase, y=Center2, color="Center 2")) +
  geom_line(data=data.frame(data), aes(x=increase, y=Center3, color="Center 3")) +
  labs(x="Percent Increase in Water Capacity",
       y="Total Profit", colour="Legend") + 
  ggtitle("How Increase in Water Capacity at Each Center Affects Total Profit") +
  ylim(0,14200)

## Investigation 1.2, Graph 2
increase <- c(0, 1, 5, 10)
Prod1 <- c(13673.23529, 13681.48529, 13682.85714, 13682.85714)
Prod2 <- c(13673.23529, 13673.23529, 13673.23529, 13673.23529)
Prod3 <- c(13673.23529, 13673.23529, 13673.23529, 13673.23529)
data2 <- cbind(increase, Prod1, Prod2, Prod3)

ggplot(data=data.frame(data2), aes(x=increase)) + 
  geom_point(aes(x=increase, y=Prod1, color="Center 1"), cex=2.5) +
  geom_point(aes(x=increase, y=Prod2, color="Center 2"), cex=2.5) +
  geom_point(aes(x=increase, y=Prod3, color="Center 3"), cex=2.5) +
  geom_line(data=data.frame(data2), aes(x=increase, y=Prod1, color="Center 1")) +
  geom_line(data=data.frame(data2), aes(x=increase, y=Prod2, color="Center 2")) +
  geom_line(data=data.frame(data2), aes(x=increase, y=Prod3, color="Center 3")) +
  labs(x="Percent Increase in Production Capacity",
       y="Total Profit", colour="Legend") + 
  ggtitle("How Increase in Production Capacity at Each Center\nAffects Total Profit") +
  ylim(0,13700)


## Investigation 1.2, Graph 3
increase <- c(0, 1, 5, 10)
LargeD <- c(13673.23529, 13673.23529, 13673.23529, 13673.23529)
MedD <- c(13673.23529, 13673.23529, 13673.23529, 13673.23529)
SmallD <- c(13673.23529, 13685.83529, 13736.23529, 13799.23529)
data3 <- cbind(increase, LargeD, MedD, SmallD)

ggplot(data=data.frame(data3), aes(x=increase)) + 
  geom_point(aes(x=increase, y=LargeD, color="Large"), cex=2.5) +
  geom_point(aes(x=increase, y=MedD, color="Medium"), cex=2.5) +
  geom_point(aes(x=increase, y=SmallD, color="Small"), cex=2.5) +
  geom_line(data=data.frame(data3), aes(x=increase, y=LargeD, color="Large")) +
  geom_line(data=data.frame(data3), aes(x=increase, y=MedD, color="Medium")) +
  geom_line(data=data.frame(data3), aes(x=increase, y=SmallD, color="Small")) +
  labs(x="Percent Increase in Market Demand",
       y="Total Profit", colour="Legend") + 
  ggtitle("How Increase in Market Demand for Each Size Affects Total Profit") +
  ylim(0, 14000)
