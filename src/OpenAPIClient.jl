module OpenAPIClient

using Downloads
using URIs
using JSON
using MbedTLS
using Dates
using TimeZones
using LibCURL

import Base: convert, show, summary, getindex, keys, length, getproperty, setproperty!, propertynames, iterate
if isdefined(Base, :hasproperty)
    import Base: hasproperty
end
import JSON: lower

abstract type APIModel end
abstract type APIImpl end

include("client.jl")
include("json.jl")
include("val.jl")

end # module OpenAPIClient
