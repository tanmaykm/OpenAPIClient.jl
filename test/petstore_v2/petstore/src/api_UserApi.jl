# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct UserApi <: OpenAPIClient.APIImpl
    client::OpenAPIClient.Client
end

function _oacinternal_createUser(_api::UserApi, in_body::User; _mediaType=nothing)
    _ctx = OpenAPIClient.Ctx(_api.client, "POST", Nothing, "/user", [], in_body)
    OpenAPIClient.set_header_accept(_ctx, [])
    OpenAPIClient.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/json", ] : [_mediaType])
    return _ctx
end

@doc raw"""Create user

This can only be done by the logged in user.

Params:
- in_body::User (required)

Return: Nothing
"""
function createUser(_api::UserApi, in_body; _mediaType=nothing)
    _ctx = _oacinternal_createUser(_api, in_body; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx)
end

function createUser(_api::UserApi, response_stream::Channel, in_body::User; _mediaType=nothing)
    _ctx = _oacinternal_createUser(_api, in_body; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx, response_stream)
end

function _oacinternal_createUsersWithArrayInput(_api::UserApi, in_body::Vector{User}; _mediaType=nothing)
    _ctx = OpenAPIClient.Ctx(_api.client, "POST", Nothing, "/user/createWithArray", [], in_body)
    OpenAPIClient.set_header_accept(_ctx, [])
    OpenAPIClient.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/json", ] : [_mediaType])
    return _ctx
end

@doc raw"""Creates list of users with given input array

Params:
- in_body::Vector{User} (required)

Return: Nothing
"""
function createUsersWithArrayInput(_api::UserApi, in_body; _mediaType=nothing)
    _ctx = _oacinternal_createUsersWithArrayInput(_api, in_body; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx)
end

function createUsersWithArrayInput(_api::UserApi, response_stream::Channel, in_body::Vector{User}; _mediaType=nothing)
    _ctx = _oacinternal_createUsersWithArrayInput(_api, in_body; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx, response_stream)
end

function _oacinternal_createUsersWithListInput(_api::UserApi, in_body::Vector{User}; _mediaType=nothing)
    _ctx = OpenAPIClient.Ctx(_api.client, "POST", Nothing, "/user/createWithList", [], in_body)
    OpenAPIClient.set_header_accept(_ctx, [])
    OpenAPIClient.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/json", ] : [_mediaType])
    return _ctx
end

@doc raw"""Creates list of users with given input array

Params:
- in_body::Vector{User} (required)

Return: Nothing
"""
function createUsersWithListInput(_api::UserApi, in_body; _mediaType=nothing)
    _ctx = _oacinternal_createUsersWithListInput(_api, in_body; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx)
end

function createUsersWithListInput(_api::UserApi, response_stream::Channel, in_body::Vector{User}; _mediaType=nothing)
    _ctx = _oacinternal_createUsersWithListInput(_api, in_body; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx, response_stream)
end

function _oacinternal_deleteUser(_api::UserApi, in_username::String; _mediaType=nothing)
    _ctx = OpenAPIClient.Ctx(_api.client, "DELETE", Nothing, "/user/{username}", [])
    OpenAPIClient.set_param(_ctx.path, "username", in_username)  # type String
    OpenAPIClient.set_header_accept(_ctx, [])
    OpenAPIClient.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Delete user

This can only be done by the logged in user.

Params:
- in_username::String (required)

Return: Nothing
"""
function deleteUser(_api::UserApi, in_username; _mediaType=nothing)
    _ctx = _oacinternal_deleteUser(_api, in_username; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx)
end

function deleteUser(_api::UserApi, response_stream::Channel, in_username::String; _mediaType=nothing)
    _ctx = _oacinternal_deleteUser(_api, in_username; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx, response_stream)
end

function _oacinternal_getUserByName(_api::UserApi, in_username::String; _mediaType=nothing)
    _ctx = OpenAPIClient.Ctx(_api.client, "GET", User, "/user/{username}", [])
    OpenAPIClient.set_param(_ctx.path, "username", in_username)  # type String
    OpenAPIClient.set_header_accept(_ctx, ["application/json", "application/xml", ])
    OpenAPIClient.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get user by user name

Params:
- in_username::String (required)

Return: User
"""
function getUserByName(_api::UserApi, in_username; _mediaType=nothing)
    _ctx = _oacinternal_getUserByName(_api, in_username; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx)
end

function getUserByName(_api::UserApi, response_stream::Channel, in_username::String; _mediaType=nothing)
    _ctx = _oacinternal_getUserByName(_api, in_username; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx, response_stream)
end

function _oacinternal_loginUser(_api::UserApi, in_username::String, in_password::String; _mediaType=nothing)
    _ctx = OpenAPIClient.Ctx(_api.client, "GET", String, "/user/login", [])
    OpenAPIClient.set_param(_ctx.query, "username", in_username)  # type String
    OpenAPIClient.set_param(_ctx.query, "password", in_password)  # type String
    OpenAPIClient.set_header_accept(_ctx, ["application/json", "application/xml", ])
    OpenAPIClient.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Logs user into the system

Params:
- in_username::String (required)
- in_password::String (required)

Return: String
"""
function loginUser(_api::UserApi, in_username, in_password; _mediaType=nothing)
    _ctx = _oacinternal_loginUser(_api, in_username, in_password; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx)
end

function loginUser(_api::UserApi, response_stream::Channel, in_username::String, in_password::String; _mediaType=nothing)
    _ctx = _oacinternal_loginUser(_api, in_username, in_password; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx, response_stream)
end

function _oacinternal_logoutUser(_api::UserApi; _mediaType=nothing)
    _ctx = OpenAPIClient.Ctx(_api.client, "GET", Nothing, "/user/logout", [])
    OpenAPIClient.set_header_accept(_ctx, [])
    OpenAPIClient.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Logs out current logged in user session

Params:

Return: Nothing
"""
function logoutUser(_api::UserApi; _mediaType=nothing)
    _ctx = _oacinternal_logoutUser(_api; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx)
end

function logoutUser(_api::UserApi, response_stream::Channel; _mediaType=nothing)
    _ctx = _oacinternal_logoutUser(_api; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx, response_stream)
end

function _oacinternal_updateUser(_api::UserApi, in_username::String, in_body::User; _mediaType=nothing)
    _ctx = OpenAPIClient.Ctx(_api.client, "PUT", Nothing, "/user/{username}", [], in_body)
    OpenAPIClient.set_param(_ctx.path, "username", in_username)  # type String
    OpenAPIClient.set_header_accept(_ctx, [])
    OpenAPIClient.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/json", ] : [_mediaType])
    return _ctx
end

@doc raw"""Updated user

This can only be done by the logged in user.

Params:
- in_username::String (required)
- in_body::User (required)

Return: Nothing
"""
function updateUser(_api::UserApi, in_username, in_body; _mediaType=nothing)
    _ctx = _oacinternal_updateUser(_api, in_username, in_body; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx)
end

function updateUser(_api::UserApi, response_stream::Channel, in_username::String, in_body::User; _mediaType=nothing)
    _ctx = _oacinternal_updateUser(_api, in_username, in_body; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx, response_stream)
end

export createUser
export createUsersWithArrayInput
export createUsersWithListInput
export deleteUser
export getUserByName
export loginUser
export logoutUser
export updateUser
