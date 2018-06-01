abstract type Marker end
struct ʊ{N} <: Marker end

# ʊ₀   ʊ₁   ʊ₂     ʊ₃ 

const ʊ₀ = Marker{0}
const ʊ₁ = Marker{1}
const ʊ₂ = Marker{2}
const ʊ₃ = Marker{3}



abstract type MarkableFloat{N}   <: AbstractFloat end
abstract type MarkableFloat64{N} <: MarkableFloat{N} end
abstract type MarkableFloat32{N} <: MarkableFloat{N} end
abstract type MarkableFloat16{N} <: MarkableFloat{N} end


primitive type MarkableF64{N} <: MarkableFloat64{N} 64 end
primitive type MarkableF32{N} <: MarkableFloat32{N} 32 end
primitive type MarkableF16{N} <: MarkableFloat16{N} 16 end


const MarkableF640 = MarkableF64{0}
const MarkableF641 = MarkableF64{1}
const MarkableF642 = MarkableF64{2}
const MarkableF643 = MarkableF64{3}

const MarkableF320 = MarkableF32{0}
const MarkableF321 = MarkableF32{1}
const MarkableF322 = MarkableF32{2}
const MarkableF323 = MarkableF32{3}

const MarkableF160 = MarkableF16{0}
const MarkableF161 = MarkableF16{1}
const MarkableF162 = MarkableF16{2}
const MarkableF163 = MarkableF16{3}


MarkableF64(x) = MarkableF640(x)
MarkableF32(x) = MarkableF320(x)
MarkableF16(x) = MarkableF160(x)


MarkableF640(x::Float64) = reinterpret(MarkableF640, x)
MarkableF641(x::Float64) = reinterpret(MarkableF641, x)
MarkableF642(x::Float64) = reinterpret(MarkableF642, x)
MarkableF643(x::Float64) = reinterpret(MarkableF643, x)

MarkableF320(x::Float32) = reinterpret(MarkableF320, x)
MarkableF321(x::Float32) = reinterpret(MarkableF321, x)
MarkableF322(x::Float32) = reinterpret(MarkableF322, x)
MarkableF323(x::Float32) = reinterpret(MarkableF323, x)

MarkableF160(x::Float16) = reinterpret(MarkableF160, x)
MarkableF161(x::Float16) = reinterpret(MarkableF161, x)
MarkableF162(x::Float16) = reinterpret(MarkableF162, x)
MarkableF163(x::Float16) = reinterpret(MarkableF163, x)


const IntFloat = Union{Integer, AbstractFloat}

MarkableF640(x::T) where {T<:IntFloat} = MarkableF640(Float64(x))
MarkableF641(x::T) where {T<:IntFloat} = MarkableF641(Float64(x))
MarkableF642(x::T) where {T<:IntFloat} = MarkableF642(Float64(x))
MarkableF643(x::T) where {T<:IntFloat} = MarkableF643(Float64(x))

MarkableF320(x::T) where {T<:IntFloat} = MarkableF320(Float32(x))
MarkableF321(x::T) where {T<:IntFloat} = MarkableF321(Float32(x))
MarkableF322(x::T) where {T<:IntFloat} = MarkableF322(Float32(x))
MarkableF323(x::T) where {T<:IntFloat} = MarkableF323(Float32(x))

MarkableF160(x::T) where {T<:IntFloat} = MarkableF160(Float16(x))
MarkableF161(x::T) where {T<:IntFloat} = MarkableF161(Float16(x))
MarkableF162(x::T) where {T<:IntFloat} = MarkableF162(Float16(x))
MarkableF163(x::T) where {T<:IntFloat} = MarkableF163(Float16(x))


Float64(x::MarkableF640) = reinterpret(Float64, x)
Float64(x::MarkableF641) = reinterpret(Float64, x)
Float64(x::MarkableF642) = reinterpret(Float64, x)
Float64(x::MarkableF643) = reinterpret(Float64, x)

Float32(x::MarkableF320) = reinterpret(Float32, x)
Float32(x::MarkableF321) = reinterpret(Float32, x)
Float32(x::MarkableF322) = reinterpret(Float32, x)
Float32(x::MarkableF323) = reinterpret(Float32, x)

Float16(x::MarkableF160) = reinterpret(Float16, x)
Float16(x::MarkableF161) = reinterpret(Float16, x)
Float16(x::MarkableF162) = reinterpret(Float16, x)
Float16(x::MarkableF163) = reinterpret(Float16, x)

Float64(x::MarkableF320) = Float64(Float32(x))
Float64(x::MarkableF321) = Float64(Float32(x))
Float64(x::MarkableF322) = Float64(Float32(x))
Float64(x::MarkableF323) = Float64(Float32(x))

Float64(x::MarkableF160) = Float64(Float16(x))
Float64(x::MarkableF161) = Float64(Float16(x))
Float64(x::MarkableF162) = Float64(Float16(x))
Float64(x::MarkableF163) = Float64(Float16(x))

