using Pkg
Pkg.activate(joinpath(@__DIR__, "..")); Pkg.instantiate()
Pkg.activate(); Pkg.instantiate()

pushfirst!(LOAD_PATH, joinpath(@__DIR__, ".."))

using Documenter, SourceWalk

makedocs(
    sitename = "SourceWalk",
    pages = [
        "Home" => "index.md"],
    format = Documenter.HTML(prettyurls = haskey(ENV, "CI")))

deploydocs(
  repo = "github.com/MikeInnes/SourceWalk.jl.git",)
