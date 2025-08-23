using UsingAll
using Test
using TestPackage

@testset "Before @useall" begin    
    for name in [:TestPackage, :greet]
        @test isdefined(Main, name)
    end
    for name in [Symbol("@testmacro"), :TestStruct, :CONSTANT_TEST, :private_greet, :B]
        @test !isdefined(Main, name)
    end
end

@useall TestPackage

@testset "After @useall" begin
    for name in [:TestPackage, :greet, Symbol("@testmacro"), :TestStruct, :CONSTANT_TEST, :private_greet, :B]
        @test isdefined(Main, name)
    end
end
