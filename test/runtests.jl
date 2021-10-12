using SequGen
using Unitful, Test

@testset "Constant" begin
  t = 1:10
  for c in (5, 1.23, u"1s", u"1K")
    s = Constant(c)
    @test sample(s, t) == fill(c, 10)
  end
end

@testset "Trend" begin
  for Δt in (1, 1.0, 1.12u"s", 2.5u"hr"),
    t₀ in (zero(Δt), oneunit(Δt)),
    Δx in (3, 3.14, 3.4u"m", 7.5u"K")

    t = collect(range(t₀, t₀ + Δt, length = 101))
    s = Trend(t₀, Δx / Δt)
    x = collect(range(zero(Δx), Δx, length = 101))
    @test sample(s, t) ≈ x
  end
end
