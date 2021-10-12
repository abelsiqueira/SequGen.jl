export GaussianNoise

"""
    GaussianNoise(σ = 1.0)

Returns a Gaussian noise with standard deviation `σ`.
"""
struct GaussianNoise <: Sequence
  σ
end

GaussianNoise() = GaussianNoise(1.0)

sample(seq::GaussianNoise, t::AbstractVector) = seq.σ * randn(length(t))
