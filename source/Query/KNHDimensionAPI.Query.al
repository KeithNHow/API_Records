/// <summary>
/// Query Dimension API (ID 53601).
/// </summary>
query 53601 KNHDimensionAPI
{
    APIGroup = 'knhGroup';
    APIPublisher = 'knh';
    APIVersion = 'v2.0';
    EntityName = 'knhDimension';
    EntitySetName = 'knhDimensions';
    QueryType = API;

    elements
    {
        dataitem(dimension; Dimension)
        {
            column("code"; "Code") { }
            column(name; Name) { }
            column(description; Description) { }
        }
    }

    trigger OnBeforeOpen()
    begin
    end;
}
