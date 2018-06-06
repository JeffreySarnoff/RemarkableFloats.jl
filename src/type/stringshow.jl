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


show(io::IO, x::MarkableF640) = print(io, string(x))
show(io::IO, x::MarkableF641) = print(io, string(x))
show(io::IO, x::MarkableF642) = print(io, string(x))
show(io::IO, x::MarkableF643) = print(io, string(x))

show(io::IO, x::MarkableF320) = print(io, string(x))
show(io::IO, x::MarkableF321) = print(io, string(x))
show(io::IO, x::MarkableF322) = print(io, string(x))
show(io::IO, x::MarkableF323) = print(io, string(x))

show(io::IO, x::MarkableF160) = print(io, string(x))
show(io::IO, x::MarkableF161) = print(io, string(x))
show(io::IO, x::MarkableF162) = print(io, string(x))
show(io::IO, x::MarkableF163) = print(io, string(x))
