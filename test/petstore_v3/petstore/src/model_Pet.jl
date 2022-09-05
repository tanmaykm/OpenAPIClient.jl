# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""A pet for sale in the pet store

    Pet(;
        id=nothing,
        category=nothing,
        name=nothing,
        photoUrls=nothing,
        tags=nothing,
        status=nothing,
    )

    - id::Int64
    - category::Category
    - name::String
    - photoUrls::Vector{String}
    - tags::Vector{Tag}
    - status::String : pet status in the store
"""
Base.@kwdef mutable struct Pet <: OpenAPIClient.APIModel
    id::Any = nothing # spec type: Union{ Nothing, Int64 } # spec name: id
    category::Any = nothing # spec type: Union{ Nothing, Category } # spec name: category
    name::Any = nothing # spec type: Union{ Nothing, String } # spec name: name
    photoUrls::Any = nothing # spec type: Union{ Nothing, Vector{String} } # spec name: photoUrls
    tags::Any = nothing # spec type: Union{ Nothing, Vector{Tag} } # spec name: tags
    status::Any = nothing # spec type: Union{ Nothing, String } # spec name: status

    function Pet(id, category, name, photoUrls, tags, status, )
        validate_property(Pet, Symbol("id"), id)
        validate_property(Pet, Symbol("category"), category)
        validate_property(Pet, Symbol("name"), name)
        validate_property(Pet, Symbol("photoUrls"), photoUrls)
        validate_property(Pet, Symbol("tags"), tags)
        validate_property(Pet, Symbol("status"), status)
        return new(id, category, name, photoUrls, tags, status, )
    end
end # type Pet

const _property_map_Pet = Dict{Symbol,Symbol}(Symbol("id")=>Symbol("id"), Symbol("category")=>Symbol("category"), Symbol("name")=>Symbol("name"), Symbol("photoUrls")=>Symbol("photoUrls"), Symbol("tags")=>Symbol("tags"), Symbol("status")=>Symbol("status"), )
const _property_types_Pet = Dict{Symbol,String}(Symbol("id")=>"Int64", Symbol("category")=>"Category", Symbol("name")=>"String", Symbol("photoUrls")=>"Vector{String}", Symbol("tags")=>"Vector{Tag}", Symbol("status")=>"String", )
Base.propertynames(::Type{ Pet }) = collect(keys(_property_map_Pet))
OpenAPIClient.property_type(::Type{ Pet }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Pet[name]))}
OpenAPIClient.field_name(::Type{ Pet }, property_name::Symbol) =  _property_map_Pet[property_name]

const _allowed_Pet_status = ["available", "pending", "sold"]

function check_required(o::Pet)
    (getproperty(o, Symbol("name")) === nothing) && (return false)
    (getproperty(o, Symbol("photoUrls")) === nothing) && (return false)
    true
end

function validate_property(::Type{ Pet }, name::Symbol, val)
    if name === Symbol("status")
        OpenAPIClient.validate_param(name, "Pet", :enum, val, _allowed_Pet_status)
    end
end
