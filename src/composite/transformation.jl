export TransformedSequence

struct TransformedSequence <: Sequence
  seq
  f
end

function sample(seq::TransformedSequence, t::AbstractVector)
  seq.f.(sample(seq.seq, t))
end

for f in (:exp, :log, :sin, :cos)
  @eval begin
    function Base.$f(s::Sequence)
      TransformedSequence(s, $f)
    end
  end
end
