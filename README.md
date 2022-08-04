# OpenAPIClient

[![Build Status](https://github.com/JuliaComputing/OpenAPIClient.jl/workflows/CI/badge.svg)](https://github.com/JuliaComputing/OpenAPIClient.jl/actions?query=workflow%3ACI+branch%3Amaster)
[![codecov.io](http://codecov.io/github/JuliaComputing/OpenAPIClient.jl/coverage.svg?branch=master)](http://codecov.io/github/JuliaComputing/OpenAPIClient.jl?branch=master)

This is the Julia library needed with code generated by the [OpenAPI generator](https://openapi-generator.tech/).

The goal of OpenAPIClient is to define a standard, language-agnostic interface to REST APIs which allows both humans and computers to discover and understand the capabilities of the service without access to source code, documentation, or through network traffic inspection. When properly defined via OpenAPI, a consumer can understand and interact with the remote service with a minimal amount of implementation logic. Similar to what interfaces have done for lower-level programming, OpenAPI removes the guesswork in calling the service.

Check out [OpenAPI-Spec](https://github.com/OAI/OpenAPI-Specification) for additional information about the OpenAPI project, including additional libraries with support for other languages and more.

## How do I use this?

### Code Generation

Use [instructions](https://openapi-generator.tech/docs/generators) provided for the Julia OpenAPI code generator plugin to generate Julia code.

## Generated Code Structure

### APIs

Each API set is generated into a file named `api_<apiname>.jl`. It is represented as a `struct` and the APIs under it are generated as methods. An API set can be constructed by providing the swagger client instance that it can use for communication.

The required API parameters are generated as regular function arguments. Optional parameters are generated as keyword arguments. Method documentation is generated with description, parameter information and return value. Two variants of the API are generated. The first variant is suitable for calling synchronously and returns a single instance of the result struct.

```julia
# example synchronous API that returns an Order instance
getOrderById(api::StoreApi, orderId::Int64)
```

The second variant is suitable for asynchronous calls to methods that return chunked transfer encoded responses, where in the API streams the response objects into an output channel.

```julia
# example asynchronous API that streams matching Pet instances into response_stream
findPetsByStatus(api::PetApi, response_stream::Channel, status::Vector{String})
```

A client context holds common information to be used across APIs. It also holds a connection to the server and uses that across API calls.
The client context needs to be passed as the first parameter of all API calls. It can be created as:

```julia
Client(root::String;
    headers::Dict{String,String}=Dict{String,String}(),
    get_return_type::Function=(default,data)->default,
    timeout::Int=DEFAULT_TIMEOUT_SECS,
    long_polling_timeout::Int=DEFAULT_LONGPOLL_TIMEOUT_SECS,
    pre_request_hook::Function,
)
```

Where:

- `root`: the root URI where APIs are hosted (should not end with a `/`)
- `headers`: any additional headers that need to be passed along with all API calls
- `get_return_type`: optional method that can map a Julia type to a return type other than what is specified in the API specification by looking at the data (this is used only in special cases, for example when models are allowed to be dynamically loaded)
- `timeout`: optional timeout to apply for server methods (default `OpenAPIClient.DEFAULT_TIMEOUT_SECS`)
- `long_polling_timeout`: optional timeout to apply for long polling methods (default `OpenAPIClient.DEFAULT_LONGPOLL_TIMEOUT_SECS`)
- `pre_request_hook`: user provided hook to modify the request before it is sent

The `pre_request_hook` must provide the following two implementations:
- `pre_request_hook(ctx::OpenAPIClient.Ctx) -> ctx`
- `pre_request_hook(resource_path::AbstractString, body::Any, headers::Dict{String,String}) -> (resource_path, body, headers)`

In case of any errors an instance of `ApiException` is thrown. It has the following fields:

- `status::Int`: HTTP status code
- `reason::String`: Optional human readable string
- `resp::Downloads.Response`: The HTTP Response for this call
- `error::Union{Nothing,Downloads.RequestError}`: The HTTP error on request failure

An API call involves the following steps:
- If a pre request hook is provided, it is invoked with an instance of `OpenAPIClient.Ctx` that has the request attributes. The hook method is expected to make any modifications it needs to the request attributes before the request is prepared, and return the modified context.
- The URL to be invoked is prepared by replacing placeholders in the API URL template with the supplied function parameters.
- If this is a POST request, serialize the instance of `OpenAPIModel` provided as the `body` parameter as a JSON document.
- If a pre request hook is provided, it is invoked with the prepared resource path, body and request headers. The hook method is expected to modify and return back a tuple of resource path, body and headers which will be used to make the request.
- Make the HTTP call to the API endpoint and collect the response.
- Determine the response type / model, invoke the optional user specified mapping function if one was provided.
- Convert (deserialize) the response data into the return type and return.
- In case of any errors, throw an instance of `ApiException`

### Models

Each model from the specification is generated into a file named `model_<modelname>.jl`. It is represented as a `mutable struct` that is a subtype of the abstract type `OpenAPIModel`. Models have the following methods defined:

- constructor that takes keyword arguments to fill in values for all model properties.
- [`propertynames`](https://docs.julialang.org/en/v1/base/base/#Base.propertynames)
- [`hasproperty`](https://docs.julialang.org/en/v1/base/base/#Base.hasproperty)
- [`getproperty`](https://docs.julialang.org/en/v1/base/base/#Base.getproperty)
- [`setproperty!`](https://docs.julialang.org/en/v1/base/base/#Base.setproperty!)

In addition to these standard Julia methods, these convenience methods are also generated that help in checking value at a hierarchical path of the model.

- `function haspropertyat(o::T, path...) where {T<:OpenAPIModel}`
- `function getpropertyat(o::T, path...) where {T<:OpenAPIModel}`

E.g:

```julia
# access o.field.subfield1.subfield2
if haspropertyat(o, "field", "subfield1", "subfield2")
    getpropertyat(o, "field", "subfield1", "subfield2")
end

# access nested array elements, e.g. o.field2.subfield1[10].subfield2
if haspropertyat(o, "field", "subfield1", 10, "subfield2")
    getpropertyat(o, "field", "subfield1", 10, "subfield2")
end
```

### Validations

Following validations are incorporated into models:

- maximum value: must be a numeric value less than or equal to a specified value
- minimum value: must be a numeric value greater than or equal to a specified value
- maximum length: must be a string value of length less than or equal to a specified value
- minimum length: must be a string value of length greater than or equal to a specified value
- maximum item count: must be a list value with number of items less than or equal to a specified value
- minimum item count: must be a list value with number of items greater than or equal to a specified value
- enum: value must be from a list of allowed values

Validations are imposed in the constructor and `setproperty!` methods of models.
