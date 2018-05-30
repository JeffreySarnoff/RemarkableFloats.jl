for F in (:signbit, :sign)
    @eval begin
        $F(x::T) where {T<:MarkableFloat64} = $F(Float64(x))
        $F(x::T) where {T<:MarkableFloat32} = $F(Float32(x))
        $F(x::T) where {T<:MarkableFloat16} = $F(Float16(x))
    end
end

for F in (:abs, :float)
    @eval begin
        $F(x::T) where {T<:MarkableFloat64} = T($F(Float64(x)))
        $F(x::T) where {T<:MarkableFloat32} = T($F(Float32(x)))
        $F(x::T) where {T<:MarkableFloat16} = T($F(Float16(x)))
    end
end


for F in (:flipsign, :copysign)
    @eval begin
        $F(x::T, y::T) where {T<:MarkableFloat64} = T($F(Float64(x), Float64(y)))
        $F(x::T, y::T) where {T<:MarkableFloat32} = T($F(Float32(x), Float32(y)))
        $F(x::T, y::T) where {T<:MarkableFloat16} = T($F(Float16(x), Float16(y)))

        $F(x::T, y::R) where {T<:MarkableFloat64, R<:AbstractFloat} = T($F(Float64(x), Float64(y)))
        $F(x::T, y::R) where {T<:MarkableFloat32, R<:AbstractFloat} = T($F(Float32(x), Float32(y)))
        $F(x::T, y::R) where {T<:MarkableFloat16, R<:AbstractFloat} = T($F(Float16(x), Float16(y)))

        $F(x::R, y::T) where {T<:MarkableFloat64, R<:AbstractFloat} = T($F(Float64(x), Float64(y)))
        $F(x::R, y::T) where {T<:MarkableFloat32, R<:AbstractFloat} = T($F(Float32(x), Float32(y)))
        $F(x::R, y::T) where {T<:MarkableFloat16, R<:AbstractFloat} = T($F(Float16(x), Float16(y)))
    end
end
