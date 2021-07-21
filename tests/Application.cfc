/**
* Copyright Since 2005 Ortus Solutions, Corp
* www.ortussolutions.com
**************************************************************************************
*/
component{

    this.name = "ColdBoxTestingSuite" & hash(getCurrentTemplatePath());
	// any other application.cfc stuff goes below:
	this.sessionManagement = true;
    this.sessionTimeout     = createTimeSpan( 0, 0, 15, 0 );
    this.applicationTimeout = createTimeSpan( 0, 0, 15, 0 );

	// any mappings go here, we create one that points to the root called test.
	testsPath = getDirectoryFromPath( getCurrentTemplatePath() );
	this.mappings[ "/tests" ] = testsPath;
	rootPath = REReplaceNoCase( this.mappings[ "/tests" ], "tests(\\|/)", "" );

	this.mappings[ "/root" ] = rootPath;
	this.mappings[ "/app" ] = testsPath & "resources/app";
	COLDBOX_APP_ROOT_PATH = this.mappings[ "/app" ];

	this.mappings[ "/coldbox" ] = testsPath & "resources/app/coldbox";
	this.mappings[ "/testbox" ] = testsPath & "testbox";

	this.mappings[ "/@MODULE_NAME@" ] = rootPath;
	this.mappings[ "/hyper" ] = rootPath & "modules/hyper";
	this.mappings[ "/models" ] = rootPath & "models";

	// request start
	public boolean function onRequestStart( String targetPage ){
		return true;
	}

	// public void function onRequestEnd() {
	// 	if( !isNull( application.cbController ) ){
	// 		application.cbController.getLoaderService().processShutdown();
	// 	}
	// 	structDelete( application, "cbController" );
	// 	structDelete( application, "wirebox" );
	// }
}