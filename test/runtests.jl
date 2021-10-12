using SequGen
using Test

@testset "Constant" begin
  t = 1:10
  for c in (5, 1.23)
    s = Constant(c)
    @test sample(s, t) == fill(c, 10)
  end
end

@testset "Trend" begin
  for Δt in (1, 1.0),
    t₀ in (0.0, 1.0),
    Δx in (3, 3.14) 

    t = collect(range(t₀, t₀ + Δt, length = 101))
    s = Trend(t₀, Δx / Δt)
    x = collect(range(zero(Δx), Δx, length = 101))
    @test sample(s, t) ≈ x
  end
end
