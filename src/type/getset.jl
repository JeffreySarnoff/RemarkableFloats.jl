marking(x::T) where {T<:MarkableFloat{0}} = 0
marking(x::T) where {T<:MarkableFloat{1}} = 1 
marking(x::T) where {T<:MarkableFloat{2}} = 2 
marking(x::T) where {T<:MarkableFloat{3}} = 3
