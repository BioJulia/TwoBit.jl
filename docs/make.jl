using Documenter, Pkg, TwoBit

DocMeta.setdocmeta!(TwoBit, :DocTestSetup, :(using TwoBit); recursive=true)

makedocs(
    format = Documenter.HTML(
        prettyurls = haskey(ENV, "GITHUB_ACTIONS"),
    ),
    modules = [TwoBit],
    sitename = "TwoBit.jl",
    doctest = true,
    strict = false,
    pages = [
        "Home" => "index.md",
        "Manual" => [
            "Reading files" => "man/reading.md",
            "Writing files" => "man/writing.md",
            "TwoBit Records" => "man/records.md"
        ],
    ],
    authors = replace(join(Pkg.TOML.parsefile("Project.toml")["authors"], ", "), r" <.*?>" => "" ) * ", The BioJulia Organisation, and other contributors.",
)

deploydocs(
    repo = "github.com/BioJulia/TwoBit.jl.git",
    push_preview = true
)
