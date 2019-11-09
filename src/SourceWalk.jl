module SourceWalk

using Reexport

@reexport using MacroTools
using MacroTools: @forward, striplines, postwalk
using DataStructures

export sourcewalk

include("cstparser/CSTParser.jl")

module hack; using CSTParser; end

using .CSTParser

include("patch/diff.jl")
include("patch/cst.jl")

end # module
