# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""A User who is purchasing from the pet store

    User(;
        id=nothing,
        username=nothing,
        firstName=nothing,
        lastName=nothing,
        email=nothing,
        password=nothing,
        phone=nothing,
        userStatus=nothing,
    )

    - id::Int64
    - username::String
    - firstName::String
    - lastName::String
    - email::String
    - password::String
    - phone::String
    - userStatus::Int64 : User Status
"""
Base.@kwdef mutable struct User <: OpenAPIClient.APIModel
    id::Union{Nothing, Int64} = nothing
    username::Union{Nothing, String} = nothing
    firstName::Union{Nothing, String} = nothing
    lastName::Union{Nothing, String} = nothing
    email::Union{Nothing, String} = nothing
    password::Union{Nothing, String} = nothing
    phone::Union{Nothing, String} = nothing
    userStatus::Union{Nothing, Int64} = nothing

    function User(id, username, firstName, lastName, email, password, phone, userStatus, )
        validate_property(User, Symbol("id"), id)
        validate_property(User, Symbol("username"), username)
        validate_property(User, Symbol("firstName"), firstName)
        validate_property(User, Symbol("lastName"), lastName)
        validate_property(User, Symbol("email"), email)
        validate_property(User, Symbol("password"), password)
        validate_property(User, Symbol("phone"), phone)
        validate_property(User, Symbol("userStatus"), userStatus)
        return new(id, username, firstName, lastName, email, password, phone, userStatus, )
    end
end # type User

const _property_types_User = Dict{Symbol,String}(Symbol("id")=>"Int64", Symbol("username")=>"String", Symbol("firstName")=>"String", Symbol("lastName")=>"String", Symbol("email")=>"String", Symbol("password")=>"String", Symbol("phone")=>"String", Symbol("userStatus")=>"Int64", )
OpenAPIClient.property_type(::Type{ User }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_User[name]))}

function check_required(o::User)
    true
end

function validate_property(::Type{ User }, name::Symbol, val)
end
