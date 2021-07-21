/**
 * I wrap all company-related @MODULE_NAME@ API calls
 */
component{
    property name="@MODULE_NAME@Client" inject="@MODULE_NAME@Client";

    public component function init(){
        return this;
    }

    public function getBasicFinancials(){
        // TODO: implement queryParams ?symbol=AAPL&metric=all
        return @MODULE_NAME@Client.get( "/stock/metric" );
    }
}