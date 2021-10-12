export Constant

"""
    Constant(x)

Constant sequence. Always returns `x`.
"""
struct Constant <: Sequence
  x
end

sample(seq::Constant, t::AbstractVector) = fill(seq.x, length(t))
