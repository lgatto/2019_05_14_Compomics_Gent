px <- read.csv("px_evolution_Nov_2014_for_Laurent.csv", sep = "\t",
               stringsAsFactors = FALSE)
px$Date <- as.Date(paste0(px$Date,"-01"), "%Y-%m-%d")

byyr <- tapply(px$Monthly, substr(px$Date,1, 4), sum)

pdf("px_submission.pdf", height = 4, width = 6)
ggplot(aes(x = Date, y = Monthly), data = px) +
    geom_bar(stat = "identity") +
        theme(axis.title.x = element_blank()) +
            labs(title = paste("ProteomeXchange submission\n",
                     paste(paste(names(byyr), byyr, sep = ": "),
                           collapse = "         ")))
dev.off()
