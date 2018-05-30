markable(x) = false
markable(x::T) where {T<:Base.IEEEFloat} = true
markable(x::T) where {N, T<:MarkableFloat{N}} = true

unmarked(x::T) where {T<:Base.IEEEFloat} = true
unmarked(x::T) where {N, T<:MarkableFloat{N}} = false
unmarked(x::T) where {T<:MarkableFloat{0}} = true

marked(x::T) where {T<:Base.IEEEFloat} = false
marked(x::T) where {N, T<:MarkableFloat{N}} = true
marked(x::T) where {T<:MarkableFloat{0}} = false

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
