

data <- read.csv("D:Desktop/yashwant/assigment_1.csv", stringsAsFactors = FALSE)
str(data)



install.packages("plyr")
library("plyr")

#making the attributes values as yes or no
data$Multiple.Lines <- as.factor(mapvalues(data$Multiple.Lines, 
                                from=c("No phone service"), to=c("No")))


data$Online.Security <- as.factor(mapvalues(data$Online.Security, 
                         from=c("No internet service"), to=c("No")))
data$Online.Backup <- as.factor(mapvalues(data$Online.Backup, 
                                    from=c("No internet service"), to=c("No")))
data$Device.Protection <- as.factor(mapvalues(data$Device.Protection, 
                                          from=c("No internet service"), to=c("No")))
data$Tech.Support <- as.factor(mapvalues(data$Tech.Support, 
                                              from=c("No internet service"), to=c("No")))
data$Streaming.Movies <- as.factor(mapvalues(data$Streaming.Movies, 
                                         from=c("No internet service"), to=c("No")))
data$Streaming.TV <- as.factor(mapvalues(data$Streaming.TV, 
                                             from=c("No internet service"), to=c("No")))


#making the values in attributes into numerical  

data$Multiple.Lines <- as.factor(mapvalues(data$Multiple.Lines, 
                                           from=c("No"), to=c("0")))
data$Multiple.Lines <- as.factor(mapvalues(data$Multiple.Lines, 
                                           from=c("Yes"), to=c("1")))


data$Dependents <- as.factor(mapvalues(data$Dependents, 
                                           from=c("No"), to=c("0")))
data$Dependents <- as.factor(mapvalues(data$Dependents, 
                                           from=c("Yes"), to=c("1")))


data$Device.Protection <- as.factor(mapvalues(data$Device.Protection, 
                                       from=c("No"), to=c("0")))
data$Device.Protection <- as.factor(mapvalues(data$Device.Protection, 
                                       from=c("Yes"), to=c("1")))

data$Online.Backup <- as.factor(mapvalues(data$Online.Backup, 
                                              from=c("No"), to=c("0")))
data$Online.Backup <- as.factor(mapvalues(data$Online.Backup, 
                                              from=c("Yes"), to=c("1")))

data$Online.Security <- as.factor(mapvalues(data$Online.Security, 
                                          from=c("No"), to=c("0")))
data$Online.Security <- as.factor(mapvalues(data$Online.Security, 
                                          from=c("Yes"), to=c("1")))


data$Paperless.Billing <- as.factor(mapvalues(data$Paperless.Billing, 
                                            from=c("No"), to=c("0")))
data$Paperless.Billing <- as.factor(mapvalues(data$Paperless.Billing, 
                                            from=c("Yes"), to=c("1")))


data$Partner <- as.factor(mapvalues(data$Partner, 
                                              from=c("No"), to=c("0")))
data$Partner <- as.factor(mapvalues(data$Partner, 
                                              from=c("Yes"), to=c("1")))

data$Phone.Service <- as.factor(mapvalues(data$Phone.Service, 
                                    from=c("No"), to=c("0")))
data$Phone.Service <- as.factor(mapvalues(data$Phone.Service, 
                                    from=c("Yes"), to=c("1")))

data$Senior.Citizen <- as.factor(mapvalues(data$Senior.Citizen, 
                                          from=c("No"), to=c("0")))
data$Senior.Citizen <- as.factor(mapvalues(data$Senior.Citizen, 
                                          from=c("Yes"), to=c("1")))

data$Streaming.Movies <- as.factor(mapvalues(data$Streaming.Movies, 
                                           from=c("No"), to=c("0")))
data$Streaming.Movies <- as.factor(mapvalues(data$Streaming.Movies, 
                                           from=c("Yes"), to=c("1")))

data$Streaming.TV <- as.factor(mapvalues(data$Streaming.TV, 
                                             from=c("No"), to=c("0")))
data$Streaming.TV <- as.factor(mapvalues(data$Streaming.TV, 
                                             from=c("Yes"), to=c("1")))

