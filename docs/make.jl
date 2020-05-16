using Documenter, TwoBit

Documenter.post_status(; type = "pending", repo = "github.com/BioJulia/TwoBit.jl.git")

makedocs(
    format = Documenter.HTML(
        prettyurls = haskey(ENV, "GITHUB_ACTIONS")
    ),
    modules = [TwoBit],
    sitename = "TwoBit.jl",
    doctest = false,
    strict = false,
    pages = [
        "Home" => "index.md",
        "Manual" => [
            "TwoBit Records" => "man/records.md",
            "Reading files" => "man/reading.md",
            "Writing files" => "man/writing.md"
        ],
    ],
    authors = "Ben J. Ward."
)

deploydocs(
    repo = "github.com/BioJulia/TwoBit.jl.git",
    push_preview = true
)