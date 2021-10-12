export SineWave

"""
    SineWave(amplitude, period, phase)
    SineWave(:from_phase, amplitude, period, phase)
    SineWave(:from_peak, amplitude, period, peak_time)

Creates a sine wave, i.e., something of the form

    ϕ(t) = A sin( 2π t / T + θ₀),

where `A` is the `amplitude`, `T` is the period, and `θ₀` is the phase.
"""
struct SineWave <: Sequence
  amplitude
  period
  phase
end

function SineWave(type::Symbol, amplitude, period, third)
  if type == :from_phase
    return SineWave(amplitude, period, third)
  elseif type == :from_peak
    phase = π / 2 - 2π * third / period
    return SineWave(amplitude, period, phase)
  end
end

function sample(seq::SineWave, t::AbstractVector)
  return seq.amplitude * sin.(2π * t / seq.period .+ seq.phase)
end
