#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

#profit after each month
profit<-revenue-expenses
profit

#profit after tax for each month

profit_after_tax<-profit-round(profit*0.3,2)
profit_after_tax

#profit margins for each month

profit.margin.eachMonth<-round(profit_after_tax/revenue,2)*100
paste(profit.margin.eachMonth,"%")

#goodMonth
MeanOftheyear<-mean(profit_after_tax)

good.month<-profit_after_tax>MeanOftheyear
good.month

#badmonths
bad.months<-!good.month
bad.months

#bestMonth
best.month<-profit_after_tax==max(profit_after_tax)
best.month

#Worst.month
worst.month<-profit_after_tax==min(profit_after_tax)
worst.month



#units of thousands

revenue.1000<-round(revenue/1000)
expenses.1000<-round(expenses/1000)
profit.1000<-round(profit/1000)
profit_after_tax.1000<-round(profit_after_tax/1000)


#output
revenue.1000
expenses.1000
profit.1000
profit_after_tax.1000
profit.margin.eachMonth
good.month
bad.months
best.month
worst.month

#matrices
m<-rbind(
  revenue.1000,
  expenses.1000,
  profit.1000,
  profit_after_tax.1000,
  profit.margin.eachMonth,
  good.month,
  bad.months,
  best.month,
  worst.month
)

m





