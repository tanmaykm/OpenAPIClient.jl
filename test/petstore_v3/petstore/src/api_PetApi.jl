# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct PetApi <: OpenAPIClient.APIImpl
    client::OpenAPIClient.Client
end

function _oacinternal_addPet(_api::PetApi, in_Pet::Pet; _mediaType=nothing)
    _ctx = OpenAPIClient.Ctx(_api.client, "POST", Nothing, "/pet", ["petstore_auth", ], in_Pet)
    OpenAPIClient.set_header_accept(_ctx, [])
    OpenAPIClient.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/json", "application/xml", ] : [_mediaType])
    return _ctx
end

@doc raw"""Add a new pet to the store

Params:
- in_Pet::Pet (required)

Return: Nothing
"""
function addPet(_api::PetApi, in_Pet; _mediaType=nothing)
    _ctx = _oacinternal_addPet(_api, in_Pet; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx)
end

function addPet(_api::PetApi, response_stream::Channel, in_Pet::Pet; _mediaType=nothing)
    _ctx = _oacinternal_addPet(_api, in_Pet; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx, response_stream)
end

function _oacinternal_deletePet(_api::PetApi, in_petId::Int64; in_api_key=nothing, _mediaType=nothing)
    _ctx = OpenAPIClient.Ctx(_api.client, "DELETE", Nothing, "/pet/{petId}", ["petstore_auth", ])
    OpenAPIClient.set_param(_ctx.path, "petId", in_petId)  # type Int64
    OpenAPIClient.set_param(_ctx.header, "api_key", in_api_key)  # type String
    OpenAPIClient.set_header_accept(_ctx, [])
    OpenAPIClient.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Deletes a pet

Params:
- in_petId::Int64 (required)
- in_api_key::String

Return: Nothing
"""
function deletePet(_api::PetApi, in_petId; in_api_key=nothing, _mediaType=nothing)
    _ctx = _oacinternal_deletePet(_api, in_petId; in_api_key=in_api_key, _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx)
end

function deletePet(_api::PetApi, response_stream::Channel, in_petId::Int64; in_api_key=nothing, _mediaType=nothing)
    _ctx = _oacinternal_deletePet(_api, in_petId; in_api_key=in_api_key, _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx, response_stream)
end

function _oacinternal_findPetsByStatus(_api::PetApi, in_status::Vector{String}; _mediaType=nothing)
    _ctx = OpenAPIClient.Ctx(_api.client, "GET", Vector{Pet}, "/pet/findByStatus", ["petstore_auth", ])
    OpenAPIClient.set_param(_ctx.query, "status", in_status)  # type Vector{String}
    OpenAPIClient.set_header_accept(_ctx, ["application/xml", "application/json", ])
    OpenAPIClient.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Finds Pets by status

Multiple status values can be provided with comma separated strings

Params:
- in_status::Vector{String} (required)

Return: Vector{Pet}
"""
function findPetsByStatus(_api::PetApi, in_status; _mediaType=nothing)
    _ctx = _oacinternal_findPetsByStatus(_api, in_status; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx)
end

function findPetsByStatus(_api::PetApi, response_stream::Channel, in_status::Vector{String}; _mediaType=nothing)
    _ctx = _oacinternal_findPetsByStatus(_api, in_status; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx, response_stream)
end

function _oacinternal_findPetsByTags(_api::PetApi, in_tags::Vector{String}; _mediaType=nothing)
    _ctx = OpenAPIClient.Ctx(_api.client, "GET", Vector{Pet}, "/pet/findByTags", ["petstore_auth", ])
    OpenAPIClient.set_param(_ctx.query, "tags", in_tags)  # type Vector{String}
    OpenAPIClient.set_header_accept(_ctx, ["application/xml", "application/json", ])
    OpenAPIClient.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Finds Pets by tags

Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.

Params:
- in_tags::Vector{String} (required)

Return: Vector{Pet}
"""
function findPetsByTags(_api::PetApi, in_tags; _mediaType=nothing)
    _ctx = _oacinternal_findPetsByTags(_api, in_tags; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx)
end

function findPetsByTags(_api::PetApi, response_stream::Channel, in_tags::Vector{String}; _mediaType=nothing)
    _ctx = _oacinternal_findPetsByTags(_api, in_tags; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx, response_stream)
end

function _oacinternal_getPetById(_api::PetApi, in_petId::Int64; _mediaType=nothing)
    _ctx = OpenAPIClient.Ctx(_api.client, "GET", Pet, "/pet/{petId}", ["api_key", ])
    OpenAPIClient.set_param(_ctx.path, "petId", in_petId)  # type Int64
    OpenAPIClient.set_header_accept(_ctx, ["application/xml", "application/json", ])
    OpenAPIClient.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Find pet by ID

Returns a single pet

Params:
- in_petId::Int64 (required)

Return: Pet
"""
function getPetById(_api::PetApi, in_petId; _mediaType=nothing)
    _ctx = _oacinternal_getPetById(_api, in_petId; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx)
