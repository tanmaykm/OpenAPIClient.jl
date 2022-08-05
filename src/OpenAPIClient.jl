module OpenAPIClient

using Downloads
using URIs
using JSON
using MbedTLS
using Dates
using LibCURL

import Base: convert, show, summary, getindex, keys, length, getproperty, setproperty!, propertynames, iterate
if isdefined(Base, :hasproperty)
    import Base: hasproperty
end
import JSON: lower

abstract type OpenAPIModel end
abstract type OpenAPIApi end

include("client.jl")
include("json.jl")
include("val.jl")

end # module OpenAPIClient
