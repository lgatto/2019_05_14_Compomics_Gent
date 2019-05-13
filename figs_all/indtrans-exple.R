p1 <- c(0, 0)
p2 <- c(0.7, 0.5)
x1 <- rbind(c(0.2, 0.2),
            c(-0.3, -0.8),
            c(-0.2, 1.3))
x2 <- rbind(c(1, 1),
            c(0.5, 0.7))
x3 <- c(1.5, -.9)
x <- rbind(p1, p2, x1, x2, x3)
col <- c("black", "black",
         rep("steelblue", 3),
         rep("red", 2),
         "darkgreen")

pdf("indtrans-exple.pdf")
plot(x, pch = 19, col = col,
     cex = 5, xlab = "", ylab = "",
     xaxt = "n", yaxt = "n")
grid()
text(p1[1], p1[2], "1", col = "white", cex = 2)
text(p2[1], p2[2], "2", col = "white", cex = 2)

for (i in 1:3)
    segments(p1[1], p1[2],
             x1[i, 1], x1[i, 2],
             lty = "dotted",
             col = "steelblue")
segments(p2[1], p2[2],
         x1[1, 1], x1[1, 2],
         lty = "dotted",
         col = "steelblue")
for (i in 1:2)
    segments(p2[1], p2[2],
             x2[i, 1], x2[i, 2],
             lty = "dotted",
             col = "red")
legend("topright",
       legend = expression(c[1], c[2], c[3]),
       pch = 19,
       col = c("steelblue", "red", "darkgreen"),
       cex = 2,
       bty = "n")
dev.off()