end

function getPetById(_api::PetApi, response_stream::Channel, in_petId::Int64; _mediaType=nothing)
    _ctx = _oacinternal_getPetById(_api, in_petId; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx, response_stream)
end

function _oacinternal_updatePet(_api::PetApi, in_Pet::Pet; _mediaType=nothing)
    _ctx = OpenAPIClient.Ctx(_api.client, "PUT", Nothing, "/pet", ["petstore_auth", ], in_Pet)
    OpenAPIClient.set_header_accept(_ctx, [])
    OpenAPIClient.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/json", "application/xml", ] : [_mediaType])
    return _ctx
end

@doc raw"""Update an existing pet

Params:
- in_Pet::Pet (required)

Return: Nothing
"""
function updatePet(_api::PetApi, in_Pet; _mediaType=nothing)
    _ctx = _oacinternal_updatePet(_api, in_Pet; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx)
end

function updatePet(_api::PetApi, response_stream::Channel, in_Pet::Pet; _mediaType=nothing)
    _ctx = _oacinternal_updatePet(_api, in_Pet; _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx, response_stream)
end

function _oacinternal_updatePetWithForm(_api::PetApi, in_petId::Int64; in_name=nothing, in_status=nothing, _mediaType=nothing)
    _ctx = OpenAPIClient.Ctx(_api.client, "POST", Nothing, "/pet/{petId}", ["petstore_auth", ])
    OpenAPIClient.set_param(_ctx.path, "petId", in_petId)  # type Int64
    OpenAPIClient.set_param(_ctx.file, "name", in_name)  # type String
    OpenAPIClient.set_param(_ctx.file, "status", in_status)  # type String
    OpenAPIClient.set_header_accept(_ctx, [])
    OpenAPIClient.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded", ] : [_mediaType])
    return _ctx
end

@doc raw"""Updates a pet in the store with form data

Params:
- in_petId::Int64 (required)
- in_name::String
- in_status::String

Return: Nothing
"""
function updatePetWithForm(_api::PetApi, in_petId; in_name=nothing, in_status=nothing, _mediaType=nothing)
    _ctx = _oacinternal_updatePetWithForm(_api, in_petId; in_name=in_name, in_status=in_status, _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx)
end

function updatePetWithForm(_api::PetApi, response_stream::Channel, in_petId::Int64; in_name=nothing, in_status=nothing, _mediaType=nothing)
    _ctx = _oacinternal_updatePetWithForm(_api, in_petId; in_name=in_name, in_status=in_status, _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx, response_stream)
end

function _oacinternal_uploadFile(_api::PetApi, in_petId::Int64; in_additionalMetadata=nothing, in_file=nothing, _mediaType=nothing)
    _ctx = OpenAPIClient.Ctx(_api.client, "POST", ApiResponse, "/pet/{petId}/uploadImage", ["petstore_auth", ])
    OpenAPIClient.set_param(_ctx.path, "petId", in_petId)  # type Int64
    OpenAPIClient.set_param(_ctx.file, "additionalMetadata", in_additionalMetadata)  # type String
    OpenAPIClient.set_param(_ctx.file, "file", in_file)  # type String
    OpenAPIClient.set_header_accept(_ctx, ["application/json", ])
    OpenAPIClient.set_header_content_type(_ctx, (_mediaType === nothing) ? ["multipart/form-data", ] : [_mediaType])
    return _ctx
end

@doc raw"""uploads an image

Params:
- in_petId::Int64 (required)
- in_additionalMetadata::String
- in_file::String

Return: ApiResponse
"""
function uploadFile(_api::PetApi, in_petId; in_additionalMetadata=nothing, in_file=nothing, _mediaType=nothing)
    _ctx = _oacinternal_uploadFile(_api, in_petId; in_additionalMetadata=in_additionalMetadata, in_file=in_file, _mediaType=_mediaType)
    OpenAPIClient.exec(_ctx)
end

function uploadFile(_api::PetApi, response_stream::Channel, in_petId::Int64; in_additionalMetadata=nothing, in_file=nothing, _mediaType=nothing)
    _ctx = _oacinternal_uploadFile(_api, in_petId; in_additionalMetadata=in_additionalMetadata, in_file=in_file, _mediaType=_mediaType)
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
