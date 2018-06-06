incrmark(x::Float64)   = setmark(x, Marker1)
incrmark(x::Float640) = setmark(x, Marker1)
incrmark(x::Float641) = setmark(x, Marker2)
incrmark(x::Float642) = setmark(x, Marker3)
incrmark(x::Float643) = x

decrmark(x::Float64)  = x
decrmark(x::Float640) = x
decrmark(x::Float641) = setmark(x, Marker0)
decrmark(x::Float642) = setmark(x, Marker1)
decrmark(x::Float643) = setmark(x, Marker2)

incrmark(x::Float32)   = setmark(x, Marker1)
incrmark(x::Float320) = setmark(x, Marker1)
incrmark(x::Float321) = setmark(x, Marker2)
incrmark(x::Float322) = setmark(x, Marker3)
incrmark(x::Float323) = x

decrmark(x::Float32)  = x
decrmark(x::Float320) = x
decrmark(x::Float321) = setmark(x, Marker0)
decrmark(x::Float322) = setmark(x, Marker1)
decrmark(x::Float323) = setmark(x, Marker2)


incrmark(x::Float16)   = setmark(x, Marker1)
incrmark(x::Float160) = setmark(x, Marker1)
incrmark(x::Float161) = setmark(x, Marker2)
incrmark(x::Float162) = setmark(x, Marker3)
incrmark(x::Float163) = x

decrmark(x::Float16)  = x
decrmark(x::Float160) = x
decrmark(x::Float161) = setmark(x, Marker0)
decrmark(x::Float162) = setmark(x, Marker1)
decrmark(x::Float163) = setmark(x, Marker2)
