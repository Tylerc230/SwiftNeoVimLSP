let my_struct = MyStruct()
let my_struct2 = MyStruct()
my_struct.printer("hi")
let my_array = [1]
print("\(my_array.first!)")


if CommandLine.arguments.count != 2 {
    print("Usage: hello NAME")
} else {
    let name = CommandLine.arguments[1]
    sayHello(name: name)
}
