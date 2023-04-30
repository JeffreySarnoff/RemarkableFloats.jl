using Documenter

makedocs(;
    modules=[RemarkableFloats],
    authors="Jeffrey Sarnoff <jeffrey.sarnoff@gmail.com>",
    repo="https://github.com/JeffreySarnoff/RemarkableFloats.jl",
    sitename="RemarkableFloats.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/JeffreySarnoff/RemarkableFloats.jl",
    push_preview=true,
    devbranch="main",
)
