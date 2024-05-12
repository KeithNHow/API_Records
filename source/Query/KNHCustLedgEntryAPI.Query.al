/// <summary>
/// Query Customer Ledger Entry API (ID 53603).
/// </summary>
query 53603 KNHCustLedgEntryAPI
{
    APIGroup = 'keithGroup';
    APIPublisher = 'knh';
    APIVersion = 'v2.0';
    EntityName = 'knhCustLedgEntry';
    EntitySetName = 'knhSustLedgEntries';
    QueryType = API;

    elements
    {
        dataitem(custLedgerEntry; "Cust. Ledger Entry")
        {
            column(entryNo; "Entry No.") { }
            column(documentNo; "Document No.") { }
            column(documentType; "Document Type") { }
            column(description; Description) { }
            column(originalAmtLCY; "Original Amt. (LCY)") { }
            column(remainingAmtLCY; "Remaining Amt. (LCY)") { }
            column(salespersonCode; "Salesperson Code") { }
            column(sellToCustomerNo; "Sell-to Customer No.") { }
            column(postingDate; "Posting Date") { }
            column(documentDate; "Document Date") { }
            column(amountLCY; "Amount (LCY)") { }
            column(open; Open) { }
            column(sourceCode; "Source Code") { }
            column(globalDimension1Code; "Global Dimension 1 Code") { }
            column(globalDimension2Code; "Global Dimension 2 Code") { }
            column(shortcutDimension3Code; "Shortcut Dimension 3 Code") { }
            column(shortcutDimension4Code; "Shortcut Dimension 4 Code") { }
            column(dimensionSetID; "Dimension Set ID") { }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
