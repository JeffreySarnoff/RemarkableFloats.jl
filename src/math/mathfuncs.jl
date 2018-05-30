for F in (:signbit, :isfinite, :isinf, :isnan, :issubnormal)
    @eval begin
        $F(x::T) where {T<:MarkableFloat64} = $F(Float64(x))
        $F(x::T) where {T<:MarkableFloat32} = $F(Float32(x))
        $F(x::T) where {T<:MarkableFloat16} = $F(Float16(x))
    end
end


for F in (:(==), :(!=), :(<), :(<=), :(>=), :(>), :isequal, :isless)
    @eval begin
        $F(x::T, y::T) where {T<:MarkableFloat64} = $F(Float64(x), Float64(y))
        $F(x::T, y::T) where {T<:MarkableFloat32} = $F(Float32(x), Float32(y))
        $F(x::T, y::T) where {T<:MarkableFloat16} = $F(Float16(x), Float16(y))

        $F(x::T, y::R) where {T<:MarkableFloat64, R<:AbstractFloat} = $F(Float64(x), Float64(y))
        $F(x::T, y::R) where {T<:MarkableFloat32, R<:AbstractFloat} = $F(Float32(x), Float32(y))
        $F(x::T, y::R) where {T<:MarkableFloat16, R<:AbstractFloat} = $F(Float16(x), Float16(y))

        $F(x::R, y::T) where {T<:MarkableFloat64, R<:AbstractFloat} = $F(Float64(x), Float64(y))
        $F(x::R, y::T) where {T<:MarkableFloat32, R<:AbstractFloat} = $F(Float32(x), Float32(y))
        $F(x::R, y::T) where {T<:MarkableFloat16, R<:AbstractFloat} = $F(Float16(x), Float16(y))
    end
end

for F in (:(+), :(-), :(*), :(/), :(\), :(^))
    @eval begin
        $F(x::T, y::T) where {T<:MarkableFloat64} = $F(Float64(x), Float64(y))
        $F(x::T, y::T) where {T<:MarkableFloat32} = $F(Float32(x), Float32(y))
        $F(x::T, y::T) where {T<:MarkableFloat16} = $F(Float16(x), Float16(y))

        $F(x::T, y::R) where {T<:MarkableFloat64, R<:AbstractFloat} = $F(Float64(x), Float64(y))
        $F(x::T, y::R) where {T<:MarkableFloat32, R<:AbstractFloat} = $F(Float32(x), Float32(y))
        $F(x::T, y::R) where {T<:MarkableFloat16, R<:AbstractFloat} = $F(Float16(x), Float16(y))

        $F(x::R, y::T) where {T<:MarkableFloat64, R<:AbstractFloat} = $F(Float64(x), Float64(y))
        $F(x::R, y::T) where {T<:MarkableFloat32, R<:AbstractFloat} = $F(Float32(x), Float32(y))
        $F(x::R, y::T) where {T<:MarkableFloat16, R<:AbstractFloat} = $F(Float16(x), Float16(y))
    end
end


for F in (:sign, :ceil, :floor, :trunc,
          :acos, :acosd, :acosh, :acot, :acotd, :acoth, :acsc, :acscd, :acsch,
          :asec, :asecd, :asech, :asin, :asind, :asinh, :atan, :atan2, :atand,
          :atanh, :beta, :cbrt, :cos,:cosc, :cosd, :cosh, :cospi, :cot, :cotd,
          :coth, :csc, :cscd, :csch, :deg2rad, :exp, :exp10, :exp2, :expm1,
          :exponent, :frexp, :gamma, :lfact, :lgamma, :log, :log10, :log1p, :log2,
          :mod2pi, :modf, :rad2deg, :rem2pi, :sec, :secd, :sech, :significand,
          :sin, :sinc, :sincos, :sind, :sinh, :sinpi, :sqrt, :tan, :tand, :tanh)
    @eval begin
        $F(x::T) where {T<:MarkableFloat64} = $F(Float64(x))
        $F(x::T) where {T<:MarkableFloat32} = $F(Float32(x))
        $F(x::T) where {T<:MarkableFloat16} = $F(Float16(x))
    end
end
