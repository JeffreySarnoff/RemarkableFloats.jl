macro incrmark!(x)
    quote
        $(esc(x)) = incrmark($(esc(x)))
    end
end

macro decrmark!(x)
    quote
        $(esc(x)) = decrmark($(esc(x)))
    end
end

macro setmark!(x,m)
    quote
        $(esc(x)) = setmark($(esc(x)),$(esc(m)))
    end
end

macro unmark!(x)
    quote
        $(esc(x)) = unmark($(esc(x)))
    end
end
