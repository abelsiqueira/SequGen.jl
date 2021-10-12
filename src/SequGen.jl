module SequGen

export Sequence
export sample

"""
    Sequence

Base type for synthetic sequences.
"""
abstract type Sequence end

"""
    x = sample(sequence, range)

Compute a sample in the given `range`.
"""
function sample end

include("deterministic/constant.jl")
include("deterministic/trend.jl")

end
