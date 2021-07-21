/**
* The base model test case will use the 'model' annotation as the instantiation path
* and then create it, prepare it for mocking and then place it in the variables scope as 'model'. It is your
* responsibility to update the model annotation instantiation path and init your model.
*/
component extends="coldbox.system.testing.BaseModelTest" model="models.Company"{

	this.loadColdbox = true;

	/*********************************** LIFE CYCLE Methods ***********************************/

	function beforeAll(){
		super.beforeAll();

		// setup the model
		super.setup();

		// setup injections
		getWirebox().autowire( model );

		// init the model object
		model.init();
	}

	function afterAll(){
		super.afterAll();
	}

	/*********************************** BDD SUITES ***********************************/

	function run(){

		describe( "models.Company Suite", function(){

			it( "can fetch basic financials", function() {
				var result = model.getBasicFinancials();

				expect( isInstanceOf( "hyper.models.HyperResponse", result ) ).toBeTrue();
			});

		});

	}

}
