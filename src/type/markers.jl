abstract type                AbstractMarker end
         struct Marker{N} <: AbstractMarker end


const Marker0 = Marker{0} ; const ʊ₀ = Marker0
const Marker1 = Marker{1} ; const ʊ₁ = Marker1
const Marker2 = Marker{2} ; const ʊ₂ = Marker2
const Marker3 = Marker{3} ; const ʊ₃ = Marker3

string(::Type{Marker0}) = "ʊ₀" ; string(x::Marker0) = "ʊ₀"
string(::Type{Marker1}) = "ʊ₁" ; string(x::Marker1) = "ʊ₁"
string(::Type{Marker2}) = "ʊ₂" ; string(x::Marker2) = "ʊ₂"
string(::Type{Marker3}) = "ʊ₃" ; string(x::Marker3) = "ʊ₃"

show(io::IO, ::Type{Marker0}) = print(io, string(Marker0))
show(io::IO, ::Type{Marker1}) = print(io, string(Marker1))
show(io::IO, ::Type{Marker2}) = print(io, string(Marker2))
show(io::IO, ::Type{Marker3}) = print(io, string(Marker3))

Meta.parse("Marker0") = Marker0 ; Meta.parse("ʊ₀") = Marker0
Meta.parse("Marker1") = Marker1 ; Meta.parse("ʊ₁") = Marker1
Meta.parse("Marker2") = Marker2 ; Meta.parse("ʊ₂") = Marker2
Meta.parse("Marker3") = Marker3 ; Meta.parse("ʊ₃") = Marker3
