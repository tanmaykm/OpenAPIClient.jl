# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""
    Tag(;
        id=nothing,
        name=nothing,
    )

    - id::Int64
    - name::String
"""
Base.@kwdef mutable struct Tag <: OpenAPIClient.APIModel
    id::Union{Nothing, Int64} = nothing
    name::Union{Nothing, String} = nothing

    function Tag(id, name, )
        validate_property(Tag, Symbol("id"), id)
        validate_property(Tag, Symbol("name"), name)
        return new(id, name, )
    end
end # type Tag

const _property_types_Tag = Dict{Symbol,String}(Symbol("id")=>"Int64", Symbol("name")=>"String", )
OpenAPIClient.property_type(::Type{ Tag }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Tag[name]))}

function check_required(o::Tag)
    true
end

function validate_property(::Type{ Tag }, name::Symbol, val)
end