Float32(x::MarkableF640) = Float32(Float64(x))
Float32(x::MarkableF641) = Float32(Float64(x))
Float32(x::MarkableF642) = Float32(Float64(x))
Float32(x::MarkableF643) = Float32(Float64(x))

Float32(x::MarkableF160) = Float32(Float16(x))
Float32(x::MarkableF161) = Float32(Float16(x))
Float32(x::MarkableF162) = Float32(Float16(x))
Float32(x::MarkableF163) = Float32(Float16(x))

Float16(x::MarkableF640) = Float16(Float64(x))
Float16(x::MarkableF641) = Float16(Float64(x))
Float16(x::MarkableF642) = Float16(Float64(x))
Float16(x::MarkableF643) = Float16(Float64(x))

Float16(x::MarkableF320) = Float16(Float32(x))
Float16(x::MarkableF321) = Float16(Float32(x))
Float16(x::MarkableF322) = Float16(Float32(x))
Float16(x::MarkableF323) = Float16(Float32(x))


MarkableF641(x::MarkableF640) = reinterpret(MarkableF641, x)
MarkableF641(x::MarkableF641) = x
MarkableF641(x::MarkableF642) = reinterpret(MarkableF641, x)
MarkableF641(x::MarkableF643) = reinterpret(MarkableF641, x)

MarkableF321(x::MarkableF320) = reinterpret(MarkableF321, x)
MarkableF321(x::MarkableF321) = x
MarkableF321(x::MarkableF322) = reinterpret(MarkableF321, x)
MarkableF321(x::MarkableF323) = reinterpret(MarkableF321, x)

MarkableF161(x::MarkableF160) = reinterpret(MarkableF161, x)
MarkableF161(x::MarkableF161) = x
MarkableF161(x::MarkableF162) = reinterpret(MarkableF161, x)
MarkableF161(x::MarkableF163) = reinterpret(MarkableF161, x)

MarkableF641(x::MarkableF320) = MarkableF641(Float64(Float32(x)))
MarkableF641(x::MarkableF321) = MarkableF641(Float64(Float32(x)))
MarkableF641(x::MarkableF322) = MarkableF641(Float64(Float32(x)))
MarkableF641(x::MarkableF323) = MarkableF641(Float64(Float32(x)))

MarkableF641(x::MarkableF160) = MarkableF641(Float64(Float16(x)))
MarkableF641(x::MarkableF161) = MarkableF641(Float64(Float16(x)))
MarkableF641(x::MarkableF162) = MarkableF641(Float64(Float16(x)))
MarkableF641(x::MarkableF163) = MarkableF641(Float64(Float16(x)))

MarkableF321(x::MarkableF640) = MarkableF321(Float32(Float64(x)))
MarkableF321(x::MarkableF641) = MarkableF321(Float32(Float64(x)))
MarkableF321(x::MarkableF642) = MarkableF321(Float32(Float64(x)))
MarkableF321(x::MarkableF643) = MarkableF321(Float32(Float64(x)))

MarkableF321(x::MarkableF160) = MarkableF321(Float32(Float16(x)))
MarkableF321(x::MarkableF161) = MarkableF321(Float32(Float16(x)))
MarkableF321(x::MarkableF162) = MarkableF321(Float32(Float16(x)))
MarkableF321(x::MarkableF163) = MarkableF321(Float32(Float16(x)))

MarkableF161(x::MarkableF640) = MarkableF161(Float16(Float64(x)))
MarkableF161(x::MarkableF641) = MarkableF161(Float16(Float64(x)))
MarkableF161(x::MarkableF642) = MarkableF161(Float16(Float64(x)))
MarkableF161(x::MarkableF643) = MarkableF161(Float16(Float64(x)))

MarkableF161(x::MarkableF320) = MarkableF161(Float16(Float32(x)))
MarkableF161(x::MarkableF321) = MarkableF161(Float16(Float32(x)))
MarkableF161(x::MarkableF322) = MarkableF161(Float16(Float32(x)))
MarkableF161(x::MarkableF323) = MarkableF161(Float16(Float32(x)))


MarkableF642(x::MarkableF640) = reinterpret(MarkableF642, x)
MarkableF642(x::MarkableF641) = reinterpret(MarkableF642, x)
MarkableF642(x::MarkableF642) = x
MarkableF642(x::MarkableF643) = reinterpret(MarkableF642, x)

MarkableF322(x::MarkableF320) = reinterpret(MarkableF322, x)
MarkableF322(x::MarkableF321) = reinterpret(MarkableF322, x)
MarkableF322(x::MarkableF322) = x
MarkableF322(x::MarkableF323) = reinterpret(MarkableF322, x)

MarkableF162(x::MarkableF160) = reinterpret(MarkableF162, x)
MarkableF162(x::MarkableF161) = reinterpret(MarkableF162, x)
MarkableF162(x::MarkableF162) = x
MarkableF162(x::MarkableF163) = reinterpret(MarkableF162, x)

MarkableF642(x::MarkableF320) = MarkableF642(Float64(Float32(x)))
MarkableF642(x::MarkableF321) = MarkableF642(Float64(Float32(x)))
MarkableF642(x::MarkableF322) = MarkableF642(Float64(Float32(x)))
MarkableF642(x::MarkableF323) = MarkableF642(Float64(Float32(x)))

