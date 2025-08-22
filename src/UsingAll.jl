module UsingAll

export @useall

"""
    @useall SomeModule

`@useall` is the equivalent of `Python`'s `from X import *`,
and is intended to be used only for debugging and developing purposes, 
and not as part of any packages (really, **please don't!**)

Calling `@useall MyModule` will make all names (internal and external)
in `MyModule` available, mimicking being inside the package. 
This can be useful when debugging code to avoid using qualified names,
or when developing new functions in the REPL belonging to a package for quick 
prototyping (note that qualifying with `MyModule.foo` is still required to 
overload methods)
"""
macro useall(modexpr)
    mod = Core.eval(__module__, modexpr)
    return useall(mod)
end

function useall(m::Module)
    ex = :(using $(nameof(m)): _)
    items = ex.args[1].args
    pop!(items) # remove "_"
    for n in names(m; all = true)
        if n ∉ [Symbol("#eval"), Symbol("#include"), nameof(m), :eval, :include]
            push!(items, Expr(:., n))
        end
    end
    return ex
end

end
