string(x::MarkableF640) = string(Float64(x))
string(x::MarkableF641) = string(Float64(x),"₁")
string(x::MarkableF642) = string(Float64(x),"₂")
string(x::MarkableF643) = string(Float64(x),"₃")

string(x::MarkableF320) = string(Float32(x))
string(x::MarkableF321) = string(Float32(x),"₁")
string(x::MarkableF322) = string(Float32(x),"₂")
string(x::MarkableF323) = string(Float32(x),"₃")

string(x::MarkableF160) = string(Float16(x))
string(x::MarkableF161) = string(Float16(x),"₁")
string(x::MarkableF162) = string(Float16(x),"₂")
string(x::MarkableF163) = string(Float16(x),"₃")

for T in (:MarkableF640, :MarkableF641, :MarkableF642, :MarkableF643,
          :MarkableF320, :MarkableF321, :MarkableF322, :MarkableF323,
          :MarkableF160, :MarkableF161, :MarkableF162, :MarkableF163)
    @eval show(io::IO, x::$T) = print(io, string(x))
end
