using OpenAPIClient
using Test

include("utilstests.jl")
include("petstore_v3/runtests.jl")
include("petstore_v2/runtests.jl")

@testset "OpenAPIClient" begin
    @testset "Utils" begin
        test_longpoll_exception_check()
    end
    @testset "Petstore" begin
        if get(ENV, "RUNNER_OS", "") == "Linux"
            @testset "V3" begin
                @info("Running petstore v3 tests")
                PetStoreV3Tests.runtests()
            end
            @testset "V2" begin
                @info("Running petstore v2 tests")
                PetStoreV2Tests.runtests()
            end
        else
            @info("Skipping petstore tests in non Linux environment (can not run petstore docker on OSX or Windows)")
        end
    end
end
