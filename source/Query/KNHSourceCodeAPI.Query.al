/// <summary>
/// Query Source Code API (ID 53604).
/// </summary>
query 53604 KNHSourceCodeAPI
{
    APIGroup = 'knhGroup';
    APIPublisher = 'knh';
    APIVersion = 'v2.0';
    EntityName = 'knhSourceCode';
    EntitySetName = 'knhSourceCodes';
    QueryType = API;

    elements
    {
        dataitem(sourceCode; "Source Code")
        {
            column(code; "Code") { }
            column(description; Description) { }
        }
    }

    trigger OnBeforeOpen()
    begin
    end;
}
