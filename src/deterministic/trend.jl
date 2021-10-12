export Trend

"""
    Trend(t₀, slope)

Constant `slope` starting at `start`, i.e., `ϕ(t) = (t - t₀) * slope`.
"""
mutable struct Trend <: Sequence
  start
  slope
end

sample(seq::Trend, t::AbstractVector) = (t .- seq.start) * seq.slope
