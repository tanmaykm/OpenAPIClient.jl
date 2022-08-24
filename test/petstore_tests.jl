include(joinpath(@__DIR__, "petstore", "src", "PetStoreClient.jl"))
using .PetStoreClient

include("petstore_test_petapi.jl")
include("petstore_test_userapi.jl")
include("petstore_test_storeapi.jl")

const server = "http://127.0.0.1/v3"
TestUserApi.test_404(server)
TestUserApi.test_userhook(server)
TestUserApi.test_set_methods()

if get(ENV, "STRESS_PETSTORE", "false") == "true"
    TestUserApi.test_parallel(server)
end

TestUserApi.test(server)
TestStoreApi.test(server)
TestPetApi.test(server)