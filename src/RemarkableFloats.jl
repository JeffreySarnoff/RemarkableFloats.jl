module RemarkableFloats


export Markers, MarkableFloat,
       MarkableF64, MarkableF32, MarkableF16,
       Marker0, Marker1, Marker2, Marker3,
       ʊ₀, ʊ₁, ʊ₂, ʊ₃,
       markable, unmarked, marked,
       getmark, setmark, getmarkvalue, setmarkvalue,
       incrmark, decrmark, @incrmark!, @decrmark!, @setmark!,
       has0marks, has1mark, has2marks, has3marks,
       has0or1marks, has1or2marks, has2or3marks,
       has0or2marks, has1or3marks

#=
       @mark!, @unmark!, @addmark!, @submark!, setmark
=#

import Base: reinterpret, hash,
        promote_type, promote_rule, convert,
        string, show,
	isfinite, isinf, isnan, issubnormal,
	signbit, sign, abs, flipsign, copysign,
	(==), (!=), (<), (<=), (>=), (>), isequal, isless,
	(+), (-), (*), (/), (\), (^),
	div, fld, cld, rem, mod, divrem, fldmod,
	ceil, floor, trunc, float

import Base.Math: acos, acosd, acosh, acot, acotd, acoth, acsc, acscd, acsch,
	asec, asecd, asech, asin, asind, asinh, atan, atan2, atand, tanh, beta,
	cbrt, clamp, clamp!, cos, cosc, cosd, cosh, cospi, cot, cotd, coth, csc,
	cscd, csch, deg2rad, exp, exp10, exp2, expm1, exponent, frexp, gamma,
	hypot, lbeta, ldexp, lfact, lgamma, log, log10, log1p, log2, max, min,
	minmax, mod2pi, modf, rad2deg, rem2pi, sec, secd, sech, significand, sin,
	sinc, sincos, sind, sinh, sinpi, sqrt, tan, tand, tanh


# avoid importing Float64, Float32, Float16 (bad things can happen)
# use const qualified equivalences instead

const FLOAT64 = Base.Float64
const FLOAT32 = Base.Float32
const FLOAT16 = Base.Float16

include("type/markers.jl")
include("type/floatbasis.jl")
include("type/ishas.jl")
include("type/getset.jl")
include("type/promote.jl")
include("type/comparison.jl")
include("type/incrdecr.jl")
include("type/macros.jl")

include("math/predicates.jl")
include("math/prearith.jl")
include("math/arith.jl")
include("math/mathfuncs.jl")


end # RemarkableFloats
