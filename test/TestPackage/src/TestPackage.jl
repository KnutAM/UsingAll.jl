module TestPackage

export greet

greet() = print("Hello World!")

macro testmacro()
    return :(println("Test macro"))
end

struct TestStruct{N}
    v::Bool
end

const CONSTANT_TEST = 2

private_greet() = println("Private greeting")

end # module TestPackage