MarkableF642(x::MarkableF160) = MarkableF642(Float64(Float16(x)))
MarkableF642(x::MarkableF161) = MarkableF642(Float64(Float16(x)))
MarkableF642(x::MarkableF162) = MarkableF642(Float64(Float16(x)))
MarkableF642(x::MarkableF163) = MarkableF642(Float64(Float16(x)))

MarkableF322(x::MarkableF640) = MarkableF322(Float32(Float64(x)))
MarkableF322(x::MarkableF641) = MarkableF322(Float32(Float64(x)))
MarkableF322(x::MarkableF642) = MarkableF322(Float32(Float64(x)))
MarkableF322(x::MarkableF643) = MarkableF322(Float32(Float64(x)))

MarkableF322(x::MarkableF160) = MarkableF322(Float32(Float16(x)))
MarkableF322(x::MarkableF161) = MarkableF322(Float32(Float16(x)))
MarkableF322(x::MarkableF162) = MarkableF322(Float32(Float16(x)))
MarkableF322(x::MarkableF163) = MarkableF322(Float32(Float16(x)))

MarkableF162(x::MarkableF640) = MarkableF162(Float16(Float64(x)))
MarkableF162(x::MarkableF641) = MarkableF162(Float16(Float64(x)))
MarkableF162(x::MarkableF642) = MarkableF162(Float16(Float64(x)))
MarkableF162(x::MarkableF643) = MarkableF162(Float16(Float64(x)))

MarkableF162(x::MarkableF320) = MarkableF162(Float16(Float32(x)))
MarkableF162(x::MarkableF321) = MarkableF162(Float16(Float32(x)))
MarkableF162(x::MarkableF322) = MarkableF162(Float16(Float32(x)))
MarkableF162(x::MarkableF323) = MarkableF162(Float16(Float32(x)))


MarkableF643(x::MarkableF640) = reinterpret(MarkableF643, x)
MarkableF643(x::MarkableF641) = reinterpret(MarkableF643, x)
MarkableF643(x::MarkableF642) = reinterpret(MarkableF643, x)
MarkableF643(x::MarkableF643) = x

MarkableF323(x::MarkableF320) = reinterpret(MarkableF323, x)
MarkableF323(x::MarkableF321) = reinterpret(MarkableF323, x)
MarkableF323(x::MarkableF322) = reinterpret(MarkableF323, x)
MarkableF323(x::MarkableF323) = x

MarkableF163(x::MarkableF160) = reinterpret(MarkableF163, x)
MarkableF163(x::MarkableF161) = reinterpret(MarkableF163, x)
MarkableF163(x::MarkableF162) = reinterpret(MarkableF163, x)
MarkableF163(x::MarkableF163) = x

MarkableF643(x::MarkableF320) = MarkableF643(Float64(Float32(x)))
MarkableF643(x::MarkableF321) = MarkableF643(Float64(Float32(x)))
MarkableF643(x::MarkableF322) = MarkableF643(Float64(Float32(x)))
MarkableF643(x::MarkableF323) = MarkableF643(Float64(Float32(x)))

MarkableF643(x::MarkableF160) = MarkableF643(Float64(Float16(x)))
MarkableF643(x::MarkableF161) = MarkableF643(Float64(Float16(x)))
MarkableF643(x::MarkableF162) = MarkableF643(Float64(Float16(x)))
MarkableF643(x::MarkableF163) = MarkableF643(Float64(Float16(x)))

MarkableF323(x::MarkableF640) = MarkableF323(Float32(Float64(x)))
MarkableF323(x::MarkableF641) = MarkableF323(Float32(Float64(x)))
MarkableF323(x::MarkableF642) = MarkableF323(Float32(Float64(x)))
MarkableF323(x::MarkableF643) = MarkableF323(Float32(Float64(x)))

MarkableF323(x::MarkableF160) = MarkableF323(Float32(Float16(x)))
MarkableF323(x::MarkableF161) = MarkableF323(Float32(Float16(x)))
MarkableF323(x::MarkableF162) = MarkableF323(Float32(Float16(x)))
MarkableF323(x::MarkableF163) = MarkableF323(Float32(Float16(x)))

MarkableF163(x::MarkableF640) = MarkableF163(Float16(Float64(x)))
MarkableF163(x::MarkableF641) = MarkableF163(Float16(Float64(x)))
MarkableF163(x::MarkableF642) = MarkableF163(Float16(Float64(x)))
MarkableF163(x::MarkableF643) = MarkableF163(Float16(Float64(x)))

MarkableF163(x::MarkableF320) = MarkableF163(Float16(Float32(x)))
MarkableF163(x::MarkableF321) = MarkableF163(Float16(Float32(x)))
MarkableF163(x::MarkableF322) = MarkableF163(Float16(Float32(x)))
MarkableF163(x::MarkableF323) = MarkableF163(Float16(Float32(x)))
