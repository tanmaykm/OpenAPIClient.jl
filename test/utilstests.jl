using OpenAPIClient, Test

function as_taskfailedexception(ex)
    try
        task = @async throw(ex)
        wait(task)
    catch ex
        return ex
    end
end

function test_longpoll_exception_check()
    resp = OpenAPIClient.Downloads.Response("http", "http://localhost", 200, "no error", [])
    reqerr1 = OpenAPIClient.Downloads.RequestError("http://localhost", 500, "not timeout error", resp)
    reqerr2 = OpenAPIClient.Downloads.RequestError("http://localhost", 200, "Operation timed out after 300 milliseconds with 0 bytes received", resp) # timeout error

    @test OpenAPIClient.is_longpoll_timeout("not an exception") == false

    openapiex1 = OpenAPIClient.ApiException(reqerr1)
    @test OpenAPIClient.is_longpoll_timeout(openapiex1) == false
    @test OpenAPIClient.is_longpoll_timeout(as_taskfailedexception(openapiex1)) == false

    openapiex2 = OpenAPIClient.ApiException(reqerr2)
    @test OpenAPIClient.is_longpoll_timeout(openapiex2)
    @test OpenAPIClient.is_longpoll_timeout(as_taskfailedexception(openapiex2))

    @test OpenAPIClient.is_longpoll_timeout(CompositeException([openapiex1, openapiex2]))
    @test OpenAPIClient.is_longpoll_timeout(CompositeException([openapiex1, as_taskfailedexception(openapiex2)]))
    @test OpenAPIClient.is_longpoll_timeout(CompositeException([openapiex1, as_taskfailedexception(openapiex1)])) == false
end
