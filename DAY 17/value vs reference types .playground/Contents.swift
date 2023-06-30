//value type

struct TalkShowHost {
    var name = ""
}

func talk(p: TalkShowHost) {
    var c = p
    c.name = "Bob"
}

var a = TalkShowHost()

a.name = "David"

var b = a

b.name = "Bell"

print(a.name)
print(b.name)

talk(p: a)
print(a.name)

//reference types

class Comedian {
    var name=""
}

func joke(p:Comedian)
{
    p.name = "zyan"
}

var d = Comedian()
d.name = "gigi"

var e=d
e.name = "bella"

print(d.name)
print(e.name)

joke(p: d)

print(d.name)
print(e.name)
