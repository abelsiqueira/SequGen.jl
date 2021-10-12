export OperationOnSequences

struct OperationOnSequences <: Sequence
  seq1
  seq2
  op
end

function sample(seq::OperationOnSequences, t::AbstractVector)
  seq.op.(sample(seq.seq1, t), sample(seq.seq2, t))
end

import Base.+, Base.-, Base.*
for op in (:+, :-, :*)
  @eval begin
    $op(s1::Sequence, s2::Sequence) = OperationOnSequences(s1, s2, $op)
    $op(s::Sequence, x::Number) = $op(s, Constant(x))
    $op(x::Number, s::Sequence) = $op(Constant(x), s)
  end
end
