library(ggplot2)

Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_poll   <- c(  4,      62,      51,    21,      2,        14,       15)
CBS_poll   <- c( 12,      75,      43,    19,      1,        21,       19)

#combine to df
df_polls <- data.frame(Name, ABC_poll, CBS_poll)

str(df_polls)

head(df_polls)

abc_mean <- mean(df_polls$ABC_poll)
abc_median <- median(df_polls$ABC_poll)
abc_range <- diff(range(df_polls$ABC_poll))

cbs_mean <- mean(df_polls$CBS_poll)
cbs_median <- median(df_polls$CBS_poll)
cbs_range <- diff(range(df_polls$CBS_poll))

cat("ABC Poll: Mean: ", abc_mean, " Median: " , abc_median, "Range: ", abc_range)
cat("CBS Poll: Mean: ", cbs_mean, " Median: " , cbs_median, "Range: ", cbs_range)
#Add a column for the difference between CBS and ABC
df_polls$Diff <- df_polls$CBS_poll - df_polls$ABC_poll


df_long <- data.frame(
  Name = rep(df_polls$Name, 2),
  Poll = rep(c("ABC Poll", "CBS Poll"), each = nrow(df_polls)),
  Value = c(df_polls$ABC_poll, df_polls$CBS_poll)
)

# Plot
ggplot(df_long, aes(x = Name, y = Value, fill = Poll)) +
  geom_col(position = position_dodge(width = 0.7)) +
  labs(x = "Candidate", y = "Poll", title = "ABC vs CBS Poll") +
  scale_fill_manual(values = c("ABC Poll" = "blue", "CBS Poll" = "red"))
  

