/// <summary>
/// Query Dim Set Entry API (ID 53606).
/// </summary>
query 53606 KNHDimSetEntryAPI
{
    APIGroup = 'knhGroup';
    APIPublisher = 'knh';
    APIVersion = 'v2.0';
    EntityName = 'knhDimSetEntry';
    EntitySetName = 'knhDimSetEntries';
    QueryType = API;

    elements
    {
        dataitem(dimensionSetEntry; "Dimension Set Entry")
        {
            column(dimensionCode; "Dimension Code") { }
            column(dimensionName; "Dimension Name") { }
            column(dimensionSetID; "Dimension Set ID") { }
            column(dimensionValueCode; "Dimension Value Code") { }
            column(dimensionValueID; "Dimension Value ID") { }
            column(dimensionValueName; "Dimension Value Name") { }
            column(globalDimensionNo; "Global Dimension No.") { }
        }
    }

    trigger OnBeforeOpen()
    begin
    end;
}
