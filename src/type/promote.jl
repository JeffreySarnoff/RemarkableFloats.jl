promote_type(::Type{Float64}, ::Type{T}) where {T<:MarkableFloat64} = T
promote_type(::Type{MarkableF640}, ::Type{MarkableF641}) = MarkableF641
promote_type(::Type{MarkableF640}, ::Type{MarkableF642}) = MarkableF642
promote_type(::Type{MarkableF640}, ::Type{MarkableF643}) = MarkableF643
promote_type(::Type{MarkableF641}, ::Type{MarkableF642}) = MarkableF642
promote_type(::Type{MarkableF641}, ::Type{MarkableF643}) = MarkableF643
promote_type(::Type{MarkableF642}, ::Type{MarkableF643}) = MarkableF643


promote_type(::Type{Float32}, ::Type{T}) where {T<:MarkableFloat32} = T
promote_type(::Type{MarkableF320}, ::Type{MarkableF321}) = MarkableF321
promote_type(::Type{MarkableF320}, ::Type{MarkableF322}) = MarkableF322
promote_type(::Type{MarkableF320}, ::Type{MarkableF323}) = MarkableF323
promote_type(::Type{MarkableF321}, ::Type{MarkableF322}) = MarkableF322
promote_type(::Type{MarkableF321}, ::Type{MarkableF323}) = MarkableF323
promote_type(::Type{MarkableF322}, ::Type{MarkableF323}) = MarkableF323

promote_type(::Type{Float16}, ::Type{T}) where {T<:MarkableFloat16} = T
promote_type(::Type{MarkableF160}, ::Type{MarkableF161}) = MarkableF161
promote_type(::Type{MarkableF160}, ::Type{MarkableF162}) = MarkableF162
promote_type(::Type{MarkableF160}, ::Type{MarkableF163}) = MarkableF163
promote_type(::Type{MarkableF161}, ::Type{MarkableF162}) = MarkableF162
promote_type(::Type{MarkableF161}, ::Type{MarkableF163}) = MarkableF163
promote_type(::Type{MarkableF162}, ::Type{MarkableF163}) = MarkableF163

