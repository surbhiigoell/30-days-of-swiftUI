var d:[String:String] = [String:String]()

d["jib"] = "h"

print(d["jib"])

d["jib"] = "j"

print(d["jib"])

d["jib"] = nil

print(d["jib"])

var b = ["hey":"you", "hi":"there"]

for kvp in b {
    print(kvp.key)
    print(kvp.value)
}

for (key, value) in b {
    print(key)
    print(value)
}

var c:(String,String) = ("hello","world")

c.0
c.1

