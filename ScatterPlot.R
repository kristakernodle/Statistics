library(ggplot2)

CompleteData <- read.csv("/Users/Krista/Desktop/CompleteSets.csv")
PartialData <- read.csv("/Users/Krista/Desktop/10DayData.csv")
PT <- read.csv("/Users/Krista/Desktop/PreTraining.csv")
ab <- read.csv("/Users/Krista/Desktop/AbMovtDev.csv")

# Change All Decimals to Percentages:
CompleteData$AnySuc <- CompleteData$AnySuc*100
CompleteData$AnySucTrial <- CompleteData$AnySucTrial*100
CompleteData$FirstSuc <- CompleteData$FirstSuc*100
CompleteData$FirstSucTrials <- CompleteData$FirstSucTrials*100

PartialData$AnySuc <- PartialData$AnySuc*100
PartialData$AnySucTrial <- PartialData$AnySucTrial*100
PartialData$FirstSuc <- PartialData$FirstSuc*100
PartialData$FirstSucTrials <- PartialData$FirstSucTrials*100

# Plot: Complete Data Sets - Any Success, All Reaches
ggplot(CompleteData, aes(x=TrainingDay, y=AnySuc, color=Group)) + geom_point(position=position_dodge(0.2)) + 
  stat_summary(fun.y = mean, geom="line") + 
  stat_summary(fun.data = mean_se, geom = "errorbar", position = position_dodge(0.2)) + 
  scale_x_discrete(limits = c("1","2","3","4","5","6","7","8","9","10")) + 
  labs(title = "Learning Curve (Complete) \n Any Success (All Reaches)", x = "Training Day", y="Percent Success", colour = "Genotype") + 
  ylim(0,60) + theme(text = element_text(size=20))

# Plot: Complete Data Sets - Any Success, Trials (First Reaches)
ggplot(CompleteData, aes(x=TrainingDay, y=AnySucTrial, color=Group)) + geom_point(position=position_dodge(0.2)) + 
  stat_summary(fun.y = mean, geom="line") + 
  stat_summary(fun.data = mean_se, geom = "errorbar", position = position_dodge(0.2)) + 
  scale_x_discrete(limits = c("1","2","3","4","5","6","7","8","9","10")) + 
  labs(title = "Learning Curve (Complete Data Sets Only) \n Any Success (Trial)", x = "Training Day", y="Percent Success", colour = "Genotype") + 
  ylim(0,60) + theme(text = element_text(size=20))

# Plot: Complete Data Sets - First Success, All Reaches
ggplot(CompleteData, aes(x=TrainingDay, y=FirstSuc, color=Group)) + geom_point(position=position_dodge(0.2)) +
  stat_summary(fun.y = mean, geom="line") + 
  stat_summary(fun.data = mean_se, geom = "errorbar", position=position_dodge(0.2)) + 
  scale_x_discrete(limits = c("1","2","3","4","5","6","7","8","9","10")) + 
  labs(title = "Learning Curve (Complete Data Sets Only) \n First Success (All Reaches)", x = "Training Day", y="Percent Success", colour = "Genotype") +
  ylim(0,60) + theme(text = element_text(size=20))

# Plot: Complete Data Sets - First Success, Trials (First Reaches)
ggplot(CompleteData, aes(x=TrainingDay, y=FirstSucTrials, color=Group)) + geom_point(position=position_dodge(0.2)) + 
  stat_summary(fun.y = mean, geom="line") + 
  stat_summary(fun.data = mean_se, geom = "errorbar", position=position_dodge(0.2)) + 
  scale_x_discrete(limits = c("1","2","3","4","5","6","7","8","9","10")) + 
  labs(title = "Learning Curve (Complete Data Sets Only) \n First Success (Trial)", x = "Training Day", y="Percent Success", colour = "Genotype") +
  ylim(0,60) + theme(text = element_text(size=20))

# Plot: Complete Data Sets, Abnormal Movement Occurrence
ggplot(CompleteData, aes(x=TrainingDay, y=TotMovt, color=Group)) + geom_point(position=position_dodge(0.2)) +
  stat_summary(fun.y = mean, geom="line") + 
  stat_summary(fun.data = mean_se, geom = "errorbar", position=position_dodge(0.2)) + 
  scale_x_discrete(limits = c("1","2","3","4","5","6","7","8","9","10")) + 
  labs(title = "Abnormal Movement Occurrence", x = "Training Day", y="Number of Occurences", colour = "Genotype") +
  ylim(0,55) + theme(text = element_text(size=20))

