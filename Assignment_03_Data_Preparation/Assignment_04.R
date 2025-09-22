#library(ggplot2)

Frequency     <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BloodPressure <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
FirstAssess   <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)    # bad=1, good=0
SecondAssess  <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)    # low=0, high=1
FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)    # low=0, high=1

#Little confused with the instructions... 
#Define each vector in R, converting categorical strings to numeric codes (bad=1, good=0; low=0, high=1) and handling NA appropriately

# "converting categorical strings to numeric codes"
# So i coverted it to categorical string and then back again to numberic codes. 
# printing summary df of the categorical codes
#Convert to categorical strings

FirstAssess_char <- ifelse(FirstAssess == 1, "bad",
                      ifelse(FirstAssess == 0, "good", NA))
SecondAssess_char <- ifelse(SecondAssess == 1, "high",
                       ifelse(SecondAssess == 0, "low", NA))
FinalDecision_char <- ifelse(FinalDecision == 1, "high",
                        ifelse(FinalDecision == 0, "low", NA))

df_hosp_converted <- data.frame(
  Frequency, BloodPressure, FirstAssess_char,
  SecondAssess_char, FinalDecision_char, stringsAsFactors = TRUE
)
summary(df_hosp_converted)

#Conver to numeric codes
FirstAssess <- ifelse(FirstAssess_char == "bad", 1,
                  ifelse(FirstAssess_char == "good", 0, NA))
SecondAssess <- ifelse(SecondAssess_char == "high", 1,
                   ifelse(SecondAssess_char == "low", 0, NA))
FinalDecision <- ifelse(FinalDecision_char == "high", 1,
                    ifelse(FinalDecision_char == "low", 0, NA))

df_hosp <- data.frame(
  Frequency, BloodPressure, FirstAssess,
  SecondAssess, FinalDecision, stringsAsFactors = FALSE
)
# Inspect and handle NA:
summary(df_hosp)
df_hosp <- na.omit(df_hosp)

#Generate Basic Visualizations

#make box plots side by side
par(mfrow = c(1, 3))  

boxplot(
  BloodPressure ~ FirstAssess,
  data = df_hosp,
  names = c("Good","Bad"),
  ylab = "Blood Pressure",
  main = "BP by First MD Assessment"
)

boxplot(
  BloodPressure ~ SecondAssess,
  data = df_hosp,
  names = c("Low","High"),
  ylab = "Blood Pressure",
  main = "BP by Second MD Assessment"
)

boxplot(
  BloodPressure ~ FinalDecision,
  data = df_hosp,
  names = c("Low","High"),
  ylab = "Blood Pressure",
  main = "BP by Final Decision"
)

#Histograms

#make side by side
par(mfrow= c(1,2))

hist(
  df_hosp$Frequency,
  breaks = seq(0, 1, by = 0.1),
  xlab = "Visit Frequency",
  main = "Histogram of Visit Frequency"
)

hist(
  df_hosp$BloodPressure,
  breaks = 8,
  xlab = "Blood Pressure",
  main = "Histogram of Blood Pressure"
)
