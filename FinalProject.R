library(ggplot2)
library(tidyverse)


#Importing data into R environment and attaching to data_frame variable

data_frame <- read_csv("C:\\Users\\Anigasan\\Downloads\\diabetic.csv")


#Seeing dataframe in more detail
summary(data_frame)

head(data_frame, 5)

tail(data_frame, 5)

data_frame


#Preprocessing Steps

arrange(data_frame, id, laser, age, trt, risk, time, status)

filter(data_frame, eye == "left")
filter(data_frame, eye == "right")
filter(data_frame, time >= 30, time <= 70)


filter(data_frame, age >= 50)
filter(data_frame, age < 50)
filter(data_frame, time >= 0, time <= 30)


filter(data_frame, laser == "xenon")
filter(data_frame, laser == "argon")
filter(data_frame, laser == "xenon", time >=20)
filter(data_frame, laser == "argon", time >=20)

filter(data_frame, id == 46)
filter(data_frame, id == 25)

data_frame2 <- filter(data_frame, status == 0)

data_frame3 <- filter(data_frame, status == 1)

data_frame4 <- filter(data_frame, laser == "xenon")

data_frame5 <- filter(data_frame, laser == "argon")

data_frame6 <- filter(data_frame, trt == 1, eye == "left", laser == "argon")

data_frame7 <- filter(data_frame, trt == 1, eye == "left", laser == "xenon")

s
data_frame8 <- filter(data_frame, trt == 1, eye == "right", laser == "xenon")

data_frame9 <- filter(data_frame, trt == 1, eye == "right", laser == "argon")



#Plotting dataframes

ggplot(data = data_frame) +
  geom_point(mapping = aes(x = age, y = time), color = "blue")

ggplot(data = data_frame2)+
  geom_point(mapping = aes(x = age, y = time), color = "cyan")

ggplot(data = data_frame3) +
  geom_point(mapping = aes(x = age, y = time), color = "green")

ggplot(data = data_frame4)+
  geom_point(mapping = aes(x = age, y = time), color = "orange")

ggplot(data = data_frame5)+
  geom_point(mapping = aes(x = age, y = time), color = "gray")

ggplot(data = data_frame6)+
  geom_point(mapping = aes(x = age, y = time), color = "purple")


ggplot(data = data_frame7)+
  geom_point(mapping = aes(x = age, y = time), color = "red")

ggplot(data = data_frame8)+
  geom_point(mapping = aes(x = age, y = time), color = "blue")

ggplot(data = data_frame9)+
  geom_point(mapping = aes(x = age, y = time), color = "orange")



ggplot(data = data_frame)+
  geom_bar(mapping = aes(x = laser))

ggplot(data = data_frame)+
  geom_bar(mapping = aes(x = risk))


#Finding correlations of data

cor(data_frame$age, data_frame$time, use = "complete.obs", method = "pearson")
cor(data_frame2$age, data_frame2$time, use = "complete.obs", method = "pearson")
cor(data_frame3$age, data_frame3$time, use = "complete.obs", method = "pearson")
cor(data_frame4$age, data_frame4$time, use = "complete.obs", method = "pearson")
cor(data_frame5$age, data_frame5$time, use = "complete.obs", method = "pearson")
cor(data_frame6$age, data_frame6$time, use = "complete.obs", method = "pearson")
cor(data_frame7$age, data_frame7$time, use = "complete.obs", method = "pearson")
cor(data_frame8$age, data_frame8$time, use = "complete.obs", method = "pearson")
cor(data_frame9$age, data_frame9$time, use = "complete.obs", method = "pearson")
