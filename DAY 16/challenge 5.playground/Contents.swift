var stringArray = ["jennie", "rosie", "lisa", "jisoo"]

class Person {
    public var name:String = ""
    
    func introduceMyself() {
        print("My name is \(name)")
    }
}

class Chef : Person {
    override func introduceMyself() {
        super.introduceMyself()
        print("I am a Chef")
    }
}

class Poet : Person {
    override func introduceMyself() {
        super.introduceMyself()
        print("I am a Poet")
    }
}

class Astronaut : Person {
    override func introduceMyself() {
        super.introduceMyself()
        print("I am an Astronaut")
    }
}

for _ in 1...10 {
    let randClass = Int.random(in: 1...3)
    if randClass==1 {
        let p = Chef()
        let randName = Int.random(in: 0...3)
        p.name = stringArray[randName]
        
        p.introduceMyself()
    }
    else if randClass==2 {
        let p = Poet()
        let randName = Int.random(in: 0...3)
        p.name = stringArray[randName]
        
        p.introduceMyself()
    }
    else {
        let p = Astronaut()
        let randName = Int.random(in: 0...3)
        p.name = stringArray[randName]
        
        p.introduceMyself()
    }
    
}
