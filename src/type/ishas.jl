ismarkable(x) = false
ismarkable(x::T) where {N, T<:MarkableFloat{N}} = true

isunmarked(x::T) where {N, T<:MarkableFloat{N}} = false
isunmarked(x::T) where {T<:MarkableFloat{0}} = true

ismarked(x::T) where {N, T<:MarkableFloat{N}} = true
ismarked(x::T) where {T<:MarkableFloat{0}} = false

marking(x::T) where {T<:MarkableFloat{0}} = 0
marking(x::T) where {T<:MarkableFloat{1}} = 1 
marking(x::T) where {T<:MarkableFloat{2}} = 2 
marking(x::T) where {T<:MarkableFloat{3}} = 3

has0marks(x::T) where {T<:MarkableFloat{0}} = true
has0marks(x::T) where {N, T<:MarkableFloat{N}} = false
has1mark(x::T) where {T<:MarkableFloat{1}} = true
has1mark(x::T) where {N, T<:MarkableFloat{N}} = false
has2marks(x::T) where {T<:MarkableFloat{2}} = true
has2marks(x::T) where {N, T<:MarkableFloat{N}} = false
has3marks(x::T) where {T<:MarkableFloat{3}} = true
has3marks(x::T) where {N, T<:MarkableFloat{N}} = false

has0or1marks(x::T) where {T<:MarkableFloat{0}} = true
has0or1marks(x::T) where {T<:MarkableFloat{1}} = true
has0or1marks(x::T) where {N, T<:MarkableFloat{N}} = false

has1or2marks(x::T) where {T<:MarkableFloat{1}} = true
has1or2marks(x::T) where {T<:MarkableFloat{2}} = true
has1or2marks(x::T) where {N, T<:MarkableFloat{N}} = false

has2or3marks(x::T) where {T<:MarkableFloat{2}} = true
has2or3marks(x::T) where {T<:MarkableFloat{3}} = true
has2or3marks(x::T) where {N, T<:MarkableFloat{N}} = false
