//unwrapped optionals
var a:Int! = nil

if a != nil {
    var b = 1+a
}
//optionals

var c:Int? = nil

if c != nil {
    let e=1+c!
}

if let y = c{
    var d = 1+y
}


struct Person {
    
    var name = "toby"
    
    func talk() {
        print("hello")
    }
}

var p:Person? = nil
p?.name
p?.talk()
p?.name
p?.talk()
