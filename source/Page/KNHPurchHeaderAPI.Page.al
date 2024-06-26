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
                //General
                field(id; Rec.SystemId) { ShowCaption = true; }
                field(documentNo; Rec."No.") { ShowCaption = true; }
                field(documentType; Rec."Document Type") { ShowCaption = true; }
                field(buyFromVendorNo; Rec."Buy-from Vendor No.") { ShowCaption = true; }
                field(postingDate; Rec."Posting Date") { ShowCaption = true; }
                field(documentDate; Rec."Document Date") { ShowCaption = true; }
                field(dueDate; Rec."Due Date") { ShowCaption = true; }
                field(vendorInvoiceNo; Rec."Vendor Invoice No.") { ShowCaption = true; }
                field(yourReference; Rec."Your Reference") { ShowCaption = true; }
                field(orderDate; Rec."Order Date") { ShowCaption = true; }
                field(purchaserCode; Rec."Purchaser Code") { ShowCaption = true; }
                field(vendorOrderNo; Rec."Vendor Order No.") { ShowCaption = true; }
                field(vendorShipmentNo; Rec."Vendor Shipment No.") { ShowCaption = true; }
                field(responsibilityCenter; Rec."Responsibility Center") { ShowCaption = true; }

                //Invoice
                field(currencyCode; Rec."Currency Code") { ShowCaption = true; }
                field(vATBusPostingGroup; Rec."VAT Bus. Posting Group") { ShowCaption = true; }
                field(vendorPostingGroup; Rec."Vendor Posting Group") { ShowCaption = true; }
                field(postingDescription; Rec."Posting Description") { ShowCaption = true; }
                field(paymentTermsCode; Rec."Payment Terms Code") { ShowCaption = true; }
                field(departmentCode; Rec."Shortcut Dimension 1 Code") { }
                field(customerGroupCode; Rec."Shortcut Dimension 2 Code") { }
                field(paymentDiscountPerc; Rec."Payment Discount %") { ShowCaption = true; }
                field(pmtDiscountDate; Rec."Pmt. Discount Date") { ShowCaption = true; }
                field(shipmentMethodCode; Rec."Shipment Method Code") { ShowCaption = true; }
                field(paymentReference; Rec."Payment Reference") { ShowCaption = true; }

                //Ship and Pay
                field(paytoVendorNo; Rec."Pay-to Vendor No.") { ShowCaption = true; }
                field(remittoCode; Rec."Remit-to Code") { ShowCaption = true; }

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
