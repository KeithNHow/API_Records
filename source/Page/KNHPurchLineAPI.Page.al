page 53603 KNHPurchLineAPI
{
    APIVersion = 'v2.0';
    APIPublisher = 'knh';
    APIGroup = 'knhGroup';
    ChangeTrackingAllowed = true;
    DelayedInsert = true;
    EntityName = 'knhPurchLine';
    EntitySetName = 'knhPurchLines';
    PageType = API;
    SourceTable = "Purchase Line";
    ODataKeyFields = SystemId;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(id; Rec.SystemId) { }
                field(documentType; Rec."Document Type") { }
                field(documentNo; Rec."Document No.") { }
                field(lineNo; Rec."Line No.") { }
                field(buyfromVendorNo; Rec."Buy-from Vendor No.") { }
                field(type; Rec.Type) { }
                field(no; Rec."No.") { }
                field(locationCode; Rec."Location Code") { }
                field(description; Rec.Description) { }
                field(quantity; Rec.Quantity) { }
                field(unitAmount; Rec.Amount) { }
            }
        }
    }
}