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
        area(Content)
        {
            repeater(General)
            {
                field(id; Rec.SystemId) { ShowCaption = true; }
                field(documentType; Rec."Document Type") { ShowCaption = true; }
                field(documentNo; Rec."Document No.") { ShowCaption = true; }
                field(lineNo; Rec."Line No.") { ShowCaption = true; }
                field(type; Rec.Type) { ShowCaption = true; }
                field(no; Rec."No.") { ShowCaption = true; }
                field(locationCode; Rec."Location Code") { ShowCaption = true; }
                field(postingGroup; Rec."Posting Group") { ShowCaption = true; }
                field(description; Rec.Description) { ShowCaption = true; }
                field(quantity; Rec.Quantity) { ShowCaption = true; }
                field(uomCode; Rec."Unit of Measure Code") { ShowCaption = true; }
                field(directUnitCost; Rec."Direct Unit Cost") { ShowCaption = true; }
            }
        }
    }
}