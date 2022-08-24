# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct PetApi <: OpenAPIClient.APIImpl
    client::OpenAPIClient.Client
end

function _oacinternal_addPet(_api::PetApi, Pet; _mediaType=nothing)
    _ctx = OpenAPIClient.Ctx(_api.client, "POST", Nothing, "/pet", ["petstore_auth", ], Pet)
    OpenAPIClient.set_header_accept(_ctx, [])
    OpenAPIClient.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/json", "application/xml", ] : [_mediaType])
    return _ctx
end

@doc raw"""Add a new pet to the store

Params:
- Pet::Pet (required)

Return: Nothing
"""
function addPet(_api::PetApi, Pet; _mediaType=nothing)
    _ctx = _oacinternal_addPet(_api, Pet; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx)
end

function addPet(_api::PetApi, response_stream::Channel, Pet; _mediaType=nothing)
    _ctx = _oacinternal_addPet(_api, Pet; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx, response_stream)
end

function _oacinternal_deletePet(_api::PetApi, petId::Int64; api_key=nothing, _mediaType=nothing)
    _ctx = OpenAPIClient.Ctx(_api.client, "DELETE", Nothing, "/pet/{petId}", ["petstore_auth", ])
    OpenAPIClient.set_param(_ctx.path, "petId", petId)  # type Int64
    OpenAPIClient.set_param(_ctx.header, "api_key", api_key)  # type String
    OpenAPIClient.set_header_accept(_ctx, [])
    OpenAPIClient.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Deletes a pet

Params:
- petId::Int64 (required)
- api_key::String

Return: Nothing
"""
function deletePet(_api::PetApi, petId::Int64; api_key=nothing, _mediaType=nothing)
    _ctx = _oacinternal_deletePet(_api, petId; api_key=api_key, _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx)
end

function deletePet(_api::PetApi, response_stream::Channel, petId::Int64; api_key=nothing, _mediaType=nothing)
    _ctx = _oacinternal_deletePet(_api, petId; api_key=api_key, _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx, response_stream)
end

function _oacinternal_findPetsByStatus(_api::PetApi, status::Vector{String}; _mediaType=nothing)
    _ctx = OpenAPIClient.Ctx(_api.client, "GET", Vector{Pet}, "/pet/findByStatus", ["petstore_auth", ])
    OpenAPIClient.set_param(_ctx.query, "status", status)  # type Vector{String}
    OpenAPIClient.set_header_accept(_ctx, ["application/xml", "application/json", ])
    OpenAPIClient.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Finds Pets by status

Multiple status values can be provided with comma separated strings

Params:
- status::Vector{String} (required)

Return: Vector{Pet}
"""
function findPetsByStatus(_api::PetApi, status::Vector{String}; _mediaType=nothing)
    _ctx = _oacinternal_findPetsByStatus(_api, status; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx)
end

function findPetsByStatus(_api::PetApi, response_stream::Channel, status::Vector{String}; _mediaType=nothing)
    _ctx = _oacinternal_findPetsByStatus(_api, status; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx, response_stream)
end

function _oacinternal_findPetsByTags(_api::PetApi, tags::Vector{String}; _mediaType=nothing)
    _ctx = OpenAPIClient.Ctx(_api.client, "GET", Vector{Pet}, "/pet/findByTags", ["petstore_auth", ])
    OpenAPIClient.set_param(_ctx.query, "tags", tags)  # type Vector{String}
    OpenAPIClient.set_header_accept(_ctx, ["application/xml", "application/json", ])
    OpenAPIClient.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Finds Pets by tags

Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.

Params:
- tags::Vector{String} (required)

Return: Vector{Pet}
"""
function findPetsByTags(_api::PetApi, tags::Vector{String}; _mediaType=nothing)
    _ctx = _oacinternal_findPetsByTags(_api, tags; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx)
end

function findPetsByTags(_api::PetApi, response_stream::Channel, tags::Vector{String}; _mediaType=nothing)
    _ctx = _oacinternal_findPetsByTags(_api, tags; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx, response_stream)
end

function _oacinternal_getPetById(_api::PetApi, petId::Int64; _mediaType=nothing)
    _ctx = OpenAPIClient.Ctx(_api.client, "GET", Pet, "/pet/{petId}", ["api_key", ])
    OpenAPIClient.set_param(_ctx.path, "petId", petId)  # type Int64
    OpenAPIClient.set_header_accept(_ctx, ["application/xml", "application/json", ])
    OpenAPIClient.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Find pet by ID

Returns a single pet

Params:
- petId::Int64 (required)

Return: Pet
"""
function getPetById(_api::PetApi, petId::Int64; _mediaType=nothing)
    _ctx = _oacinternal_getPetById(_api, petId; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx)
