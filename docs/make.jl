using AdaptiveEvaluation
using Documenter

DocMeta.setdocmeta!(AdaptiveEvaluation, :DocTestSetup, :(using AdaptiveEvaluation); recursive=true)

makedocs(;
    modules=[AdaptiveEvaluation],
    authors="Federico Cerisola <federico@cerisola.net>",
    repo="https://github.com/cerisola/AdaptiveEvaluation.jl/blob/{commit}{path}#{line}",
    sitename="AdaptiveEvaluation.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://cerisola.github.io/AdaptiveEvaluation.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/cerisola/AdaptiveEvaluation.jl",
    devbranch="main",
)
