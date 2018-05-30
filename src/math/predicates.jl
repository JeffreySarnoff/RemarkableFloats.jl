for F in (:signbit, :isfinite, :isinf, :isnan, :issubnormal)
    @eval begin
        $F(x::T) where {T<:MarkableFloat64} = $F(Float64(x))
        $F(x::T) where {T<:MarkableFloat32} = $F(Float32(x))
        $F(x::T) where {T<:MarkableFloat16} = $F(Float16(x))
    end
end
