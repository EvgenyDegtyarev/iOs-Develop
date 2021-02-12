
var i: Float = 0 // счетчик
var period: Float = 5 //срок вклада
var summ: Float = 1000 // начальная сумма вклада
var perc: Float = 4.2 // процентная ставка в год

repeat {
    summ = summ * (perc / 100 + 1)
    i+=1
} while i < period

print("Через \(period) лет сумма вклада с учетом процентов составит \(summ)")




