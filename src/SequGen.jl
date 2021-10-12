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

include("composite/operation.jl")
include("composite/transformation.jl")
include("deterministic/constant.jl")
include("deterministic/trend.jl")
include("sthocastic/gaussian-noise.jl")
include("waves/sine-wave.jl")

end