data$Tech.Support <- as.factor(mapvalues(data$Tech.Support, 
                                         from=c("No"), to=c("0")))
data$Tech.Support <- as.factor(mapvalues(data$Tech.Support, 
                                         from=c("Yes"), to=c("1")))




data$Churn_Status <- as.factor(mapvalues(data$Churn_Status, 
                                         from=c("No"), to=c("0")))
data$Churn_Status <- as.factor(mapvalues(data$Churn_Status, 
                                         from=c("Yes"), to=c("1")))

data$Contract <- as.factor(mapvalues(data$Contract, 
                                         from=c("Month-to-month"), to=c("0")))
data$Contract <- as.factor(mapvalues(data$Contract, 
                                         from=c("One year"), to=c("1")))
data$Contract <- as.factor(mapvalues(data$Contract, 
                                         from=c("Two year"), to=c("2")))


data$Internet.Service <- as.factor(mapvalues(data$Internet.Service, 
                                             from=c("Fiber optic"), to=c("2")))

data$Internet.Service <- as.factor(mapvalues(data$Internet.Service, 
                                             from=c("DSL"), to=c("1")))
data$Internet.Service <- as.factor(mapvalues(data$Internet.Service, 
                                             from=c("No"), to=c("0")))


#data$Contract <- as.numeric(data$Contract)
data$Payment.Method <- as.factor(mapvalues(data$Payment.Method, 
                                           from=c("Bank transfer automatic"), to=c("3")))
data$Payment.Method <- as.factor(mapvalues(data$Payment.Method, 
                                           from=c("Credit card automatic"), to=c("2")))
data$Payment.Method <- as.factor(mapvalues(data$Payment.Method, 
                                           from=c("Electronic check"), to=c("1")))
data$Payment.Method <- as.factor(mapvalues(data$Payment.Method, 
                                           from=c("Mailed check"), to=c("0")))


data$Customer.ID <- NULL
data$Gender <- NULL


churn <- data$Churn_Status
 data$Churn_Status <- NULL
 
 
 


#/* TEST DATA SET */
data1 <- read.csv("D:Desktop/yashwant/assignment_2.csv", stringsAsFactors = FALSE)


library(plyr)
data1$Multiple.Lines <- as.factor(mapvalues(data1$Multiple.Lines, 
                                           from=c("No phone service"), to=c("No")))

data1$Online.Security <- as.factor(mapvalues(data1$Online.Security, 
                                            from=c("No internet service"), to=c("No")))
data1$Online.Backup <- as.factor(mapvalues(data1$Online.Backup, 
                                          from=c("No internet service"), to=c("No")))
data1$Device.Protection <- as.factor(mapvalues(data1$Device.Protection, 
                                              from=c("No internet service"), to=c("No")))
data1$Tech.Support <- as.factor(mapvalues(data1$Tech.Support, 
                                         from=c("No internet service"), to=c("No")))
data1$Streaming.Movies <- as.factor(mapvalues(data1$Streaming.Movies, 
                                             from=c("No internet service"), to=c("No")))
data1$Streaming.TV <- as.factor(mapvalues(data1$Streaming.TV, 
                                         from=c("No internet service"), to=c("No")))




data1$Multiple.Lines <- as.factor(mapvalues(data1$Multiple.Lines, 
                                           from=c("No"), to=c("0")))
data1$Multiple.Lines <- as.factor(mapvalues(data1$Multiple.Lines, 
                                           from=c("Yes"), to=c("1")))


data1$Dependents <- as.factor(mapvalues(data1$Dependents, 
                                       from=c("No"), to=c("0")))
data1$Dependents <- as.factor(mapvalues(data1$Dependents, 
                                       from=c("Yes"), to=c("1")))


data1$Device.Protection <- as.factor(mapvalues(data1$Device.Protection, 
                                              from=c("No"), to=c("0")))
data1$Device.Protection <- as.factor(mapvalues(data1$Device.Protection, 
                                              from=c("Yes"), to=c("1")))

data1$Online.Backup <- as.factor(mapvalues(data1$Online.Backup, 
                                          from=c("No"), to=c("0")))
