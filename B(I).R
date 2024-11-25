library(latex2exp)
x <- c(0.00, 0.19, 0.41, 0.60, 0.83, 1.03, 1.20, 1.41)
y <- c(0.000, 0.181, 0.375, 0.556, 0.736, 0.889, 1.014, 1.056)


plot(   x,
        y,
        xlab = TeX(r'($I_{M}$)'),
        ylab = TeX(r'($R$)'),
        )

arrows(x0 = x,
       y0 = y - 0.014,
       x1 = x,
       y1 = y + 0.014,
       code = 3,
       angle = 90,
       length = 0.025,
       col = "red"
)

arrows(x0 = x - 0.01,
       y0 = y,
       x1 = x + 0.01,
       y1 = y,
       code = 3,
       angle = 90,
       length = 0.025,
       col = "red"
)
grid()
dev.print(pdf, "B(I).pdf")