end

function getPetById(_api::PetApi, response_stream::Channel, petId::Int64; _mediaType=nothing)
    _ctx = _oacinternal_getPetById(_api, petId; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx, response_stream)
end

function _oacinternal_updatePet(_api::PetApi, Pet; _mediaType=nothing)
    _ctx = OpenAPIClient.Ctx(_api.client, "PUT", Nothing, "/pet", ["petstore_auth", ], Pet)
    OpenAPIClient.set_header_accept(_ctx, [])
    OpenAPIClient.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/json", "application/xml", ] : [_mediaType])
    return _ctx
end

@doc raw"""Update an existing pet

Params:
- Pet::Pet (required)

Return: Nothing
"""
function updatePet(_api::PetApi, Pet; _mediaType=nothing)
    _ctx = _oacinternal_updatePet(_api, Pet; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx)
end

function updatePet(_api::PetApi, response_stream::Channel, Pet; _mediaType=nothing)
    _ctx = _oacinternal_updatePet(_api, Pet; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx, response_stream)
end

function _oacinternal_updatePetWithForm(_api::PetApi, petId::Int64; name=nothing, status=nothing, _mediaType=nothing)
    _ctx = OpenAPIClient.Ctx(_api.client, "POST", Nothing, "/pet/{petId}", ["petstore_auth", ])
    OpenAPIClient.set_param(_ctx.path, "petId", petId)  # type Int64
    OpenAPIClient.set_param(_ctx.file, "name", name)  # type String
    OpenAPIClient.set_param(_ctx.file, "status", status)  # type String
    OpenAPIClient.set_header_accept(_ctx, [])
    OpenAPIClient.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded", ] : [_mediaType])
    return _ctx
end

@doc raw"""Updates a pet in the store with form data

Params:
- petId::Int64 (required)
- name::String
- status::String

Return: Nothing
"""
function updatePetWithForm(_api::PetApi, petId::Int64; name=nothing, status=nothing, _mediaType=nothing)
    _ctx = _oacinternal_updatePetWithForm(_api, petId; name=name, status=status, _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx)
end

function updatePetWithForm(_api::PetApi, response_stream::Channel, petId::Int64; name=nothing, status=nothing, _mediaType=nothing)
    _ctx = _oacinternal_updatePetWithForm(_api, petId; name=name, status=status, _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx, response_stream)
end

function _oacinternal_uploadFile(_api::PetApi, petId::Int64; additionalMetadata=nothing, file=nothing, _mediaType=nothing)
    _ctx = OpenAPIClient.Ctx(_api.client, "POST", ApiResponse, "/pet/{petId}/uploadImage", ["petstore_auth", ])
    OpenAPIClient.set_param(_ctx.path, "petId", petId)  # type Int64
    OpenAPIClient.set_param(_ctx.file, "additionalMetadata", additionalMetadata)  # type String
    OpenAPIClient.set_param(_ctx.file, "file", file)  # type String
    OpenAPIClient.set_header_accept(_ctx, ["application/json", ])
    OpenAPIClient.set_header_content_type(_ctx, (_mediaType === nothing) ? ["multipart/form-data", ] : [_mediaType])
    return _ctx
end

@doc raw"""uploads an image

Params:
- petId::Int64 (required)
- additionalMetadata::String
- file::String

Return: ApiResponse
"""
function uploadFile(_api::PetApi, petId::Int64; additionalMetadata=nothing, file=nothing, _mediaType=nothing)
    _ctx = _oacinternal_uploadFile(_api, petId; additionalMetadata=additionalMetadata, file=file, _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx)
end

function uploadFile(_api::PetApi, response_stream::Channel, petId::Int64; additionalMetadata=nothing, file=nothing, _mediaType=nothing)
    _ctx = _oacinternal_uploadFile(_api, petId; additionalMetadata=additionalMetadata, file=file, _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx, response_stream)
end

export addPet
export deletePet
export findPetsByStatus
export findPetsByTags
export getPetById
export updatePet
export updatePetWithForm
export uploadFile