data1$Online.Backup <- as.factor(mapvalues(data1$Online.Backup, 
                                          from=c("Yes"), to=c("1")))

data1$Online.Security <- as.factor(mapvalues(data1$Online.Security, 
                                            from=c("No"), to=c("0")))
data1$Online.Security <- as.factor(mapvalues(data1$Online.Security, 
                                            from=c("Yes"), to=c("1")))


data1$Paperless.Billing <- as.factor(mapvalues(data1$Paperless.Billing, 
                                              from=c("No"), to=c("0")))
data1$Paperless.Billing <- as.factor(mapvalues(data1$Paperless.Billing, 
                                              from=c("Yes"), to=c("1")))


data1$Partner <- as.factor(mapvalues(data1$Partner, 
                                    from=c("No"), to=c("0")))
data1$Partner <- as.factor(mapvalues(data1$Partner, 
                                    from=c("Yes"), to=c("1")))

data1$Phone.Service <- as.factor(mapvalues(data1$Phone.Service, 
                                          from=c("No"), to=c("0")))
data1$Phone.Service <- as.factor(mapvalues(data1$Phone.Service, 
                                          from=c("Yes"), to=c("1")))

data1$Senior.Citizen <- as.factor(mapvalues(data1$Senior.Citizen, 
                                           from=c("No"), to=c("0")))
data1$Senior.Citizen <- as.factor(mapvalues(data1$Senior.Citizen, 
                                           from=c("Yes"), to=c("1")))

data1$Streaming.Movies <- as.factor(mapvalues(data1$Streaming.Movies, 
                                             from=c("No"), to=c("0")))
data1$Streaming.Movies <- as.factor(mapvalues(data1$Streaming.Movies, 
                                             from=c("Yes"), to=c("1")))

data1$Streaming.TV <- as.factor(mapvalues(data1$Streaming.TV, 
                                         from=c("No"), to=c("0")))
data1$Streaming.TV <- as.factor(mapvalues(data1$Streaming.TV, 
                                         from=c("Yes"), to=c("1")))

data1$Tech.Support <- as.factor(mapvalues(data1$Tech.Support, 
                                         from=c("No"), to=c("0")))
data1$Tech.Support <- as.factor(mapvalues(data1$Tech.Support, 
                                         from=c("Yes"), to=c("1")))



data1$Contract <- as.factor(mapvalues(data1$Contract, 
                                     from=c("Month-to-month"), to=c("0")))
data1$Contract <- as.factor(mapvalues(data1$Contract, 
                                     from=c("One year"), to=c("1")))
data1$Contract <- as.factor(mapvalues(data1$Contract, 
                                     from=c("Two year"), to=c("2")))


data1$Internet.Service <- as.factor(mapvalues(data1$Internet.Service, 
                                             from=c("Fiber optic"), to=c("2")))

data1$Internet.Service <- as.factor(mapvalues(data1$Internet.Service, 
                                             from=c("DSL"), to=c("1")))
data1$Internet.Service <- as.factor(mapvalues(data1$Internet.Service, 
                                             from=c("No"), to=c("0")))



data1$Payment.Method <- as.factor(mapvalues(data1$Payment.Method, 
                                           from=c("Bank transfer automatic"), to=c("3")))
data1$Payment.Method <- as.factor(mapvalues(data1$Payment.Method, 
                                           from=c("Credit card automatic"), to=c("2")))
data1$Payment.Method <- as.factor(mapvalues(data1$Payment.Method, 
                                           from=c("Electronic check"), to=c("1")))
data1$Payment.Method <- as.factor(mapvalues(data1$Payment.Method, 
                                           from=c("Mailed check"), to=c("0")))




data1$Customer.ID <- NULL

data1$Churn_Status <- NULL




install.packages('rpart')
install.packages('rpart.plot')

library(rpart)
library(rpart.plot)
 
fit <- rpart(churn~., data = data, method = 'class')
rpart.plot(fit, extra = 106)

churn1 <-predict(fit, data1, type = 'class')

