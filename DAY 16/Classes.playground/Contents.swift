//use final keyword so that class can not be inhrited
class Person {
    
    public
    var name = ""
    
    func job() {
        print("tell your job")
    }
}


//class Chef: Person, View
//person is class
//View is a protocol
//struct can follow protocols but not inherit classes
class Chef : Person {
    override func job() {
        print("I cook")

        super.job()
    }
}

class Painter : Person {
    override func job() {
        print("I paint")
    }
}

var c = Chef()
c.job()

var p = Painter()
p.job()
