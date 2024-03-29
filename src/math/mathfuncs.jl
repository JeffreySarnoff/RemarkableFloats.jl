for F in (:acos, :acosd, :acosh, :acot, :acotd, :acoth, :acsc, :acscd, :acsch,
          :asec, :asecd, :asech, :asin, :asind, :asinh, :atan, :atand, :atanh,
          :beta, :cbrt, :cos,:cosc, :cosd, :cosh, :cospi, :cot, :cotd,
          :coth, :csc, :cscd, :csch, :deg2rad, :exp, :exp10, :exp2, :expm1,
          :exponent, :frexp, :gamma, :lfact, :lgamma, :log, :log10, :log1p, :log2,
          :mod2pi, :modf, :rad2deg, :rem2pi, :sec, :secd, :sech, :significand,
          :sin, :sinc, :sincos, :sind, :sinh, :sinpi, :sqrt, :tan, :tand, :tanh)
    @eval begin
        $F(x::T) where {T<:MarkableFloat64} = T($F(Float64(x)))
        $F(x::T) where {T<:MarkableFloat32} = T($F(Float32(x)))
        $F(x::T) where {T<:MarkableFloat16} = T($F(Float16(x)))
    end
end
