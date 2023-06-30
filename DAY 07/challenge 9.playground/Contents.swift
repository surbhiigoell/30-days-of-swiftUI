//Challenge 1

struct TaxCalculator{
    
    var tax:Double = 30.0
    
    func totalWithTax(amount:Double) -> Double {
        return amount + (tax/100 * amount)
    }
}

var a = TaxCalculator()

print(a.totalWithTax(amount: 1000.0))


//Challenge 2

struct BillSplitter{
    
    
    func splitBy(subtotal: Double, people:Int) ->Double{
        var tax = TaxCalculator()
        let total = tax.totalWithTax(amount: subtotal)
        
        return total/Double(people)
    }
}

//Challenge 3

var b = BillSplitter()

print(b.splitBy(subtotal: 120.0, people: 5))
