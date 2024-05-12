page 53601 KNHPurchHeaderAPI
{
    APIGroup = 'knhGroup';
    APIPublisher = 'knh';
    APIVersion = 'v2.0';
    Caption = 'Purchase Header';
    DelayedInsert = true;
    EntityName = 'knhPurchHeader';
    EntitySetName = 'knhPurchaseHeaders';
    PageType = API;
    SourceTable = "Purchase Header";
    ODataKeyFields = SystemId;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(id; Rec.SystemId) { }
                field(documentType; Rec."Document Type") { }
                field(buyFromVendorNo; Rec."Buy-from Vendor No.") { }
                field(number; Rec."No.") { }
                field(paytoVendorNo; Rec."Pay-to Vendor No.") { }
                field(yourReference; Rec."Your Reference") { }
                field(shiptoCode; Rec."Ship-to Code") { }
                field(orderDate; Rec."Order Date") { }
                field(postingDate; Rec."Posting Date") { }
                field(expectedReceiptDate; Rec."Expected Receipt Date") { }
                field(postingDescription; Rec."Posting Description") { }
                field(paymentTermsCode; Rec."Payment Terms Code") { }
                field(dueDate; Rec."Due Date") { }
                field(paymentDiscountPerc; Rec."Payment Discount %") { }
                field(pmtDiscountDate; Rec."Pmt. Discount Date") { }
                field(shipmentMethodCode; Rec."Shipment Method Code") { }
                field(locationCode; Rec."Location Code") { }
                field(shortcutDimension1Code; Rec."Shortcut Dimension 1 Code") { }
                field(shortcutDimension2Code; Rec."Shortcut Dimension 2 Code") { }
                field(vendorPostingGroup; Rec."Vendor Posting Group") { }
                field(currencyCode; Rec."Currency Code") { }
                field(pricesIncludingVAT; Rec."Prices Including VAT") { }
                field(invoiceDiscCode; Rec."Invoice Disc. Code") { }
                field(languageCode; Rec."Language Code") { }
                field(amount; Rec.Amount) { }
                field(amountIncludingVAT; Rec."Amount Including VAT") { }
                field(vATRegistrationNo; Rec."VAT Registration No.") { }
                field(reasonCode; Rec."Reason Code") { }
                field(genBusPostingGroup; Rec."Gen. Bus. posting group") { }
                field(documentDate; Rec."Document Date") { }
                field(paymentMethodCode; Rec."Payment Method Code") { }
                field(noSeries; Rec."No. Series") { }
                field(vatBusPostingGroup; Rec."VAT Bus. Posting Group") { }
                part(PurchLineAPI; KNHPurchLineAPI)
                {
                    Caption = 'Purchase Line';
                    Multiplicity = Many;
                    EntityName = 'knhPurchLine';
                    EntitySetName = 'knhPurchLines';
                    SubPageLink = "Document No." = field("No."), "Document Type" = field("Document Type");
                }
            }
        }
    }
}
