dat <- read.csv("/Users/Krista/Box Sync/dataCorr.csv")


# Color by Experiment 

tFreqPlot = ggplot(dat,aes(x=tFreq,y=abPerc,color=expt)) + 
  geom_point() + 
  labs(title="Trial Frequency vs Abnormal Movement",x="Trial Frequency (/min)",y="Abnormal Movement (% Trials)",colour="Experiment")

tDayPlot = ggplot(dat,aes(x=tDay,y=abPerc,color=expt)) + 
  geom_point() + 
  labs(title="Training Days vs Abnormal Movement",x="Training Day",y="Abnormal Movement (% Trials)",colour="Experiment")

anySucPlot = ggplot(dat,aes(x=anySuc,y=abPerc,color=expt)) + 
  geom_point() + 
  labs(title="Any Success vs Abnormal Movement",x="Success Rate (obtain pellet/trials)",y="Abnormal Movement (% Trials)",colour="Experiment")

firstSucPlot = ggplot(dat,aes(x=firstSuc,y=abPerc,color=expt)) + 
  geom_point() + 
  labs(title="First Success vs Abnormal Movement",x="First Success Rate (obtain pellet on first try/trials)",y="Abnormal Movement (% Trials)",colour="Experiment")

totTrialPlot = ggplot(dat,aes(x=totTrial,y=abPerc,color=expt)) + 
  geom_point() + 
  labs(title="Total Trials vs Abnormal Movement",x="Total Trials",y="Abnormal Movement (% Trials)",colour="Experiment")

tDayFreq = ggplot(dat,aes(x=tDay,y=tFreq,color=expt)) +
  geom_point() +
  labs(title="Changes in Trial Frequency During Training",x="Training Day",y="Trial Frequency (/min)",colour="Experiment")

# Explore - No abnormal movement

dat1 <- read.csv("/Users/Krista/Box Sync/noAbBeh.csv")

ggplot(dat1,aes(tFreq,col=I("black"),fill=expt)) +
  geom_histogram(breaks=seq(0, 12, by = 0.5)) +
  labs(title="All Training Days with No Abnormal Movements",x="Trial Frequency (/min)",y="Number of Days",fill="Experiment") +
  xlim(c(0,12))

dat2 <- read.csv("/Users/Krista/Box Sync/abBeh.csv")

ggplot(dat2,aes(tFreq,col=I("black"),fill=expt)) +
  geom_histogram(breaks=seq(0, 12, by = 0.5)) +
  labs(title="All Training Days with Abnormal Movements",x="Trial Frequency (/min)",y="Number of Days",fill="Experiment") + 
  xlim(c(0,12))