# Plot: Partial Data Sets - Any Success, All Reaches
ggplot(PartialData, aes(x=TrainingDay, y=AnySuc, color=Group)) + geom_point(position=position_dodge(0.2))+ 
  stat_summary(fun.y = mean, geom="line") + 
  stat_summary(fun.data = mean_se, geom = "errorbar", position=position_dodge(0.2)) + 
  scale_x_discrete(limits = c("1","2","3","4","5","6","7","8","9","10")) + 
  labs(title = "Learning Curve \n Any Success (All Reaches)", x = "Training Day", y="Percent Success", colour = "Genotype") +
  ylim(0,60) + theme(text = element_text(size=20))

# Plot: Partial Data Sets - Any Success, Trial (First Reaches)
ggplot(PartialData, aes(x=TrainingDay, y=AnySucTrial, color=Group)) + geom_point(position=position_dodge(0.2)) +
  stat_summary(fun.y = mean, geom="line") + 
  stat_summary(fun.data = mean_se, geom = "errorbar", position=position_dodge(0.2)) + 
  scale_x_discrete(limits = c("1","2","3","4","5","6","7","8","9","10")) + 
  labs(title = "Learning Curve \n Any Success (Trial)", x = "Training Day", y="Percent Success", colour = "Genotype") +
  ylim(0,60) + theme(text = element_text(size=20))

# Plot: Partial Data - First Success, All Reaches
ggplot(PartialData, aes(x=TrainingDay, y=FirstSuc, color=Group)) + geom_point(position=position_dodge(0.2))+ 
  stat_summary(fun.y = mean, geom="line") + 
  stat_summary(fun.data = mean_se, geom = "errorbar", position=position_dodge(0.2)) + 
  scale_x_discrete(limits = c("1","2","3","4","5","6","7","8","9","10")) + 
  labs(title = "Learning Curve \n First Success (All Reaches)", x = "Training Day", y="Percent Success", colour = "Genotype") +
  ylim(0,60) + theme(text = element_text(size=20))

# Plot: Partial Data Sets - First Success, Trials (First Reaches)
ggplot(PartialData, aes(x=TrainingDay, y=FirstSucTrials, color=Group)) + geom_point(position=position_dodge(0.2)) + 
  stat_summary(fun.y = mean, geom="line") + 
  stat_summary(fun.data = mean_se, geom = "errorbar", position=position_dodge(0.2)) + 
  scale_x_discrete(limits = c("1","2","3","4","5","6","7","8","9","10")) + 
  labs(title = "Learning Curve \n First Success (Trial)", x = "Training Day", y="Percent Success", colour = "Genotype") +
  ylim(0,60) + theme(text = element_text(size=20))

# Plot: Partial Data Sets - Abnormal Movement Occurrences
ggplot(PartialData, aes(x=TrainingDay, y=TotMovt, color=Group)) + geom_point(position=position_dodge(0.2)) + 
  stat_summary(fun.y = mean, geom="line") + 
  stat_summary(fun.data = mean_se, geom = "errorbar", position=position_dodge(0.2)) + 
  scale_x_discrete(limits = c("1","2","3","4","5","6","7","8","9","10")) + 
  labs(title = "Abnormal Movement Occurrence", x = "Training Day", y="Number of Occurences", colour = "Genotype") +
  ylim(0,55) + 
  theme(text = element_text(size=20))

# Plot: Days of Pretraining by Group
ggplot(PT, aes(Genotype,PTDays, fill = Group)) + 
  geom_bar(position = pd, stat = 'summary', fun.y='mean')+ 
  geom_errorbar(stat='summary', position = pd, width = 0.5) + 
  geom_point(aes(x = Genotype), shape = 21, position = pd) + 
  labs(title = "Days of Pretraining by Group", y = "Days Pretraining") + 
  theme(text = element_text(size=20))

# Plot: Days of Pretraining by Genotype
ggplot(PT, aes(Genotype,PTDays, fill = Group)) + 
  geom_bar(position = pd, stat = 'summary', fun.y='mean')+ 
  geom_errorbar(stat='summary', position = pd, width = 0.5) + 
  geom_point(aes(x = Genotype), shape = 21, position = pd) + 
  labs(title = "Days of Pretraining by Group", y = "Days Pretraining") + 
  scale_x_discrete(limits = c("Flx+", "CreFlx+", "KOFlx", "CreKOFlx")) +
  theme(text = element_text(size=20))


# Number of Reaches Between Trials
ggplot(PartialData, aes(x=TrainingDay, y=S7, color=Group)) + geom_point(position=position_dodge(0.2)) + 
  stat_summary(fun.y = mean, geom="line") + 
  stat_summary(fun.data = mean_se, geom = "errorbar", position=position_dodge(0.2)) + 
  scale_x_discrete(limits = c("1","2","3","4","5","6","7","8","9","10")) + 
  labs(title = "Between Trial Reaches", x = "Training Day", y="Number of Reaches", colour = "Genotype") +
  theme(text = element_text(size=20))

# Percent Second Success out of All Success

