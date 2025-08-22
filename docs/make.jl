using UsingAll
using Documenter

DocMeta.setdocmeta!(UsingAll, :DocTestSetup, :(using UsingAll); recursive=true)

makedocs(;
    modules=[UsingAll],
    authors="Knut Andreas Meyer and contributors",
    sitename="UsingAll.jl",
    format=Documenter.HTML(;
        canonical="https://KnutAM.github.io/UsingAll.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/KnutAM/UsingAll.jl",
    devbranch="main",
)
