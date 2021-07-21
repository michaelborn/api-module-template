component extends="testbox.system.BaseSpec" {
    function beforeAll(){
        variables.model = createMock( "models.Company" );

        variables.@MODULE_NAME@Client = new hyper.models.HyperBuilder(
            baseURL = server.system.environment[ "@API_NAME@_API_URL" ],
            headers = {
                "X-@MODULE_SLUG@-TOKEN" : server.system.environment[ "@API_NAME@_API_KEY" ]
            }
        );

        variables.model.$property( propertyName = "@MODULE_NAME@Client", mock = variables.@MODULE_NAME@Client );
    }
    function run() {
        describe( "Company suite", function() {
            it( "+getBasicFinancials()", function() {
                var result = variables.model.getBasicFinancials();

                expect( isInstanceOf( result, "hyper.models.HyperResponse" ) ).toBeTrue( "should return hyperResponse object" );
            } );
        } );
    }
}