SS <- PartialData$S2/(PartialData$S1 + PartialData$S2)
PartialData <- PartialData + SS
ggplot(PartialData, aes(x=TrainingDay, y=S7, color=Group)) + geom_point(position=position_dodge(0.2)) + 
  stat_summary(fun.y = mean, geom="line") + 
  stat_summary(fun.data = mean_se, geom = "errorbar", position=position_dodge(0.2)) + 
  scale_x_discrete(limits = c("1","2","3","4","5","6","7","8","9","10")) + 
  labs(title = "Between Trial Reaches", x = "Training Day", y="Number of Reaches", colour = "Genotype") +
  theme(text = element_text(size=20))

ggplot(ab, aes(Group,tptday)) + 
  geom_bar(position = pd, stat = 'summary', fun.y='mean', width=0.5)+ 
  geom_errorbar(stat='summary', position = pd, width = 0.25) + 
  geom_point(aes(x = Group), shape = 21, position = pd) + 
  labs(title = "Days Reaching Before First Aberrant Movement", y = "Days Reaching") + 
  theme(text = element_text(size=20))

ggplot(newSet, aes(x=Data.TrainDay)) + 
  stat_summary(aes(y=newSet$Data.movtPerc,fill=newSet$Data.Group), color = "black",fun.y=mean, geom = "bar", position = position_dodge(0.2)) +
  scale_fill_manual(values=c("#87a4fe", "#ffcfcf")) +
  geom_point(aes(y=newSet$Data.firstSuc, color=newSet$Data.Group),position=position_dodge(0.2)) +
  stat_summary(aes(y=newSet$Data.firstSuc,color=newSet$Data.Group),fun.y = mean, geom="line") + 
  stat_summary(aes(y=newSet$Data.firstSuc,color=newSet$Data.Group), fun.y=mean, fun.data = mean_se, geom = "errorbar", position = position_dodge(0.2)) +
  scale_color_manual(values=c("#003dff", "#ff0000")) +
  theme(legend.title=element_blank()) +
  scale_x_discrete(limits = c("1","2","3","4","5","6","7","8","9","10")) + ylim(0,65)+
  labs(title = "First Success Learning Curves and \n Aberrant Behavior Development", x = "Training Day", y="Percent") + 
  theme(text = element_text(size=20),plot.title = element_text(hjust = 0.5))

ggplot(newSet, aes(x=Data.TrainDay)) + 
  stat_summary(aes(y=newSet$Data.movtPerc,fill=newSet$Data.Group),fun.y=mean, geom = "area", position = position_dodge(0.2)) +
  scale_fill_manual(values=c("#87a4fe", "#ffcfcf")) +
  geom_point(aes(y=newSet$Data.firstSuc, color=newSet$Data.Group),position=position_dodge(0.2)) +
  stat_summary(aes(y=newSet$Data.firstSuc,color=newSet$Data.Group),fun.y = mean, geom="line") + 
  stat_summary(aes(y=newSet$Data.firstSuc,color=newSet$Data.Group), fun.y=mean, fun.data = mean_se, geom = "errorbar", position = position_dodge(0.2)) +
  scale_color_manual(values=c("#003dff", "#ff0000")) +
  theme(legend.title=element_blank()) +
  scale_x_discrete(limits = c("1","2","3","4","5","6","7","8","9","10")) + ylim(0,65)+
  labs(title = "First Success Learning Curves and \n Aberrant Behavior Development", x = "Training Day", y="Percent") + 
  theme(text = element_text(size=20),plot.title = element_text(hjust = 0.5))


ggplot(Data, aes(x=TrainDay)) + 
  stat_summary(aes(y=movtNew,fill=newSet$Data.Group), color = "black",fun.y=mean, geom = "bar", position = position_dodge(0.2)) +
  scale_fill_manual(values=c("#87a4fe", "#ffcfcf")) +
  geom_point(aes(y=newSet$Data.firstSuc, color=newSet$Data.Group),position=position_dodge(0.2)) +
  stat_summary(aes(y=newSet$Data.firstSuc,color=newSet$Data.Group),fun.y = mean, geom="line") + 
  stat_summary(aes(y=newSet$Data.firstSuc,color=newSet$Data.Group), fun.y=mean, fun.data = mean_se, geom = "errorbar", position = position_dodge(0.2)) +
  scale_color_manual(values=c("#003dff", "#ff0000")) +
  theme(legend.title=element_blank()) +
  scale_x_discrete(limits = c("1","2","3","4","5","6","7","8","9","10")) +
  scale_y_continuous(limits=c(0,65), "Percent Success", sec.axis=sec_axis(~.*0.5, name="Number of Aberrant Reaches") ) + 
  theme(text = element_text(size=20),plot.title = element_text(hjust = 0.5)) +
  labs(title = "First Success Learning Curves and \n Aberrant Behavior Development", x = "Training Day")

