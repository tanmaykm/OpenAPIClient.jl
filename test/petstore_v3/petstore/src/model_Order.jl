# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""An order for a pets from the pet store

    Order(;
        id=nothing,
        petId=nothing,
        quantity=nothing,
        shipDate=nothing,
        status=nothing,
        complete=false,
    )

    - id::Int64
    - petId::Int64
    - quantity::Int32
    - shipDate::ZonedDateTime
    - status::String : Order Status
    - complete::Bool
"""
Base.@kwdef mutable struct Order <: OpenAPIClient.APIModel
    id::Any = nothing # spec type: Union{ Nothing, Int64 } # spec name: id
    petId::Any = nothing # spec type: Union{ Nothing, Int64 } # spec name: petId
    quantity::Any = nothing # spec type: Union{ Nothing, Int32 } # spec name: quantity
    shipDate::Any = nothing # spec type: Union{ Nothing, ZonedDateTime } # spec name: shipDate
    status::Any = nothing # spec type: Union{ Nothing, String } # spec name: status
    complete::Any = false # spec type: Union{ Nothing, Bool } # spec name: complete

    function Order(id, petId, quantity, shipDate, status, complete, )
        validate_property(Order, Symbol("id"), id)
        validate_property(Order, Symbol("petId"), petId)
        validate_property(Order, Symbol("quantity"), quantity)
        validate_property(Order, Symbol("shipDate"), shipDate)
        validate_property(Order, Symbol("status"), status)
        validate_property(Order, Symbol("complete"), complete)
        return new(id, petId, quantity, shipDate, status, complete, )
    end
end # type Order

const _property_map_Order = Dict{Symbol,Symbol}(Symbol("id")=>Symbol("id"), Symbol("petId")=>Symbol("petId"), Symbol("quantity")=>Symbol("quantity"), Symbol("shipDate")=>Symbol("shipDate"), Symbol("status")=>Symbol("status"), Symbol("complete")=>Symbol("complete"), )
const _property_types_Order = Dict{Symbol,String}(Symbol("id")=>"Int64", Symbol("petId")=>"Int64", Symbol("quantity")=>"Int32", Symbol("shipDate")=>"ZonedDateTime", Symbol("status")=>"String", Symbol("complete")=>"Bool", )
Base.propertynames(::Type{ Order }) = collect(keys(_property_map_Order))
OpenAPIClient.property_type(::Type{ Order }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Order[name]))}
OpenAPIClient.field_name(::Type{ Order }, property_name::Symbol) =  _property_map_Order[property_name]

const _allowed_Order_status = ["placed", "approved", "delivered"]

function check_required(o::Order)
    true
end

function validate_property(::Type{ Order }, name::Symbol, val)
    if name === Symbol("status")
        OpenAPIClient.validate_param(name, "Order", :enum, val, _allowed_Order_status)
    end
end
