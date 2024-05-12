/// <summary>
/// Query Salesperson API (ID 53605).
/// </summary>
query 53605 KNHSalespersonAPI
{
    APIGroup = 'knhGroup';
    APIPublisher = 'knh';
    APIVersion = 'v2.0';
    EntityName = 'knhKSalesperson';
    EntitySetName = 'knhSalespersons';
    QueryType = API;

    elements
    {
        dataitem(salesperson; "Salesperson/Purchaser")
        {
            column("code"; "Code") { }
            column(commission; "Commission %") { }
            column(costLCY; "Cost (LCY)") { }
            column(eMail; "E-Mail") { }
            column(name; Name) { }
            column(jobTitle; "Job Title") { }
            column(phoneNo; "Phone No.") { }
        }
    }

    trigger OnBeforeOpen()
    begin
    end;
}
