/// <summary>
/// Query Customer API (ID 53607).
/// </summary>
query 53607 KNHCustomerAPI
{
    APIGroup = 'keithCorp';
    APIPublisher = 'keithHow';
    APIVersion = 'v2.0';
    EntityName = 'knhCustomer';
    EntitySetName = 'knhCustomers';
    QueryType = API;

    elements
    {
        dataitem(customer; Customer)
        {
            column(no; "No.") { }
            column(name; Name) { }
            column(balanceLCY; "Balance (LCY)") { }
            column(balanceDueLCY; "Balance Due (LCY)") { }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
