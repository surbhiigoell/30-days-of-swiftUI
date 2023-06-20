// challenge 1

func goodMorning() {
    print("Good Morning")
}

goodMorning()

// chanllenge 2

func printTotalWithTax(subTotal:Double) {
    print(subTotal*1.13)
}

printTotalWithTax(subTotal: 3.0)

// challenge 3

func getTotalWithTax(subTotal:Double) ->Double {
    return subTotal*1.13
}

let tax:Double = getTotalWithTax(subTotal: 3.0)
print(tax)

// challenge 4

func calculateTotalWithTax(subTotal: Double, tax:Double) ->Double {
    return subTotal*tax
}

let tax2:Double = calculateTotalWithTax(subTotal: 3.0, tax: 1.13)
print(tax2)
