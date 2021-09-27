var documenterSearchIndex = {"docs":
[{"location":"","page":"Home","title":"Home","text":"CurrentModule = SequGen","category":"page"},{"location":"#SequGen","page":"Home","title":"SequGen","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Documentation for SequGen.","category":"page"},{"location":"","page":"Home","title":"Home","text":"","category":"page"},{"location":"","page":"Home","title":"Home","text":"Modules = [SequGen]","category":"page"},{"location":"#SequGen.Constant","page":"Home","title":"SequGen.Constant","text":"Constant(x)\n\nConstant sequence. Always returns x.\n\n\n\n\n\n","category":"type"},{"location":"#SequGen.GaussianNoise","page":"Home","title":"SequGen.GaussianNoise","text":"GaussianNoise(σ = 1.0)\n\nReturns a Gaussian noise with standard deviation σ.\n\n\n\n\n\n","category":"type"},{"location":"#SequGen.Sequence","page":"Home","title":"SequGen.Sequence","text":"Sequence\n\nBase type for synthetic sequences.\n\n\n\n\n\n","category":"type"},{"location":"#SequGen.SineWave","page":"Home","title":"SequGen.SineWave","text":"SineWave(amplitude, period, phase)\nSineWave(:from_phase, amplitude, period, phase)\nSineWave(:from_peak, amplitude, period, peak_time)\n\nCreates a sine wave, i.e., something of the form\n\nϕ(t) = A sin( 2π t / T + θ₀),\n\nwhere A is the amplitude, T is the period, and θ₀ is the phase.\n\n\n\n\n\n","category":"type"},{"location":"#SequGen.StepwiseGaussianNoise","page":"Home","title":"SequGen.StepwiseGaussianNoise","text":"StepwiseGaussianNoise(stepsize; σ = 1.0)\n\nReturns a Gaussian noise with standard deviation σ and the given stepsize. The noise is constant between interval of size stepsize. For instance,\n\nsample(StepwiseGaussianNoise(1.0), 0.0, 2.0, 10)\n\nwill return a sample of 10 elements with 5 equal values followed by other 5 equal values. This is equivalent to [randn() * ones(5); randn() * ones(5)] in this case.\n\n\n\n\n\n","category":"type"},{"location":"#SequGen.Trend","page":"Home","title":"SequGen.Trend","text":"Trend(t₀, slope)\n\nConstant slope starting at start, i.e., ϕ(t) = (t - t₀) * slope.\n\n\n\n\n\n","category":"type"},{"location":"#SequGen.sample-Tuple{Sequence, Any, Any, Int64}","page":"Home","title":"SequGen.sample","text":"x = sample(sequence, range)\nx = sample(sequence, start, end, length)\n\nCompute a sample in the given range, or in the range given by range(start, end, length=length).\n\n\n\n\n\n","category":"method"}]
}
