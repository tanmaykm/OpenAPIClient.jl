using OpenAPIClient
using Test

include("utilstests.jl")
include("petstore_v3/runtests.jl")

@testset "OpenAPIClient" begin
    @testset "Utils" begin
        test_longpoll_exception_check()
    end
    @testset "Petstore" begin
        if get(ENV, "RUNNER_OS", "") == "Linux"
            @info("Running petstore tests")
            PetStoreV3Tests.runtests()
        else
            @info("Skipping petstore tests in non Linux environment (can not run petstore docker on OSX or Windows)")
        end
    end
end
