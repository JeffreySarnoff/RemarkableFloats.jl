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
