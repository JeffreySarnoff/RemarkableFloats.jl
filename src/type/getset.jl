getmark(x::T) where {T<:Base.IEEEFloat} = MARKER0

getmark(x::T) where {T<:MarkableFloat{0}} = MARKER0
getmark(x::T) where {T<:MarkableFloat{1}} = MARKER1
getmark(x::T) where {T<:MarkableFloat{2}} = MARKER2
getmark(x::T) where {T<:MarkableFloat{3}} = MARKER3


getmarkvalue(x::T) where {T<:Base.IEEEFloat} = 0

getmarkvalue(x::T) where {T<:MarkableFloat{0}} = 0
getmarkvalue(x::T) where {T<:MarkableFloat{1}} = 1 
getmarkvalue(x::T) where {T<:MarkableFloat{2}} = 2 
getmarkvalue(x::T) where {T<:MarkableFloat{3}} = 3


@inline setmarkvalue(x::T, value::Int) where {T<:Union{Base.IEEEFloat, MarkableFloat}} =
    value in 0:3 ? setmark(x, Marker{value}) : throw(ErrorException("marker value out of range ($value)"))

setmark(x::Float64, ::Type{MARKER0}) = x
setmark(x::Float32, ::Type{MARKER0}) = x
setmark(x::Float16, ::Type{MARKER0}) = x

setmark(x::Float64, ::Type{MARKER1}) = MarkableF641(x)
setmark(x::Float32, ::Type{MARKER1}) = MarkableF321(x)
setmark(x::Float16, ::Type{MARKER1}) = MarkableF161(x)

setmark(x::Float64, ::Type{MARKER2}) = MarkableF642(x)
setmark(x::Float32, ::Type{MARKER2}) = MarkableF322(x)
setmark(x::Float16, ::Type{MARKER2}) = MarkableF162(x)

setmark(x::Float64, ::Type{MARKER3}) = MarkableF643(x)
setmark(x::Float32, ::Type{MARKER3}) = MarkableF323(x)
setmark(x::Float16, ::Type{MARKER3}) = MarkableF163(x)


setmark(x::MarkableF640, ::Type{MARKER0}) = x
setmark(x::MarkableF320, ::Type{MARKER0}) = x
setmark(x::MarkableF160, ::Type{MARKER0}) = x

setmark(x::MarkableF640, ::Type{MARKER1}) = MarkableF641(x)
setmark(x::MarkableF320, ::Type{MARKER1}) = MarkableF321(x)
setmark(x::MarkableF160, ::Type{MARKER1}) = MarkableF161(x)

setmark(x::MarkableF640, ::Type{MARKER2}) = MarkableF642(x)
setmark(x::MarkableF320, ::Type{MARKER2}) = MarkableF322(x)
setmark(x::MarkableF160, ::Type{MARKER2}) = MarkableF162(x)

setmark(x::MarkableF640, ::Type{MARKER3}) = MarkableF643(x)
setmark(x::MarkableF320, ::Type{MARKER3}) = MarkableF323(x)
setmark(x::MarkableF160, ::Type{MARKER3}) = MarkableF163(x)


setmark(x::MarkableF641, ::Type{MARKER0}) = MarkableF640(x)
setmark(x::MarkableF321, ::Type{MARKER0}) = MarkableF320(x)
setmark(x::MarkableF161, ::Type{MARKER0}) = MarkableF160(x)

setmark(x::MarkableF641, ::Type{MARKER1}) = x
setmark(x::MarkableF321, ::Type{MARKER1}) = x
setmark(x::MarkableF161, ::Type{MARKER1}) = x

setmark(x::MarkableF641, ::Type{MARKER2}) = MarkableF642(x)
setmark(x::MarkableF321, ::Type{MARKER2}) = MarkableF322(x)
setmark(x::MarkableF161, ::Type{MARKER2}) = MarkableF162(x)

setmark(x::MarkableF641, ::Type{MARKER3}) = MarkableF643(x)
setmark(x::MarkableF321, ::Type{MARKER3}) = MarkableF323(x)
setmark(x::MarkableF161, ::Type{MARKER3}) = MarkableF163(x)


setmark(x::MarkableF642, ::Type{MARKER0}) = MarkableF640(x)
setmark(x::MarkableF322, ::Type{MARKER0}) = MarkableF320(x)
setmark(x::MarkableF162, ::Type{MARKER0}) = MarkableF160(x)

setmark(x::MarkableF642, ::Type{MARKER1}) = MarkableF641(x)
setmark(x::MarkableF322, ::Type{MARKER1}) = MarkableF321(x)
setmark(x::MarkableF162, ::Type{MARKER1}) = MarkableF161(x)

setmark(x::MarkableF642, ::Type{MARKER2}) = x
setmark(x::MarkableF322, ::Type{MARKER2}) = x
setmark(x::MarkableF162, ::Type{MARKER2}) = x

setmark(x::MarkableF642, ::Type{MARKER3}) = MarkableF643(x)
setmark(x::MarkableF322, ::Type{MARKER3}) = MarkableF323(x)
setmark(x::MarkableF162, ::Type{MARKER3}) = MarkableF163(x)


setmark(x::MarkableF643, ::Type{MARKER0}) = MarkableF640(x)
setmark(x::MarkableF323, ::Type{MARKER0}) = MarkableF320(x)
setmark(x::MarkableF163, ::Type{MARKER0}) = MarkableF160(x)

setmark(x::MarkableF643, ::Type{MARKER1}) = MarkableF641(x)
setmark(x::MarkableF323, ::Type{MARKER1}) = MarkableF321(x)
setmark(x::MarkableF163, ::Type{MARKER1}) = MarkableF161(x)

setmark(x::MarkableF643, ::Type{MARKER2}) = MarkableF642(x)
setmark(x::MarkableF323, ::Type{MARKER2}) = MarkableF322(x)
setmark(x::MarkableF163, ::Type{MARKER2}) = MarkableF162(x)

setmark(x::MarkableF643, ::Type{MARKER3}) = x
setmark(x::MarkableF323, ::Type{MARKER3}) = x
setmark(x::MarkableF163, ::Type{MARKER3}) = x

