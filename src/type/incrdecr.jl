incrmark(x::Float64)   = setmark(x, Marker1)
incrmark(x::MarkableF640) = setmark(x, Marker1)
incrmark(x::MarkableF641) = setmark(x, Marker2)
incrmark(x::MarkableF642) = setmark(x, Marker3)
incrmark(x::MarkableF643) = x

decrmark(x::Float64)  = x
decrmark(x::MarkableF640) = x
decrmark(x::MarkableF641) = setmark(x, Marker0)
decrmark(x::MarkableF642) = setmark(x, Marker1)
decrmark(x::MarkableF643) = setmark(x, Marker2)

incrmark(x::Float32)   = setmark(x, Marker1)
incrmark(x::MarkableF320) = setmark(x, Marker1)
incrmark(x::MarkableF321) = setmark(x, Marker2)
incrmark(x::MarkableF322) = setmark(x, Marker3)
incrmark(x::MarkableF323) = x

decrmark(x::Float32)  = x
decrmark(x::MarkableF320) = x
decrmark(x::MarkableF321) = setmark(x, Marker0)
decrmark(x::MarkableF322) = setmark(x, Marker1)
decrmark(x::MarkableF323) = setmark(x, Marker2)

incrmark(x::Float16)   = setmark(x, Marker1)
incrmark(x::MarkableF160) = setmark(x, Marker1)
incrmark(x::MarkableF161) = setmark(x, Marker2)
incrmark(x::MarkableF162) = setmark(x, Marker3)
incrmark(x::MarkableF163) = x

decrmark(x::Float16)  = x
decrmark(x::MarkableF160) = x
decrmark(x::MarkableF161) = setmark(x, Marker0)
decrmark(x::MarkableF162) = setmark(x, Marker1)
decrmark(x::MarkableF163) = setmark(x, Marker2)