ggplot(Data, aes(x=TrainDay)) + 
  stat_summary(aes(y=movtNew,fill=newSet$Data.Group),fun.y=mean, geom = "area", position = position_dodge(0.2)) +
  scale_fill_manual(values=c("#87a4fe", "#ffcfcf")) +
  geom_point(aes(y=newSet$Data.firstSuc, color=newSet$Data.Group),position=position_dodge(0.2)) +
  stat_summary(aes(y=newSet$Data.firstSuc,color=newSet$Data.Group),fun.y = mean, geom="line") + 
  stat_summary(aes(y=newSet$Data.firstSuc,color=newSet$Data.Group), fun.y=mean, fun.data = mean_se, geom = "errorbar", position = position_dodge(0.2)) +
  scale_color_manual(values=c("#003dff", "#ff0000")) +
  theme(legend.title=element_blank()) +
  scale_x_discrete(limits = c("1","2","3","4","5","6","7","8","9","10")) +
  scale_y_continuous(limits=c(0,65), "Percent Success", sec.axis=sec_axis(~.*0.5, name="Number of Aberrant Reaches") ) + 
  theme(text = element_text(size=20),plot.title = element_text(hjust = 0.5)) +
  labs(title = "First Success Learning Curves and \n Aberrant Behavior Development", x = "Training Day")


library(cowplot)

p1<- ggplot(last, aes(x=TrainDay)) + geom_point(aes(y=last$firstSuc, color=last$Group),position=position_dodge(0.2)) +
  stat_summary(aes(y=last$firstSuc,color=last$firstSuc),fun.y = mean, geom="line") + 
  stat_summary(aes(y=last$firstSuc,color=last$Group), fun.y=mean, fun.data = mean_se, geom = "errorbar", position = position_dodge(0.2)) +
  scale_color_manual(values=c("Red","Purple","Blue"), breaks=c("Wildtype","Heterozygous","Knock-Out")) +
  theme(legend.title=element_blank()) +
  scale_x_discrete(limits = c("1","2","3","4","5","6","7","8","9","10")) + ylim(0,100) +
  labs(title = "First Success Learning Curves and \n Occurrences of Aberrant Behavior",y="Percent Success",x="") +
  theme(text = element_text(size=20),plot.title = element_text(hjust = 0.5,size=26))

p2 <- ggplot(Data, aes(x=TrainDay)) + 
  stat_summary(aes(y=movtNew,fill=newSet$Data.Group), color = "black",fun.y=mean, geom = "bar", position = position_dodge(0.2)) +
  scale_fill_manual(values=c("#87a4fe", "#ffcfcf")) +
  scale_x_discrete(limits = c("1","2","3","4","5","6","7","8","9","10")) + 
  labs(x="Training Day", y = "Occurrences") + 
  theme(text = element_text(size=20),plot.title = element_text(hjust = 0.5)) + 
  theme(legend.title=element_blank()) 

plot_grid(p1,
          p2, 
          align = 'v', rel_heights = c(4,1), nrow=2)

ggplot(byTD, aes(x=TrainingDay)) + 
  stat_summary(aes(y=percAnim,fill=byTD$Group), color = "black",fun.y=mean, geom = "bar", position = position_dodge(0.2)) +
  scale_fill_manual(values=c("Purple","Red","Blue"),breaks=c("Wildtype","Heterozygous","Knock-Out")) +
  scale_x_discrete(limits = c("1","2","3","4","5","6","7","8","9","10")) + 
  labs(title="Percent of Animals that Develop Aberrant Behavior",x="Training Day", y = "Percent") + 
  theme(text = element_text(size=20),plot.title = element_text(hjust = 0.5)) + 
  theme(legend.title=element_blank())

ggplot(nlast, aes(x=TrainDay)) + geom_point(aes(y=nlast$firstSuc, color=nlast$Group),position=position_dodge(0.2)) +
  stat_summary(aes(y=nlast$firstSuc,color=nlast$firstSuc),fun.y = mean, geom="line") + 
  stat_summary(aes(y=nlast$firstSuc,color=nlast$Group), fun.y=mean, fun.data = mean_se, geom = "errorbar", position = position_dodge(0.2)) +
  scale_color_manual(values=c("Red","Purple","Blue"), breaks=c("Heterozygous","Knock-Out","Wildtype")) +
  theme(legend.title=element_blank()) +
  scale_x_discrete(limits = c("1","2","3","4","5","6","7","8","9","10")) + ylim(0,100) +
  labs(title = "First Success Learning Curves and \n Occurrences of Aberrant Behavior",y="Percent Success",x="") +
  theme(text = element_text(size=20),plot.title = element_text(hjust = 0.5,size=26))
