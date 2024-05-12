/// <summary>
/// Query Dimension Value API (ID 53602).
/// </summary>
query 53602 KNHDimensionValueAPI
{
    APIGroup = 'knhGroup';
    APIPublisher = 'knh';
    APIVersion = 'v2.0';
    EntityName = 'knhDimensionValue';
    EntitySetName = 'knhDimensionValues';
    QueryType = API;

    elements
    {
        dataitem(dimensionValue; "Dimension Value")
        {
            column("code"; "Code") { }
            column(dimensionCode; "Dimension Code") { }
            column(name; Name) { }
            column(dimension1; "Global Dimension No.") { }
            column(dimensionValueID; "Dimension Value ID") { }
            column(dimensionValueType; "Dimension Value Type") { }
            column(totaling; Totaling) { }
        }
    }

    trigger OnBeforeOpen()
    begin
    end;
}
