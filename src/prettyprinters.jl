Base.show(io::IO, api::API) = print(io, "$(typeof(api)): $(makeurl(api))")

Base.show(io::IO, x::OpenFigiAsset) = print(io, typeof(x), "\n", join(["$(rpad(fld, 22, " ")) => $(getfield(x,fld))" for fld in fieldnames(typeof(x))], "\n"))
Base.show(io::IO, ::MIME"text/plain", x::OpenFigiAsset) = print(io, "FIGI: $(x.figi) $(x.securityType2)")


Base.firstindex(s::Identifier) = firstindex(s.s)
Base.lastindex(s::Identifier) = lastindex(s.s)
Base.iterate(s::Identifier, i::Int) = iterate(s.s, i)
Base.iterate(s::Identifier) = iterate(s.s)
Base.nextind(s::Identifier, i::Int) = nextind(s.s, i)
Base.prevind(s::Identifier, i::Int) = prevind(s.s, i)
Base.eachindex(s::Identifier) = eachindex(s.s)
Base.length(s::Identifier) = length(s.s)
Base.getindex(s::Identifier, i::Integer) = getindex(s.s, i)
Base.getindex(s::Identifier, i::Int) = getindex(s.s, i) # for method ambig in Julia 0.6
Base.getindex(s::Identifier, i::UnitRange{Int}) = getindex(s.s, i)
Base.getindex(s::Identifier, i::UnitRange{<:Integer}) = getindex(s.s, i)
Base.getindex(s::Identifier, i::AbstractVector{<:Integer}) = getindex(s.s, i)
Base.codeunit(s::Identifier, i::Integer) = codeunit(s.s, i)
Base.codeunit(s::Identifier) = codeunit(s.s)
Base.ncodeunits(s::Identifier) = ncodeunits(s.s)
Base.codeunits(s::Identifier) = codeunits(s.s)
Base.sizeof(s::Identifier) = sizeof(s.s)
Base.isvalid(s::Identifier, i::Integer) = isvalid(s.s, i)
Base.pointer(s::Identifier) = pointer(s.s)
Base.IOBuffer(s::Identifier) = IOBuffer(s.s)
Base.unsafe_convert(T::Union{Type{Ptr{UInt8}},Type{Ptr{Int8}},Cstring}, s::Identifier) = Base.unsafe_convert(T, s.s)
