using SequGen
using Documenter

DocMeta.setdocmeta!(SequGen, :DocTestSetup, :(using SequGen); recursive=true)

makedocs(;
    modules=[SequGen],
    authors="Abel Soares Siqueira <abel.s.siqueira@gmail.com> and contributors",
    repo="https://github.com/abelsiqueira/SequGen.jl/blob/{commit}{path}#{line}",
    sitename="SequGen.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://abelsiqueira.github.io/SequGen.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/abelsiqueira/SequGen.jl",
    devbranch="main",
)
