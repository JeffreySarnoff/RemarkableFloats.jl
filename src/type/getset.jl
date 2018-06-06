getmark(x::T) where {T<:Base.IEEEFloat} = Marker0

getmark(x::T) where {T<:MarkableFloat{0}} = Marker0
getmark(x::T) where {T<:MarkableFloat{1}} = Marker1
getmark(x::T) where {T<:MarkableFloat{2}} = Marker2
getmark(x::T) where {T<:MarkableFloat{3}} = Marker3


getmarkvalue(x::T) where {T<:Base.IEEEFloat} = 0

getmarkvalue(x::T) where {T<:MarkableFloat{0}} = 0
getmarkvalue(x::T) where {T<:MarkableFloat{1}} = 1 
getmarkvalue(x::T) where {T<:MarkableFloat{2}} = 2 
getmarkvalue(x::T) where {T<:MarkableFloat{3}} = 3


@inline setmarkvalue(x::T, value::Int) where {T<:Union{Base.IEEEFloat, MarkableFloat}} =
    value in 0:3 ? setmark(x, Marker{value}) : throw(ErrorException("marker value out of range ($value)"))

setmark(x::Float64, ::Type{Marker0}) = x
setmark(x::Float32, ::Type{Marker0}) = x
setmark(x::Float16, ::Type{Marker0}) = x

setmark(x::Float64, ::Type{Marker1}) = MarkableF641(x)
setmark(x::Float32, ::Type{Marker1}) = MarkableF321(x)
setmark(x::Float16, ::Type{Marker1}) = MarkableF161(x)

setmark(x::Float64, ::Type{Marker2}) = MarkableF642(x)
setmark(x::Float32, ::Type{Marker2}) = MarkableF322(x)
setmark(x::Float16, ::Type{Marker2}) = MarkableF162(x)

setmark(x::Float64, ::Type{Marker3}) = MarkableF643(x)
setmark(x::Float32, ::Type{Marker3}) = MarkableF323(x)
setmark(x::Float16, ::Type{Marker3}) = MarkableF163(x)


setmark(x::MarkableF640, ::Type{Marker0}) = x
setmark(x::MarkableF320, ::Type{Marker0}) = x
setmark(x::MarkableF160, ::Type{Marker0}) = x

setmark(x::MarkableF640, ::Type{Marker1}) = MarkableF641(x)
setmark(x::MarkableF320, ::Type{Marker1}) = MarkableF321(x)
setmark(x::MarkableF160, ::Type{Marker1}) = MarkableF161(x)

setmark(x::MarkableF640, ::Type{Marker2}) = MarkableF642(x)
setmark(x::MarkableF320, ::Type{Marker2}) = MarkableF322(x)
setmark(x::MarkableF160, ::Type{Marker2}) = MarkableF162(x)

setmark(x::MarkableF640, ::Type{Marker3}) = MarkableF643(x)
setmark(x::MarkableF320, ::Type{Marker3}) = MarkableF323(x)
setmark(x::MarkableF160, ::Type{Marker3}) = MarkableF163(x)


setmark(x::MarkableF641, ::Type{Marker0}) = MarkableF640(x)
setmark(x::MarkableF321, ::Type{Marker0}) = MarkableF320(x)
setmark(x::MarkableF161, ::Type{Marker0}) = MarkableF160(x)

setmark(x::MarkableF641, ::Type{Marker1}) = x
setmark(x::MarkableF321, ::Type{Marker1}) = x
setmark(x::MarkableF161, ::Type{Marker1}) = x

setmark(x::MarkableF641, ::Type{Marker2}) = MarkableF642(x)
setmark(x::MarkableF321, ::Type{Marker2}) = MarkableF322(x)
setmark(x::MarkableF161, ::Type{Marker2}) = MarkableF162(x)

setmark(x::MarkableF641, ::Type{Marker3}) = MarkableF643(x)
setmark(x::MarkableF321, ::Type{Marker3}) = MarkableF323(x)
setmark(x::MarkableF161, ::Type{Marker3}) = MarkableF163(x)


setmark(x::MarkableF642, ::Type{Marker0}) = MarkableF640(x)
setmark(x::MarkableF322, ::Type{Marker0}) = MarkableF320(x)
setmark(x::MarkableF162, ::Type{Marker0}) = MarkableF160(x)

setmark(x::MarkableF642, ::Type{Marker1}) = MarkableF641(x)
setmark(x::MarkableF322, ::Type{Marker1}) = MarkableF321(x)
setmark(x::MarkableF162, ::Type{Marker1}) = MarkableF161(x)

setmark(x::MarkableF642, ::Type{Marker2}) = x
setmark(x::MarkableF322, ::Type{Marker2}) = x
setmark(x::MarkableF162, ::Type{Marker2}) = x

setmark(x::MarkableF642, ::Type{Marker3}) = MarkableF643(x)
setmark(x::MarkableF322, ::Type{Marker3}) = MarkableF323(x)
setmark(x::MarkableF162, ::Type{Marker3}) = MarkableF163(x)


setmark(x::MarkableF643, ::Type{Marker0}) = MarkableF640(x)
setmark(x::MarkableF323, ::Type{Marker0}) = MarkableF320(x)
setmark(x::MarkableF163, ::Type{Marker0}) = MarkableF160(x)

setmark(x::MarkableF643, ::Type{Marker1}) = MarkableF641(x)
setmark(x::MarkableF323, ::Type{Marker1}) = MarkableF321(x)
setmark(x::MarkableF163, ::Type{Marker1}) = MarkableF161(x)

setmark(x::MarkableF643, ::Type{Marker2}) = MarkableF642(x)
setmark(x::MarkableF323, ::Type{Marker2}) = MarkableF322(x)
setmark(x::MarkableF163, ::Type{Marker2}) = MarkableF162(x)

setmark(x::MarkableF643, ::Type{Marker3}) = x
setmark(x::MarkableF323, ::Type{Marker3}) = x
setmark(x::MarkableF163, ::Type{Marker3}) = x

unmark(x::Float64) = x
unmark(x::Float32) = x
unmark(x::Float16) = x

unmark(x::MarkableF640) = x
unmark(x::MarkableF320) = x
unmark(x::MarkableF160) = x

unmark(x::MarkableF641) = Float64(x)
unmark(x::MarkableF321) = Float32(x)
unmark(x::MarkableF161) = Float16(x)

unmark(x::MarkableF642) = Float64(x)
unmark(x::MarkableF322) = Float32(x)
unmark(x::MarkableF162) = Float16(x)

unmark(x::MarkableF643) = Float64(x)
unmark(x::MarkableF323) = Float32(x)
unmark(x::MarkableF163) = Float16(x)
