getmark(x::T) where {T<:Base.IEEEFloat} = 0

getmark(x::T) where {T<:MarkableFloat{0}} = 0
getmark(x::T) where {T<:MarkableFloat{1}} = 1 
getmark(x::T) where {T<:MarkableFloat{2}} = 2 
getmark(x::T) where {T<:MarkableFloat{3}} = 3
