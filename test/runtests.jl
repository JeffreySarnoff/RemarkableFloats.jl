using RemarkableFloats
using Test

a64 = Float64(0.5)
a32 = Float32(0.5)
a16 = Float16(0.5)

@test getmark(a64) === Marker0
@test getmark(a32) === Marker0
@test getmark(a16) === Marker0

@test getmarkvalue(a64) === 0
@test getmarkvalue(a32) === 0
@test getmarkvalue(a16) === 0

@test has0marks(a64)
@test has0marks(a32)
@test has0marks(a16)

b64 = setmark(a64, Marker1)
b32 = setmark(a32, Marker2)
b16 = setmark(a16, Marker3)

@test getmark(b64) === Marker1
@test getmark(b32) === Marker2
@test getmark(b16) === Marker3

@test getmarkvalue(b64) === 1
@test getmarkvalue(b32) === 2
@test getmarkvalue(b16) === 3

@test has1mark(b64)
@test has2marks(b32)
@test has3marks(b16)

@test has1or2marks(b64)
@test has1or2marks(b32)
@test has2or3marks(b16)
@test has1or3marks(b16)

